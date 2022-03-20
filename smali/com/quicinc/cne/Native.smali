.class public final Lcom/quicinc/cne/Native;
.super Ljava/lang/Object;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quicinc/cne/Native$BqeActiveProbeMsg;,
        Lcom/quicinc/cne/Native$BqePostParamsMsg;,
        Lcom/quicinc/cne/Native$CasFeatureInfo;,
        Lcom/quicinc/cne/Native$CneCommands;,
        Lcom/quicinc/cne/Native$CneMessage;,
        Lcom/quicinc/cne/Native$CneState;,
        Lcom/quicinc/cne/Native$CnoNetcfgInfo;,
        Lcom/quicinc/cne/Native$DefaultNetwork;,
        Lcom/quicinc/cne/Native$DisallowedAP;,
        Lcom/quicinc/cne/Native$FeatureInfo;,
        Lcom/quicinc/cne/Native$FeatureRespMsg;,
        Lcom/quicinc/cne/Native$IcdHttpResult;,
        Lcom/quicinc/cne/Native$IcdResult;,
        Lcom/quicinc/cne/Native$IcdStartMsg;,
        Lcom/quicinc/cne/Native$JrttResult;,
        Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;,
        Lcom/quicinc/cne/Native$NatKeepAliveResult;,
        Lcom/quicinc/cne/Native$NetRequest;,
        Lcom/quicinc/cne/Native$NetRequestInfo;,
        Lcom/quicinc/cne/Native$NetTypeInfo;,
        Lcom/quicinc/cne/Native$PbMobileDataState;,
        Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;,
        Lcom/quicinc/cne/Native$ProfileInfo;,
        Lcom/quicinc/cne/Native$ProfileOverride;,
        Lcom/quicinc/cne/Native$ProfileWlanStatus;,
        Lcom/quicinc/cne/Native$QuotaInfo;,
        Lcom/quicinc/cne/Native$RatInfo;,
        Lcom/quicinc/cne/Native$RatStatus;,
        Lcom/quicinc/cne/Native$RssiOffloadMsg;,
        Lcom/quicinc/cne/Native$SetDefaultRouteMsg;,
        Lcom/quicinc/cne/Native$SolictedMsg;,
        Lcom/quicinc/cne/Native$VendorType;,
        Lcom/quicinc/cne/Native$WifiApInfo;,
        Lcom/quicinc/cne/Native$WifiP2pInfo;,
        Lcom/quicinc/cne/Native$WlanFamType;,
        Lcom/quicinc/cne/Native$WlanInfo;,
        Lcom/quicinc/cne/Native$WlanNetConfigInfo;,
        Lcom/quicinc/cne/Native$WqeResultInfo;,
        Lcom/quicinc/cne/Native$WwanInfo;,
        Lcom/quicinc/cne/Native$WwanNetConfigInfo;,
        Lcom/quicinc/cne/Native$WwanSubtypeInfo;
    }
.end annotation


# static fields
.field public static final CAS_FEATURE_STATUS_INFO:I = 0x3ed

.field public static final CAS_GET_NETWORK_REQUEST_INFO_SIGNAL:I = 0x3f1

.field public static final CAS_NETWORK_REQUEST_INFO:I = 0x3ec

.field public static final CAS_RESERVED_INFO:I = 0x3e9

.field public static final CAS_START_ALL_BROADCAST:I = 0x3e9

.field public static final CAS_START_FEATURE_STATUS_SIGNAL:I = 0x3f2

.field public static final CAS_START_NETCFG_SIGNAL:I = 0x3eb

.field public static final CAS_START_NETWORK_REQUEST_SIGNAL:I = 0x3ef

.field public static final CAS_START_NONINTERNET_SERVICE:I = 0x3ed

.field public static final CAS_STOP_ALL_BROADCAST:I = 0x3ea

.field public static final CAS_STOP_FEATURE_STATUS_SIGNAL:I = 0x3f3

.field public static final CAS_STOP_NETCFG_SIGNAL:I = 0x3ec

.field public static final CAS_STOP_NETWORK_REQUEST_SIGNAL:I = 0x3f0

.field public static final CAS_STOP_NONINTERNET_SERVICE:I = 0x3ee

.field public static final CAS_WLAN_NETCFG_INFO:I = 0x3eb

.field public static final CAS_WWAN_NETCFG_INFO:I = 0x3ea

.field public static final FAM_MAX:I = 0x3

.field public static final FAM_MIN:I = 0x0

.field public static final FAM_NONE:I = 0x0

.field public static final FAM_V4:I = 0x1

.field public static final FAM_V4_V6:I = 0x3

.field public static final FAM_V6:I = 0x2

.field public static final FEATURE_IWLAN:I = 0x2

.field public static final FEATURE_OFF:I = 0x1

.field public static final FEATURE_ON:I = 0x2

.field public static final FEATURE_STATUS_UNKNOWN:I = 0xffff

.field public static final FEATURE_UNKNOWN:I = 0xffff

.field public static final FEATURE_WQE:I = 0x1

.field public static final FREQ_BAND_SIZE:I = 0x2

.field public static final INVALID:I = 0x0

.field public static final NETWORK_STATE_CONNECTED:I = 0x1

.field public static final NETWORK_STATE_CONNECTING:I = 0x0

.field public static final NETWORK_STATE_DISCONNECTED:I = 0x4

.field public static final NETWORK_STATE_DISCONNECTING:I = 0x3

.field public static final NETWORK_STATE_SUSPENDED:I = 0x2

.field public static final NETWORK_STATE_UNKNOWN:I = 0x5

.field public static final NOTIFY_ACCESS_ALLOWED:I = 0x8

.field public static final NOTIFY_ACCESS_DENIED:I = 0x7

.field public static final NOTIFY_ANDSF_DATA_READY:I = 0x13

.field public static final NOTIFY_BQE_POST_RESULT:I = 0x11

.field public static final NOTIFY_DISALLOWED_AP:I = 0x9

.field public static final NOTIFY_FEATURE_STATUS:I = 0xf

.field public static final NOTIFY_ICD_HTTP_RESULT:I = 0x12

.field public static final NOTIFY_ICD_RESULT:I = 0xf

.field public static final NOTIFY_IMS_PROFILE_OVERRIDE_SETTING:I = 0x18

.field public static final NOTIFY_JRTT_RESULT:I = 0x10

.field public static final NOTIFY_MOBILE_DATA_ENABLED:I = 0xa

.field public static final NOTIFY_NAT_KEEP_ALIVE_RESULT:I = 0x8

.field public static final NOTIFY_NETWORK_REQUEST_INFO:I = 0x6

.field public static final NOTIFY_POLICY_UPDATE_DONE:I = 0x11

.field public static final NOTIFY_QUOTA_INFO_QUERY_RESULT:I = 0x15

.field public static final NOTIFY_RAT_CONNECT_STATUS:I = 0x4

.field public static final NOTIFY_SCREEN_STATE:I = 0x14

.field public static final NOTIFY_SOCKET_CLOSED:I = 0xb

.field public static final NOTIFY_USER_ACTIVE:I = 0x19

.field public static final NOTIFY_WIFI_AP_INFO:I = 0x16

.field public static final NOTIFY_WIFI_P2P_INFO:I = 0x17

.field public static final NOTIFY_WLAN_CONNECTIVITY_UP:I = 0xc

.field public static final NOTIFY_WLAN_STATUS_PROFILE:I = 0x7

.field public static final NOTIFY_WWAN_SUBTYPE:I = 0x9

.field public static final POLICY_ANDSF:I = 0x1

.field public static final POLICY_MAX:I = 0xa

.field public static final POLICY_UNKOWN:I = 0xa

.field public static final RAT_ANY:I = 0xfd

.field public static final RAT_INVALID:I = 0xff

.field public static final RAT_MAX:I = 0xff

.field public static final RAT_MIN:I = 0x0

.field public static final RAT_NONE:I = 0xfe

.field public static final RAT_WLAN:I = 0x1

.field public static final RAT_WLAN_P2P:I = 0x65

.field public static final RAT_WLAN_SOFTAP:I = 0x64

.field public static final RAT_WWAN:I = 0x0

.field public static final RAT_WWAN_EIMS:I = 0x6

.field public static final RAT_WWAN_EMERGENCY:I = 0x7

.field public static final RAT_WWAN_IMS:I = 0x4

.field public static final RAT_WWAN_MMS:I = 0x2

.field public static final RAT_WWAN_RCS:I = 0x5

.field public static final RAT_WWAN_SUPL:I = 0x3

.field public static final REQUEST_BRING_RAT_DOWN:I = 0x1

.field public static final REQUEST_BRING_RAT_UP:I = 0x2

.field public static final REQUEST_GET_FEATURE_STATUS:I = 0xd

.field public static final REQUEST_INIT:I = 0x1

.field public static final REQUEST_POST_BQE_RESULTS:I = 0xe

.field public static final REQUEST_QUOTA_INFO_QUERY:I = 0x13

.field public static final REQUEST_SET_DEFAULT_ROUTE:I = 0xb

.field public static final REQUEST_SET_FEATURE_PREF:I = 0xe

.field public static final REQUEST_START_ACTIVE_PROBE:I = 0xa

.field public static final REQUEST_START_ICD:I = 0xc

.field public static final REQUEST_START_NAT_KEEP_ALIVE:I = 0x5

.field public static final REQUEST_START_RSSI_OFFLOAD:I = 0x3

.field public static final REQUEST_STOP_ACTIVE_PROBE:I = 0xd

.field public static final REQUEST_STOP_NAT_KEEP_ALIVE:I = 0x6

.field public static final REQUEST_STOP_RSSI_OFFLOAD:I = 0x4

.field public static final REQUEST_UPDATE_DEFAULT_NETWORK_INFO:I = 0x5

.field public static final REQUEST_UPDATE_POLICY:I = 0x12

.field public static final REQUEST_UPDATE_WLAN_INFO:I = 0x2

.field public static final REQUEST_UPDATE_WWAN_INFO:I = 0x3

.field public static final RESP_SET_FEATURE_PREF:I = 0x10

.field public static final SCREEN_STATE_EVT:I = 0x1

.field public static final SLOT_FIRST_IDX:I = 0x1

.field public static final SLOT_MAX_IDX:I = 0x3

.field public static final SLOT_SECOND_IDX:I = 0x2

.field public static final SLOT_THIRD_IDX:I = 0x3

.field public static final SLOT_UNSPECIFIED:I = 0x0

.field public static final SOFTAP_STATE_DISABLED:I = 0xb

.field public static final SOFTAP_STATE_DISABLING:I = 0xa

.field public static final SOFTAP_STATE_ENABLED:I = 0xd

.field public static final SOFTAP_STATE_ENABLING:I = 0xc

.field public static final SOFTAP_STATE_FAILED:I = 0xe

.field public static final SOFTAP_STATE_UNKNOWN:I = 0xffff

.field public static final SOLICITED_MESSAGE:I = 0x0

.field public static final SUBINFO_NOT_READY:I = 0x1

.field public static final SUBTYPE_1xRTT:I = 0x7

.field public static final SUBTYPE_CDMA:I = 0x4

.field public static final SUBTYPE_EDGE:I = 0x2

.field public static final SUBTYPE_EHRPD:I = 0xe

.field public static final SUBTYPE_EVDO_0:I = 0x5

.field public static final SUBTYPE_EVDO_A:I = 0x6

.field public static final SUBTYPE_EVDO_B:I = 0xc

.field public static final SUBTYPE_GPRS:I = 0x1

.field public static final SUBTYPE_GSM:I = 0x10

.field public static final SUBTYPE_HSDPA:I = 0x8

.field public static final SUBTYPE_HSPA:I = 0xa

.field public static final SUBTYPE_HSPAP:I = 0xf

.field public static final SUBTYPE_HSUPA:I = 0x9

.field public static final SUBTYPE_IDEN:I = 0xb

.field public static final SUBTYPE_LTE:I = 0xd

.field public static final SUBTYPE_LTE_CA:I = 0x13

.field public static final SUBTYPE_UMTS:I = 0x3

.field public static final SUBTYPE_UNKNOWN:I = 0x0

.field public static final SUBTYPE_WLAN_B:I = 0x64

.field public static final SUBTYPE_WLAN_G:I = 0x65

.field public static final UNSOLICITED_MESSAGE:I = 0x1

.field public static final USER_ACTIVE_EVT:I = 0x2

.field public static final WIFI_STATE_DISABLED:I = 0x1

.field public static final WIFI_STATE_DISABLING:I = 0x0

.field public static final WIFI_STATE_ENABLED:I = 0x3

.field public static final WIFI_STATE_ENABLING:I = 0x2

.field public static final WIFI_STATE_UNKNOWN:I = 0x4

.field public static final WLAN_CONNECTED:I = 0x1

.field public static final WLAN_DISCONNECTED:I = 0x2

.field public static final WLAN_QUALITY_BAD:I = 0x1

.field public static final WLAN_QUALITY_GOOD:I = 0x2

.field public static final WLAN_QUALITY_UNKNOWN:I = 0x0

.field public static final WLAN_UNKNOWN:I = 0x0

.field public static final WQE_RESULT_CONCLUDED:I = 0x9

.field public static final WQE_RESULT_CONCLUDED_BQE_FAILED:I = 0xe

.field public static final WQE_RESULT_CONCLUDED_CQE_FAILED_INCONCL:I = 0xc

.field public static final WQE_RESULT_CONCLUDED_CQE_FAILED_MAC:I = 0xb

.field public static final WQE_RESULT_CONCLUDED_CQE_FAILED_RSSI:I = 0xa

.field public static final WQE_RESULT_CONCLUDED_ICD_FAILED:I = 0xd

.field public static final WQE_RESULT_CONCLUDED_TQE_FAILED:I = 0xf

.field public static final WQE_RESULT_ONGOING_CQE_FAILED_INCONCL:I = 0x8

.field public static final WQE_RESULT_ONGOING_CQE_FAILED_MAC:I = 0x7

.field public static final WQE_RESULT_ONGOING_CQE_FAILED_RSSI:I = 0x6

.field public static final WQE_RESULT_ONGOING_CQE_PASS_INCONCL:I = 0x5

.field public static final WQE_RESULT_ONGOING_CQE_PASS_MAC:I = 0x4

.field public static final WQE_RESULT_ONGOING_CQE_PASS_RSSI:I = 0x3

.field public static final _2GHz:I = 0x0

.field public static final _5GHz:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
