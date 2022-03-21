package com.quicinc.cne;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.quicinc.cne.andsf.AndsfConstant;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.net.ssl.HttpsURLConnection;

public class ICDClient implements Runnable {
    public static final int FLAG_BQE_PROB_PRESENT = 8;
    public static final int FLAG_BQE_QUOTA_PRESENT = 4;
    public static final int FLAG_ICD_PROB_PRESENT = 2;
    public static final int FLAG_ICD_QUOTA_PRESENT = 1;
    public static final int FLAG_MBW_PRESENT = 16;
    public static final int FLAG_TPUT_DL_PRESENT = 32;
    public static final int FLAG_TPUT_SDEV_PRESENT = 64;
    static final int ICD_REQ = 0;
    static final int PARAMETER_REQ = 1;
    private static final String SUB_TYPE = "WQE:ICD";
    private int bqeProb;
    private int bqeQuota;
    /* access modifiers changed from: private */
    public String bssid;
    private ArrayList<String> bssidList;
    /* access modifiers changed from: private */
    public String bssidPassed;
    /* access modifiers changed from: private */
    public CNE cneHandle;
    /* access modifiers changed from: private */
    public HttpURLConnection conn;
    /* access modifiers changed from: private */
    public String currentBSSID;

    /* renamed from: dl */
    private int f3dl;
    /* access modifiers changed from: private */
    public int family;
    private int flags;
    /* access modifiers changed from: private */
    public URL httpUrl;
    private URL httpsUrl;
    /* access modifiers changed from: private */
    public IcdResult icdHttpReqResult;
    private IcdResult icdParamReqResult;
    private int icdProb;
    private int icdQuota;
    private int ipAddr;
    private int mbw;
    private int postingProb;
    /* access modifiers changed from: private */
    public Lock rspLock;
    private HttpsURLConnection sconn;
    private int sdev;
    /* access modifiers changed from: private */
    public int seconds;
    /* access modifiers changed from: private */
    public Boolean sentHttpRsp;
    private Boolean sentParamRsp;
    /* access modifiers changed from: private */
    public int tid;
    /* access modifiers changed from: private */
    public Boolean timeout;
    /* access modifiers changed from: private */
    public Timer timer;
    private String uri;
    private WifiManager wifiMgr;

    private enum IcdResult {
        ICD_RESULT_SUCCESS("ICD Sucess"),
        ICD_RESULT_PASS_NOT_STORE("ICD Pass Do not store in memory"),
        ICD_RESULT_FAILURE("ICD failure"),
        ICD_RESULT_TIMEOUT("ICD request Timed out");
        
        private final String name;

        private IcdResult(String name2) {
            this.name = name2;
        }

        public String toString() {
            return this.name;
        }
    }

    public ICDClient(CNE handle, WifiManager wifi, String uri2, String httpuri, String bssidPassed2, int seconds2, int tid2) {
        this.conn = null;
        this.sconn = null;
        this.icdQuota = 0;
        this.icdProb = 0;
        this.bqeQuota = 0;
        this.bqeProb = 0;
        this.mbw = 0;
        this.postingProb = 0;
        this.f3dl = 0;
        this.sdev = 0;
        this.family = 0;
        this.rspLock = new ReentrantLock();
        this.icdHttpReqResult = null;
        this.icdParamReqResult = null;
        this.sentParamRsp = false;
        this.sentHttpRsp = false;
        this.flags = 0;
        this.family = 0;
        this.seconds = seconds2;
        this.tid = tid2;
        this.wifiMgr = wifi;
        this.uri = uri2;
        this.bssidPassed = bssidPassed2;
        setBssid();
        this.cneHandle = handle;
        new Thread(new icdHttp(httpuri)).start();
        CneMsg.logd("WQE:ICD", "ICDClient() constructor created with URI = " + uri2.toString() + " httpURI = " + httpuri.toString() + " bssidPassed = " + bssidPassed2 + " tid = " + tid2);
    }

    public class icdHttp implements Runnable {
        private String hostName;
        private String httpURL = this.httpuri;
        private String httpUriAddress;
        private String httpuri;

        public icdHttp(String uri) {
            CneMsg.logi("WQE:ICD", "icdHttp - constructor");
            this.httpuri = uri;
            Boolean unused = ICDClient.this.timeout = false;
            Timer unused2 = ICDClient.this.timer = new Timer();
            ICDClient.this.timer.schedule(new ICDTimerTask(), (long) (ICDClient.this.seconds * 1000));
        }

        class ICDTimerTask extends TimerTask {
            ICDTimerTask() {
            }

            public void run() {
                CneMsg.logd("WQE:ICD", "TimedOut: ICDClient Timer thread started :" + ICDClient.this.seconds);
                Boolean unused = ICDClient.this.timeout = true;
                icdHttp.this.parseIcdHttpClientRsp();
            }
        }

        private String getHostFromURL(String url) {
            if (!url.startsWith("http://")) {
                CneMsg.loge("WQE:ICD", "The URL doesn't start with http. Returning null");
                return null;
            }
            int endPos = url.indexOf("/", 7);
            if (endPos == -1) {
                endPos = url.length();
            }
            return url.substring(7, endPos);
        }

        private Boolean setIcdHttpClientReq() {
            CneMsg.logd("WQE:ICD", "setIcdHttpClientReq()");
            this.hostName = getHostFromURL(this.httpuri);
            CneMsg.logd("WQE:ICD", "HostName: " + this.hostName);
            if (ICDClient.this.bssid == null || ICDClient.this.currentBSSID == null || ICDClient.this.bssidPassed == null) {
                CneMsg.logd("WQE:ICD", "Failure :Bssid=" + ICDClient.this.bssid + " currentBSSID=" + ICDClient.this.currentBSSID + " passed BSSID=" + ICDClient.this.bssidPassed);
                CneMsg.logd("WQE:ICD", "Interpreting as ICD_RESULT_PASS_NOT_STORE");
                IcdResult unused = ICDClient.this.icdHttpReqResult = IcdResult.ICD_RESULT_PASS_NOT_STORE;
                return false;
            } else if (!ICDClient.this.currentBSSID.equals(ICDClient.this.bssidPassed)) {
                CneMsg.logd("WQE:ICD", "Failure :currentBSSID=" + ICDClient.this.currentBSSID + " passed BSSID=" + ICDClient.this.bssidPassed);
                CneMsg.logd("WQE:ICD", "Interpreting as ICD_RESULT_PASS_NOT_STORE");
                IcdResult unused2 = ICDClient.this.icdHttpReqResult = IcdResult.ICD_RESULT_PASS_NOT_STORE;
                return false;
            } else {
                try {
                    URL unused3 = ICDClient.this.httpUrl = new URL(this.httpuri + "?bssid=" + URLEncoder.encode(ICDClient.this.bssid, "UTF-8"));
                    CneMsg.logd("WQE:ICD", "created url object with url = " + ICDClient.this.httpUrl);
                    try {
                        HttpURLConnection unused4 = ICDClient.this.conn = (HttpURLConnection) ICDClient.this.httpUrl.openConnection();
                        try {
                            ICDClient.this.conn.setRequestMethod("GET");
                            CneMsg.logd("WQE:ICD", "set request GET");
                            ICDClient.this.conn.setRequestProperty("Accept-Encoding", "gzip;q=0,deflate;q=0");
                            ICDClient.this.conn.setRequestProperty("Cache-Control", "no-cache");
                            CneMsg.logd("WQE:ICD", "done");
                            return true;
                        } catch (ProtocolException ex) {
                            ex.printStackTrace();
                            return false;
                        }
                    } catch (IOException ex2) {
                        ex2.printStackTrace();
                        return false;
                    } catch (NullPointerException ex3) {
                        ex3.printStackTrace();
                        return false;
                    }
                } catch (UnsupportedEncodingException ex4) {
                    ex4.printStackTrace();
                    return false;
                } catch (MalformedURLException ex5) {
                    ex5.printStackTrace();
                    return false;
                }
            }
        }

        private Boolean sendIcdHttpClientReq() {
            CneMsg.logd("WQE:ICD", "sendIcdHttpClientReq()");
            return true;
        }

        /* access modifiers changed from: private */
        public void parseIcdHttpClientRsp() {
            String str;
            String str2;
            String str3;
            String str4;
            CneMsg.logd("WQE:ICD", "parseIcdHttpClientRsp()");
            ICDClient.this.rspLock.lock();
            CneMsg.logd("WQE:ICD", "parseIcdHttpClientRsp() Locked");
            if (!ICDClient.this.sentHttpRsp.booleanValue()) {
                try {
                    CneMsg.logd("WQE:ICD", "sent GET to " + ICDClient.this.httpUrl);
                    int resp = ICDClient.this.conn.getResponseCode();
                    String responseMessage = ICDClient.this.conn.getResponseMessage();
                    if (ICDClient.this.timeout.booleanValue()) {
                        IcdResult unused = ICDClient.this.icdHttpReqResult = IcdResult.ICD_RESULT_TIMEOUT;
                        CneMsg.loge("WQE:ICD", "Http ICDRequest failure.Reason: " + ICDClient.this.icdHttpReqResult.toString());
                        ICDClient.this.cneHandle.sendIcdHttpResponse(ICDClient.this.icdHttpReqResult.ordinal(), ICDClient.this.bssidPassed, ICDClient.this.tid, ICDClient.this.family);
                    } else if (ICDClient.this.icdHttpReqResult != null) {
                        CneMsg.loge("WQE:ICD", "ICD Http Request failure.Reason: " + ICDClient.this.icdHttpReqResult.toString());
                        ICDClient.this.cneHandle.sendIcdHttpResponse(ICDClient.this.icdHttpReqResult.ordinal(), ICDClient.this.bssidPassed, ICDClient.this.tid, ICDClient.this.family);
                    } else if (resp == 200) {
                        CneMsg.logd("WQE:ICD", "ICD Http Request successful");
                        IcdResult unused2 = ICDClient.this.icdHttpReqResult = IcdResult.ICD_RESULT_SUCCESS;
                        parseIcdHttpJsonRsp();
                        if (ICDClient.this.icdHttpReqResult != IcdResult.ICD_RESULT_SUCCESS) {
                            CneMsg.logd("WQE:ICD", "ICD Http Json Parsing not successful");
                        }
                        ICDClient.this.cneHandle.sendIcdHttpResponse(ICDClient.this.icdHttpReqResult.ordinal(), ICDClient.this.bssidPassed, ICDClient.this.tid, ICDClient.this.family);
                    } else if (resp == 302) {
                        CneMsg.logd("WQE:ICD", "Interpreting as ICD FAILURE");
                        IcdResult unused3 = ICDClient.this.icdHttpReqResult = IcdResult.ICD_RESULT_FAILURE;
                        ICDClient.this.cneHandle.sendIcdHttpResponse(ICDClient.this.icdHttpReqResult.ordinal(), ICDClient.this.bssidPassed, ICDClient.this.tid, ICDClient.this.family);
                    } else if (resp == 400) {
                        CneMsg.logd("WQE:ICD", "Assuming ICDRequest successful, as Origin servers sent error");
                        CneMsg.logd("WQE:ICD", "Interpreting as ICD_RESULT_PASS_NOT_STORE");
                        IcdResult unused4 = ICDClient.this.icdHttpReqResult = IcdResult.ICD_RESULT_PASS_NOT_STORE;
                        ICDClient.this.cneHandle.sendIcdHttpResponse(ICDClient.this.icdHttpReqResult.ordinal(), ICDClient.this.bssidPassed, ICDClient.this.tid, ICDClient.this.family);
                    } else if (resp == 404) {
                        CneMsg.logd("WQE:ICD", "Assuming ICDRequest successful, as Origin servers sent error");
                        CneMsg.logd("WQE:ICD", "Interpreting as ICD_RESULT_PASS_NOT_STORE");
                        IcdResult unused5 = ICDClient.this.icdHttpReqResult = IcdResult.ICD_RESULT_PASS_NOT_STORE;
                        ICDClient.this.cneHandle.sendIcdHttpResponse(ICDClient.this.icdHttpReqResult.ordinal(), ICDClient.this.bssidPassed, ICDClient.this.tid, ICDClient.this.family);
                    } else if (resp == 405) {
                        CneMsg.logd("WQE:ICD", "Assuming ICDRequest successful, as Origin servers sent error");
                        CneMsg.logd("WQE:ICD", "Interpreting as ICD_RESULT_PASS_NOT_STORE");
                        IcdResult unused6 = ICDClient.this.icdHttpReqResult = IcdResult.ICD_RESULT_PASS_NOT_STORE;
                        ICDClient.this.cneHandle.sendIcdHttpResponse(ICDClient.this.icdHttpReqResult.ordinal(), ICDClient.this.bssidPassed, ICDClient.this.tid, ICDClient.this.family);
                    } else if (resp == 406) {
                        CneMsg.logd("WQE:ICD", "Assuming ICDRequest successful, as Origin servers sent error");
                        CneMsg.logd("WQE:ICD", "Interpreting as ICD_RESULT_PASS_NOT_STORE");
                        IcdResult unused7 = ICDClient.this.icdHttpReqResult = IcdResult.ICD_RESULT_PASS_NOT_STORE;
                        ICDClient.this.cneHandle.sendIcdHttpResponse(ICDClient.this.icdHttpReqResult.ordinal(), ICDClient.this.bssidPassed, ICDClient.this.tid, ICDClient.this.family);
                    } else if (resp == 500) {
                        CneMsg.logd("WQE:ICD", "Assuming ICDRequest successful, as Origin servers sent error");
                        CneMsg.logd("WQE:ICD", "Interpreting as ICD_RESULT_PASS_NOT_STORE");
                        IcdResult unused8 = ICDClient.this.icdHttpReqResult = IcdResult.ICD_RESULT_PASS_NOT_STORE;
                        ICDClient.this.cneHandle.sendIcdHttpResponse(ICDClient.this.icdHttpReqResult.ordinal(), ICDClient.this.bssidPassed, ICDClient.this.tid, ICDClient.this.family);
                    } else if (resp == 501) {
                        CneMsg.logd("WQE:ICD", "Assuming ICDRequest successful, as Origin servers sent error");
                        CneMsg.logd("WQE:ICD", "Interpreting as ICD_RESULT_PASS_NOT_STORE");
                        IcdResult unused9 = ICDClient.this.icdHttpReqResult = IcdResult.ICD_RESULT_PASS_NOT_STORE;
                        ICDClient.this.cneHandle.sendIcdHttpResponse(ICDClient.this.icdHttpReqResult.ordinal(), ICDClient.this.bssidPassed, ICDClient.this.tid, ICDClient.this.family);
                    } else if (resp == 503) {
                        CneMsg.logd("WQE:ICD", "Assuming ICDRequest successful, as Origin servers sent error");
                        CneMsg.logd("WQE:ICD", "Interpreting as ICD_RESULT_PASS_NOT_STORE");
                        IcdResult unused10 = ICDClient.this.icdHttpReqResult = IcdResult.ICD_RESULT_PASS_NOT_STORE;
                        ICDClient.this.cneHandle.sendIcdHttpResponse(ICDClient.this.icdHttpReqResult.ordinal(), ICDClient.this.bssidPassed, ICDClient.this.tid, ICDClient.this.family);
                    } else if (resp == 505) {
                        CneMsg.logd("WQE:ICD", "Assuming ICDRequest successful, as Origin servers sent error");
                        CneMsg.logd("WQE:ICD", "Interpreting as ICD_RESULT_PASS_NOT_STORE");
                        IcdResult unused11 = ICDClient.this.icdHttpReqResult = IcdResult.ICD_RESULT_PASS_NOT_STORE;
                        ICDClient.this.cneHandle.sendIcdHttpResponse(ICDClient.this.icdHttpReqResult.ordinal(), ICDClient.this.bssidPassed, ICDClient.this.tid, ICDClient.this.family);
                    } else if (resp >= 100 || resp < 0) {
                        CneMsg.loge("WQE:ICD", "Interpreting as ICD FAILURE - statusCode:" + resp);
                        IcdResult unused12 = ICDClient.this.icdHttpReqResult = IcdResult.ICD_RESULT_FAILURE;
                        ICDClient.this.cneHandle.sendIcdHttpResponse(ICDClient.this.icdHttpReqResult.ordinal(), ICDClient.this.bssidPassed, ICDClient.this.tid, ICDClient.this.family);
                    } else {
                        CneMsg.logd("WQE:ICD", "Assuming ICDRequest successful, as Origin servers sent error");
                        CneMsg.logd("WQE:ICD", "Interpreting as ICD_RESULT_PASS_NOT_STORE");
                        IcdResult unused13 = ICDClient.this.icdHttpReqResult = IcdResult.ICD_RESULT_PASS_NOT_STORE;
                        ICDClient.this.cneHandle.sendIcdHttpResponse(ICDClient.this.icdHttpReqResult.ordinal(), ICDClient.this.bssidPassed, ICDClient.this.tid, ICDClient.this.family);
                    }
                } catch (IOException ex) {
                    ICDClient.this.timer.cancel();
                    ex.printStackTrace();
                } catch (NullPointerException ex2) {
                    ICDClient.this.timer.cancel();
                    ex2.printStackTrace();
                } finally {
                    str = "WQE:ICD";
                    str2 = "Cancelling the ICD timer thread";
                    CneMsg.logd(str, str2);
                    ICDClient.this.timer.cancel();
                    Boolean unused14 = ICDClient.this.sentHttpRsp = true;
                    ICDClient.this.rspLock.unlock();
                    str3 = "WQE:ICD";
                    str4 = "parseIcdHttpClientRsp() UnLocked";
                    CneMsg.logd(str3, str4);
                }
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:42:0x00a4, code lost:
            r7 = r8;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:45:?, code lost:
            com.quicinc.cne.CneMsg.logd("WQE:ICD", "Didn't receive a JSON Object/bssid not present, possible captive portal");
            com.quicinc.cne.CneMsg.logd("WQE:ICD", "Interpreting as ICD FAILURE");
            com.quicinc.cne.ICDClient.m87set2(r15.this$0, com.quicinc.cne.ICDClient.IcdResult.ICD_RESULT_FAILURE);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:46:0x00c3, code lost:
            throw new java.lang.Exception();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:47:0x00c4, code lost:
            r0 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:48:0x00c5, code lost:
            com.quicinc.cne.CneMsg.logd("WQE:ICD", "Ignoring Parse  Exception");
            r0.printStackTrace();
         */
        /* JADX WARNING: Code restructure failed: missing block: B:49:0x00d1, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:50:0x00d2, code lost:
            r2 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:51:0x00d3, code lost:
            com.quicinc.cne.CneMsg.logd("WQE:ICD", "Ignoring Generic Exception" + r2);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:52:0x00ed, code lost:
            return;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:56:0x00fc, code lost:
            r1 = move-exception;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:57:0x00fd, code lost:
            com.quicinc.cne.CneMsg.logd("WQE:ICD", "IO Exception");
            r1.printStackTrace();
            com.quicinc.cne.CneMsg.logd("WQE:ICD", "Interpreting as ICD TIMEOUT");
            com.quicinc.cne.ICDClient.m87set2(r15.this$0, com.quicinc.cne.ICDClient.IcdResult.ICD_RESULT_TIMEOUT);
         */
        /* JADX WARNING: Code restructure failed: missing block: B:58:0x0119, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Removed duplicated region for block: B:22:0x005a A[Catch:{ JSONException -> 0x00a3, ParseException -> 0x00c4, IOException -> 0x00fc, Exception -> 0x00d2 }] */
        /* JADX WARNING: Removed duplicated region for block: B:37:0x0084  */
        /* JADX WARNING: Removed duplicated region for block: B:47:0x00c4 A[ExcHandler: ParseException (r0v0 'e' android.net.ParseException A[CUSTOM_DECLARE]), Splitter:B:14:0x0037] */
        /* JADX WARNING: Removed duplicated region for block: B:50:0x00d2 A[ExcHandler: Exception (r2v0 'e' java.lang.Exception A[CUSTOM_DECLARE]), Splitter:B:14:0x0037] */
        /* JADX WARNING: Removed duplicated region for block: B:56:0x00fc A[ExcHandler: IOException (r1v1 'e' java.io.IOException A[CUSTOM_DECLARE]), Splitter:B:14:0x0037] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private void parseIcdHttpJsonRsp() {
            /*
                r15 = this;
                java.lang.String r12 = "WQE:ICD"
                java.lang.String r13 = "parseIcdHttpJsonRsp()"
                com.quicinc.cne.CneMsg.logd(r12, r13)
                r10 = 0
                java.lang.StringBuilder r9 = new java.lang.StringBuilder
                r9.<init>()
                r5 = 0
                java.io.BufferedReader r6 = new java.io.BufferedReader     // Catch:{ IOException -> 0x0120 }
                java.io.InputStreamReader r12 = new java.io.InputStreamReader     // Catch:{ IOException -> 0x0120 }
                com.quicinc.cne.ICDClient r13 = com.quicinc.cne.ICDClient.this     // Catch:{ IOException -> 0x0120 }
                java.net.HttpURLConnection r13 = r13.conn     // Catch:{ IOException -> 0x0120 }
                java.io.InputStream r13 = r13.getInputStream()     // Catch:{ IOException -> 0x0120 }
                r12.<init>(r13)     // Catch:{ IOException -> 0x0120 }
                r6.<init>(r12)     // Catch:{ IOException -> 0x0120 }
                r11 = 0
            L_0x0025:
                java.lang.String r11 = r6.readLine()     // Catch:{ IOException -> 0x002f, all -> 0x011c }
                if (r11 == 0) goto L_0x006b
                r9.append(r11)     // Catch:{ IOException -> 0x002f, all -> 0x011c }
                goto L_0x0025
            L_0x002f:
                r4 = move-exception
                r5 = r6
            L_0x0031:
                r4.printStackTrace()     // Catch:{ all -> 0x007a }
                r5.close()     // Catch:{ IOException -> 0x0075 }
            L_0x0037:
                java.lang.String r10 = r9.toString()     // Catch:{ ParseException -> 0x00c4, IOException -> 0x00fc, JSONException -> 0x00ee, Exception -> 0x00d2 }
                java.lang.String r12 = "WQE:ICD"
                com.quicinc.cne.CneMsg.logd(r12, r10)     // Catch:{ ParseException -> 0x00c4, IOException -> 0x00fc, JSONException -> 0x00ee, Exception -> 0x00d2 }
                r7 = 0
                org.json.JSONObject r8 = new org.json.JSONObject     // Catch:{ JSONException -> 0x011a, ParseException -> 0x00c4, IOException -> 0x00fc, Exception -> 0x00d2 }
                r8.<init>(r10)     // Catch:{ JSONException -> 0x011a, ParseException -> 0x00c4, IOException -> 0x00fc, Exception -> 0x00d2 }
                com.quicinc.cne.ICDClient r12 = com.quicinc.cne.ICDClient.this     // Catch:{ JSONException -> 0x00a3, ParseException -> 0x00c4, IOException -> 0x00fc, Exception -> 0x00d2 }
                java.lang.String r12 = r12.bssid     // Catch:{ JSONException -> 0x00a3, ParseException -> 0x00c4, IOException -> 0x00fc, Exception -> 0x00d2 }
                java.lang.String r13 = "bssid"
                java.lang.String r13 = r8.getString(r13)     // Catch:{ JSONException -> 0x00a3, ParseException -> 0x00c4, IOException -> 0x00fc, Exception -> 0x00d2 }
                boolean r12 = r12.equals(r13)     // Catch:{ JSONException -> 0x00a3, ParseException -> 0x00c4, IOException -> 0x00fc, Exception -> 0x00d2 }
                if (r12 == 0) goto L_0x0084
                java.lang.String r12 = "WQE:ICD"
                java.lang.String r13 = "Bssids match, Http ICD PASS"
                com.quicinc.cne.CneMsg.logd(r12, r13)     // Catch:{ JSONException -> 0x00a3, ParseException -> 0x00c4, IOException -> 0x00fc, Exception -> 0x00d2 }
                com.quicinc.cne.ICDClient r12 = com.quicinc.cne.ICDClient.this     // Catch:{ JSONException -> 0x00a3, ParseException -> 0x00c4, IOException -> 0x00fc, Exception -> 0x00d2 }
                com.quicinc.cne.ICDClient$IcdResult r13 = com.quicinc.cne.ICDClient.IcdResult.ICD_RESULT_SUCCESS     // Catch:{ JSONException -> 0x00a3, ParseException -> 0x00c4, IOException -> 0x00fc, Exception -> 0x00d2 }
                com.quicinc.cne.ICDClient.IcdResult unused = r12.icdHttpReqResult = r13     // Catch:{ JSONException -> 0x00a3, ParseException -> 0x00c4, IOException -> 0x00fc, Exception -> 0x00d2 }
                return
            L_0x006b:
                r6.close()     // Catch:{ IOException -> 0x0070 }
            L_0x006e:
                r5 = r6
                goto L_0x0037
            L_0x0070:
                r1 = move-exception
                r1.printStackTrace()
                goto L_0x006e
            L_0x0075:
                r1 = move-exception
                r1.printStackTrace()
                goto L_0x0037
            L_0x007a:
                r12 = move-exception
            L_0x007b:
                r5.close()     // Catch:{ IOException -> 0x007f }
            L_0x007e:
                throw r12
            L_0x007f:
                r1 = move-exception
                r1.printStackTrace()
                goto L_0x007e
            L_0x0084:
                java.lang.String r12 = "WQE:ICD"
                java.lang.String r13 = "Received a mismatched bssid from the server in JSON response."
                com.quicinc.cne.CneMsg.loge(r12, r13)     // Catch:{ JSONException -> 0x00a3, ParseException -> 0x00c4, IOException -> 0x00fc, Exception -> 0x00d2 }
                java.lang.String r12 = "WQE:ICD"
                java.lang.String r13 = "Interpreting as ICD FAILURE"
                com.quicinc.cne.CneMsg.logd(r12, r13)     // Catch:{ JSONException -> 0x00a3, ParseException -> 0x00c4, IOException -> 0x00fc, Exception -> 0x00d2 }
                com.quicinc.cne.ICDClient r12 = com.quicinc.cne.ICDClient.this     // Catch:{ JSONException -> 0x00a3, ParseException -> 0x00c4, IOException -> 0x00fc, Exception -> 0x00d2 }
                com.quicinc.cne.ICDClient$IcdResult r13 = com.quicinc.cne.ICDClient.IcdResult.ICD_RESULT_FAILURE     // Catch:{ JSONException -> 0x00a3, ParseException -> 0x00c4, IOException -> 0x00fc, Exception -> 0x00d2 }
                com.quicinc.cne.ICDClient.IcdResult unused = r12.icdHttpReqResult = r13     // Catch:{ JSONException -> 0x00a3, ParseException -> 0x00c4, IOException -> 0x00fc, Exception -> 0x00d2 }
                java.lang.Exception r12 = new java.lang.Exception     // Catch:{ JSONException -> 0x00a3, ParseException -> 0x00c4, IOException -> 0x00fc, Exception -> 0x00d2 }
                r12.<init>()     // Catch:{ JSONException -> 0x00a3, ParseException -> 0x00c4, IOException -> 0x00fc, Exception -> 0x00d2 }
                throw r12     // Catch:{ JSONException -> 0x00a3, ParseException -> 0x00c4, IOException -> 0x00fc, Exception -> 0x00d2 }
            L_0x00a3:
                r3 = move-exception
                r7 = r8
            L_0x00a5:
                java.lang.String r12 = "WQE:ICD"
                java.lang.String r13 = "Didn't receive a JSON Object/bssid not present, possible captive portal"
                com.quicinc.cne.CneMsg.logd(r12, r13)     // Catch:{ ParseException -> 0x00c4, IOException -> 0x00fc, JSONException -> 0x00ee, Exception -> 0x00d2 }
                java.lang.String r12 = "WQE:ICD"
                java.lang.String r13 = "Interpreting as ICD FAILURE"
                com.quicinc.cne.CneMsg.logd(r12, r13)     // Catch:{ ParseException -> 0x00c4, IOException -> 0x00fc, JSONException -> 0x00ee, Exception -> 0x00d2 }
                com.quicinc.cne.ICDClient r12 = com.quicinc.cne.ICDClient.this     // Catch:{ ParseException -> 0x00c4, IOException -> 0x00fc, JSONException -> 0x00ee, Exception -> 0x00d2 }
                com.quicinc.cne.ICDClient$IcdResult r13 = com.quicinc.cne.ICDClient.IcdResult.ICD_RESULT_FAILURE     // Catch:{ ParseException -> 0x00c4, IOException -> 0x00fc, JSONException -> 0x00ee, Exception -> 0x00d2 }
                com.quicinc.cne.ICDClient.IcdResult unused = r12.icdHttpReqResult = r13     // Catch:{ ParseException -> 0x00c4, IOException -> 0x00fc, JSONException -> 0x00ee, Exception -> 0x00d2 }
                java.lang.Exception r12 = new java.lang.Exception     // Catch:{ ParseException -> 0x00c4, IOException -> 0x00fc, JSONException -> 0x00ee, Exception -> 0x00d2 }
                r12.<init>()     // Catch:{ ParseException -> 0x00c4, IOException -> 0x00fc, JSONException -> 0x00ee, Exception -> 0x00d2 }
                throw r12     // Catch:{ ParseException -> 0x00c4, IOException -> 0x00fc, JSONException -> 0x00ee, Exception -> 0x00d2 }
            L_0x00c4:
                r0 = move-exception
                java.lang.String r12 = "WQE:ICD"
                java.lang.String r13 = "Ignoring Parse  Exception"
                com.quicinc.cne.CneMsg.logd(r12, r13)
                r0.printStackTrace()
                return
            L_0x00d2:
                r2 = move-exception
                java.lang.String r12 = "WQE:ICD"
                java.lang.StringBuilder r13 = new java.lang.StringBuilder
                r13.<init>()
                java.lang.String r14 = "Ignoring Generic Exception"
                java.lang.StringBuilder r13 = r13.append(r14)
                java.lang.StringBuilder r13 = r13.append(r2)
                java.lang.String r13 = r13.toString()
                com.quicinc.cne.CneMsg.logd(r12, r13)
                return
            L_0x00ee:
                r3 = move-exception
                java.lang.String r12 = "WQE:ICD"
                java.lang.String r13 = "Ignoring JSON Exception"
                com.quicinc.cne.CneMsg.logd(r12, r13)
                r3.printStackTrace()
                return
            L_0x00fc:
                r1 = move-exception
                java.lang.String r12 = "WQE:ICD"
                java.lang.String r13 = "IO Exception"
                com.quicinc.cne.CneMsg.logd(r12, r13)
                r1.printStackTrace()
                java.lang.String r12 = "WQE:ICD"
                java.lang.String r13 = "Interpreting as ICD TIMEOUT"
                com.quicinc.cne.CneMsg.logd(r12, r13)
                com.quicinc.cne.ICDClient r12 = com.quicinc.cne.ICDClient.this
                com.quicinc.cne.ICDClient$IcdResult r13 = com.quicinc.cne.ICDClient.IcdResult.ICD_RESULT_TIMEOUT
                com.quicinc.cne.ICDClient.IcdResult unused = r12.icdHttpReqResult = r13
                return
            L_0x011a:
                r3 = move-exception
                goto L_0x00a5
            L_0x011c:
                r12 = move-exception
                r5 = r6
                goto L_0x007b
            L_0x0120:
                r4 = move-exception
                goto L_0x0031
            */
            throw new UnsupportedOperationException("Method not decompiled: com.quicinc.cne.ICDClient.icdHttp.parseIcdHttpJsonRsp():void");
        }

        public void run() {
            CneMsg.logi("WQE:ICD", "icdHttp - start:" + ICDClient.this.icdHttpReqResult);
            if (setIcdHttpClientReq().booleanValue()) {
                sendIcdHttpClientReq();
            }
            parseIcdHttpClientRsp();
        }
    }

    private void setBssid() {
        CneMsg.logd("WQE:ICD", "setBssid()");
        WifiInfo wifiInfo = this.wifiMgr.getConnectionInfo();
        if (wifiInfo != null) {
            this.bssid = wifiInfo.getBSSID().replace(":", "");
            this.currentBSSID = wifiInfo.getBSSID();
            this.ipAddr = wifiInfo.getIpAddress();
            CneMsg.logd("WQE:ICD", "Bssid=" + this.bssid + " currentBSSID=" + this.currentBSSID);
            CneMsg.logd("WQE:ICD", "Passed BSSID=" + this.bssidPassed + " and IPAddr =" + new Integer(this.ipAddr).toString());
        } else {
            CneMsg.logd("WQE:ICD", "wifiMgr RemoteException returned NULL");
        }
        this.bssidList = new ArrayList<>();
        List<ScanResult> wifiScanResults = this.wifiMgr.getScanResults();
        if (wifiScanResults == null) {
            CneMsg.logd("WQE:ICD", "wifi scan result is null");
            return;
        }
        for (ScanResult result : wifiScanResults) {
            if (result == null || result.SSID == null) {
                CneMsg.logd("WQE:ICD", "@@@Received invalid scan result: " + result);
            } else {
                this.bssidList.add(result.BSSID.replace(":", ""));
            }
        }
        Collections.sort(this.bssidList, String.CASE_INSENSITIVE_ORDER);
    }

    private Boolean setIcdParamClientReq() {
        CneMsg.logd("WQE:ICD", "setIcdParamClientReq()");
        if (this.bssid == null || this.currentBSSID == null || this.bssidPassed == null) {
            CneMsg.logd("WQE:ICD", "Failure :Bssid=" + this.bssid + " currentBSSID=" + this.currentBSSID + " passed BSSID=" + this.bssidPassed);
            CneMsg.logd("WQE:ICD", "Interpreting as ICD_RESULT_PASS_NOT_STORE");
            this.icdParamReqResult = IcdResult.ICD_RESULT_PASS_NOT_STORE;
            return false;
        } else if (!this.currentBSSID.equals(this.bssidPassed)) {
            CneMsg.logd("WQE:ICD", "Failure :currentBSSID=" + this.currentBSSID + " passed BSSID=" + this.bssidPassed);
            CneMsg.logd("WQE:ICD", "Interpreting as ICD_RESULT_PASS_NOT_STORE");
            this.icdParamReqResult = IcdResult.ICD_RESULT_PASS_NOT_STORE;
            return false;
        } else {
            int numBssidAdded = 0;
            String np = null;
            StringBuilder tmp1 = new StringBuilder(AndsfConstant.MAX_THRESHOLDS_ID);
            int len = 0;
            for (String str : this.bssidList) {
                CneMsg.logd("WQE:ICD", "currentbssid:" + this.bssid + ",nbssid:" + str);
                if (!str.equals(this.bssid)) {
                    if (numBssidAdded >= 1 && numBssidAdded < 4) {
                        len += str.length();
                        tmp1.append(str);
                        if (numBssidAdded != 3) {
                            tmp1.append(",");
                            len++;
                        }
                        numBssidAdded++;
                    }
                    if (numBssidAdded == 0) {
                        np = str;
                        numBssidAdded++;
                    }
                }
            }
            String nx = tmp1.substring(0, len);
            try {
                String UrlString = this.uri + "?bssid=" + URLEncoder.encode(this.bssid, "UTF-8");
                if (np != null) {
                    UrlString = UrlString + "&np=" + URLEncoder.encode(np, "UTF-8");
                }
                if (nx != null) {
                    UrlString = UrlString + "&nx=" + URLEncoder.encode(nx, "UTF-8");
                }
                this.httpsUrl = new URL(UrlString);
                CneMsg.logd("WQE:ICD", "created url object with url = " + this.httpsUrl);
                try {
                    this.sconn = (HttpsURLConnection) this.httpsUrl.openConnection();
                    try {
                        this.sconn.setRequestMethod("GET");
                        this.sconn.setRequestProperty("Accept-Encoding", "gzip;q=0,deflate;q=0");
                        this.sconn.setRequestProperty("Cache-Control", "no-cache");
                        return true;
                    } catch (ProtocolException ex) {
                        ex.printStackTrace();
                        return false;
                    }
                } catch (IOException ex2) {
                    ex2.printStackTrace();
                    return false;
                }
            } catch (MalformedURLException ex3) {
                ex3.printStackTrace();
                return false;
            } catch (UnsupportedEncodingException ex4) {
                ex4.printStackTrace();
                return false;
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:56:0x0193, code lost:
        r9 = r10;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:59:?, code lost:
        com.quicinc.cne.CneMsg.logd("WQE:ICD", "Didn't receive a JSON Object/bssid not present, possible captive portal");
        com.quicinc.cne.CneMsg.logd("WQE:ICD", "Interpreting as ICD FAILURE");
        r19.icdParamReqResult = com.quicinc.cne.ICDClient.IcdResult.ICD_RESULT_FAILURE;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:60:0x01b3, code lost:
        throw new java.lang.Exception();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x01b4, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x01b5, code lost:
        com.quicinc.cne.CneMsg.logd("WQE:ICD", "Ignoring Parse  Exception");
        r2.printStackTrace();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x01c1, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x01c3, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x01d2, code lost:
        r3 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x01d3, code lost:
        com.quicinc.cne.CneMsg.logd("WQE:ICD", "IO Exception");
        r3.printStackTrace();
        com.quicinc.cne.CneMsg.logd("WQE:ICD", "Interpreting as ICD TIMEOUT");
        r19.icdParamReqResult = com.quicinc.cne.ICDClient.IcdResult.ICD_RESULT_TIMEOUT;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:71:0x01f0, code lost:
        return;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:24:0x0062 A[Catch:{ JSONException -> 0x0192, ParseException -> 0x01b4, IOException -> 0x01d2, Exception -> 0x01c2 }] */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x0172  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x01b4 A[ExcHandler: ParseException (r2v0 'e' android.net.ParseException A[CUSTOM_DECLARE]), Splitter:B:15:0x003b] */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x01c2 A[ExcHandler: Exception (e java.lang.Exception), Splitter:B:15:0x003b] */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x01d2 A[ExcHandler: IOException (r3v1 'e' java.io.IOException A[CUSTOM_DECLARE]), Splitter:B:15:0x003b] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void parseIcdParamJsonRsp() {
        /*
            r19 = this;
            java.lang.String r17 = "WQE:ICD"
            java.lang.String r18 = "parseIcdParamJsonRsp()"
            com.quicinc.cne.CneMsg.logd(r17, r18)
            r12 = 0
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            r7 = 0
            java.io.BufferedReader r8 = new java.io.BufferedReader     // Catch:{ IOException -> 0x01f7 }
            java.io.InputStreamReader r17 = new java.io.InputStreamReader     // Catch:{ IOException -> 0x01f7 }
            r0 = r19
            javax.net.ssl.HttpsURLConnection r0 = r0.sconn     // Catch:{ IOException -> 0x01f7 }
            r18 = r0
            java.io.InputStream r18 = r18.getInputStream()     // Catch:{ IOException -> 0x01f7 }
            r17.<init>(r18)     // Catch:{ IOException -> 0x01f7 }
            r0 = r17
            r8.<init>(r0)     // Catch:{ IOException -> 0x01f7 }
            r13 = 0
        L_0x0027:
            java.lang.String r13 = r8.readLine()     // Catch:{ IOException -> 0x0031, all -> 0x01f3 }
            if (r13 == 0) goto L_0x0154
            r11.append(r13)     // Catch:{ IOException -> 0x0031, all -> 0x01f3 }
            goto L_0x0027
        L_0x0031:
            r6 = move-exception
            r7 = r8
        L_0x0033:
            if (r7 == 0) goto L_0x0035
        L_0x0035:
            r6.printStackTrace()     // Catch:{ all -> 0x0168 }
            r7.close()     // Catch:{ IOException -> 0x0162 }
        L_0x003b:
            java.lang.String r12 = r11.toString()     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            java.lang.String r17 = "WQE:ICD"
            r0 = r17
            com.quicinc.cne.CneMsg.logd(r0, r12)     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r9 = 0
            org.json.JSONObject r10 = new org.json.JSONObject     // Catch:{ JSONException -> 0x01f1, ParseException -> 0x01b4, IOException -> 0x01d2, Exception -> 0x01c2 }
            r10.<init>(r12)     // Catch:{ JSONException -> 0x01f1, ParseException -> 0x01b4, IOException -> 0x01d2, Exception -> 0x01c2 }
            r0 = r19
            java.lang.String r0 = r0.bssid     // Catch:{ JSONException -> 0x0192, ParseException -> 0x01b4, IOException -> 0x01d2, Exception -> 0x01c2 }
            r17 = r0
            java.lang.String r18 = "bssid"
            r0 = r18
            java.lang.String r18 = r10.getString(r0)     // Catch:{ JSONException -> 0x0192, ParseException -> 0x01b4, IOException -> 0x01d2, Exception -> 0x01c2 }
            boolean r17 = r17.equals(r18)     // Catch:{ JSONException -> 0x0192, ParseException -> 0x01b4, IOException -> 0x01d2, Exception -> 0x01c2 }
            if (r17 == 0) goto L_0x0172
            java.lang.String r17 = "WQE:ICD"
            java.lang.String r18 = "Bssids match, ICD PASS"
            com.quicinc.cne.CneMsg.logd(r17, r18)     // Catch:{ JSONException -> 0x0192, ParseException -> 0x01b4, IOException -> 0x01d2, Exception -> 0x01c2 }
            java.lang.String r17 = "mbw"
            r0 = r17
            int r17 = r10.getInt(r0)     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r0 = r17
            r1 = r19
            r1.mbw = r0     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r0 = r19
            int r0 = r0.flags     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r17 = r0
            r17 = r17 | 16
            r0 = r17
            r1 = r19
            r1.flags = r0     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            java.lang.String r17 = "tput"
            r0 = r17
            org.json.JSONObject r16 = r10.optJSONObject(r0)     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            if (r16 == 0) goto L_0x00c9
            java.lang.String r17 = "dl"
            int r17 = r16.getInt(r17)     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r0 = r17
            r1 = r19
            r1.f3dl = r0     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r0 = r19
            int r0 = r0.flags     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r17 = r0
            r17 = r17 | 32
            r0 = r17
            r1 = r19
            r1.flags = r0     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            java.lang.String r17 = "sdev"
            int r17 = r16.getInt(r17)     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r0 = r17
            r1 = r19
            r1.sdev = r0     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r0 = r19
            int r0 = r0.flags     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r17 = r0
            r17 = r17 | 64
            r0 = r17
            r1 = r19
            r1.flags = r0     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
        L_0x00c9:
            java.lang.String r17 = "prob"
            r0 = r17
            org.json.JSONObject r14 = r10.optJSONObject(r0)     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            if (r14 == 0) goto L_0x010e
            java.lang.String r17 = "icd"
            r0 = r17
            int r17 = r14.getInt(r0)     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r0 = r17
            r1 = r19
            r1.icdProb = r0     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r0 = r19
            int r0 = r0.flags     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r17 = r0
            r17 = r17 | 2
            r0 = r17
            r1 = r19
            r1.flags = r0     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            java.lang.String r17 = "bqe"
            r0 = r17
            int r17 = r14.getInt(r0)     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r0 = r17
            r1 = r19
            r1.bqeProb = r0     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r0 = r19
            int r0 = r0.flags     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r17 = r0
            r17 = r17 | 8
            r0 = r17
            r1 = r19
            r1.flags = r0     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
        L_0x010e:
            java.lang.String r17 = "quota"
            r0 = r17
            org.json.JSONObject r15 = r10.optJSONObject(r0)     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            if (r15 == 0) goto L_0x0153
            java.lang.String r17 = "icd"
            r0 = r17
            int r17 = r15.getInt(r0)     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r0 = r17
            r1 = r19
            r1.icdQuota = r0     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r0 = r19
            int r0 = r0.flags     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r17 = r0
            r17 = r17 | 1
            r0 = r17
            r1 = r19
            r1.flags = r0     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            java.lang.String r17 = "bqe"
            r0 = r17
            int r17 = r15.getInt(r0)     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r0 = r17
            r1 = r19
            r1.bqeQuota = r0     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r0 = r19
            int r0 = r0.flags     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r17 = r0
            r17 = r17 | 4
            r0 = r17
            r1 = r19
            r1.flags = r0     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
        L_0x0153:
            return
        L_0x0154:
            r8.close()     // Catch:{ IOException -> 0x0031, all -> 0x01f3 }
            r8.close()     // Catch:{ IOException -> 0x015d }
        L_0x015a:
            r7 = r8
            goto L_0x003b
        L_0x015d:
            r3 = move-exception
            r3.printStackTrace()
            goto L_0x015a
        L_0x0162:
            r3 = move-exception
            r3.printStackTrace()
            goto L_0x003b
        L_0x0168:
            r17 = move-exception
        L_0x0169:
            r7.close()     // Catch:{ IOException -> 0x016d }
        L_0x016c:
            throw r17
        L_0x016d:
            r3 = move-exception
            r3.printStackTrace()
            goto L_0x016c
        L_0x0172:
            java.lang.String r17 = "WQE:ICD"
            java.lang.String r18 = "Received a mismatched bssid from the server in JSON response."
            com.quicinc.cne.CneMsg.loge(r17, r18)     // Catch:{ JSONException -> 0x0192, ParseException -> 0x01b4, IOException -> 0x01d2, Exception -> 0x01c2 }
            java.lang.String r17 = "WQE:ICD"
            java.lang.String r18 = "Interpreting as ICD FAILURE"
            com.quicinc.cne.CneMsg.logd(r17, r18)     // Catch:{ JSONException -> 0x0192, ParseException -> 0x01b4, IOException -> 0x01d2, Exception -> 0x01c2 }
            com.quicinc.cne.ICDClient$IcdResult r17 = com.quicinc.cne.ICDClient.IcdResult.ICD_RESULT_FAILURE     // Catch:{ JSONException -> 0x0192, ParseException -> 0x01b4, IOException -> 0x01d2, Exception -> 0x01c2 }
            r0 = r17
            r1 = r19
            r1.icdParamReqResult = r0     // Catch:{ JSONException -> 0x0192, ParseException -> 0x01b4, IOException -> 0x01d2, Exception -> 0x01c2 }
            java.lang.Exception r17 = new java.lang.Exception     // Catch:{ JSONException -> 0x0192, ParseException -> 0x01b4, IOException -> 0x01d2, Exception -> 0x01c2 }
            r17.<init>()     // Catch:{ JSONException -> 0x0192, ParseException -> 0x01b4, IOException -> 0x01d2, Exception -> 0x01c2 }
            throw r17     // Catch:{ JSONException -> 0x0192, ParseException -> 0x01b4, IOException -> 0x01d2, Exception -> 0x01c2 }
        L_0x0192:
            r5 = move-exception
            r9 = r10
        L_0x0194:
            java.lang.String r17 = "WQE:ICD"
            java.lang.String r18 = "Didn't receive a JSON Object/bssid not present, possible captive portal"
            com.quicinc.cne.CneMsg.logd(r17, r18)     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            java.lang.String r17 = "WQE:ICD"
            java.lang.String r18 = "Interpreting as ICD FAILURE"
            com.quicinc.cne.CneMsg.logd(r17, r18)     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            com.quicinc.cne.ICDClient$IcdResult r17 = com.quicinc.cne.ICDClient.IcdResult.ICD_RESULT_FAILURE     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r0 = r17
            r1 = r19
            r1.icdParamReqResult = r0     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            java.lang.Exception r17 = new java.lang.Exception     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            r17.<init>()     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
            throw r17     // Catch:{ ParseException -> 0x01b4, IOException -> 0x01d2, JSONException -> 0x01c4, Exception -> 0x01c2 }
        L_0x01b4:
            r2 = move-exception
            java.lang.String r17 = "WQE:ICD"
            java.lang.String r18 = "Ignoring Parse  Exception"
            com.quicinc.cne.CneMsg.logd(r17, r18)
            r2.printStackTrace()
            return
        L_0x01c2:
            r4 = move-exception
            return
        L_0x01c4:
            r5 = move-exception
            java.lang.String r17 = "WQE:ICD"
            java.lang.String r18 = "Ignoring JSON Exception"
            com.quicinc.cne.CneMsg.logd(r17, r18)
            r5.printStackTrace()
            return
        L_0x01d2:
            r3 = move-exception
            java.lang.String r17 = "WQE:ICD"
            java.lang.String r18 = "IO Exception"
            com.quicinc.cne.CneMsg.logd(r17, r18)
            r3.printStackTrace()
            java.lang.String r17 = "WQE:ICD"
            java.lang.String r18 = "Interpreting as ICD TIMEOUT"
            com.quicinc.cne.CneMsg.logd(r17, r18)
            com.quicinc.cne.ICDClient$IcdResult r17 = com.quicinc.cne.ICDClient.IcdResult.ICD_RESULT_TIMEOUT
            r0 = r17
            r1 = r19
            r1.icdParamReqResult = r0
            return
        L_0x01f1:
            r5 = move-exception
            goto L_0x0194
        L_0x01f3:
            r17 = move-exception
            r7 = r8
            goto L_0x0169
        L_0x01f7:
            r6 = move-exception
            goto L_0x0033
        */
        throw new UnsupportedOperationException("Method not decompiled: com.quicinc.cne.ICDClient.parseIcdParamJsonRsp():void");
    }

    private void parseIcdParamClientRsp() {
        CneMsg.logd("WQE:ICD", "parseIcdParamClientRsp()");
        this.rspLock.lock();
        CneMsg.logd("WQE:ICD", "parseIcdParamClientRsp() Locked");
        if (this.sentParamRsp.booleanValue()) {
            CneMsg.logd("WQE:ICD", "ICD Parameter Response sent already, doing nothing");
        } else if (this.icdParamReqResult != null) {
            CneMsg.loge("WQE:ICD", "ICDRequest failure.Reason: " + this.icdParamReqResult.toString());
        } else {
            int resp = 0;
            String responseMessage = null;
            try {
                resp = this.sconn.getResponseCode();
                responseMessage = this.sconn.getResponseMessage();
            } catch (IOException e) {
                e.printStackTrace();
            }
            CneMsg.logd("WQE:ICD", "ICDResponse http Status code: " + resp + " " + responseMessage);
            if (resp == 200) {
                CneMsg.logd("WQE:ICD", "ICD Parameter Request successful");
                this.icdParamReqResult = IcdResult.ICD_RESULT_SUCCESS;
                parseIcdParamJsonRsp();
                this.cneHandle.sendICDResponse(this.icdParamReqResult.ordinal(), this.bssidPassed, this.flags, this.tid, this.icdQuota, this.icdProb, this.bqeQuota, this.bqeProb, this.mbw, this.f3dl, this.sdev);
            } else {
                CneMsg.loge("WQE:ICD", "ICD Parameter Request failed");
            }
        }
        this.sentParamRsp = true;
        this.rspLock.unlock();
        CneMsg.logd("WQE:ICD", "parseIcdParamClientRsp() UnLocked");
    }

    public void run() {
        CneMsg.logd("WQE:ICD", "ICDClient thread started");
        if (setIcdParamClientReq().booleanValue()) {
            parseIcdParamClientRsp();
        }
    }
}
