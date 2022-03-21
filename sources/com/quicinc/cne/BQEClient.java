package com.quicinc.cne;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.quicinc.cne.andsf.AndsfConstant;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class BQEClient implements Runnable {
    private static final String SUB_TYPE = "WQE:BQE";
    private static Boolean inProgress;
    private String baseUrlString;
    private String bssid;
    private ArrayList<String> bssidList;
    private String bssidPassed;
    private URL bssidURL;
    private CNE cneHandle;
    private HttpURLConnection conn;
    private String currentBSSID;
    private String filesize;
    private String getRequestUrl;
    private int ipAddr;
    private String postMsg;
    private Boolean postingThread;
    private BqeResult result;
    private Lock rspLock;
    private int rtt;
    private long rttEnd;
    private long rttStart;
    private HttpsURLConnection sconn;
    private Boolean sentRsp;
    private InetAddress serverInetAddr;
    private int tMs;
    private int tSec;
    private int tput;

    /* renamed from: ts */
    private int f0ts;
    private URL url;
    private WifiManager wifiMgr;

    private enum BqeResult {
        BQE_RESULT_CONTINUE("BQE Result Continue Estimation"),
        BQE_RESULT_FAILURE("BQE Result failure, Stop Estimation"),
        BQE_RESULT_SUCCESS("BQE Result Success, Stop Estimation");
        
        private final String name;

        private BqeResult(String name2) {
            this.name = name2;
        }

        public String toString() {
            return this.name;
        }
    }

    public BQEClient(CNE handle, WifiManager wifi, String uri, String bssidPassed2, String filesize2) {
        this.conn = null;
        this.sconn = null;
        this.rspLock = new ReentrantLock();
        this.result = null;
        this.getRequestUrl = null;
        this.sentRsp = false;
        inProgress = true;
        this.rtt = 0;
        this.rttStart = 0;
        this.rttEnd = 0;
        this.tSec = 0;
        this.tMs = 0;
        this.wifiMgr = wifi;
        this.postingThread = false;
        this.baseUrlString = uri;
        this.bssidPassed = bssidPassed2;
        this.filesize = filesize2;
        setBssid();
        this.cneHandle = handle;
        CneMsg.logd("WQE:BQE", "BQEClient() constructor created with GET URI =" + this.baseUrlString + " and bssidPassed=" + bssidPassed2);
    }

    public BQEClient(CNE handle, WifiManager wifi, String uri, String getRequestUrl2, String bssidPassed2, String tput2, String ts) {
        this.conn = null;
        this.sconn = null;
        this.rspLock = new ReentrantLock();
        this.getRequestUrl = getRequestUrl2;
        this.result = null;
        this.sentRsp = false;
        this.f0ts = Integer.valueOf(ts).intValue();
        this.tput = Integer.valueOf(tput2).intValue();
        this.wifiMgr = wifi;
        this.postingThread = true;
        this.baseUrlString = uri;
        this.bssidPassed = bssidPassed2;
        setBssid();
        this.cneHandle = handle;
        CneMsg.logd("WQE:BQE", "BQEClient() constructor created with POST URI =" + this.baseUrlString + " and bssidPassed=" + bssidPassed2);
    }

    public static void stop() {
        if (!inProgress.booleanValue()) {
            CneMsg.logd("WQE:BQE", "BQE active probing is already stopped");
        }
        CneMsg.logd("WQE:BQE", "BQE active probing is now stopped");
    }

    private void setBssid() {
        CneMsg.logd("WQE:BQE", "setBssid()");
        WifiInfo wifiInfo = this.wifiMgr.getConnectionInfo();
        if (wifiInfo != null) {
            this.bssid = wifiInfo.getBSSID().replace(":", "");
            this.currentBSSID = wifiInfo.getBSSID();
            this.ipAddr = wifiInfo.getIpAddress();
            CneMsg.logd("WQE:BQE", "Bssid=" + this.bssid + " currentBSSID=" + this.currentBSSID);
            CneMsg.logd("WQE:BQE", "Passed BSSID=" + this.bssidPassed + " and IPAddr =" + new Integer(this.ipAddr).toString());
        } else {
            CneMsg.logd("WQE:BQE", "wifiMgr RemoteException returned NULL");
        }
        List<ScanResult> wifiScanResults = this.wifiMgr.getScanResults();
        this.bssidList = new ArrayList<>();
        for (ScanResult result2 : wifiScanResults) {
            if (result2 == null || result2.SSID == null) {
                CneMsg.logd("WQE:BQE", "@@@Received invalid scan result: " + result2);
            } else {
                this.bssidList.add(result2.BSSID.replace(":", ""));
            }
        }
        Collections.sort(this.bssidList, String.CASE_INSENSITIVE_ORDER);
    }

    private Boolean setBQEClientReq() {
        CneMsg.logd("WQE:BQE", "setBQEClientReq()");
        if (this.bssid == null || this.currentBSSID == null || this.bssidPassed == null) {
            CneMsg.logd("WQE:BQE", "Failure :Bssid=" + this.bssid + " currentBSSID=" + this.currentBSSID + " passed BSSID=" + this.bssidPassed);
            this.result = BqeResult.BQE_RESULT_FAILURE;
            return false;
        } else if (this.baseUrlString == null) {
            CneMsg.logd("WQE:BQE", "Failure :base url==NULL");
            this.result = BqeResult.BQE_RESULT_FAILURE;
            return false;
        } else if (!this.currentBSSID.equals(this.bssidPassed)) {
            CneMsg.logd("WQE:BQE", "Failure :currentBSSID=" + this.currentBSSID + " passed BSSID=" + this.bssidPassed);
            this.result = BqeResult.BQE_RESULT_FAILURE;
            return false;
        } else {
            String np = null;
            if (!this.postingThread.booleanValue()) {
                CneMsg.logd("WQE:BQE", "Set non-Posting Request");
                int numBssidAdded = 0;
                StringBuilder sb = new StringBuilder(AndsfConstant.MAX_THRESHOLDS_ID);
                int len = 0;
                for (String str : this.bssidList) {
                    CneMsg.logd("WQE:BQE", "@@@currentbssid:" + this.bssid + ",nbssid:" + str);
                    if (!str.equals(this.bssid)) {
                        if (numBssidAdded >= 1 && numBssidAdded < 4) {
                            len += str.length();
                            sb.append(str);
                            if (numBssidAdded != 3) {
                                sb.append(",");
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
                String xp = sb.substring(0, len);
                try {
                    String UrlString = this.baseUrlString + "?bssid=" + URLEncoder.encode(this.bssid, "UTF-8");
                    if (this.filesize != null) {
                        UrlString = UrlString + "&size=" + URLEncoder.encode(this.filesize, "UTF-8");
                    }
                    if (np != null) {
                        UrlString = UrlString + "&np=" + URLEncoder.encode(np, "UTF-8");
                    }
                    if (xp != null) {
                        UrlString = UrlString + "&xp=" + URLEncoder.encode(xp, "UTF-8");
                    }
                    this.url = new URL(UrlString);
                } catch (UnsupportedEncodingException ex) {
                    ex.printStackTrace();
                    return false;
                } catch (MalformedURLException ex2) {
                    ex2.printStackTrace();
                    return false;
                }
            }
            if (this.postingThread.booleanValue()) {
                CneMsg.logd("WQE:BQE", "Set Posting Request");
                try {
                    JSONObject rspitems = new JSONObject();
                    rspitems.put("bssid", this.bssid);
                    rspitems.put("tput", this.tput);
                    rspitems.put("ts", this.f0ts);
                    JSONArray ngbhs = new JSONArray();
                    int numBssidAdded2 = 1;
                    for (String str2 : this.bssidList) {
                        CneMsg.logd("WQE:BQE", "PostFindings-currentbssid:" + this.bssid + ",nbssid:" + str2);
                        if (!str2.equals(this.bssid) && numBssidAdded2 >= 1 && numBssidAdded2 < 4) {
                            ngbhs.put(str2);
                            numBssidAdded2++;
                        }
                    }
                    rspitems.put("ngbh.bssids", ngbhs);
                    JSONArray rsparray = new JSONArray();
                    rsparray.put(0, rspitems);
                    JSONObject rsp = new JSONObject();
                    rsp.put("acs", rsparray);
                    this.postMsg = rsp.toString();
                    CneMsg.logd("WQE:BQE", "PostFinding=" + this.postMsg);
                } catch (JSONException ue) {
                    ue.printStackTrace();
                }
                try {
                    this.url = new URL(this.baseUrlString);
                    try {
                        this.sconn = (HttpsURLConnection) this.url.openConnection();
                        try {
                            this.sconn.setRequestMethod("POST");
                            this.sconn.setReadTimeout(5000);
                            this.sconn.setConnectTimeout(5000);
                            this.sconn.setDoOutput(true);
                            this.sconn.setFixedLengthStreamingMode(this.postMsg.getBytes().length);
                            this.sconn.setRequestProperty("Accept-Encoding", "gzip;q=0,deflate;q=0");
                            this.sconn.setRequestProperty("Cache-Control", "no-cache");
                            this.sconn.setRequestProperty("Content-Type", "application/json;charset=utf-8");
                            this.sconn.setRequestProperty("X-Requested-With", "XMLHttpRequest");
                        } catch (ProtocolException ex3) {
                            ex3.printStackTrace();
                            return false;
                        }
                    } catch (IOException ex4) {
                        ex4.printStackTrace();
                        return false;
                    } catch (NullPointerException e) {
                        CneMsg.loge("WQE:BQE", "Cannot open connection on NULL url, skipping post");
                        return false;
                    }
                } catch (NullPointerException ex5) {
                    ex5.printStackTrace();
                    return false;
                } catch (MalformedURLException ex6) {
                    ex6.printStackTrace();
                    return false;
                }
            } else {
                try {
                    this.rttStart = System.currentTimeMillis();
                    this.conn = (HttpURLConnection) this.url.openConnection();
                    try {
                        this.conn.setRequestMethod("GET");
                        this.conn.setRequestProperty("Accept-Encoding", "gzip;q=0,deflate;q=0");
                        this.conn.setRequestProperty("Cache-Control", "no-cache");
                    } catch (ProtocolException ex7) {
                        ex7.printStackTrace();
                        return false;
                    }
                } catch (IOException ex8) {
                    ex8.printStackTrace();
                    return false;
                }
            }
            return true;
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0049 A[SYNTHETIC, Splitter:B:22:0x0049] */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0058 A[SYNTHETIC, Splitter:B:30:0x0058] */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0064 A[SYNTHETIC, Splitter:B:36:0x0064] */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:27:0x0053=Splitter:B:27:0x0053, B:19:0x0044=Splitter:B:19:0x0044} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private java.lang.Boolean sendBQEClientReq() {
        /*
            r6 = this;
            java.lang.String r4 = "WQE:BQE"
            java.lang.String r5 = "sendBQEClientReq()"
            com.quicinc.cne.CneMsg.logd(r4, r5)
            java.lang.Boolean r4 = r6.postingThread
            boolean r4 = r4.booleanValue()
            if (r4 == 0) goto L_0x0033
            javax.net.ssl.HttpsURLConnection r4 = r6.sconn     // Catch:{ IOException -> 0x0039 }
            r4.connect()     // Catch:{ IOException -> 0x0039 }
        L_0x0016:
            r2 = 0
            java.io.BufferedOutputStream r3 = new java.io.BufferedOutputStream     // Catch:{ IOException -> 0x0052, NullPointerException -> 0x0043 }
            javax.net.ssl.HttpsURLConnection r4 = r6.sconn     // Catch:{ IOException -> 0x0052, NullPointerException -> 0x0043 }
            java.io.OutputStream r4 = r4.getOutputStream()     // Catch:{ IOException -> 0x0052, NullPointerException -> 0x0043 }
            r3.<init>(r4)     // Catch:{ IOException -> 0x0052, NullPointerException -> 0x0043 }
            java.lang.String r4 = r6.postMsg     // Catch:{ IOException -> 0x0070, NullPointerException -> 0x0073, all -> 0x006d }
            byte[] r4 = r4.getBytes()     // Catch:{ IOException -> 0x0070, NullPointerException -> 0x0073, all -> 0x006d }
            r3.write(r4)     // Catch:{ IOException -> 0x0070, NullPointerException -> 0x0073, all -> 0x006d }
            r3.flush()     // Catch:{ IOException -> 0x0070, NullPointerException -> 0x0073, all -> 0x006d }
            if (r3 == 0) goto L_0x0033
            r3.close()     // Catch:{ IOException -> 0x003e }
        L_0x0033:
            r4 = 1
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r4)
            return r4
        L_0x0039:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x0016
        L_0x003e:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x0033
        L_0x0043:
            r1 = move-exception
        L_0x0044:
            r1.printStackTrace()     // Catch:{ all -> 0x0061 }
            if (r2 == 0) goto L_0x0033
            r2.close()     // Catch:{ IOException -> 0x004d }
            goto L_0x0033
        L_0x004d:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x0033
        L_0x0052:
            r0 = move-exception
        L_0x0053:
            r0.printStackTrace()     // Catch:{ all -> 0x0061 }
            if (r2 == 0) goto L_0x0033
            r2.close()     // Catch:{ IOException -> 0x005c }
            goto L_0x0033
        L_0x005c:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x0033
        L_0x0061:
            r4 = move-exception
        L_0x0062:
            if (r2 == 0) goto L_0x0067
            r2.close()     // Catch:{ IOException -> 0x0068 }
        L_0x0067:
            throw r4
        L_0x0068:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x0067
        L_0x006d:
            r4 = move-exception
            r2 = r3
            goto L_0x0062
        L_0x0070:
            r0 = move-exception
            r2 = r3
            goto L_0x0053
        L_0x0073:
            r1 = move-exception
            r2 = r3
            goto L_0x0044
        */
        throw new UnsupportedOperationException("Method not decompiled: com.quicinc.cne.BQEClient.sendBQEClientReq():java.lang.Boolean");
    }

    private void consumeBQERspData() {
        BufferedReader in;
        CneMsg.logd("WQE:BQE", "consumeBQERspData()");
        StringBuilder jsonSB = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            if (this.postingThread.booleanValue()) {
                in = new BufferedReader(new InputStreamReader(this.sconn.getInputStream()));
            } else {
                in = new BufferedReader(new InputStreamReader(this.conn.getInputStream()));
            }
            while (true) {
                String line = in.readLine();
                if (line == null) {
                    break;
                }
                jsonSB.append(line);
            }
            if (in != null) {
                try {
                    in.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        } catch (IOException ex) {
            ex.printStackTrace();
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e2) {
                    e2.printStackTrace();
                }
            }
        } catch (Throwable th) {
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            }
            throw th;
        }
        CneMsg.logd("WQE:BQE", "Done Consuming the BQE data");
        inProgress = false;
        stop();
    }

    private void sendBQEResponse() {
        if (this.postingThread.booleanValue()) {
            this.cneHandle.sendBQEResponse(this.result.ordinal());
        } else {
            this.cneHandle.sendBQEResponse(this.result.ordinal(), this.rtt, this.tSec, this.tMs);
        }
    }

    private void parseBQEClientRsp() {
        int statusCode;
        this.rspLock.lock();
        CneMsg.logd("WQE:BQE", "parseBQEClientRsp() Locked");
        if (this.sentRsp.booleanValue()) {
            CneMsg.logd("WQE:BQE", "Response sent already, doing nothing");
        } else if (this.result != null) {
            CneMsg.loge("WQE:BQE", "BQERequest failure.Reason: " + this.result.toString());
            sendBQEResponse();
        } else {
            String reasonPhrase = null;
            try {
                if (!this.postingThread.booleanValue()) {
                    statusCode = this.conn.getResponseCode();
                    reasonPhrase = this.conn.getResponseMessage();
                    this.rttEnd = System.currentTimeMillis();
                    this.rtt = new Long(this.rttEnd - this.rttStart).intValue();
                    this.tSec = new Long(this.rttEnd / 1000).intValue();
                    this.tMs = new Long(this.rttEnd % 1000).intValue();
                    CneMsg.logd("WQE:BQE", "rttStart=" + this.rttStart + " rttEnd=" + this.rttEnd + " tSec=" + this.tSec + " tMs=" + this.tMs);
                } else {
                    statusCode = this.sconn.getResponseCode();
                    reasonPhrase = this.sconn.getResponseMessage();
                }
            } catch (IOException e) {
                e.printStackTrace();
                statusCode = -1;
            }
            CneMsg.logd("WQE:BQE", "BQEResponse http Status code: " + statusCode + " " + reasonPhrase);
            if (statusCode == 200) {
                CneMsg.logd("WQE:BQE", "BQERequest successful");
                this.result = BqeResult.BQE_RESULT_CONTINUE;
                sendBQEResponse();
                consumeBQERspData();
            } else if (statusCode == 302) {
                this.result = BqeResult.BQE_RESULT_FAILURE;
                CneMsg.loge("WQE:BQE", "BQERequest failure.Reason: " + this.result.toString());
                sendBQEResponse();
            } else if (statusCode == 400) {
                this.result = BqeResult.BQE_RESULT_SUCCESS;
                CneMsg.logd("WQE:BQE", "Assuming BQERequest successful, as Origin servers sent error");
                sendBQEResponse();
            } else if (statusCode == 404) {
                this.result = BqeResult.BQE_RESULT_SUCCESS;
                CneMsg.logd("WQE:BQE", "Assuming BQERequest successful, as Origin servers sent error");
                sendBQEResponse();
            } else if (statusCode == 405) {
                this.result = BqeResult.BQE_RESULT_SUCCESS;
                CneMsg.logd("WQE:BQE", "Assuming BQERequest successful, as Origin servers sent error");
                sendBQEResponse();
            } else if (statusCode == 406) {
                this.result = BqeResult.BQE_RESULT_SUCCESS;
                CneMsg.logd("WQE:BQE", "Assuming BQERequest successful, as Origin servers sent error");
                sendBQEResponse();
            } else if (statusCode == 500) {
                this.result = BqeResult.BQE_RESULT_SUCCESS;
                CneMsg.logd("WQE:BQE", "Assuming BQERequest successful, as Origin servers sent error");
                sendBQEResponse();
            } else if (statusCode == 501) {
                this.result = BqeResult.BQE_RESULT_SUCCESS;
                CneMsg.logd("WQE:BQE", "Assuming BQERequest successful, as Origin servers sent error");
                sendBQEResponse();
            } else if (statusCode == 503) {
                this.result = BqeResult.BQE_RESULT_SUCCESS;
                CneMsg.logd("WQE:BQE", "Assuming BQERequest successful, as Origin servers sent error");
                sendBQEResponse();
            } else if (statusCode == 505) {
                this.result = BqeResult.BQE_RESULT_SUCCESS;
                CneMsg.logd("WQE:BQE", "Assuming BQERequest successful, as Origin servers sent error");
                sendBQEResponse();
            } else if (statusCode >= 100 || statusCode < 0) {
                this.result = BqeResult.BQE_RESULT_FAILURE;
                CneMsg.loge("WQE:BQE", "BQERequest failure.Reason: " + this.result.toString());
                sendBQEResponse();
            } else {
                this.result = BqeResult.BQE_RESULT_SUCCESS;
                CneMsg.logd("WQE:BQE", "Assuming BQERequest successful, as Origin servers sent error");
                sendBQEResponse();
            }
        }
        this.sentRsp = true;
        this.rspLock.unlock();
        CneMsg.logd("WQE:BQE", "parseBQEClientRsp() UnLocked");
    }

    public void run() {
        CneMsg.logd("WQE:BQE", "BQEClient thread started");
        if (setBQEClientReq().booleanValue()) {
            sendBQEClientReq();
            parseBQEClientRsp();
        }
    }
}
