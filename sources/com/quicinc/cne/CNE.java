package com.quicinc.cne;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.net.ConnectivityManager;
import android.net.IConnectivityManager;
import android.net.INetworkPolicyManager;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.LocalSocket;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkFactory;
import android.net.NetworkInfo;
import android.net.NetworkQuotaInfo;
import android.net.NetworkRequest;
import android.net.NetworkState;
import android.net.RouteInfo;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.PowerManager;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.provider.Settings;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import com.android.internal.telephony.ITelephony;
import com.android.internal.telephony.PhoneConstants;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.quicinc.cne.ICNEManager;
import com.quicinc.cne.Native;
import com.quicinc.cne.andsf.AndsfParser;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;

public final class CNE extends ICNEManager.Stub {

    /* renamed from: -android-net-NetworkInfo$DetailedStateSwitchesValues  reason: not valid java name */
    private static final /* synthetic */ int[] f6androidnetNetworkInfo$DetailedStateSwitchesValues = null;

    /* renamed from: -android-net-NetworkInfo$StateSwitchesValues  reason: not valid java name */
    private static final /* synthetic */ int[] f7androidnetNetworkInfo$StateSwitchesValues = null;

    /* renamed from: -com-android-internal-telephony-PhoneConstants$DataStateSwitchesValues */
    private static final /* synthetic */ int[] f1xce0d2696 = null;

    /* renamed from: -com-quicinc-cne-CNE$FeatureTypeSwitchesValues  reason: not valid java name */
    private static final /* synthetic */ int[] f8comquicinccneCNE$FeatureTypeSwitchesValues = null;
    private static final String CLAT_INTERFACE_NAME = "clat4";
    public static final int CND_RET_CODE_INVALID_DATA = -2;
    public static final int CND_RET_CODE_OK = 0;
    public static final int CND_RET_CODE_UNKNOWN_ERROR = -1;
    static final int CNE_MAX_COMMAND_BYTES = 8192;
    public static final String CNE_PREFERENCE_CHANGED_ACTION = "com.quicinc.cne.CNE_PREFERENCE_CHANGED";
    public static final int CNE_RET_BUSY = -2;
    public static final int CNE_RET_ERROR = -1;
    public static final int CNE_RET_FEATURE_UNSUPPORTED = -4;
    public static final int CNE_RET_FILE_SIZE_TOO_LARGE = -5;
    public static final int CNE_RET_INVALID_ARGS = -3;
    public static final int CNE_RET_INVALID_VERSION = -8;
    public static final int CNE_RET_PATH_ACCESS_DENIED = -6;
    public static final int CNE_RET_PATH_NAME_TOO_LONG = -7;
    public static final int CNE_RET_SUCCESS = 1000;
    static final int CNE_SWIM_RSSI_POLL_PERIOD = 5000;
    public static final String CNE_UPSTREAM_IFACE_CHANGED_ACTION = "com.android.server.connectivity.UPSTREAM_IFACE_CHANGED";
    private static final boolean DBG = true;
    private static final int EVENT_DEFAULT_NETWORK_SWITCH = 540670;
    public static final int EVENT_POSTCNDINIT = 3;
    public static final int EVENT_SEND = 1;
    public static final int EVENT_TOGGLE_WIFI = 2;
    public static final String EXTRA_FEATURE_ID = "cneFeatureId";
    public static final String EXTRA_FEATURE_PARAMETER = "cneFeatureParameter";
    private static final String EXTRA_IS_DEFAULT = "isDefault";
    private static final String EXTRA_NETID = "netID";
    public static final String EXTRA_NETWORK_TYPE = "netType";
    public static final String EXTRA_PARAMETER_VALUE = "cneParameterValue";
    public static final int IWLAN_FEATURE_ENABLED = 1;
    public static final int IWLAN_FEATURE_OFF = 1;
    public static final int IWLAN_FEATURE_ON = 2;
    private static final long MAX_ANDSF_FILE_SIZE = 102400;
    protected static final int MAX_DNS_ADDRS = 4;
    private static final int MAX_FILE_PATH_LENGTH = 1024;
    private static final int MSG_REG_PHONESTATE_LISTENER = 1;
    private static final int MSG_REG_SETTINGS_OBSERVERS = 2;
    private static final String NETWORK_STATE_CONNECTED = "CONNECTED";
    private static final String NETWORK_STATE_CONNECTING = "CONNECTING";
    private static final String NETWORK_STATE_DISCONNECTED = "DISCONNECTED";
    private static final String NETWORK_STATE_DISCONNECTING = "DISCONNECTING";
    private static final String NETWORK_STATE_SUSPENDED = "SUSPENDED";
    private static final String NETWORK_STATE_UNKNOWN = "UNKNOWN";
    private static final int PHONE_ID_INVALID = -1;
    private static final int POLICY_TYPE_ANDSF = 1;
    private static final int QXDM_LOGGING = 3974;
    static final int RESPONSE_SOLICITED = 0;
    static final int RESPONSE_UNSOLICITED = 1;
    private static final String RSSI_PROFILE_OVERRIDE_KEY = "ims_profile_override";
    public static final boolean SCREEN_STATE_OFF = false;
    public static final boolean SCREEN_STATE_ON = true;
    static final String SOCKET_NAME_CNE = "cnd";
    static final int SOCKET_OPEN_RETRY_MILLIS = 4000;
    private static final String SUB_TYPE = "CORE";
    public static final int SYSTEM_UID = 1000;
    public static final String TEST_PROT_BUFF = "com.quicinc.cne.TEST_PROT_BUFF";
    public static final String TEST_SEND_RAT_INFO = "com.quicinc.cne.TEST_SEND_RAT_INFO";
    private static final String TEST_TAG = "TEST";
    public static final String TEST_WIFI_BAND_2GHz = "com.quicinc.cne.SET_WIFI_BAND_2GHz";
    public static final String TEST_WIFI_BAND_5GHz = "com.quicinc.cne.SET_WIFI_BAND_5GHz";
    static final int WAKELOCK_TIMER = 1000;
    public static final String WIFI_DISCONNECTING = "wifi_disconnect_in_progress";
    private static final int WIFI_NO_FAM_CONNECTED = 0;
    private static final int WIFI_V4_CONNECTED = 1;
    private static final int WIFI_V4_V6_CONNECTED = 3;
    private static final int WIFI_V6_CONNECTED = 2;
    public static final int WQE_FEATURE_ENABLED = 1;
    public static final int WQE_FEATURE_OFF = 1;
    public static final int WQE_FEATURE_ON = 2;
    public static final String andsfCneFbFileLoc = "system/etc/cne/andsfCne.xml";
    public static final String andsfCneFileLoc = "data/connectivity/profile-internet.xml";
    public static final String dataPath = "/data/connectivity/";
    private static boolean isAndsfConfigUpdateBusy = false;
    static boolean isCndDisconnected = false;
    static boolean isCndUp = false;
    static boolean isDispatched = false;
    private static boolean mRemoveHostEntry = false;
    private static ConcurrentHashMap<Integer, Handler> mRequestHandlers = new ConcurrentHashMap<>();
    private static int mRoleRegId = 0;
    private static int mSocketId = 0;
    public static final String systemPath = "/system/etc/cne/";
    private static Object updateOpPolicy = new Object();
    private static final String wifiBadReason = " Wifi quality is poor ";
    private static final String wifiGoodReason = " Wifi quality is better ";
    private final int INVALID_MSG_ARG = -1;
    /* access modifiers changed from: private */
    public boolean IPV4Available = false;
    /* access modifiers changed from: private */
    public boolean IPV6Available = false;
    /* access modifiers changed from: private */
    public CneWifiInfo _cneWifiInfo;
    /* access modifiers changed from: private */
    public CneWwanInfo _cneWwanInfo;
    private String activeWlanIfName = null;
    private String activeWwanV4IfName = null;
    private String activeWwanV6IfName = null;
    /* access modifiers changed from: private */
    public boolean andsfHasBeenInit = false;
    private AndsfParser andsfParser = null;
    /* access modifiers changed from: private */

    /* renamed from: cm */
    public ConnectivityManager f2cm;
    /* access modifiers changed from: private */
    public LinkProperties curLp = new LinkProperties();
    /* access modifiers changed from: private */
    public int currDDSId = -1;
    private String getRequestUrl = null;
    private String hostRoutingIpAddr = null;
    /* access modifiers changed from: private */
    public boolean[] isSubInfoReady;
    /* access modifiers changed from: private */
    public boolean isWifiConnected = false;
    boolean isWlanConnected = false;
    /* access modifiers changed from: private */
    public int lastFamilyType = 0;
    /* access modifiers changed from: private */
    public Context mContext;
    private Handler mCsHandler = null;
    private int mDefaultNetwork = 17;
    private HandlerThread mEventThread;
    private Handler mFactoryHandler;
    private HandlerThread mFactoryThread;
    /* access modifiers changed from: private */
    public Handler mHandler;
    /* access modifiers changed from: private */
    public Object mIPFamilyLock = new Object();
    private boolean mIWLANFeatureEnabled = false;
    private boolean mIWLANFeatureRequestedState = false;
    private IdGenerator mIdGen;
    BroadcastReceiver mIntentReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            boolean z;
            String action = intent.getAction();
            if (action.equals("android.intent.action.BOOT_COMPLETED")) {
                CNE.dlogd("CORE", "Got ACTION_BOOT_COMPLETED");
                CNE.this.registerSettingsObserver();
                boolean unused = CNE.this.notifyMobileDataEnabled(CNE.this.mTelephonyManager.getDataEnabled());
            } else if (action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                NetworkInfo ni = (NetworkInfo) intent.getParcelableExtra("networkInfo");
                if (ni != null) {
                    CNE.dlogi("CORE", "Got CONNECTIVITY_ACTION intent for network" + ni.getType());
                    NetworkInfo activeNi = ((ConnectivityManager) CNE.this.mContext.getSystemService("connectivity")).getActiveNetworkInfo();
                    if (activeNi != null) {
                        CNE.dlogi("CORE", "activeNetwork type is" + activeNi.getType());
                        if (activeNi.getType() == ni.getType()) {
                            CNE.dlogi("CORE", "Got CONNECTIVITY_ACTION on default nw" + ni.getType());
                            boolean unused2 = CNE.this.updateDefaultNetwork();
                        }
                    }
                }
            } else if (action.equals("android.intent.action.SCREEN_ON")) {
                CNE.this.sendScreenState(true);
                boolean unused3 = CNE.this.mScreenOn = true;
            } else if (action.equals("android.intent.action.SCREEN_OFF")) {
                CNE.this.sendScreenState(false);
                boolean unused4 = CNE.this.mScreenOn = false;
            } else if (action.equals("android.intent.action.USER_PRESENT")) {
                CNE.this.sendUserActive(true);
            } else if (action.equals("android.net.wifi.RSSI_CHANGED") || action.equals("android.net.wifi.LINK_CONFIGURATION_CHANGED")) {
                CNE.dlogi("CORE", "CNE received action RSSI/Link Changed events: " + action);
                if (CNE.this.mWifiManager != null) {
                    CNE.this._cneWifiInfo.setWifiInfo(intent);
                    CNE.this.sendWifiStatus();
                    return;
                }
                CNE.logw("CORE", "CNE received action RSSI/Link Changed events, null WifiManager");
            } else if (action.equals("android.net.wifi.STATE_CHANGE") || action.equals("android.net.wifi.WIFI_STATE_CHANGED") || action.equals(CNE.WIFI_DISCONNECTING)) {
                CNE.dlogi("CORE", "CNE received action: " + action);
                if (CNE.this.mWifiManager != null) {
                    CNE.this._cneWifiInfo.setWifiInfo(intent);
                    CNE.this.sendWifiStatus();
                    CNE.this.notifyRatConnectStatus(1, CNE.this._cneWifiInfo.networkState, CNE.this._cneWifiInfo.ipAddrV4, CNE.this._cneWifiInfo.ipAddrV6);
                    return;
                }
                CNE.logw("CORE", "CNE received action Network State Changed, null WifiManager");
            } else if (action.equals("android.intent.action.ANY_DATA_STATE")) {
                String apnType = intent.getStringExtra("apnType");
                if (apnType == null) {
                    CNE.loge("CORE", "CNE error getting apnType");
                } else if (apnType.equals("default")) {
                    CNE.this._cneWwanInfo.setWwanInfo(intent);
                    CNE.this.sendWwanStatus();
                    CNE.this.notifyRatConnectStatus(0, CNE.this._cneWwanInfo.networkState, CNE.this._cneWwanInfo.ipAddrV4, CNE.this._cneWwanInfo.ipAddrV6);
                }
            } else if ("android.net.wifi.WIFI_AP_STATE_CHANGED".equals(action)) {
                CNE.dlogi("CORE", "CNE received WIFI_AP_STATE_CHANGED_ACTION");
                int wifiApState = intent.getIntExtra("wifi_state", 11);
                int prevApState = intent.getIntExtra("previous_wifi_state", 11);
                if (wifiApState != prevApState) {
                    CNE.this.sendWifiApInfo(wifiApState, prevApState);
                }
            } else if ("android.net.wifi.p2p.STATE_CHANGED".equals(action)) {
                CNE.dlogi("CORE", "CNE received WIFI_P2P_STATE_CHANGED_ACTION");
                CNE.this.sendWifiP2pInfo(intent.getIntExtra("android.net.wifi.p2p.STATE_CHANGED", 1));
            } else if (action.equals("android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED")) {
                CNE.dlogi("CORE", "Default Data Subscription changed");
                boolean unused5 = CNE.this.notifyMobileDataEnabled(CNE.this.mTelephonyManager.getDataEnabled());
                CNE.this.notifySubRat();
            } else if (action.equals("android.intent.action.SIM_STATE_CHANGED")) {
                CNE.dlogi("CORE", "CNE received action ACTION_SIM_STATE_CHANGED");
                String state = intent.getStringExtra("ss");
                if ("READY".equals(state) || "IMSI".equals(state)) {
                    z = true;
                } else {
                    z = "LOADED".equals(state);
                }
                int subId = intent.getIntExtra("subscription", SubscriptionManager.getDefaultDataSubscriptionId());
                int slotId = intent.getIntExtra("slot", SubscriptionManager.getPhoneId(SubscriptionManager.getDefaultDataSubscriptionId()));
                CNE.dlogi("CORE", "sim state = " + state + " subId = " + subId + " slotId = " + slotId);
                if (!z) {
                    if (CNE.this.isSlotIdValid(slotId)) {
                        CNE.dlogi("CORE", "Sim is removed, set isSubInfoReady[" + slotId + "] to false");
                        CNE.this.isSubInfoReady[slotId] = false;
                    } else {
                        CNE.dlogi("CORE", "Invalid slotid, not changing isSubInfoReady");
                    }
                }
                CNE.dlogi("CORE", " sim state = " + state + " subId = " + subId);
                if (subId == SubscriptionManager.getDefaultDataSubscriptionId() && !z) {
                    boolean unused6 = CNE.this.notifyMobileDataEnabled(false);
                    CNE.this.notifySubRat();
                }
            } else if ("org.codeaurora.intent.action.ACTION_NETWORK_SPECIFIER_SET".equals(action)) {
                CNE.dlogi("CORE", "CNE received ACTION_NETWORK_SPECIFIER_SET");
                for (int i = 0; i < 3; i++) {
                    CNE.this.isSubInfoReady[i] = false;
                }
                CNE.this.mSubIds = intent.getIntegerArrayListExtra("SubIdList");
                if (CNE.this.mSubIds != null) {
                    for (int i2 = 0; i2 < CNE.this.mSubIds.size(); i2++) {
                        SubscriptionManager unused7 = CNE.this.mSubscriptionManager;
                        int slotidx = SubscriptionManager.getSlotId(CNE.this.mSubIds.get(i2).intValue());
                        if (CNE.this.isSlotIdValid(slotidx)) {
                            CNE.this.isSubInfoReady[slotidx] = true;
                            CNE.dlogi("CORE", "Setting isSubInfoReady[" + slotidx + "]  to true");
                        } else {
                            CNE.dlogi("CORE", "Invalid slotid while acting upon specifier set intent");
                        }
                    }
                }
            } else if (action.equals(CNE.TEST_SEND_RAT_INFO)) {
                CNE.rlog("CORE", "Trigger send rat info test");
                CneRatInfo r = new CneRatInfo();
                r.setNetHandle(429513165534L);
                r.setNetworkState(1);
                r.setIPv4Iface("rmnet_data0");
                r.setIPv4Address("100.101.102.103");
                r.setIPv6Address("2001:0db8:85a3:0000:0000:8a2e:0370:7334");
                r.setSlotIdx(2);
                r.setErrorCause(0);
                CNE.this.sendRatInfo(r, 4);
            } else {
                CNE.logw("CORE", "CNE received unexpected action: " + action);
            }
        }
    };
    private boolean mIsQuotaReached = false;
    private boolean mLastWQEFeatureEnabled = false;
    private List<HashMap<Integer, CNENetworkCallback>> mMapList = new ArrayList();
    /* access modifiers changed from: private */
    public Network mMobileNetwork;
    private ConnectivityManager.NetworkCallback mMobileNetworkCallback = new ConnectivityManager.NetworkCallback() {
        public void onAvailable(Network network) {
            CNE.dlogi("CORE", "network available: " + network);
            Network unused = CNE.this.mMobileNetwork = network;
            CNE.this._cneWwanInfo.setNetHandle(network.getNetworkHandle());
            CNE.this.sendWwanStatus();
        }

        public void onLost(Network network) {
            CNE.dlogi("CORE", "network lost: " + network);
            Network unused = CNE.this.mMobileNetwork = null;
            CNE.this._cneWwanInfo.setNetHandle(network.getNetworkHandle());
            CNE.this.sendWwanStatus();
        }

        public void onLosing(Network network, int maxMsToLive) {
            CNE.rlog("CORE", "network losing: " + network + " in " + maxMsToLive + "ms");
            CNE.this.setQuotaReachedStatus();
        }
    };
    private NetworkRequest mMobileRequest;
    PowerManager.WakeLock mNatKaWakeLock;
    private NetworkFactory mNetworkFactory;
    private int mNetworkPreference;
    private final SubscriptionManager.OnSubscriptionsChangedListener mOnSubscriptionsChangedListener = new SubscriptionManager.OnSubscriptionsChangedListener() {
        public void onSubscriptionsChanged() {
            int ddsId = SubscriptionManager.getDefaultDataSubscriptionId();
            CNE.dlogd("CORE", "On sub change currDDSId:" + CNE.this.currDDSId + " new DDS " + ddsId);
            if (ddsId != CNE.this.currDDSId && SubscriptionManager.from(CNE.this.mContext).isActiveSubId(ddsId)) {
                CNE.this.mHandler.sendMessage(CNE.this.mHandler.obtainMessage(1, ddsId, -1));
                int unused = CNE.this.currDDSId = ddsId;
            }
        }
    };
    private ConnectivityManager.PacketKeepalive mPacketKeepalive;
    private PhoneStateListener mPhoneStateListener;
    PowerManager mPowerManager;
    CNEReceiver mReceiver;
    Thread mReceiverThread;
    int mRequestMessagesPending;
    ArrayList<CNERequest> mRequestsList = new ArrayList<>();
    PowerManager.WakeLock mRssiWakeLock;
    /* access modifiers changed from: private */
    public boolean mScreenOn;
    CNESender mSender;
    HandlerThread mSenderThread;
    /* access modifiers changed from: private */
    public ServiceState[] mServiceState = null;
    private ContentObserver mSettingsObserver;
    private SignalStrength mSignalStrength = new SignalStrength();
    LocalSocket mSocket;
    ArrayList<Integer> mSubIds = new ArrayList<>();
    /* access modifiers changed from: private */
    public SubscriptionManager mSubscriptionManager;
    /* access modifiers changed from: private */
    public TelephonyManager mTelephonyManager;
    private boolean mWQEFeatureEnabled = false;
    private boolean mWQEFeatureRequestedState = true;
    /* access modifiers changed from: private */
    public WifiManager mWifiManager;
    /* access modifiers changed from: private */
    public Network mWifiNetwork;
    private ConnectivityManager.NetworkCallback mWifiNetworkCallback = new ConnectivityManager.NetworkCallback() {
        public void onAvailable(Network network) {
            CNE.logw("CORE", "network available: " + network);
            Network unused = CNE.this.mWifiNetwork = network;
            if (ConnectivityManager.setProcessDefaultNetwork(network)) {
                CNE.logw("CORE", "onAvailable: bind the process to WIFI");
            }
            LinkProperties lp = CNE.this.f2cm.getLinkProperties(network);
            if (lp == null) {
                CNE.logw("CORE", "Lp is null");
                synchronized (CNE.this.mIPFamilyLock) {
                    boolean unused2 = CNE.this.IPV4Available = CNE.this.IPV6Available = false;
                }
                return;
            }
            CNE.this.checkIPFamilyAvailability(lp);
            boolean unused3 = CNE.this.isWifiConnected = true;
            NetworkCapabilities nc = CNE.this.f2cm.getNetworkCapabilities(network);
            boolean isValidated = false;
            if (nc != null) {
                isValidated = nc.hasCapability(16);
            }
            CNE.this.notifyWlanConnectivityUp(CNE.this.isWifiConnected, CNE.this.getInetFamily(), isValidated);
            CNE.this.updateLinkProperties(lp);
            CNE.this._cneWifiInfo.updateLinkProperties(lp);
            CNE.this._cneWifiInfo.setNetHandle(network.getNetworkHandle());
            CNE.this._cneWifiInfo.setAndroidValidated(isValidated);
            CNE.this.sendWifiStatus();
            if (CNE.this.sendDefaultRouteIntent) {
                CNE.dlogi("CORE", "Broadcast wqe state change: 1");
                CNE.this.broadcastWqeStateChange(1);
                synchronized (CNE.this.mIPFamilyLock) {
                    boolean unused4 = CNE.this.sendDefaultRouteIntent = false;
                }
            }
        }

        public void onLost(Network network) {
            CNE.logw("CORE", "network lost: " + network);
            ConnectivityManager.setProcessDefaultNetwork((Network) null);
            CNE.logw("CORE", "onLost: unbind the process to WIFI");
            synchronized (CNE.this.mIPFamilyLock) {
                boolean unused = CNE.this.IPV4Available = CNE.this.IPV6Available = false;
                int unused2 = CNE.this.lastFamilyType = 0;
                boolean unused3 = CNE.this.isWifiConnected = false;
                boolean unused4 = CNE.this.sendDefaultRouteIntent = false;
            }
            CNE.this._cneWifiInfo.setNetHandle(network.getNetworkHandle());
            CNE.this._cneWifiInfo.setAndroidValidated(false);
            CNE.this.sendWifiStatus();
        }

        public void onLinkPropertiesChanged(Network network, LinkProperties lp) {
            if (lp == null) {
                CNE.logw("CORE", "Lp is null");
                synchronized (CNE.this.mIPFamilyLock) {
                    boolean unused = CNE.this.IPV4Available = CNE.this.IPV6Available = false;
                }
                return;
            }
            CNE.this.checkIPFamilyAvailability(lp);
            boolean isValidated = false;
            NetworkCapabilities nc = CNE.this.f2cm.getNetworkCapabilities(network);
            if (nc != null) {
                isValidated = nc.hasCapability(16);
            }
            if (CNE.this.curLp == null || !CNE.this.compareLinkProperties(lp)) {
                CNE.this.notifyWlanConnectivityUp(CNE.this.isWifiConnected, CNE.this.getInetFamily(), isValidated);
                CNE.this.updateLinkProperties(lp);
                CNE.this._cneWifiInfo.updateLinkProperties(lp);
                CNE.this.sendWifiStatus();
            }
        }

        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            if (!CNE.this._cneWifiInfo.getAndroidValidated() && networkCapabilities.hasCapability(16)) {
                CNE.this._cneWifiInfo.setAndroidValidated(true);
                CNE.this.sendWifiStatus();
            } else if (CNE.this._cneWifiInfo.getAndroidValidated() && !networkCapabilities.hasCapability(16)) {
                CNE.this._cneWifiInfo.setAndroidValidated(false);
                CNE.this.sendWifiStatus();
            }
        }
    };
    private NetworkRequest mWifiRequest;
    private ConnectivityManager.PacketKeepaliveCallback pkaCallback = new ConnectivityManager.PacketKeepaliveCallback() {
        /* access modifiers changed from: package-private */
        public void sendNatKaResult(int result) {
            if (!CNE.this.mNatKaWakeLock.isHeld()) {
                CNE.this.mNatKaWakeLock.acquire(1000);
            }
            CNERequest rr = ProtoMsgParser.createNatKaRequest(result);
            if (rr == null) {
                CneMsg.rlog("CORE", "sendNatKeepAliveErrorResult: rr=NULL");
            } else {
                CNE.this.send(rr);
            }
        }

        public void onStarted() {
            CneMsg.rlog("CORE", "NatKeepAlive started successfully.");
            sendNatKaResult(0);
        }

        public void onStopped() {
            CneMsg.rlog("CORE", "NatKeepAlive stopped successfully.");
            sendNatKaResult(0);
        }

        public void onError(int errorcode) {
            CneMsg.rlog("CORE", "NatKeepAlive encounters Error. code: " + errorcode);
            sendNatKaResult(errorcode);
        }
    };
    int prevRSSI = 0;
    /* access modifiers changed from: private */
    public boolean sendDefaultRouteIntent = false;
    private boolean wqeConfigured = false;

    private enum FeatureType {
        WQE
    }

    /* renamed from: -getandroid-net-NetworkInfo$DetailedStateSwitchesValues  reason: not valid java name */
    private static /* synthetic */ int[] m16getandroidnetNetworkInfo$DetailedStateSwitchesValues() {
        if (f6androidnetNetworkInfo$DetailedStateSwitchesValues != null) {
            return f6androidnetNetworkInfo$DetailedStateSwitchesValues;
        }
        int[] iArr = new int[NetworkInfo.DetailedState.values().length];
        try {
            iArr[NetworkInfo.DetailedState.AUTHENTICATING.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            iArr[NetworkInfo.DetailedState.BLOCKED.ordinal()] = 22;
        } catch (NoSuchFieldError e2) {
        }
        try {
            iArr[NetworkInfo.DetailedState.CAPTIVE_PORTAL_CHECK.ordinal()] = 23;
        } catch (NoSuchFieldError e3) {
        }
        try {
            iArr[NetworkInfo.DetailedState.CONNECTED.ordinal()] = 2;
        } catch (NoSuchFieldError e4) {
        }
        try {
            iArr[NetworkInfo.DetailedState.CONNECTING.ordinal()] = 3;
        } catch (NoSuchFieldError e5) {
        }
        try {
            iArr[NetworkInfo.DetailedState.DISCONNECTED.ordinal()] = 4;
        } catch (NoSuchFieldError e6) {
        }
        try {
            iArr[NetworkInfo.DetailedState.DISCONNECTING.ordinal()] = 5;
        } catch (NoSuchFieldError e7) {
        }
        try {
            iArr[NetworkInfo.DetailedState.FAILED.ordinal()] = 6;
        } catch (NoSuchFieldError e8) {
        }
        try {
            iArr[NetworkInfo.DetailedState.IDLE.ordinal()] = 7;
        } catch (NoSuchFieldError e9) {
        }
        try {
            iArr[NetworkInfo.DetailedState.OBTAINING_IPADDR.ordinal()] = 8;
        } catch (NoSuchFieldError e10) {
        }
        try {
            iArr[NetworkInfo.DetailedState.SCANNING.ordinal()] = 9;
        } catch (NoSuchFieldError e11) {
        }
        try {
            iArr[NetworkInfo.DetailedState.SUSPENDED.ordinal()] = 10;
        } catch (NoSuchFieldError e12) {
        }
        try {
            iArr[NetworkInfo.DetailedState.VERIFYING_POOR_LINK.ordinal()] = 24;
        } catch (NoSuchFieldError e13) {
        }
        f6androidnetNetworkInfo$DetailedStateSwitchesValues = iArr;
        return iArr;
    }

    /* renamed from: -getandroid-net-NetworkInfo$StateSwitchesValues  reason: not valid java name */
    private static /* synthetic */ int[] m17getandroidnetNetworkInfo$StateSwitchesValues() {
        if (f7androidnetNetworkInfo$StateSwitchesValues != null) {
            return f7androidnetNetworkInfo$StateSwitchesValues;
        }
        int[] iArr = new int[NetworkInfo.State.values().length];
        try {
            iArr[NetworkInfo.State.CONNECTED.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            iArr[NetworkInfo.State.CONNECTING.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            iArr[NetworkInfo.State.DISCONNECTED.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            iArr[NetworkInfo.State.DISCONNECTING.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        try {
            iArr[NetworkInfo.State.SUSPENDED.ordinal()] = 5;
        } catch (NoSuchFieldError e5) {
        }
        try {
            iArr[NetworkInfo.State.UNKNOWN.ordinal()] = 6;
        } catch (NoSuchFieldError e6) {
        }
        f7androidnetNetworkInfo$StateSwitchesValues = iArr;
        return iArr;
    }

    /* renamed from: -getcom-android-internal-telephony-PhoneConstants$DataStateSwitchesValues */
    private static /* synthetic */ int[] m0x9dac0c3a() {
        if (f1xce0d2696 != null) {
            return f1xce0d2696;
        }
        int[] iArr = new int[PhoneConstants.DataState.values().length];
        try {
            iArr[PhoneConstants.DataState.CONNECTED.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        try {
            iArr[PhoneConstants.DataState.CONNECTING.ordinal()] = 2;
        } catch (NoSuchFieldError e2) {
        }
        try {
            iArr[PhoneConstants.DataState.DISCONNECTED.ordinal()] = 3;
        } catch (NoSuchFieldError e3) {
        }
        try {
            iArr[PhoneConstants.DataState.SUSPENDED.ordinal()] = 4;
        } catch (NoSuchFieldError e4) {
        }
        f1xce0d2696 = iArr;
        return iArr;
    }

    /* renamed from: -getcom-quicinc-cne-CNE$FeatureTypeSwitchesValues  reason: not valid java name */
    private static /* synthetic */ int[] m18getcomquicinccneCNE$FeatureTypeSwitchesValues() {
        if (f8comquicinccneCNE$FeatureTypeSwitchesValues != null) {
            return f8comquicinccneCNE$FeatureTypeSwitchesValues;
        }
        int[] iArr = new int[FeatureType.values().length];
        try {
            iArr[FeatureType.WQE.ordinal()] = 1;
        } catch (NoSuchFieldError e) {
        }
        f8comquicinccneCNE$FeatureTypeSwitchesValues = iArr;
        return iArr;
    }

    /* access modifiers changed from: private */
    public boolean isDataPossible(int subId) {
        PhoneConstants.State state = PhoneConstants.State.IDLE;
        int phoneId = SubscriptionManager.getPhoneId(subId);
        dlogd("CORE", "isValidSubscription: " + SubscriptionManager.isValidSubscriptionId(subId) + "DataEnabled: " + this.mTelephonyManager.getDataEnabled(subId) + "Phone Id: " + phoneId);
        if (isPhoneIdValid(phoneId)) {
            if (this.mServiceState[phoneId] != null) {
                dlogd("CORE", "DataRoaming: " + this.mServiceState[phoneId].getDataRoaming());
            }
            if (this.mServiceState[phoneId] != null) {
                dlogd("CORE", "Voice Registration State: " + this.mServiceState[phoneId].getVoiceRegState());
            }
            if (!this.mTelephonyManager.getDataEnabled(subId) || !SubscriptionManager.isValidSubscriptionId(subId) || this.mServiceState[phoneId] == null) {
                return false;
            }
            if (this.mServiceState[phoneId].getDataRoaming()) {
                return isDataRoamingEnabledonUI(subId);
            }
            return true;
        }
        logw("CORE", "isDataPossible: Invalid phone id handled, data not possible");
        return false;
    }

    private boolean isDataRoamingEnabledonUI(int subId) {
        int i = 1;
        boolean isDataRoamingEnabled = "true".equalsIgnoreCase(SystemProperties.get("ro.com.android.dataroaming", "false"));
        try {
            if (TelephonyManager.getDefault().getSimCount() == 1) {
                ContentResolver contentResolver = this.mContext.getContentResolver();
                if (!isDataRoamingEnabled) {
                    i = 0;
                }
                isDataRoamingEnabled = Settings.Global.getInt(contentResolver, "data_roaming", i) != 0;
            } else {
                isDataRoamingEnabled = TelephonyManager.getIntWithSubId(this.mContext.getContentResolver(), "data_roaming", subId) != 0;
            }
        } catch (Settings.SettingNotFoundException e) {
            dlogd("CORE", "getDataOnRoamingEnabled: SNFE");
        }
        dlogd("CORE", "getDataOnRoamingEnabled: phoneSubId=" + subId + " isDataRoamingEnabled=" + isDataRoamingEnabled);
        return isDataRoamingEnabled;
    }

    /* access modifiers changed from: private */
    public void notifySubRat() {
        CNERequest rr;
        int subId = SubscriptionManager.getDefaultDataSubscriptionId();
        int phoneId = SubscriptionManager.getPhoneId(subId);
        if (this.mTelephonyManager.getSimState(phoneId) != 5) {
            rr = ProtoMsgParser.createSubRatRequest(0);
            dlogd("CORE", "Sim not ready,Notified wwan sub type: 0 for slot: " + phoneId);
        } else {
            int subType = this.mTelephonyManager.getDataNetworkType(subId);
            if (subType == 0 && isPhoneIdValid(phoneId) && isDataPossible(subId) && this.mServiceState[phoneId] != null && this.mServiceState[phoneId].getVoiceRegState() == 0) {
                subType = this.mTelephonyManager.getVoiceNetworkType(subId);
            }
            rr = ProtoMsgParser.createSubRatRequest(subType);
            dlogd("CORE", "Notified wwan sub type: " + subType + " for sub: " + subId);
        }
        if (rr == null) {
            logw("CORE", "notifySubRat: rr=NULL - not updated");
        } else {
            send(rr);
        }
    }

    /* access modifiers changed from: private */
    public final boolean isPhoneIdValid(int phoneId) {
        if (this.mServiceState == null || phoneId < 0 || phoneId >= this.mServiceState.length) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: private */
    public final boolean isSlotIdValid(int slotId) {
        if (slotId < 0 || slotId >= 3) {
            return false;
        }
        return true;
    }

    class CneRatInfo {
        int errorCause;
        String ifNameV4 = "";
        String ifNameV6 = "";
        String ipAddrV4 = "";
        String ipAddrV6 = "";
        boolean isAndroidValidated;
        long netHdl;
        int networkState;
        int networkType = -1;
        int slotIdx;
        int subType;
        String timeStamp;

        public CneRatInfo() {
            this.networkState = CNE.this.NetworkStateToInt(NetworkInfo.State.UNKNOWN);
            this.subType = -1;
            this.timeStamp = "";
            this.netHdl = -1;
            this.isAndroidValidated = false;
            this.slotIdx = 0;
            this.errorCause = 0;
        }

        public void resetRatInfo() {
            this.ipAddrV4 = "";
            this.ipAddrV6 = "";
            this.ifNameV4 = "";
            this.ifNameV6 = "";
            this.netHdl = 0;
            this.isAndroidValidated = false;
            this.slotIdx = 0;
            this.errorCause = 0;
        }

        public void setTimeStamp(String ts) {
            if (ts != null) {
                this.timeStamp = ts;
            }
        }

        public String getTimestamp() {
            return this.timeStamp;
        }

        public void setNetHandle(long netHdl2) {
            this.netHdl = netHdl2;
        }

        public long getNetHandle() {
            return this.netHdl;
        }

        public void setNetworkState(int netState) {
            this.networkState = netState;
        }

        public int getNetworkState() {
            return this.networkState;
        }

        public void setSubType(int subType2) {
            this.subType = subType2;
        }

        public int getSubType() {
            return this.subType;
        }

        public void setNetworkType(int netType) {
            this.networkType = netType;
        }

        public int getNetworkType() {
            return this.networkType;
        }

        public void setIPv4Address(String ipV4Addr) {
            if (ipV4Addr != null) {
                this.ipAddrV4 = ipV4Addr;
            }
        }

        public String getIPv4Address() {
            return this.ipAddrV4;
        }

        public void setIPv6Address(String ipV6Addr) {
            if (ipV6Addr != null) {
                this.ipAddrV6 = ipV6Addr;
            }
        }

        public String getIPv6Address() {
            return this.ipAddrV6;
        }

        public void setIPv4Iface(String ipV4Iface) {
            if (ipV4Iface != null) {
                this.ifNameV4 = ipV4Iface;
            }
        }

        public String getIPv4Iface() {
            return this.ifNameV4;
        }

        public void setIPv6Iface(String ipV6Iface) {
            if (ipV6Iface != null) {
                this.ifNameV6 = ipV6Iface;
            }
        }

        public String getIPv6Iface() {
            return this.ifNameV6;
        }

        public void setAndroidValidated(boolean isValidated) {
            this.isAndroidValidated = isValidated;
        }

        public boolean getAndroidValidated() {
            return this.isAndroidValidated;
        }

        public void setSlotIdx(int slot) {
            this.slotIdx = slot;
        }

        public int getSlotIdx() {
            return this.slotIdx;
        }

        public void setErrorCause(int error) {
            this.errorCause = error;
        }

        public int getErrorCause() {
            return this.errorCause;
        }
    }

    public enum FreqBand {
        _2GHz(0),
        _5GHz(1);
        
        private final int val;

        private FreqBand(int freq) {
            this.val = freq;
        }

        public int getFreq() {
            return this.val;
        }
    }

    class CneWifiInfo extends CneRatInfo {
        String bssid = "00:00:00:00:00:00";
        String[] dnsInfo = new String[4];
        FreqBand freqBand = FreqBand._2GHz;
        int rssi = 0;
        String ssid = "";
        int wifiState = 4;

        public CneWifiInfo() {
            super();
            for (int i = 0; i < 4; i++) {
                this.dnsInfo[i] = "0.0.0.0";
            }
            this.networkType = 1;
            this.subType = 101;
        }

        private void resetWifiInfo() {
            super.resetRatInfo();
            this.rssi = 0;
            this.ssid = "";
            this.bssid = "00:00:00:00:00:00";
            this.freqBand = FreqBand._2GHz;
            for (int i = 0; i < 4; i++) {
                this.dnsInfo[i] = "0.0.0.0";
            }
            CNE.dlogd("CORE", "Wifi Info Reset");
        }

        private void updateDnsInfo(Collection<InetAddress> addrs) {
            if (addrs == null) {
                CNE.dloge("CORE", "update dns info given null Collection");
                return;
            }
            for (int i = 0; i < 4; i++) {
                this.dnsInfo[i] = "0.0.0.0";
            }
            int i2 = 0;
            int v4AddrCnt = 0;
            int v6AddrCnt = 0;
            for (InetAddress addr : addrs) {
                if (i2 >= 4) {
                    CNE.dlogi("CORE", "getDns: Max dns addrs reached");
                    return;
                }
                if (addr instanceof Inet6Address) {
                    if (v6AddrCnt >= 2) {
                        CNE.dlogi("CORE", "getDns: Max IPV6 dns addrs reached");
                    } else {
                        v6AddrCnt++;
                    }
                } else if (v4AddrCnt >= 2) {
                    CNE.dlogi("CORE", "getDns: Max IPV4 dns addrs reached");
                } else {
                    v4AddrCnt++;
                }
                this.dnsInfo[i2] = addr.getHostAddress();
                i2++;
            }
        }

        private void maybeUpdateAddrInfo(InetAddress addr, LinkProperties lp) {
            if (addr instanceof Inet4Address) {
                if (!addr.isLinkLocalAddress() && !addr.isLoopbackAddress()) {
                    this.ifNameV4 = lp.getInterfaceName();
                    this.ipAddrV4 = addr.getHostAddress();
                }
            } else if ((addr instanceof Inet6Address) && !addr.isLinkLocalAddress() && !addr.isLoopbackAddress()) {
                this.ifNameV6 = lp.getInterfaceName();
                this.ipAddrV6 = addr.getHostAddress();
            }
        }

        /* access modifiers changed from: private */
        public void updateLinkProperties(LinkProperties lp) {
            if (lp == null) {
                CNE.dloge("CORE", "update link properties given null lp");
                return;
            }
            CNE.dlogi("CORE", "Updating link properties: " + lp);
            for (LinkAddress linkAddress : lp.getLinkAddresses()) {
                maybeUpdateAddrInfo(linkAddress.getAddress(), lp);
            }
            updateDnsInfo(lp.getDnsServers());
        }

        private void updateRSSI(int in) {
            CNE.dlogd("CORE", "Updating RSSI: " + in);
            if (in != 0) {
                this.rssi = in;
            }
        }

        private boolean updateNetworkInfo(NetworkInfo ni) {
            if (ni == null) {
                CNE.dloge("CORE", "update network info given null ni");
                return false;
            }
            CNE.dlogi("CORE", "Updating network info: " + ni);
            this.networkState = CNE.this.NetworkStateToInt(ni.getState());
            if (this.networkState != CNE.this.NetworkStateToInt(NetworkInfo.State.UNKNOWN) && this.networkState != CNE.this.NetworkStateToInt(NetworkInfo.State.DISCONNECTED)) {
                return false;
            }
            resetWifiInfo();
            return true;
        }

        private void updateBSSID(String in) {
            if (in != null) {
                this.bssid = in;
            } else {
                this.bssid = "00:00:00:00:00:00";
            }
        }

        private void updateSSID(String in) {
            if (in == null) {
                this.ssid = "";
            } else {
                this.ssid = in;
            }
        }

        private void updateFreqBand(WifiInfo wi) {
            if (wi == null) {
                CNE.dloge("CORE", "update frequency band given null wi");
            } else {
                this.freqBand = wi.is5GHz() ? FreqBand._5GHz : FreqBand._2GHz;
            }
        }

        private void updateWifiInfo(WifiInfo wi) {
            if (wi == null) {
                CNE.dlogd("CORE", "update wifi info given null wi");
                return;
            }
            CNE.dlogi("CORE", "Updating wifi info: " + wi);
            updateBSSID(wi.getBSSID());
            updateSSID(WifiInfo.removeDoubleQuotes(wi.getSSID()));
            updateRSSI(wi.getRssi());
            updateFreqBand(wi);
        }

        /* access modifiers changed from: private */
        public void setWifiState(int state) {
            CNE.rlog("CORE", "set wifi state to " + state);
            this.wifiState = state;
        }

        /* access modifiers changed from: private */
        public void setWifiInfo(Intent intent) {
            if (intent == null) {
                CNE.dloge("CORE", "set wifi info given null intent");
                return;
            }
            try {
                String action = intent.getAction();
                if (action.equals("android.net.wifi.RSSI_CHANGED")) {
                    updateRSSI(intent.getIntExtra("newRssi", 0));
                } else if (action.equals("android.net.wifi.LINK_CONFIGURATION_CHANGED")) {
                    updateLinkProperties((LinkProperties) intent.getParcelableExtra("linkProperties"));
                } else if (action.equals("android.net.wifi.STATE_CHANGE")) {
                    if (updateNetworkInfo((NetworkInfo) intent.getParcelableExtra("networkInfo"))) {
                        CNE.dlogi("CORE", "WifiInfo was reset, abandoning update");
                        return;
                    }
                    updateLinkProperties((LinkProperties) intent.getParcelableExtra("linkProperties"));
                    updateWifiInfo((WifiInfo) intent.getParcelableExtra("wifiInfo"));
                } else if (intent.getAction().equals("android.net.wifi.WIFI_STATE_CHANGED")) {
                    this.wifiState = intent.getIntExtra("wifi_state", this.wifiState);
                    CNE.dlogi("CORE", "newWifiState: " + this.wifiState);
                } else if (intent.getAction().equals(CNE.WIFI_DISCONNECTING)) {
                    this.wifiState = 0;
                    CNE.dlogi("CORE", "Received early wifi disable notification, setting wifiState to DISABLING ");
                } else {
                    CNE.dlogw("CORE", "Asked to set wifi info with unknown action: " + action);
                }
            } catch (NullPointerException nexp) {
                CNE.logw("CORE", "setWifiInfo(): Null Pointer Exception" + nexp);
            } catch (ArrayIndexOutOfBoundsException ex) {
                CNE.logw("CORE", "setWifiInfo(): array out of bound exception: " + ex);
            } catch (Exception ex2) {
                CNE.logw("CORE", "setWifiInfo(): caught unexpected exception: " + ex2);
                ex2.printStackTrace();
            }
        }
    }

    class CneWwanInfo extends CneRatInfo {
        String mccMnc = "";
        int roaming = 0;
        int signalStrength = 0;

        public CneWwanInfo() {
            super();
            this.networkType = 0;
        }

        private void resetWwanInfo() {
            super.resetRatInfo();
            this.signalStrength = 0;
            this.mccMnc = "";
        }

        private final int getSubType(int subId, int phoneId) {
            if (CNE.this.mTelephonyManager == null) {
                return 0;
            }
            int subType = CNE.this.mTelephonyManager.getDataNetworkType(subId);
            if (subType != 0 || !CNE.this.isPhoneIdValid(phoneId) || !CNE.this.isDataPossible(subId) || CNE.this.mServiceState[phoneId] == null || CNE.this.mServiceState[phoneId].getVoiceRegState() != 0) {
                return subType;
            }
            return CNE.this.mTelephonyManager.getVoiceNetworkType(subId);
        }

        /* access modifiers changed from: private */
        public void setWwanInfo(Intent intent) {
            if (intent != null) {
                try {
                    this.networkState = CNE.this.NetworkStateStringToInt(intent.getStringExtra("state"));
                    int subId = SubscriptionManager.getDefaultDataSubscriptionId();
                    int phoneId = SubscriptionManager.getPhoneId(subId);
                    if (this.networkState == CNE.this.NetworkStateStringToInt(CNE.NETWORK_STATE_DISCONNECTED) || this.networkState == CNE.this.NetworkStateStringToInt(CNE.NETWORK_STATE_UNKNOWN)) {
                        resetWwanInfo();
                        this.subType = getSubType(subId, phoneId);
                        return;
                    }
                    LinkProperties lp = (LinkProperties) intent.getParcelableExtra("linkProperties");
                    if (lp != null) {
                        for (LinkAddress linkAddress : lp.getLinkAddresses()) {
                            InetAddress addr = linkAddress.getAddress();
                            if (addr instanceof Inet4Address) {
                                if (!addr.isLinkLocalAddress() && !addr.isLoopbackAddress()) {
                                    this.ifNameV4 = lp.getInterfaceName();
                                    this.ipAddrV4 = addr.getHostAddress();
                                }
                            } else if (addr instanceof Inet6Address) {
                                if (!addr.isLinkLocalAddress() && !addr.isLoopbackAddress()) {
                                    this.ifNameV6 = lp.getInterfaceName();
                                    this.ipAddrV6 = addr.getHostAddress();
                                }
                                for (LinkProperties link : lp.getStackedLinks()) {
                                    if (link.getInterfaceName().equals(CNE.CLAT_INTERFACE_NAME)) {
                                        for (LinkAddress stackedLinkAddress : link.getLinkAddresses()) {
                                            InetAddress address = stackedLinkAddress.getAddress();
                                            if ((address instanceof Inet4Address) && !address.isLinkLocalAddress() && !address.isLoopbackAddress()) {
                                                this.ifNameV4 = link.getInterfaceName();
                                                this.ipAddrV4 = address.getHostAddress();
                                            }
                                        }
                                    } else {
                                        CNE.logd("CORE", "no clat4 interface present for ipv6 address");
                                    }
                                }
                            }
                        }
                    }
                    if (CNE.this.mTelephonyManager != null) {
                        this.roaming = CNE.this.mTelephonyManager.isNetworkRoaming() ? 1 : 0;
                        this.signalStrength = CNE.this.getSignalStrength(this.networkType);
                        this.mccMnc = CNE.this.mTelephonyManager.getNetworkOperator();
                        this.subType = getSubType(subId, phoneId);
                    }
                } catch (NullPointerException nexp) {
                    CNE.logw("CORE", "setWwanInfo(): Null Pointer Exception" + nexp);
                }
            }
        }
    }

    private void handleQuotaQuery() {
        dlogi("CORE", "Handle quota query");
        if (this.mMobileNetwork == null) {
            dlogi("CORE", "mMobileNetwork is null, sending cached quota info");
            sendQuotaInfo(this.mIsQuotaReached);
            return;
        }
        setQuotaReachedStatus();
        sendQuotaInfo(this.mIsQuotaReached);
    }

    /* access modifiers changed from: private */
    public void setQuotaReachedStatus() {
        try {
            for (NetworkState ns : IConnectivityManager.Stub.asInterface(ServiceManager.getService("connectivity")).getAllNetworkState()) {
                dlogi("CORE", "network is " + ns.network.netId);
                if (this.mMobileNetwork != null && ns.network.netId == this.mMobileNetwork.netId) {
                    NetworkQuotaInfo nwQuotaInfo = INetworkPolicyManager.Stub.asInterface(ServiceManager.getService("netpolicy")).getNetworkQuotaInfo(ns);
                    dlogi("CORE", "QuotaInfo: estimated: " + nwQuotaInfo.getEstimatedBytes() + " softLimit: " + nwQuotaInfo.getSoftLimitBytes() + " hardLimit: " + nwQuotaInfo.getHardLimitBytes());
                    if (nwQuotaInfo.getHardLimitBytes() <= 0 || nwQuotaInfo.getEstimatedBytes() < nwQuotaInfo.getHardLimitBytes()) {
                        this.mIsQuotaReached = false;
                    } else {
                        this.mIsQuotaReached = true;
                    }
                }
            }
        } catch (NullPointerException npe) {
            rlog("CORE", "get Quota Info " + npe);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

    private void sendQuotaInfo(boolean isReached) {
        CNERequest rr = ProtoMsgParser.createRequestQuotaInfo(isReached);
        if (rr == null) {
            logw("CORE", "sendQuotaReached: rr = NULL");
        } else {
            send(rr);
        }
    }

    private class IdGenerator {
        private int mId;
        private Vector mReusableIds;

        public IdGenerator() {
            this.mId = 0;
            this.mReusableIds = null;
            this.mReusableIds = new Vector();
        }

        public int getNextId() {
            synchronized (this.mReusableIds) {
                if (this.mReusableIds.isEmpty()) {
                    int i = this.mId;
                    this.mId = i + 1;
                    return i;
                }
                Integer id = (Integer) this.mReusableIds.firstElement();
                this.mReusableIds.removeElement(id);
                return id.intValue();
            }
        }

        public void recaptureUnusedId(int id) {
            Integer oldId = new Integer(id);
            synchronized (this.mReusableIds) {
                if (!this.mReusableIds.contains(oldId)) {
                    this.mReusableIds.addElement(oldId);
                }
            }
        }

        public String toString() {
            return String.format("mId = [%d], mReusableIds = [%s]", new Object[]{Integer.valueOf(this.mId), this.mReusableIds});
        }
    }

    public class CNESender extends Handler implements Runnable {
        private static final String SUB_TYPE = "CORE:COM:SNDR";
        byte[] dataLength = new byte[4];

        public CNESender(Looper looper) {
            super(looper);
        }

        public void run() {
        }

        public void handleMessage(Message msg) {
            CNERequest rr = (CNERequest) msg.obj;
            switch (msg.what) {
                case 1:
                    boolean alreadySubtracted = false;
                    try {
                        LocalSocket s = CNE.this.mSocket;
                        if (s == null) {
                            rr.release();
                            CNE cne = CNE.this;
                            cne.mRequestMessagesPending--;
                            return;
                        }
                        synchronized (CNE.this.mRequestsList) {
                            CNE.this.mRequestsList.add(rr);
                        }
                        CNE cne2 = CNE.this;
                        cne2.mRequestMessagesPending--;
                        alreadySubtracted = true;
                        byte[] data = rr.mData;
                        if (data.length > CNE.CNE_MAX_COMMAND_BYTES) {
                            throw new RuntimeException("Parcel larger than max bytes allowed! " + data.length);
                        }
                        byte[] bArr = this.dataLength;
                        this.dataLength[1] = 0;
                        bArr[0] = 0;
                        this.dataLength[2] = (byte) ((data.length >> 8) & 255);
                        this.dataLength[3] = (byte) (data.length & 255);
                        s.getOutputStream().write(this.dataLength);
                        s.getOutputStream().write(data);
                        CNERequest unused = CNE.this.findAndRemoveRequestFromList(rr.mSerial);
                        if (!alreadySubtracted) {
                            CNE cne3 = CNE.this;
                            cne3.mRequestMessagesPending--;
                            return;
                        }
                        return;
                    } catch (IOException ex) {
                        CNE.logw("CORE:COM:SNDR", "IOException " + ex);
                        if (CNE.this.findAndRemoveRequestFromList(rr.mSerial) != null || !alreadySubtracted) {
                            rr.release();
                        }
                    } catch (RuntimeException exc) {
                        CNE.logw("CORE:COM:SNDR", "Uncaught exception " + exc);
                        if (CNE.this.findAndRemoveRequestFromList(rr.mSerial) != null || !alreadySubtracted) {
                            rr.release();
                        }
                    } catch (Exception e) {
                        CNE.logw("CORE:COM:SNDR", "unknown exception caught.");
                    }
                case 2:
                    CNE.logw("CORE:COM:SNDR", "event_toggle_wifi ...reassociating");
                    CNE.this.mWifiManager.disconnect();
                    CNE.this.mWifiManager.reassociate();
                    return;
                case 3:
                    CNE.this.postCndUpInit();
                    return;
                default:
                    return;
            }
        }
    }

    /* access modifiers changed from: private */
    public static int readCneMessage(InputStream is, byte[] buffer) throws IOException {
        int offset = 0;
        int remaining = 4;
        do {
            int countRead = is.read(buffer, offset, remaining);
            if (countRead < 0) {
                logw("CORE", "Hit EOS reading message length");
                return -1;
            }
            offset += countRead;
            remaining -= countRead;
        } while (remaining > 0);
        int messageLength = ((buffer[0] & 255) << 24) | ((buffer[1] & 255) << 16) | ((buffer[2] & 255) << 8) | (buffer[3] & 255);
        int offset2 = 0;
        int remaining2 = messageLength;
        do {
            int countRead2 = is.read(buffer, offset2, remaining2);
            if (countRead2 < 0) {
                logw("CORE", "Hit EOS reading message.  messageLength=" + messageLength + " remaining=" + remaining2);
                return -1;
            }
            offset2 += countRead2;
            remaining2 -= countRead2;
        } while (remaining2 > 0);
        return messageLength;
    }

    class CNEReceiver implements Runnable {
        private static final String SUB_TYPE = "CORE:COM:RCVR";
        byte[] buffer = new byte[CNE.CNE_MAX_COMMAND_BYTES];

        CNEReceiver() {
        }

        /* JADX WARNING: Removed duplicated region for block: B:32:0x0100 A[SYNTHETIC, Splitter:B:32:0x0100] */
        /* JADX WARNING: Removed duplicated region for block: B:36:0x0109  */
        /* JADX WARNING: Removed duplicated region for block: B:44:0x0137 A[ADDED_TO_REGION] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void run() {
            /*
                r21 = this;
                r11 = 0
            L_0x0001:
                r13 = 0
                java.lang.String r17 = "CORE:COM:RCVR"
                java.lang.String r18 = "CNE creating socket"
                com.quicinc.cne.CNE.rlog(r17, r18)     // Catch:{ IOException -> 0x00fd }
                android.net.LocalSocket r14 = new android.net.LocalSocket     // Catch:{ IOException -> 0x00fd }
                r14.<init>()     // Catch:{ IOException -> 0x00fd }
                android.net.LocalSocketAddress r9 = new android.net.LocalSocketAddress     // Catch:{ IOException -> 0x01f2 }
                java.lang.String r17 = "cnd"
                android.net.LocalSocketAddress$Namespace r18 = android.net.LocalSocketAddress.Namespace.RESERVED     // Catch:{ IOException -> 0x01f2 }
                r0 = r17
                r1 = r18
                r9.<init>(r0, r1)     // Catch:{ IOException -> 0x01f2 }
                r14.connect(r9)     // Catch:{ IOException -> 0x01f2 }
                r11 = 0
                r0 = r21
                com.quicinc.cne.CNE r0 = com.quicinc.cne.CNE.this     // Catch:{ Throwable -> 0x01a8 }
                r17 = r0
                r0 = r17
                r0.mSocket = r14     // Catch:{ Throwable -> 0x01a8 }
                java.lang.String r17 = "CORE:COM:RCVR"
                java.lang.String r18 = "Connected to 'cnd' socket"
                com.quicinc.cne.CNE.rlog(r17, r18)     // Catch:{ Throwable -> 0x01a8 }
                r17 = 1
                com.quicinc.cne.CNE.isCndUp = r17     // Catch:{ Throwable -> 0x01a8 }
                r0 = r21
                com.quicinc.cne.CNE r0 = com.quicinc.cne.CNE.this     // Catch:{ Throwable -> 0x01a8 }
                r17 = r0
                boolean unused = r17.sendInitReq()     // Catch:{ Throwable -> 0x01a8 }
                r0 = r21
                com.quicinc.cne.CNE r0 = com.quicinc.cne.CNE.this     // Catch:{ Throwable -> 0x01a8 }
                r17 = r0
                r0 = r17
                com.quicinc.cne.CNE$CNESender r0 = r0.mSender     // Catch:{ Throwable -> 0x01a8 }
                r17 = r0
                r18 = 1000(0x3e8, double:4.94E-321)
                r20 = 3
                r0 = r17
                r1 = r20
                r2 = r18
                r0.sendEmptyMessageDelayed(r1, r2)     // Catch:{ Throwable -> 0x01a8 }
                r0 = r21
                com.quicinc.cne.CNE r0 = com.quicinc.cne.CNE.this     // Catch:{ Throwable -> 0x01a8 }
                r17 = r0
                r17.requestFeaturesSettings()     // Catch:{ Throwable -> 0x01a8 }
                r10 = 0
                r0 = r21
                com.quicinc.cne.CNE r0 = com.quicinc.cne.CNE.this     // Catch:{ IOException -> 0x0189, Throwable -> 0x01ab }
                r17 = r0
                r0 = r17
                android.net.LocalSocket r0 = r0.mSocket     // Catch:{ IOException -> 0x0189, Throwable -> 0x01ab }
                r17 = r0
                java.io.InputStream r8 = r17.getInputStream()     // Catch:{ IOException -> 0x0189, Throwable -> 0x01ab }
            L_0x0075:
                r0 = r21
                byte[] r0 = r0.buffer     // Catch:{ IOException -> 0x0189, Throwable -> 0x01ab }
                r17 = r0
                r0 = r17
                int r10 = com.quicinc.cne.CNE.readCneMessage(r8, r0)     // Catch:{ IOException -> 0x0189, Throwable -> 0x01ab }
                if (r10 >= 0) goto L_0x0174
            L_0x0083:
                java.lang.String r17 = "CORE:COM:RCVR"
                java.lang.String r18 = "Disconnected from 'cnd' socket"
                com.quicinc.cne.CNE.rlog(r17, r18)     // Catch:{ Throwable -> 0x01a8 }
                r17 = 0
                com.quicinc.cne.CNE.isCndUp = r17     // Catch:{ Throwable -> 0x01a8 }
                r17 = 1
                com.quicinc.cne.CNE.isCndDisconnected = r17     // Catch:{ Throwable -> 0x01a8 }
                r0 = r21
                com.quicinc.cne.CNE r0 = com.quicinc.cne.CNE.this     // Catch:{ Throwable -> 0x01a8 }
                r17 = r0
                r18 = 0
                boolean unused = r17.andsfHasBeenInit = r18     // Catch:{ Throwable -> 0x01a8 }
                r17 = 0
                com.quicinc.cne.CNE.isDispatched = r17     // Catch:{ Throwable -> 0x01a8 }
                r0 = r21
                com.quicinc.cne.CNE r0 = com.quicinc.cne.CNE.this     // Catch:{ IOException -> 0x01ef }
                r17 = r0
                r0 = r17
                android.net.LocalSocket r0 = r0.mSocket     // Catch:{ IOException -> 0x01ef }
                r17 = r0
                r17.close()     // Catch:{ IOException -> 0x01ef }
            L_0x00b2:
                r0 = r21
                com.quicinc.cne.CNE r0 = com.quicinc.cne.CNE.this     // Catch:{ Throwable -> 0x01a8 }
                r17 = r0
                r18 = 0
                r0 = r18
                r1 = r17
                r1.mSocket = r0     // Catch:{ Throwable -> 0x01a8 }
                com.quicinc.cne.CNERequest.resetSerial()     // Catch:{ Throwable -> 0x01a8 }
                r0 = r21
                com.quicinc.cne.CNE r0 = com.quicinc.cne.CNE.this     // Catch:{ Throwable -> 0x01a8 }
                r17 = r0
                r0 = r17
                java.util.ArrayList<com.quicinc.cne.CNERequest> r0 = r0.mRequestsList     // Catch:{ Throwable -> 0x01a8 }
                r18 = r0
                monitor-enter(r18)     // Catch:{ Throwable -> 0x01a8 }
                r7 = 0
                r0 = r21
                com.quicinc.cne.CNE r0 = com.quicinc.cne.CNE.this     // Catch:{ all -> 0x01ec }
                r17 = r0
                r0 = r17
                java.util.ArrayList<com.quicinc.cne.CNERequest> r0 = r0.mRequestsList     // Catch:{ all -> 0x01ec }
                r17 = r0
                int r15 = r17.size()     // Catch:{ all -> 0x01ec }
            L_0x00e1:
                if (r7 >= r15) goto L_0x01d9
                r0 = r21
                com.quicinc.cne.CNE r0 = com.quicinc.cne.CNE.this     // Catch:{ all -> 0x01ec }
                r17 = r0
                r0 = r17
                java.util.ArrayList<com.quicinc.cne.CNERequest> r0 = r0.mRequestsList     // Catch:{ all -> 0x01ec }
                r17 = r0
                r0 = r17
                java.lang.Object r12 = r0.get(r7)     // Catch:{ all -> 0x01ec }
                com.quicinc.cne.CNERequest r12 = (com.quicinc.cne.CNERequest) r12     // Catch:{ all -> 0x01ec }
                r12.release()     // Catch:{ all -> 0x01ec }
                int r7 = r7 + 1
                goto L_0x00e1
            L_0x00fd:
                r5 = move-exception
            L_0x00fe:
                if (r13 == 0) goto L_0x0103
                r13.close()     // Catch:{ IOException -> 0x0135 }
            L_0x0103:
                r17 = 8
                r0 = r17
                if (r11 != r0) goto L_0x0137
                java.lang.String r17 = "CORE:COM:RCVR"
                java.lang.StringBuilder r18 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0149 }
                r18.<init>()     // Catch:{ Throwable -> 0x0149 }
                java.lang.String r19 = "Couldn't find 'cnd' socket after "
                java.lang.StringBuilder r18 = r18.append(r19)     // Catch:{ Throwable -> 0x0149 }
                r0 = r18
                java.lang.StringBuilder r18 = r0.append(r11)     // Catch:{ Throwable -> 0x0149 }
                java.lang.String r19 = " times, continuing to retry silently"
                java.lang.StringBuilder r18 = r18.append(r19)     // Catch:{ Throwable -> 0x0149 }
                java.lang.String r18 = r18.toString()     // Catch:{ Throwable -> 0x0149 }
                com.quicinc.cne.CNE.logw(r17, r18)     // Catch:{ Throwable -> 0x0149 }
            L_0x012c:
                r18 = 4000(0xfa0, double:1.9763E-320)
                java.lang.Thread.sleep(r18)     // Catch:{ InterruptedException -> 0x0169 }
            L_0x0131:
                int r11 = r11 + 1
                goto L_0x0001
            L_0x0135:
                r6 = move-exception
                goto L_0x0103
            L_0x0137:
                if (r11 <= 0) goto L_0x012c
                r17 = 8
                r0 = r17
                if (r11 >= r0) goto L_0x012c
                java.lang.String r17 = "CORE:COM:RCVR"
                java.lang.String r18 = "Couldn't find 'cnd' socket; retrying after timeout"
                com.quicinc.cne.CNE.dlogi(r17, r18)     // Catch:{ Throwable -> 0x0149 }
                goto L_0x012c
            L_0x0149:
                r16 = move-exception
            L_0x014a:
                java.lang.String r17 = "CORE:COM:RCVR"
                java.lang.StringBuilder r18 = new java.lang.StringBuilder
                r18.<init>()
                java.lang.String r19 = "Uncaught exception "
                java.lang.StringBuilder r18 = r18.append(r19)
                r0 = r18
                r1 = r16
                java.lang.StringBuilder r18 = r0.append(r1)
                java.lang.String r18 = r18.toString()
                com.quicinc.cne.CNE.logw(r17, r18)
                return
            L_0x0169:
                r4 = move-exception
                java.lang.String r17 = "CORE:COM:RCVR"
                java.lang.String r18 = "cnd socket open retry timer was interrupted"
                com.quicinc.cne.CNE.dlogi(r17, r18)     // Catch:{ Throwable -> 0x0149 }
                goto L_0x0131
            L_0x0174:
                r0 = r21
                com.quicinc.cne.CNE r0 = com.quicinc.cne.CNE.this     // Catch:{ IOException -> 0x0189, Throwable -> 0x01ab }
                r17 = r0
                r0 = r21
                byte[] r0 = r0.buffer     // Catch:{ IOException -> 0x0189, Throwable -> 0x01ab }
                r18 = r0
                r0 = r17
                r1 = r18
                r0.processResponse(r1, r10)     // Catch:{ IOException -> 0x0189, Throwable -> 0x01ab }
                goto L_0x0075
            L_0x0189:
                r5 = move-exception
                java.lang.String r17 = "CORE:COM:RCVR"
                java.lang.StringBuilder r18 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x01a8 }
                r18.<init>()     // Catch:{ Throwable -> 0x01a8 }
                java.lang.String r19 = "'cnd' socket closed"
                java.lang.StringBuilder r18 = r18.append(r19)     // Catch:{ Throwable -> 0x01a8 }
                r0 = r18
                java.lang.StringBuilder r18 = r0.append(r5)     // Catch:{ Throwable -> 0x01a8 }
                java.lang.String r18 = r18.toString()     // Catch:{ Throwable -> 0x01a8 }
                com.quicinc.cne.CNE.rlog(r17, r18)     // Catch:{ Throwable -> 0x01a8 }
                goto L_0x0083
            L_0x01a8:
                r16 = move-exception
                r13 = r14
                goto L_0x014a
            L_0x01ab:
                r16 = move-exception
                java.lang.String r17 = "CORE:COM:RCVR"
                java.lang.StringBuilder r18 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x01a8 }
                r18.<init>()     // Catch:{ Throwable -> 0x01a8 }
                java.lang.String r19 = "Uncaught exception read length="
                java.lang.StringBuilder r18 = r18.append(r19)     // Catch:{ Throwable -> 0x01a8 }
                r0 = r18
                java.lang.StringBuilder r18 = r0.append(r10)     // Catch:{ Throwable -> 0x01a8 }
                java.lang.String r19 = "Exception:"
                java.lang.StringBuilder r18 = r18.append(r19)     // Catch:{ Throwable -> 0x01a8 }
                java.lang.String r19 = r16.toString()     // Catch:{ Throwable -> 0x01a8 }
                java.lang.StringBuilder r18 = r18.append(r19)     // Catch:{ Throwable -> 0x01a8 }
                java.lang.String r18 = r18.toString()     // Catch:{ Throwable -> 0x01a8 }
                com.quicinc.cne.CNE.logw(r17, r18)     // Catch:{ Throwable -> 0x01a8 }
                goto L_0x0083
            L_0x01d9:
                r0 = r21
                com.quicinc.cne.CNE r0 = com.quicinc.cne.CNE.this     // Catch:{ all -> 0x01ec }
                r17 = r0
                r0 = r17
                java.util.ArrayList<com.quicinc.cne.CNERequest> r0 = r0.mRequestsList     // Catch:{ all -> 0x01ec }
                r17 = r0
                r17.clear()     // Catch:{ all -> 0x01ec }
                monitor-exit(r18)     // Catch:{ Throwable -> 0x01a8 }
                r13 = r14
                goto L_0x0001
            L_0x01ec:
                r17 = move-exception
                monitor-exit(r18)     // Catch:{ Throwable -> 0x01a8 }
                throw r17     // Catch:{ Throwable -> 0x01a8 }
            L_0x01ef:
                r5 = move-exception
                goto L_0x00b2
            L_0x01f2:
                r5 = move-exception
                r13 = r14
                goto L_0x00fe
            */
            throw new UnsupportedOperationException("Method not decompiled: com.quicinc.cne.CNE.CNEReceiver.run():void");
        }
    }

    /* access modifiers changed from: private */
    public void postCndUpInit() {
        logi("CORE", "starting initialization of components that require cnd to have started");
        if (!(this.mWifiManager == null || this._cneWifiInfo == null)) {
            this._cneWifiInfo.setWifiState(this.mWifiManager.getWifiState());
        }
        sendWifiStatus();
        this.lastFamilyType = 0;
        this.f2cm = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        if (this._cneWifiInfo != null) {
            if (this._cneWifiInfo.networkState == NetworkStateToInt(NetworkInfo.State.CONNECTED)) {
                this.isWifiConnected = true;
                if (this.mWifiNetwork != null) {
                    NetworkCapabilities nc = this.f2cm.getNetworkCapabilities(this.mWifiNetwork);
                    boolean isValidated = false;
                    if (nc != null) {
                        isValidated = nc.hasCapability(16);
                    }
                    notifyWlanConnectivityUp(this.isWifiConnected, getInetFamily(), isValidated);
                }
            } else {
                this.isWifiConnected = false;
                notifyWlanConnectivityUp(this.isWifiConnected, getInetFamily(), false);
            }
        }
        sendWwanStatus();
        notifyMobileDataEnabled(this.mTelephonyManager.getDataEnabled());
        if (this.mPowerManager != null) {
            this.mScreenOn = this.mPowerManager.isScreenOn();
            sendScreenState(this.mScreenOn);
        }
        sendDefaultNwMsg(this.mDefaultNetwork);
        notifyIMSProfileOverrideSetting(Settings.Global.getInt(this.mContext.getContentResolver(), RSSI_PROFILE_OVERRIDE_KEY, 0));
        if (isCndDisconnected) {
            logw("CORE", "Recovering from cnd crashed");
            sendScreenState(this.mScreenOn);
        }
        for (int i = 0; i < this.mMapList.size(); i++) {
            if (this.mMapList.get(i).size() > 0) {
                for (Map.Entry<Integer, CNENetworkCallback> mMapEntry : this.mMapList.get(i).entrySet()) {
                    sendRatInfo(mMapEntry.getValue().getRatInfo(), mMapEntry.getKey().intValue());
                }
            }
        }
    }

    private ITelephony getPhone() {
        return ITelephony.Stub.asInterface(ServiceManager.getService("phone"));
    }

    /* access modifiers changed from: private */
    public void requestFeaturesSettings() {
        requestFeatureSettings(1);
        requestFeatureSettings(2);
    }

    private boolean requestFeatureSettingsChange(int featureId, int newValue) {
        CNERequest rr = ProtoMsgParser.createRequestFeature(featureId, newValue);
        if (rr == null) {
            logw("CORE", "requestFeatureSettingsChange: rr=NULL");
            return false;
        }
        send(rr);
        return true;
    }

    private boolean requestFeatureSettings(int featureId) {
        CNERequest rr = ProtoMsgParser.createRequestFeatureSettings(featureId);
        if (rr == null) {
            logw("CORE", "requestFeatureSettings: rr=NULL");
            return false;
        }
        send(rr);
        return true;
    }

    public CNE(Context context, Handler handler) {
        this.mCsHandler = handler;
        this.mRequestMessagesPending = 0;
        this.mContext = context;
        this.mSenderThread = new HandlerThread("CNESender");
        this.mSenderThread.start();
        this._cneWifiInfo = new CneWifiInfo();
        this._cneWwanInfo = new CneWwanInfo();
        this.isSubInfoReady = new boolean[3];
        for (int i = 0; i < 3; i++) {
            this.mMapList.add(new HashMap());
            this.isSubInfoReady[i] = false;
        }
        if (SystemProperties.getInt("persist.cne.logging.qxdm", 0) == QXDM_LOGGING) {
            CneMsg.ADDTL_MSG = true;
        }
        Looper looper = this.mSenderThread.getLooper();
        if (looper == null) {
            loge("CORE", "Looper obj is NULL.");
            return;
        }
        this.mSender = new CNESender(looper);
        this.mWifiManager = (WifiManager) this.mContext.getSystemService("wifi");
        this.mTelephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
        this.mPowerManager = (PowerManager) this.mContext.getSystemService("power");
        this.mNatKaWakeLock = this.mPowerManager.newWakeLock(1, "NAT_KA_WAKELOCK");
        this.mRssiWakeLock = this.mPowerManager.newWakeLock(1, "RSSI_WAKELOCK");
        this.mSubscriptionManager = SubscriptionManager.from(this.mContext);
        updateSubInfoReady();
        this.mServiceState = new ServiceState[this.mTelephonyManager.getPhoneCount()];
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.BOOT_COMPLETED");
        filter.addAction("android.intent.action.BATTERY_CHANGED");
        filter.addAction("android.intent.action.SCREEN_ON");
        filter.addAction("android.intent.action.SCREEN_OFF");
        filter.addAction("android.intent.action.USER_PRESENT");
        filter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
        filter.addAction(WIFI_DISCONNECTING);
        filter.addAction("android.net.wifi.RSSI_CHANGED");
        filter.addAction("android.net.wifi.LINK_CONFIGURATION_CHANGED");
        filter.addAction("android.net.wifi.STATE_CHANGE");
        filter.addAction("android.intent.action.ANY_DATA_STATE");
        filter.addAction("android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED");
        filter.addAction("android.intent.action.SIM_STATE_CHANGED");
        filter.addAction("android.net.wifi.WIFI_AP_STATE_CHANGED");
        filter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        filter.addAction(CNE_UPSTREAM_IFACE_CHANGED_ACTION);
        filter.addAction("android.net.wifi.p2p.STATE_CHANGED");
        filter.addAction("org.codeaurora.intent.action.ACTION_NETWORK_SPECIFIER_SET");
        filter.addAction(TEST_SEND_RAT_INFO);
        int value = SystemProperties.getInt("persist.cne.feature", 0);
        this.mEventThread = new HandlerThread("MainEventThread");
        this.mEventThread.start();
        this.mHandler = new Handler(this.mEventThread.getLooper()) {
            public void handleMessage(Message msg) {
                super.handleMessage(msg);
                switch (msg.what) {
                    case 1:
                        int ddsId = msg.arg1;
                        if (CNE.this.registerPhoneStateListener(ddsId)) {
                            int unused = CNE.this.currDDSId = ddsId;
                            CNE.dlogd("CORE", "Registered PhoneStateListener");
                            return;
                        }
                        return;
                    case 2:
                        CNE.this.registerSettingsObserver();
                        return;
                    default:
                        CNE.logw("CORE", "MainEventThread ignored message " + msg.what);
                        return;
                }
            }
        };
        this.mSettingsObserver = new ContentObserver(this.mHandler) {
            public void onChange(boolean selfChange, Uri uri) {
                CNE.dlogi("CORE", "onChange for uri = " + uri.toString());
                int phoneCount = CNE.this.mTelephonyManager.getPhoneCount();
                if (phoneCount == 1) {
                    if (uri.compareTo(Settings.Global.getUriFor("mobile_data")) == 0) {
                        boolean unused = CNE.this.notifyMobileDataEnabled(CNE.this.mTelephonyManager.getDataEnabled());
                    }
                    if (uri.compareTo(Settings.Global.getUriFor("data_roaming")) == 0) {
                        boolean unused2 = CNE.this.notifyMobileDataEnabled(CNE.this.mTelephonyManager.getDataEnabled());
                        return;
                    }
                    return;
                }
                for (int i = 0; i < phoneCount; i++) {
                    int[] subs = SubscriptionManager.getSubId(i);
                    if (uri.compareTo(Settings.Global.getUriFor("mobile_data" + subs[0])) == 0) {
                        CNE.this.updateMultisimMobileDataState(uri);
                    }
                    if (uri.compareTo(Settings.Global.getUriFor("data_roaming" + subs[0])) == 0) {
                        boolean unused3 = CNE.this.notifyMobileDataEnabled(CNE.this.mTelephonyManager.getDataEnabled());
                    }
                }
                if (uri.compareTo(Settings.Global.getUriFor("multi_sim_data_call")) == 0) {
                    CNE.dlogd("CORE", "DDS changed currDDSId:" + SubscriptionManager.getDefaultDataSubscriptionId());
                    boolean unused4 = CNE.this.notifyMobileDataEnabled(CNE.this.mTelephonyManager.getDataEnabled());
                    CNE.this.notifySubRat();
                }
            }
        };
        context.registerReceiver(this.mIntentReceiver, filter, (String) null, this.mHandler);
        this.mReceiver = new CNEReceiver();
        this.mReceiverThread = new Thread(this.mReceiver, "CNEReceiver");
        this.mReceiverThread.start();
        this.andsfParser = new AndsfParser(this.mContext);
        if (value == 3) {
            this.wqeConfigured = true;
        }
        if (this.mHandler != null) {
            this.mHandler.sendEmptyMessage(2);
        } else {
            loge("CORE", "Handler is null! Content observer not registered");
        }
        int value2 = SystemProperties.getInt("persist.sys.cnd.wqe", 0);
        if (this.wqeConfigured && 2 == value2) {
            logd("CORE", "sendPrefChangedBroadcast wqe status = " + value2);
            sendPrefChangedBroadcast(1, 1, value2);
        }
        this.mSubscriptionManager.addOnSubscriptionsChangedListener(this.mOnSubscriptionsChangedListener);
        startNetworks();
    }

    private void updateSubInfoReady() {
        int phoneCount = this.mTelephonyManager.getPhoneCount();
        CneMsg.rlog("CORE", "phoneCount: " + phoneCount);
        for (int i = 0; i < phoneCount; i++) {
            int[] subs = SubscriptionManager.getSubId(i);
            CneMsg.rlog("CORE", "subs for " + i + "th slot: " + subs);
            if (subs != null && SubscriptionManager.from(this.mContext).isActiveSubId(subs[0])) {
                this.isSubInfoReady[i] = true;
                CneMsg.rlog("CORE", "isSubInfoReady[" + i + "] is set to true");
            }
        }
    }

    /* access modifiers changed from: private */
    public boolean compareLinkProperties(LinkProperties newLp) {
        if (!this.curLp.isIdenticalDnses(newLp) || !this.curLp.isIdenticalRoutes(newLp) || !this.curLp.isIdenticalAddresses(newLp)) {
            return false;
        }
        return this.curLp.isIdenticalStackedLinks(newLp);
    }

    /* access modifiers changed from: private */
    public void updateLinkProperties(LinkProperties newLp) {
        logw("CORE", "newLp: " + newLp);
        if (this.curLp != null) {
            this.curLp.clear();
            this.curLp.setInterfaceName(newLp.getInterfaceName());
            this.curLp.setLinkAddresses(newLp.getLinkAddresses());
            this.curLp.setDnsServers(newLp.getDnsServers());
            for (RouteInfo route : newLp.getRoutes()) {
                this.curLp.addRoute(route);
            }
            this.curLp.setDomains(newLp.getDomains());
            this.curLp.setMtu(newLp.getMtu());
            this.curLp.setHttpProxy(newLp.getHttpProxy());
            for (LinkProperties lp : newLp.getStackedLinks()) {
                this.curLp.addStackedLink(lp);
            }
            logw("CORE", "curLp: " + this.curLp);
        }
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0032, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void checkIPFamilyAvailability(android.net.LinkProperties r3) {
        /*
            r2 = this;
            java.lang.Object r1 = r2.mIPFamilyLock
            monitor-enter(r1)
            if (r3 != 0) goto L_0x000d
            r0 = 0
            r2.IPV4Available = r0     // Catch:{ all -> 0x0037 }
            r0 = 0
            r2.IPV6Available = r0     // Catch:{ all -> 0x0037 }
            monitor-exit(r1)
            return
        L_0x000d:
            boolean r0 = r3.hasIPv4Address()     // Catch:{ all -> 0x0037 }
            if (r0 == 0) goto L_0x003a
            boolean r0 = r3.hasIPv4DefaultRoute()     // Catch:{ all -> 0x0037 }
            if (r0 == 0) goto L_0x003a
            boolean r0 = r3.hasIPv4DnsServer()     // Catch:{ all -> 0x0037 }
            if (r0 == 0) goto L_0x003a
            r0 = 1
            r2.IPV4Available = r0     // Catch:{ all -> 0x0037 }
            boolean r0 = r3.hasGlobalIPv6Address()     // Catch:{ all -> 0x0037 }
            if (r0 == 0) goto L_0x0033
            boolean r0 = r3.hasIPv6DefaultRoute()     // Catch:{ all -> 0x0037 }
            if (r0 == 0) goto L_0x0033
            r0 = 1
            r2.IPV6Available = r0     // Catch:{ all -> 0x0037 }
        L_0x0031:
            monitor-exit(r1)
            return
        L_0x0033:
            r0 = 0
            r2.IPV6Available = r0     // Catch:{ all -> 0x0037 }
            goto L_0x0031
        L_0x0037:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        L_0x003a:
            boolean r0 = r3.hasGlobalIPv6Address()     // Catch:{ all -> 0x0037 }
            if (r0 == 0) goto L_0x0053
            boolean r0 = r3.hasIPv6DefaultRoute()     // Catch:{ all -> 0x0037 }
            if (r0 == 0) goto L_0x0053
            boolean r0 = r3.hasIPv6DnsServer()     // Catch:{ all -> 0x0037 }
            if (r0 == 0) goto L_0x0053
            r0 = 1
            r2.IPV6Available = r0     // Catch:{ all -> 0x0037 }
            r0 = 0
            r2.IPV4Available = r0     // Catch:{ all -> 0x0037 }
            goto L_0x0031
        L_0x0053:
            r0 = 0
            r2.IPV6Available = r0     // Catch:{ all -> 0x0037 }
            r0 = 0
            r2.IPV4Available = r0     // Catch:{ all -> 0x0037 }
            goto L_0x0031
        */
        throw new UnsupportedOperationException("Method not decompiled: com.quicinc.cne.CNE.checkIPFamilyAvailability(android.net.LinkProperties):void");
    }

    private void startNetworks() {
        this.mWifiRequest = new NetworkRequest.Builder().addCapability(12).addTransportType(1).build();
        this.mMobileRequest = new NetworkRequest.Builder().addCapability(12).addTransportType(0).build();
        this.f2cm = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        if (!checkFeatureEnabled(FeatureType.WQE) || !this.mWQEFeatureEnabled || this.mWQEFeatureEnabled == this.mLastWQEFeatureEnabled) {
            this.f2cm.registerNetworkCallback(this.mWifiRequest, this.mWifiNetworkCallback);
        } else {
            this.mLastWQEFeatureEnabled = this.mWQEFeatureEnabled;
            this.f2cm.requestNetwork(this.mWifiRequest, this.mWifiNetworkCallback);
        }
        this.f2cm.registerNetworkCallback(this.mMobileRequest, this.mMobileNetworkCallback);
    }

    private void stopNetworks() {
        if (!this.mWQEFeatureEnabled && this.mLastWQEFeatureEnabled) {
            this.mLastWQEFeatureEnabled = this.mWQEFeatureEnabled;
            dlogd("CORE", "Unregister the network callbacks");
            this.f2cm.unregisterNetworkCallback(this.mWifiNetworkCallback);
            this.f2cm.unregisterNetworkCallback(this.mMobileNetworkCallback);
        }
    }

    /* access modifiers changed from: private */
    public void broadcastWqeStateChange(int state) {
        logw("CORE", "send wqe state: " + state);
        Intent intent = new Intent("prop_state_change");
        intent.putExtra("state", state);
        this.mContext.sendBroadcast(intent);
    }

    private void handleBSSIDBlacklist(int disallowed, int reason, String bssid) {
        Intent intent = new Intent("blacklist_bad_bssid");
        intent.putExtra("blacklistBSSID", disallowed);
        intent.putExtra("BSSIDToBlacklist", bssid);
        intent.putExtra("blacklistReason", reason);
        loge("CORE", "blacklistBSSID " + bssid + " reason = " + reason);
        this.mContext.sendBroadcast(intent);
    }

    /* access modifiers changed from: package-private */
    public synchronized void send(CNERequest rr) {
        try {
            this.mSender.obtainMessage(1, rr).sendToTarget();
        } catch (NullPointerException npe) {
            rlog("CORE", "send CNERequest null pointer" + npe);
        }
        return;
    }

    public static void registerRequestHandler(int request, Handler handler) {
        synchronized (mRequestHandlers) {
            if (mRequestHandlers.containsKey(Integer.valueOf(request))) {
                logw("CORE", "Handler already registered overriding with new handler.");
            }
            mRequestHandlers.put(Integer.valueOf(request), handler);
        }
    }

    /* access modifiers changed from: private */
    public void processResponse(byte[] buffer, int length) {
        rlog("CORE", "received protobuf msg: ");
        try {
            byte[] pto = new byte[length];
            System.arraycopy(buffer, 0, pto, 0, length);
            Native.CneMessage msg = Native.CneMessage.parseFrom(pto);
            int rspType = msg.getResponse();
            if (rspType == 1) {
                processUnsolicited(msg);
            } else if (rspType == 0) {
                processSolicited(msg);
            } else {
                rlog("CORE", " unknown protobuf msg, ignore.");
            }
        } catch (InvalidProtocolBufferMicroException e) {
            rlog("CORE", " parsing protobuf msg exception");
            CneMsg.logData(buffer, length, "RECV");
        } catch (IndexOutOfBoundsException e2) {
            rlog("CORE", "IndexOutOfBoundsException while parsing protobuf msg");
        } catch (ArrayStoreException e3) {
            rlog("CORE", "ArrayStoreException while parsing protobuf msg");
        } catch (NullPointerException e4) {
            rlog("CORE", "NullPointerException while parsing protobuf msg");
        }
    }

    /* access modifiers changed from: private */
    public CNERequest findAndRemoveRequestFromList(int serial) {
        synchronized (this.mRequestsList) {
            int s = this.mRequestsList.size();
            for (int i = 0; i < s; i++) {
                CNERequest rr = this.mRequestsList.get(i);
                if (rr.mSerial == serial) {
                    this.mRequestsList.remove(i);
                    return rr;
                }
            }
            return null;
        }
    }

    private void processSolicited(Native.CneMessage rsp) {
        try {
            Native.SolictedMsg solmsg = Native.SolictedMsg.parseFrom(rsp.getMsgbody().toByteArray());
            int serial = solmsg.getSerial();
            int error = solmsg.getError();
            dlogi("CORE", "parse solicted message, serial: " + serial + "error: " + error);
            CNERequest rr = findAndRemoveRequestFromList(solmsg.getSerial());
            if (rr == null) {
                logw("CORE", "Unexpected solicited response! sn: " + serial + " error: " + error);
            } else if (error != 0) {
                rr.onError(error);
                rr.release();
            } else {
                rr.release();
            }
        } catch (InvalidProtocolBufferMicroException e) {
            rlog("CORE", "parsing protobuf msg exception");
        }
    }

    private void processUnsolicited(Native.CneMessage rsp) {
        dlogi("CORE", "processUnsolicited called");
        int response = rsp.getMsgId();
        byte[] data = rsp.getMsgbody().toByteArray();
        switch (response) {
            case 1:
                rlog("CORE", "REQUEST_BRING_RAT_DOWN received");
                Native.NetRequest p = ProtoMsgParser.parseNetRequest(data);
                if (p != null) {
                    handleRatRequest(false, p);
                    return;
                }
                return;
            case 2:
                rlog("CORE", "REQUEST_BRING_RAT_UP received");
                Native.NetRequest p2 = ProtoMsgParser.parseNetRequest(data);
                if (p2 != null) {
                    handleRatRequest(true, p2);
                    return;
                }
                return;
            case 5:
                rlog("CORE", "REQUEST_START_NAT_KEEP_ALIVE received");
                Native.NatKeepAliveRequestMsg p3 = ProtoMsgParser.parseNatKA(data);
                if (p3 != null) {
                    handleStartNatKeepAliveMsg(p3);
                    return;
                }
                return;
            case 6:
                rlog("CORE", "REQUEST_STOP_NAT_KEEP_ALIVE received");
                handleStopNatKeepAliveMsg();
                return;
            case 9:
                rlog("CORE", "NOTIFY_DISALLOWED_AP received");
                Native.DisallowedAP p4 = ProtoMsgParser.parseDisallowedAP(data);
                if (p4 != null) {
                    handleDisallowedApMsg(p4);
                    return;
                }
                return;
            case 10:
                rlog("CORE", "REQUEST_START_ACTIVE_BQE received");
                Native.BqeActiveProbeMsg p5 = ProtoMsgParser.parseBqeActiveProbe(data);
                if (p5 != null) {
                    handleStartActiveBQEMsg(p5);
                    return;
                }
                return;
            case 11:
                rlog("CORE", "REQUEST_SET_DEFAULT_ROUTE received");
                Native.SetDefaultRouteMsg p6 = ProtoMsgParser.parseDefaultRoute(data);
                if (p6 != null) {
                    handleSetDefaultRouteMsg(p6);
                    return;
                }
                return;
            case 12:
                rlog("CORE", "REQUEST_START_ICD received");
                Native.IcdStartMsg p7 = ProtoMsgParser.parseIcdStartMsg(data);
                if (p7 != null) {
                    handleStartICDMsg(p7);
                    return;
                }
                return;
            case 13:
                rlog("CORE", "CNE_REQUEST_STOP_ACTIVE_BQE received");
                handleStopActiveBQEMsg();
                return;
            case 14:
                rlog("CORE", "REQUEST_POST_BQE_RESULTS received");
                Native.BqePostParamsMsg p8 = ProtoMsgParser.parseBqePostParam(data);
                if (p8 != null) {
                    handlePostBqeResult(p8);
                    return;
                }
                return;
            case 15:
                rlog("CORE", "NOTIFY_FEATURE_STATUS received");
                Native.FeatureInfo p9 = ProtoMsgParser.parseFeatureInfo(data);
                if (p9 != null) {
                    handleFeatureStatusNotification(p9);
                    return;
                }
                return;
            case 16:
                rlog("CORE", "RESP_SET_FEATURE_PREF received");
                Native.FeatureRespMsg p10 = ProtoMsgParser.parseFeatureResp(data);
                if (p10 != null) {
                    handleFeatureStatusSetResponse(p10);
                    return;
                }
                return;
            case 17:
                rlog("CORE", "NOTIFY_POLICY_UPDATE_DONE received");
                Native.PolicyUpdateRespMsg p11 = ProtoMsgParser.parsePolicyUpdateResp(data);
                if (p11 != null) {
                    handlePolicyUpdateResponse(p11);
                    return;
                }
                return;
            case 18:
                rlog("CORE", "REQUEST_UPDATE_POLICY received");
                handleRequestUpdatePolicy();
                return;
            case 19:
                rlog("CORE", "CNE_REQUEST_QUOTA_LIMIT_QUERY received");
                handleQuotaQuery();
                return;
            default:
                logw("CORE", "UNKOWN Unsolicited Event " + response);
                return;
        }
    }

    private void handleRequestUpdatePolicy() {
        if (new File(andsfCneFileLoc).exists()) {
            try {
                if (updateOperatorPolicy(andsfCneFileLoc) != 1000) {
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        } else {
            logi("CORE", "Using Fallback andsfCne.xml");
            try {
                if (updateOperatorPolicy(andsfCneFbFileLoc) != 1000) {
                }
            } catch (Exception ex2) {
                ex2.printStackTrace();
            }
        }
    }

    /* access modifiers changed from: private */
    public int NetworkStateStringToInt(String state) {
        if (state.equals(NETWORK_STATE_CONNECTING)) {
            return 0;
        }
        if (state.equals(NETWORK_STATE_CONNECTED)) {
            return 1;
        }
        if (state.equals(NETWORK_STATE_SUSPENDED)) {
            return 2;
        }
        if (state.equals(NETWORK_STATE_DISCONNECTING)) {
            return 3;
        }
        if (state.equals(NETWORK_STATE_DISCONNECTED)) {
            return 4;
        }
        return 5;
    }

    /* access modifiers changed from: private */
    public int NetworkStateToInt(NetworkInfo.State state) {
        switch (m17getandroidnetNetworkInfo$StateSwitchesValues()[state.ordinal()]) {
            case 1:
                return 1;
            case 2:
                return 0;
            case 3:
                return 4;
            case 4:
                return 3;
            case 5:
                return 2;
            case 6:
                return 5;
            default:
                return -1;
        }
    }

    private NetworkInfo.State DetailedNetworkStateToFineNetworkState(NetworkInfo.DetailedState state) {
        switch (m16getandroidnetNetworkInfo$DetailedStateSwitchesValues()[state.ordinal()]) {
            case 1:
                return NetworkInfo.State.CONNECTING;
            case 2:
                return NetworkInfo.State.CONNECTED;
            case 3:
                return NetworkInfo.State.CONNECTING;
            case 4:
                return NetworkInfo.State.DISCONNECTED;
            case 5:
                return NetworkInfo.State.DISCONNECTING;
            case 6:
                return NetworkInfo.State.DISCONNECTED;
            case 7:
                return NetworkInfo.State.CONNECTING;
            case 8:
                return NetworkInfo.State.CONNECTING;
            case 9:
                return NetworkInfo.State.CONNECTING;
            case 10:
                return NetworkInfo.State.SUSPENDED;
            default:
                return NetworkInfo.State.DISCONNECTED;
        }
    }

    private NetworkInfo.State convertToNetworkState(PhoneConstants.DataState dataState) {
        switch (m0x9dac0c3a()[dataState.ordinal()]) {
            case 1:
                return NetworkInfo.State.CONNECTED;
            case 2:
                return NetworkInfo.State.CONNECTING;
            case 3:
                return NetworkInfo.State.DISCONNECTED;
            case 4:
                return NetworkInfo.State.SUSPENDED;
            default:
                return NetworkInfo.State.UNKNOWN;
        }
    }

    /* access modifiers changed from: private */
    public int getSignalStrength(int networkType) {
        if (this.mSignalStrength == null) {
            logw("CORE", "getSignalStrength mSignalStrength in null");
            return -1;
        }
        dlogi("CORE", "getSignalStrength networkType= " + networkType);
        switch (networkType) {
            case 1:
            case 2:
            case 3:
            case 8:
            case 9:
            case 10:
                return (this.mSignalStrength.getGsmSignalStrength() * 2) - 113;
            case 4:
            case 7:
                return this.mSignalStrength.getCdmaDbm();
            case 5:
            case 6:
                return this.mSignalStrength.getEvdoDbm();
            default:
                return -1;
        }
    }

    public boolean andsfDataReady() {
        CNERequest rr = ProtoMsgParser.createRequestAndsf();
        if (rr == null) {
            logw("CORE", "andsfDataReady: rr=NULL");
            return false;
        }
        send(rr);
        return true;
    }

    private boolean sendDefaultNwMsg(int defNw) {
        if (defNw < -1 || defNw > 17) {
            dlogw("CORE", "sendDefaultNwMsg: Default network msg not being sent to CND.Value out of range: " + defNw);
            return false;
        }
        CNERequest rr = ProtoMsgParser.createRequestDfNw(defNw);
        if (rr == null) {
            logw("CORE", "sendDefaultNwMsg: rr=NULL - not updated");
            return false;
        }
        send(rr);
        return true;
    }

    /* access modifiers changed from: private */
    public boolean updateDefaultNetwork() {
        int defaultNw = -1;
        NetworkInfo networkInfo = ((ConnectivityManager) this.mContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if (networkInfo != null && networkInfo.isConnected()) {
            defaultNw = networkInfo.getType();
        }
        if (defaultNw == this.mDefaultNetwork) {
            return false;
        }
        this.mDefaultNetwork = defaultNw;
        return sendDefaultNwMsg(this.mDefaultNetwork);
    }

    public boolean notifyRatConnectStatus(int type, int status, String ipV4Addr, String ipV6Addr) {
        CNERequest rr = ProtoMsgParser.createRequest(type, status, ipV4Addr, ipV6Addr);
        if (rr == null) {
            logw("CORE", "notifyRatConnectStatus: rr=NULL");
            return false;
        }
        send(rr);
        return true;
    }

    /* access modifiers changed from: private */
    public boolean notifyMobileDataEnabled(boolean enabled) {
        boolean isDataRoamingAllowed;
        boolean enabled2;
        int ddsId = SubscriptionManager.getDefaultDataSubscriptionId();
        int phoneId = SubscriptionManager.getPhoneId(ddsId);
        if (!isPhoneIdValid(phoneId) || this.mServiceState[phoneId] == null) {
            logw("CORE", "Phone id invalid or Service State available");
            enabled = false;
            isDataRoamingAllowed = false;
        } else {
            if (this.mServiceState[phoneId].getDataRoaming()) {
                isDataRoamingAllowed = isDataRoamingEnabledonUI(ddsId);
            } else {
                isDataRoamingAllowed = true;
            }
            dlogi("CORE", "notifyMobileDataEnabled: dataRegRoaming = " + this.mServiceState[phoneId].getDataRoaming() + "  RoamingonUI = " + isDataRoamingEnabledonUI(ddsId) + " isDataRoamingAllowed = " + isDataRoamingAllowed);
        }
        dlogi("CORE", "notifyMobileDataEnabled is enabled " + enabled + "  && isDataRoamingAllowed  " + isDataRoamingAllowed);
        if (enabled) {
            enabled2 = isDataRoamingAllowed;
        } else {
            enabled2 = false;
        }
        CNERequest rr = ProtoMsgParser.createRequestMobileData(enabled2);
        if (rr == null) {
            logw("CORE", "notifyMobileDataEnabled: rr=NULL - not updated");
            return false;
        }
        send(rr);
        return true;
    }

    private boolean notifyIMSProfileOverrideSetting(int isOverrideSet) {
        CNERequest rr = ProtoMsgParser.createRequestProfileOverride(isOverrideSet);
        if (rr == null) {
            logw("CORE", "notifyIMSProfileOverrideSetting: rr=NULL - not updated");
            return false;
        }
        send(rr);
        return true;
    }

    /* access modifiers changed from: private */
    public void registerSettingsObserver() {
        int phoneCount = this.mTelephonyManager.getPhoneCount();
        dlogd("CORE", "Registering observers for MOBILE_DATA,DATA_ROAMING and MULTI_SIM_DATA_CALL_SUBSCRIPTION");
        if (phoneCount == 1) {
            this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor("mobile_data"), true, this.mSettingsObserver);
            this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor("data_roaming"), true, this.mSettingsObserver);
            return;
        }
        for (int i = 0; i < phoneCount; i++) {
            int[] subs = SubscriptionManager.getSubId(i);
            if (subs == null || subs.length == 0 || subs[0] < 0) {
                rlog("CORE", "registerSettingsObserver: getSubId for phone " + i + " returned Invalid sub");
                return;
            }
            dlogd("CORE", "Register for sub ID:" + subs[0] + " phone Count = " + phoneCount);
            this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor("mobile_data" + subs[0]), true, this.mSettingsObserver);
            this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor("data_roaming" + subs[0]), true, this.mSettingsObserver);
        }
        this.mContext.getContentResolver().registerContentObserver(Settings.Global.getUriFor("multi_sim_data_call"), true, this.mSettingsObserver);
    }

    /* access modifiers changed from: private */
    public boolean registerPhoneStateListener(int subId) {
        if (this.mHandler != null) {
            unregisterPhoneStateListener();
            this.mPhoneStateListener = new PhoneStateListener(subId, this.mHandler.getLooper()) {
                public void onServiceStateChanged(ServiceState serviceState) {
                    int dataState = CNE.this.mTelephonyManager.getDataState();
                    int ddsId = SubscriptionManager.getDefaultDataSubscriptionId();
                    int phoneId = SubscriptionManager.getPhoneId(ddsId);
                    boolean enabled = CNE.this.mTelephonyManager.getDataEnabled();
                    if (CNE.this.isPhoneIdValid(phoneId)) {
                        CNE.this.mServiceState[phoneId] = serviceState;
                    } else {
                        CNE.logw("CORE", "Cannot update service state on invalid phone Id");
                    }
                    CNE.dlogd("CORE", "onServiceStateChanged: dataState: " + dataState + " DDS:" + ddsId + " Notify service state update");
                    CNE.this.notifySubRat();
                    boolean unused = CNE.this.notifyMobileDataEnabled(enabled);
                }
            };
            this.mTelephonyManager.listen(this.mPhoneStateListener, 1);
            return true;
        }
        loge("CORE", "Handler is null! PhoneSteListener not registered");
        return false;
    }

    private void unregisterPhoneStateListener() {
        if (this.mPhoneStateListener == null || this.currDDSId == -1) {
            logw("CORE", "Cannot unregister - null phonestatelistener objector current DDS Id invalid");
            return;
        }
        this.mTelephonyManager.listen(this.mPhoneStateListener, 0);
        this.mPhoneStateListener = null;
    }

    /* access modifiers changed from: private */
    public void updateMultisimMobileDataState(Uri uri) {
        int phoneSubId = SubscriptionManager.getDefaultDataSubscriptionId();
        boolean enabled = this.mTelephonyManager.getDataEnabled();
        Uri dburi = Settings.Global.getUriFor("mobile_data" + phoneSubId);
        if (dburi.equals(uri)) {
            dlogi("CORE", "uri match, uri = " + dburi + "..calling notifyMobileDataEnabled");
            notifyMobileDataEnabled(enabled);
        }
    }

    /* access modifiers changed from: private */
    public int getInetFamily() {
        synchronized (this.mIPFamilyLock) {
            if (this.IPV4Available) {
                if (this.IPV6Available) {
                    CneMsg.logd("CORE", "V4_V6 connected");
                    return 3;
                }
                CneMsg.logd("CORE", "V4 connected");
                return 1;
            } else if (this.IPV6Available) {
                CneMsg.logd("CORE", "V6 connected");
                return 2;
            } else {
                CneMsg.logd("CORE", "No family connected");
                return 0;
            }
        }
    }

    public boolean notifyWlanConnectivityUp(boolean isConnected, int familyType, boolean isAndroidValidated) {
        if (!isConnected) {
            return true;
        }
        CNERequest rr = ProtoMsgParser.createRequest(familyType, isAndroidValidated);
        if (rr == null) {
            logw("CORE", "notifyWlanConnectivityUp: rr=NULL");
            return false;
        }
        send(rr);
        this.lastFamilyType = familyType;
        return true;
    }

    /* access modifiers changed from: private */
    public void sendWifiApInfo(int currState, int prevState) {
        CNERequest rr = ProtoMsgParser.createRequestWifiAp(currState, prevState);
        if (rr == null) {
            logw("CORE", "sendWifiApInfo: rr = NULL - no update");
        } else {
            send(rr);
        }
    }

    /* access modifiers changed from: private */
    public void sendWifiP2pInfo(int currState) {
        CNERequest rr = ProtoMsgParser.createRequestWifiP2p(currState);
        if (rr == null) {
            logw("CORE", "sendWifiP2pInfo: rr = NULL - no update");
        } else {
            send(rr);
        }
    }

    /* access modifiers changed from: private */
    public synchronized void sendWifiStatus() {
        if (this.mWifiManager == null || this._cneWifiInfo == null) {
            dlogw("CORE", "sendWlanStatus: null mWifiManager or CneWifiInfo");
        } else {
            try {
                this._cneWifiInfo.setTimeStamp(new Timestamp(System.currentTimeMillis()).toString());
                CNERequest rr = ProtoMsgParser.createRequest(this._cneWifiInfo);
                if (rr == null) {
                    logw("CORE", "updateWlanStatus: rr=NULL - no updated");
                    return;
                }
                send(rr);
            } catch (NullPointerException npe) {
                logw("CORE", "sendWifiStatus: null pointer" + npe);
            }
        }
        return;
    }

    /* access modifiers changed from: private */
    public synchronized void sendWwanStatus() {
        if (this.mTelephonyManager == null || this._cneWwanInfo == null) {
            dlogw("CORE", "sendWwanStatus: null TelephonyManager or CneWwanInfo");
        } else {
            try {
                this._cneWwanInfo.setTimeStamp(new Timestamp(System.currentTimeMillis()).toString());
                CNERequest rr = ProtoMsgParser.createRequest(this._cneWwanInfo);
                if (rr == null) {
                    logw("CORE", "sendWwanStatus: rr=NULL - no updated");
                }
                send(rr);
            } catch (NullPointerException npe) {
                logw("CORE", "sendWwanStatus: null pointer " + npe);
            }
        }
        return;
    }

    /* access modifiers changed from: private */
    public void sendScreenState(boolean state) {
        boolean z;
        CNERequest rr = ProtoMsgParser.createScreenRequest(state);
        if (rr == null) {
            logw("CORE", "sendScreenState: rr=NULL");
            return;
        }
        send(rr);
        boolean keyguardLocked = false;
        KeyguardManager km = (KeyguardManager) this.mContext.getSystemService("keyguard");
        if (km != null) {
            keyguardLocked = km.isKeyguardLocked();
        }
        if (keyguardLocked) {
            z = false;
        } else {
            z = true;
        }
        sendUserActive(z);
    }

    /* access modifiers changed from: private */
    public void sendUserActive(boolean state) {
        CNERequest rr = ProtoMsgParser.createUserActiveRequest(state);
        if (rr == null) {
            logw("CORE", "sendUserActive: rr=NULL");
        } else {
            send(rr);
        }
    }

    /* access modifiers changed from: private */
    public boolean sendInitReq() {
        CNERequest rr = ProtoMsgParser.createInitRequest();
        if (rr == null) {
            rlog("CORE", "sendinitReq: rr=NULL");
            return false;
        }
        send(rr);
        return true;
    }

    private void handleDisallowedApMsg(Native.DisallowedAP p) {
        if (p != null) {
            int disallowed = p.getDisallowed();
            int reason = p.getReason();
            String bssid = p.getBssid();
            rlog("CORE", "handleDisallowedApMsg(): NOTIFY_DISALLOWED_AP received. Blacklist BSSID: " + bssid + " reason: " + reason + "disallowed: " + disallowed);
            handleBSSIDBlacklist(disallowed, reason, bssid);
        }
    }

    private void handleStartActiveBQEMsg(Native.BqeActiveProbeMsg p) {
        if (p != null) {
            String bssid = p.getBssid();
            String uri = p.getUri();
            String fileSize = p.getFileSize();
            this.getRequestUrl = uri;
            dlogv("CORE", "handleStartActiveBQEMsg called, bssid=" + bssid + " URI=" + uri + " fileSize=" + fileSize);
            new Thread(new BQEClient(this, this.mWifiManager, uri, bssid, fileSize)).start();
        }
    }

    private void handlePostBqeResult(Native.BqePostParamsMsg p) {
        if (p != null) {
            String bssid = p.getBssid();
            String uri = p.getUri();
            int tputKiloBitsPerSec = p.getTputKiloBitsPerSec();
            int timestampSec = p.getTimeStampSec();
            dlogv("CORE", "handlePostBqeResult called, bssid=" + bssid + " URI=" + uri + " tput=" + tputKiloBitsPerSec + " timestampSec= " + timestampSec);
            new Thread(new BQEClient(this, this.mWifiManager, uri, this.getRequestUrl, bssid, Integer.toString(tputKiloBitsPerSec), Integer.toString(timestampSec))).start();
        }
    }

    private void handleStopActiveBQEMsg() {
        dlogv("CORE", "handleStopActiveBQEMsg called");
        BQEClient.stop();
    }

    private void handlePolicyUpdateResponse(Native.PolicyUpdateRespMsg p) {
        if (p != null) {
            dlogv("CORE", "handlePolicyUpdateResponse called");
            int policy = p.getPolicy();
            int result = p.getResult();
            if (policy == 1) {
                setPolicyConfigUpdateBusy(1, false);
            }
        }
    }

    private void handleStartNatKeepAliveMsg(Native.NatKeepAliveRequestMsg p) {
        if (p != null) {
            int timer = p.getTimer();
            int srcPort = p.getSrcPort();
            int dstPort = p.getDestPort();
            String ip = p.getDestIp();
            CneMsg.rlog("CORE", "unparcel NAT Keep alive msg: timer " + timer + " sport " + srcPort + " dport " + dstPort + " ip address " + ip);
            InetAddress srcAddr = null;
            try {
                if (this._cneWifiInfo.getIPv4Address() != "") {
                    srcAddr = InetAddress.getByName(this._cneWifiInfo.getIPv4Address());
                } else if (this._cneWifiInfo.getIPv6Address() != "") {
                    srcAddr = InetAddress.getByName(this._cneWifiInfo.getIPv6Address());
                }
                this.mPacketKeepalive = ((ConnectivityManager) this.mContext.getSystemService("connectivity")).startNattKeepalive(this.mWifiNetwork, timer, this.pkaCallback, srcAddr, srcPort, InetAddress.getByName(ip));
            } catch (NullPointerException e) {
                CneMsg.rlog("CORE", "InetAddress is null");
            } catch (UnknownHostException e2) {
                CneMsg.rlog("CORE", "Unable to convert ip to InetAddress.");
            }
        }
    }

    private void handleStopNatKeepAliveMsg() {
        try {
            this.mPacketKeepalive.stop();
        } catch (NullPointerException e) {
            CneMsg.rlog("CORE", "packetKeepalive is Null");
        }
    }

    private void updateWqeStateChange(int ratType) {
        int state;
        Object obj;
        if (ratType == 1) {
            state = 1;
        } else {
            state = 0;
        }
        if ((state != 1 || !this.isWifiConnected) && state != 0) {
            dlogd("CORE", "Not sending wqe state yet since wifi not available");
            obj = this.mIPFamilyLock;
            synchronized (obj) {
                this.sendDefaultRouteIntent = true;
            }
        } else {
            broadcastWqeStateChange(state);
            obj = this.mIPFamilyLock;
            synchronized (obj) {
                this.sendDefaultRouteIntent = false;
            }
        }
    }

    private void handleSetDefaultRouteMsg(Native.SetDefaultRouteMsg p) {
        if (p != null) {
            int ratType = p.getRattype();
            dlogd("CORE", "handleSetDefaultRouteMsg for ratType = " + ratType);
            updateWqeStateChange(ratType);
        }
    }

    private void handleStartICDMsg(Native.IcdStartMsg p) {
        if (p != null) {
            String uri = p.getUri();
            String httpuri = p.getHttpuri();
            String bssid = p.getBssid();
            int timeout = p.getTimeout();
            int tid = p.getTid();
            dlogv("CORE", "handleStartICDMsg called with uri= " + uri + " httpuri= " + httpuri + " bssid= " + bssid + " timeout= " + timeout + " tid= " + tid);
            new Thread(new ICDClient(this, this.mWifiManager, uri, httpuri, bssid, timeout, tid)).start();
        }
    }

    private int CneRatTypetoNetworkType(int x) {
        switch (x) {
            case 0:
                logw("CORE", "RAT_WWAN(" + x + ") transformed into" + " ConnectivityManager.TYPE_MOBILE(" + 0 + ")");
                return 0;
            case 1:
                logw("CORE", "RAT_WLAN(" + x + ") transformed into" + " ConnectivityManager.TYPE_WIFI(" + 1 + ")");
                return 1;
            case Native.RAT_NONE /*254*/:
                return -1;
            default:
                return -1;
        }
    }

    private void handleFeatureStatusSetResponse(Native.FeatureRespMsg p) {
        int state;
        int state2;
        if (p != null) {
            int featureId = p.getFeatureType();
            int featureStatus = p.getFeatureStatus();
            int error = p.getResult();
            logi("CORE", "handleFeatureStatusSetResponse(): feature id: " + featureId + " feature status: " + featureStatus + " error code: " + error);
            if (error != 0) {
                loge("CORE", "handleFeatureStatusSetResponse(): response error code: " + error);
            } else if (featureId == 1) {
                synchronized (this) {
                    if (featureStatus == 2) {
                        this.mWQEFeatureEnabled = true;
                    } else if (featureStatus == 1) {
                        this.mWQEFeatureEnabled = false;
                    } else {
                        this.mWQEFeatureEnabled = false;
                        this.mWQEFeatureRequestedState = false;
                        loge("CORE", "handleFeatureStatusSetResponse():unknown feature status.");
                    }
                }
                if (this.mWQEFeatureEnabled) {
                    state2 = 2;
                } else {
                    state2 = 1;
                }
                sendPrefChangedBroadcast(1, 1, state2);
                if (this.wqeConfigured) {
                    logi("CORE", "WQE is configured");
                    if (this.mWQEFeatureEnabled) {
                        startNetworks();
                    } else {
                        stopNetworks();
                    }
                }
            } else if (featureId == 2) {
                synchronized (this) {
                    if (featureStatus == 2) {
                        this.mIWLANFeatureEnabled = true;
                    } else if (featureStatus == 1) {
                        this.mIWLANFeatureEnabled = false;
                    } else {
                        this.mIWLANFeatureEnabled = false;
                        this.mIWLANFeatureRequestedState = false;
                        loge("CORE", "handleFeatureStatusSetResponse():unknown feature status.");
                    }
                }
                if (this.mIWLANFeatureEnabled) {
                    state = 2;
                } else {
                    state = 1;
                }
                sendPrefChangedBroadcast(2, 1, state);
            } else {
                loge("CORE", "handleFeatureStatusSetResponse(): unknown feature id.");
            }
        }
    }

    private void handleFeatureStatusNotification(Native.FeatureInfo p) {
        if (p != null) {
            int featureId = p.getFeatureId();
            int featureStatus = p.getFeatureStatus();
            logi("CORE", "handleFeatureStatusNotification(): feature id: " + featureId + " feature status: " + featureStatus);
            if (featureId == 1) {
                synchronized (this) {
                    if (featureStatus == 2) {
                        this.mWQEFeatureEnabled = true;
                        this.mWQEFeatureRequestedState = true;
                    } else if (featureStatus == 1) {
                        this.mWQEFeatureEnabled = false;
                        this.mWQEFeatureRequestedState = false;
                    } else {
                        this.mWQEFeatureEnabled = false;
                        this.mWQEFeatureRequestedState = false;
                        loge("CORE", "handleFeatureStatusNotification():unknown feature status.");
                    }
                }
                if (!this.mWQEFeatureEnabled && this.wqeConfigured) {
                    logd("CORE", "WQE is configured, stop network");
                    stopNetworks();
                    updateWqeStateChange(1);
                }
            } else if (featureId == 2) {
                synchronized (this) {
                    if (featureStatus == 2) {
                        this.mIWLANFeatureEnabled = true;
                        this.mIWLANFeatureRequestedState = true;
                    } else if (featureStatus == 1) {
                        this.mIWLANFeatureEnabled = false;
                        this.mIWLANFeatureRequestedState = false;
                    } else {
                        this.mIWLANFeatureEnabled = false;
                        this.mIWLANFeatureRequestedState = false;
                        loge("CORE", "handleFeatureStatusNotification():unknown feature status.");
                    }
                }
            } else {
                loge("CORE", "handleFeatureStatusNotification(): unknown feature id.");
            }
        }
    }

    private void handleRatRequest(boolean bringUp, Native.NetRequest p) {
        int subId;
        if (p != null) {
            int netType = p.getRattype();
            int slotidx = p.getSlottype();
            CneMsg.rlog("CORE", "handleRatRequest net Type: " + netType + " slotidx: " + slotidx);
            HashMap<Integer, CNENetworkCallback> mMap = this.mMapList.get(slotidx);
            if (!bringUp) {
                CNENetworkCallback netCb = mMap.remove(Integer.valueOf(netType));
                if (netCb != null) {
                    netCb.destroyNetworkRequest();
                }
            } else if (mMap.containsKey(Integer.valueOf(netType))) {
                CNENetworkCallback netCb2 = mMap.get(Integer.valueOf(netType));
                if (netCb2 != null) {
                    sendRatInfo(netCb2.getRatInfo(), netType);
                }
            } else {
                if (slotidx == 0) {
                    subId = SubscriptionManager.getDefaultDataSubscriptionId();
                } else {
                    int[] subs = SubscriptionManager.getSubId(slotidx - 1);
                    if (!isSlotIdValid(slotidx - 1) || this.isSubInfoReady[slotidx - 1]) {
                        subId = subs[0];
                    } else {
                        if (subs != null) {
                            CneMsg.rlog("CORE", "handleRatRequest: subId = " + subs[0] + " subInfoReady[" + (slotidx - 1) + "] " + this.isSubInfoReady[slotidx - 1]);
                        }
                        CneRatInfo ratInfo = new CneRatInfo();
                        ratInfo.setSlotIdx(slotidx);
                        ratInfo.setErrorCause(1);
                        ratInfo.setNetworkState(4);
                        sendRatInfo(ratInfo, netType);
                        return;
                    }
                }
                rlog("CORE", "handleRatRequest: subId = " + subId);
                CNENetworkCallback netCb3 = new CNENetworkCallback(this, this.mContext, subId, slotidx);
                if (netCb3 != null) {
                    mMap.put(Integer.valueOf(netType), netCb3);
                    if (slotidx == 0) {
                        netCb3.createNetworkRequest(netType);
                    } else {
                        netCb3.createNetworkRequest(netType, subId);
                    }
                } else {
                    rlog("CORE", "Cannot allocate memory for CNENetworkCallback");
                }
            }
        }
    }

    public void sendRatInfo(CneRatInfo info, int netType) {
        rlog("CORE", "sendRatInfo: network: " + netType);
        CNERequest rr = ProtoMsgParser.createRequest(info, netType);
        if (rr == null) {
            rlog("CORE", "sendRatInfo: rr=NULL");
        } else {
            send(rr);
        }
    }

    public void sendIcdHttpResponse(int result, String bssid, int tid, int family) {
        CNERequest rr = ProtoMsgParser.createRequest(result, bssid, tid, family);
        if (rr == null) {
            logw("CORE", "notifyIcdHttpResult: rr=NULL");
        } else {
            send(rr);
        }
    }

    public void sendICDResponse(int result, String bssid, int flags, int tid, int icdQuota, int icdProb, int bqeQuota, int bqeProb, int mbw, int dl, int sdev) {
        CNERequest rr = ProtoMsgParser.createRequest(result, bssid, flags, tid, icdQuota, icdProb, bqeQuota, bqeProb, mbw, dl, sdev);
        if (rr == null) {
            logw("CORE", "notifyICDResult: rr=NULL");
        } else {
            send(rr);
        }
    }

    public void sendBQEResponse(int result, int rtt, int tSec, int tMs) {
        CNERequest rr = ProtoMsgParser.createRequest(result, rtt, tSec, tMs);
        if (rr == null) {
            logw("CORE", "notifyJRTTResult: rr=NULL");
        } else {
            send(rr);
        }
    }

    public void sendBQEResponse(int result) {
    }

    private static int parseBwString(String rate) {
        if (rate == null) {
            return 0;
        }
        int rateMultiple = 1;
        if (rate.toLowerCase().endsWith("kbps") || rate.endsWith("kbit/s") || rate.endsWith("kb/s")) {
            rateMultiple = 1000;
        } else if (rate.toLowerCase().endsWith("mbps") || rate.endsWith("Mbit/s") || rate.endsWith("Mb/s")) {
            rateMultiple = 1000000;
        } else if (rate.toLowerCase().endsWith("gbps") || rate.endsWith("Gbit/s") || rate.endsWith("Gb/s")) {
            rateMultiple = 1000000000;
        }
        int trimPosition = rate.length();
        int i = 0;
        while (true) {
            if (i >= rate.length()) {
                break;
            } else if (rate.charAt(i) <= '0' || rate.charAt(i) >= '9') {
                trimPosition = i;
            } else {
                i++;
            }
        }
        String rate2 = rate.substring(0, trimPosition);
        if (rate2.length() == 0) {
            rate2 = "0";
        }
        return Integer.parseInt(rate2) * rateMultiple;
    }

    public static boolean configureSsid(String newStr) {
        boolean strMatched = false;
        try {
            BufferedReader reader = new BufferedReader(new FileReader(new File("/data/ssidconfig.txt")));
            String oldtext = "";
            String oldStr = "";
            String newToken = new StringTokenizer(newStr, ":").nextToken();
            dlogi("CORE", "configureSsid: newToken: " + newToken);
            while (true) {
                String line = reader.readLine();
                if (line == null) {
                    break;
                }
                oldtext = oldtext + line + "\r\n";
                StringTokenizer oldst = new StringTokenizer(line, ":");
                while (oldst.hasMoreTokens()) {
                    String oldToken = oldst.nextToken();
                    dlogi("CORE", "configureSsid: oldToken: " + oldToken);
                    if (newToken.equals(oldToken)) {
                        dlogi("CORE", "configSsid entry matched");
                        oldStr = line;
                        strMatched = true;
                    }
                }
            }
            if (!strMatched) {
                dlogi("CORE", "configSsid entry not matched");
                return false;
            }
            String newtext = oldtext.replaceAll(oldStr, newStr);
            reader.close();
            FileWriter writer = new FileWriter("/data/ssidconfig.txt");
            writer.write(newtext);
            writer.close();
            return true;
        } catch (IOException ioe) {
            ioe.printStackTrace();
            return true;
        }
    }

    private int updateOperatorPolicy(String filePath) {
        if (!isAndsfConfigUpdateBusy) {
            logi("CORE", "Updating Operator Policy");
            if (this.andsfParser == null) {
                loge("CORE", "andsfParser object is null");
                return -1;
            }
            setPolicyConfigUpdateBusy(1, true);
            int retVal = this.andsfParser.updateAndsf(filePath);
            if (retVal != 1000) {
                rlog("CORE", "parsing xml file" + filePath + " failed");
            }
            if (andsfDataReady()) {
                return retVal;
            }
            setPolicyConfigUpdateBusy(1, false);
            return -1;
        }
        dlogi("CORE", "Previous request in process try later...");
        return -2;
    }

    private void setPolicyConfigUpdateBusy(int policyType, boolean tryLater) {
        switch (policyType) {
            case 1:
                synchronized (this) {
                    isAndsfConfigUpdateBusy = tryLater;
                }
                dlogv("CORE", "isAndsfConfigUpdateBusy: " + isAndsfConfigUpdateBusy);
                return;
            default:
                return;
        }
    }

    public int updatePolicy(int policyType, String filePath, String packageName) {
        boolean exempt;
        if (filePath.length() > MAX_FILE_PATH_LENGTH) {
            dloge("CORE", "Path length too long");
            return -7;
        }
        int uid = Binder.getCallingUid();
        if (uid == 1000) {
            exempt = true;
        } else {
            try {
                exempt = (this.mContext.getPackageManager().getApplicationInfo(packageName, 0).flags & 1) != 0;
            } catch (PackageManager.NameNotFoundException e) {
                throw new IllegalArgumentException("Failed to find info of the calling package", e);
            }
        }
        if (!exempt) {
            throw new SecurityException("package is not system app");
        } else if ((filePath.startsWith(systemPath) || filePath.startsWith(dataPath)) && uid > 1000) {
            dloge("CORE", "This path is not allowed to access");
            return -6;
        } else {
            File file = new File(filePath);
            switch (policyType) {
                case 1:
                    if (!checkFeatureEnabled(FeatureType.WQE)) {
                        return -4;
                    }
                    if (file.length() <= MAX_ANDSF_FILE_SIZE) {
                        return updateOperatorPolicy(filePath);
                    }
                    dloge("CORE", "File size not supported");
                    return -5;
                default:
                    dlogw("CORE", "Invalid PolicyType: " + policyType + " passed");
                    return -3;
            }
        }
    }

    public int getPolicyVersion(int policyType, String packageName) {
        boolean exempt;
        if (Binder.getCallingUid() == 1000) {
            exempt = true;
        } else {
            try {
                exempt = (this.mContext.getPackageManager().getApplicationInfo(packageName, 0).flags & 1) != 0;
            } catch (PackageManager.NameNotFoundException e) {
                throw new IllegalArgumentException("Failed to find info of the calling package", e);
            }
        }
        if (!exempt) {
            throw new SecurityException("package is not system app");
        }
        switch (policyType) {
            case 1:
                if (!checkFeatureEnabled(FeatureType.WQE)) {
                    return -4;
                }
                return AndsfParser.Version.getInt();
            default:
                dlogw("CORE", "Invalid PolicyType: " + policyType + " passed");
                return -3;
        }
    }

    private boolean checkFeatureEnabled(FeatureType feature) {
        boolean enabled;
        int value = SystemProperties.getInt("persist.cne.feature", 0);
        switch (m18getcomquicinccneCNE$FeatureTypeSwitchesValues()[feature.ordinal()]) {
            case 1:
                if (value != 3 && value != 6) {
                    enabled = false;
                    break;
                } else {
                    enabled = true;
                    break;
                }
            default:
                enabled = false;
                break;
        }
        if (enabled) {
            return true;
        }
        dloge("CORE", "Feature " + feature + " is not enabled");
        return false;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:28:0x004f, code lost:
        return r4;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public int getWQEEnabled(java.lang.String r7) {
        /*
            r6 = this;
            r1 = 0
            int r3 = android.os.Binder.getCallingUid()
            r4 = 1000(0x3e8, float:1.401E-42)
            if (r3 != r4) goto L_0x0015
            r1 = 1
        L_0x000a:
            if (r1 != 0) goto L_0x0034
            java.lang.SecurityException r4 = new java.lang.SecurityException
            java.lang.String r5 = "package is not system app"
            r4.<init>(r5)
            throw r4
        L_0x0015:
            android.content.Context r4 = r6.mContext     // Catch:{ NameNotFoundException -> 0x002a }
            android.content.pm.PackageManager r4 = r4.getPackageManager()     // Catch:{ NameNotFoundException -> 0x002a }
            r5 = 0
            android.content.pm.ApplicationInfo r2 = r4.getApplicationInfo(r7, r5)     // Catch:{ NameNotFoundException -> 0x002a }
            int r4 = r2.flags     // Catch:{ NameNotFoundException -> 0x002a }
            r4 = r4 & 1
            if (r4 == 0) goto L_0x0028
            r1 = 1
            goto L_0x000a
        L_0x0028:
            r1 = 0
            goto L_0x000a
        L_0x002a:
            r0 = move-exception
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            java.lang.String r5 = "Failed to find info of the calling package"
            r4.<init>(r5, r0)
            throw r4
        L_0x0034:
            java.lang.String r4 = "CORE"
            java.lang.String r5 = "getWQEEnabled()"
            dlogd(r4, r5)
            monitor-enter(r6)
            com.quicinc.cne.CNE$FeatureType r4 = com.quicinc.cne.CNE.FeatureType.WQE     // Catch:{ all -> 0x0052 }
            boolean r4 = r6.checkFeatureEnabled(r4)     // Catch:{ all -> 0x0052 }
            if (r4 != 0) goto L_0x0049
            r4 = -4
            monitor-exit(r6)
            return r4
        L_0x0049:
            boolean r4 = r6.mWQEFeatureEnabled     // Catch:{ all -> 0x0052 }
            if (r4 == 0) goto L_0x0050
            r4 = 2
        L_0x004e:
            monitor-exit(r6)
            return r4
        L_0x0050:
            r4 = 1
            goto L_0x004e
        L_0x0052:
            r4 = move-exception
            monitor-exit(r6)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.quicinc.cne.CNE.getWQEEnabled(java.lang.String):int");
    }

    public int setWQEEnabled(boolean enabled, String packageName) {
        boolean exempt;
        int state;
        if (Binder.getCallingUid() == 1000) {
            exempt = true;
        } else {
            try {
                exempt = (this.mContext.getPackageManager().getApplicationInfo(packageName, 0).flags & 1) != 0;
            } catch (PackageManager.NameNotFoundException e) {
                throw new IllegalArgumentException("Failed to find info of the calling package", e);
            }
        }
        if (!exempt) {
            throw new SecurityException("package is not system app");
        }
        dlogd("CORE", "setWQEEnabled() " + enabled);
        synchronized (this) {
            if (!checkFeatureEnabled(FeatureType.WQE)) {
                return -4;
            }
            if (this.mWQEFeatureRequestedState == enabled) {
                return 1000;
            }
            this.mWQEFeatureRequestedState = enabled;
            if (this.mWQEFeatureRequestedState) {
                state = 2;
            } else {
                state = 1;
            }
            requestFeatureSettingsChange(1, state);
            return 1000;
        }
    }

    public boolean getIWLANEnabled(String packageName) {
        boolean exempt;
        boolean z;
        if (Binder.getCallingUid() == 1000) {
            exempt = true;
        } else {
            try {
                exempt = (this.mContext.getPackageManager().getApplicationInfo(packageName, 0).flags & 1) != 0;
            } catch (PackageManager.NameNotFoundException e) {
                throw new IllegalArgumentException("Failed to find info of the calling package", e);
            }
        }
        if (!exempt) {
            throw new SecurityException("package is not system app");
        }
        dlogd("CORE", "getIWLANEnabled()");
        synchronized (this) {
            z = this.mIWLANFeatureEnabled;
        }
        return z;
    }

    public void setIWLANEnabled(boolean enabled, String packageName) {
        boolean exempt;
        int state;
        if (Binder.getCallingUid() == 1000) {
            exempt = true;
        } else {
            try {
                exempt = (this.mContext.getPackageManager().getApplicationInfo(packageName, 0).flags & 1) != 0;
            } catch (PackageManager.NameNotFoundException e) {
                throw new IllegalArgumentException("Failed to find info of the calling package", e);
            }
        }
        if (!exempt) {
            throw new SecurityException("package is not system app");
        }
        dlogd("CORE", "setIWLANEnabled()");
        synchronized (this) {
            if (this.mIWLANFeatureRequestedState != enabled) {
                this.mIWLANFeatureRequestedState = enabled;
                if (this.mIWLANFeatureRequestedState) {
                    state = 2;
                } else {
                    state = 1;
                }
                requestFeatureSettingsChange(2, state);
            }
        }
    }

    private synchronized void sendPrefChangedBroadcast(int featureId, int featureParameter, int value) {
        Intent intent = new Intent(CNE_PREFERENCE_CHANGED_ACTION);
        intent.putExtra(EXTRA_FEATURE_ID, featureId);
        intent.putExtra(EXTRA_FEATURE_PARAMETER, featureParameter);
        intent.putExtra(EXTRA_PARAMETER_VALUE, value);
        try {
            this.mContext.enforceCallingOrSelfPermission("android.permission.BROADCAST_STICKY", "CNE sendPrefChangedBroadcast()");
            this.mContext.sendStickyBroadcast(intent);
        } catch (SecurityException se) {
            loge("CORE", "sendPrefChangedBroadcast() SecurityException: " + se);
        }
        return;
    }

    /* access modifiers changed from: private */
    public static void logd(String tag, String s) {
        CneMsg.logd(tag, s);
    }

    private static void logv(String tag, String s) {
        CneMsg.logv(tag, s);
    }

    private static void logi(String tag, String s) {
        CneMsg.logi(tag, s);
    }

    /* access modifiers changed from: private */
    public static void logw(String tag, String s) {
        CneMsg.logw(tag, s);
    }

    /* access modifiers changed from: private */
    public static void loge(String tag, String s) {
        CneMsg.loge(tag, s);
    }

    /* access modifiers changed from: private */
    public static void dlogd(String tag, String s) {
        CneMsg.logd(tag, s);
    }

    private static void dlogv(String tag, String s) {
        CneMsg.logv(tag, s);
    }

    /* access modifiers changed from: private */
    public static void dlogi(String tag, String s) {
        CneMsg.logi(tag, s);
    }

    /* access modifiers changed from: private */
    public static void dlogw(String tag, String s) {
        CneMsg.logw(tag, s);
    }

    /* access modifiers changed from: private */
    public static void dloge(String tag, String s) {
        CneMsg.loge(tag, s);
    }

    /* access modifiers changed from: private */
    public static void rlog(String tag, String s) {
        CneMsg.rlog(tag, s);
    }

    public int getNSRMEnabled(String packageName) {
        return -4;
    }

    public int setNSRMEnabled(int nsrmSetType, String packageName) {
        return -4;
    }

    private void TEST_RECV_PROTOBUF_MSG(byte[] buffer, int length) {
        ProtoMsgTest.TEST_RECV_PROTOBUF_MSG(buffer, length);
    }

    private void TEST_SEND_PROTOBUF_MSG() {
        ProtoMsgTest.TEST_SEND_PROTOBUF_MSG(this);
    }
}
