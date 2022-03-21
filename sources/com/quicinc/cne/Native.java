package com.quicinc.cne;

import com.google.protobuf.micro.ByteStringMicro;
import com.google.protobuf.micro.CodedInputStreamMicro;
import com.google.protobuf.micro.CodedOutputStreamMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.google.protobuf.micro.MessageMicro;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class Native {
    public static final int CAS_FEATURE_STATUS_INFO = 1005;
    public static final int CAS_GET_NETWORK_REQUEST_INFO_SIGNAL = 1009;
    public static final int CAS_NETWORK_REQUEST_INFO = 1004;
    public static final int CAS_RESERVED_INFO = 1001;
    public static final int CAS_START_ALL_BROADCAST = 1001;
    public static final int CAS_START_FEATURE_STATUS_SIGNAL = 1010;
    public static final int CAS_START_NETCFG_SIGNAL = 1003;
    public static final int CAS_START_NETWORK_REQUEST_SIGNAL = 1007;
    public static final int CAS_START_NONINTERNET_SERVICE = 1005;
    public static final int CAS_STOP_ALL_BROADCAST = 1002;
    public static final int CAS_STOP_FEATURE_STATUS_SIGNAL = 1011;
    public static final int CAS_STOP_NETCFG_SIGNAL = 1004;
    public static final int CAS_STOP_NETWORK_REQUEST_SIGNAL = 1008;
    public static final int CAS_STOP_NONINTERNET_SERVICE = 1006;
    public static final int CAS_WLAN_NETCFG_INFO = 1003;
    public static final int CAS_WWAN_NETCFG_INFO = 1002;
    public static final int FAM_MAX = 3;
    public static final int FAM_MIN = 0;
    public static final int FAM_NONE = 0;
    public static final int FAM_V4 = 1;
    public static final int FAM_V4_V6 = 3;
    public static final int FAM_V6 = 2;
    public static final int FEATURE_IWLAN = 2;
    public static final int FEATURE_OFF = 1;
    public static final int FEATURE_ON = 2;
    public static final int FEATURE_STATUS_UNKNOWN = 65535;
    public static final int FEATURE_UNKNOWN = 65535;
    public static final int FEATURE_WQE = 1;
    public static final int FREQ_BAND_SIZE = 2;
    public static final int INVALID = 0;
    public static final int NETWORK_STATE_CONNECTED = 1;
    public static final int NETWORK_STATE_CONNECTING = 0;
    public static final int NETWORK_STATE_DISCONNECTED = 4;
    public static final int NETWORK_STATE_DISCONNECTING = 3;
    public static final int NETWORK_STATE_SUSPENDED = 2;
    public static final int NETWORK_STATE_UNKNOWN = 5;
    public static final int NOTIFY_ACCESS_ALLOWED = 8;
    public static final int NOTIFY_ACCESS_DENIED = 7;
    public static final int NOTIFY_ANDSF_DATA_READY = 19;
    public static final int NOTIFY_BQE_POST_RESULT = 17;
    public static final int NOTIFY_DISALLOWED_AP = 9;
    public static final int NOTIFY_FEATURE_STATUS = 15;
    public static final int NOTIFY_ICD_HTTP_RESULT = 18;
    public static final int NOTIFY_ICD_RESULT = 15;
    public static final int NOTIFY_IMS_PROFILE_OVERRIDE_SETTING = 24;
    public static final int NOTIFY_JRTT_RESULT = 16;
    public static final int NOTIFY_MOBILE_DATA_ENABLED = 10;
    public static final int NOTIFY_NAT_KEEP_ALIVE_RESULT = 8;
    public static final int NOTIFY_NETWORK_REQUEST_INFO = 6;
    public static final int NOTIFY_POLICY_UPDATE_DONE = 17;
    public static final int NOTIFY_QUOTA_INFO_QUERY_RESULT = 21;
    public static final int NOTIFY_RAT_CONNECT_STATUS = 4;
    public static final int NOTIFY_SCREEN_STATE = 20;
    public static final int NOTIFY_SOCKET_CLOSED = 11;
    public static final int NOTIFY_USER_ACTIVE = 25;
    public static final int NOTIFY_WIFI_AP_INFO = 22;
    public static final int NOTIFY_WIFI_P2P_INFO = 23;
    public static final int NOTIFY_WLAN_CONNECTIVITY_UP = 12;
    public static final int NOTIFY_WLAN_STATUS_PROFILE = 7;
    public static final int NOTIFY_WWAN_SUBTYPE = 9;
    public static final int POLICY_ANDSF = 1;
    public static final int POLICY_MAX = 10;
    public static final int POLICY_UNKOWN = 10;
    public static final int RAT_ANY = 253;
    public static final int RAT_INVALID = 255;
    public static final int RAT_MAX = 255;
    public static final int RAT_MIN = 0;
    public static final int RAT_NONE = 254;
    public static final int RAT_WLAN = 1;
    public static final int RAT_WLAN_P2P = 101;
    public static final int RAT_WLAN_SOFTAP = 100;
    public static final int RAT_WWAN = 0;
    public static final int RAT_WWAN_EIMS = 6;
    public static final int RAT_WWAN_EMERGENCY = 7;
    public static final int RAT_WWAN_IMS = 4;
    public static final int RAT_WWAN_MMS = 2;
    public static final int RAT_WWAN_RCS = 5;
    public static final int RAT_WWAN_SUPL = 3;
    public static final int REQUEST_BRING_RAT_DOWN = 1;
    public static final int REQUEST_BRING_RAT_UP = 2;
    public static final int REQUEST_GET_FEATURE_STATUS = 13;
    public static final int REQUEST_INIT = 1;
    public static final int REQUEST_POST_BQE_RESULTS = 14;
    public static final int REQUEST_QUOTA_INFO_QUERY = 19;
    public static final int REQUEST_SET_DEFAULT_ROUTE = 11;
    public static final int REQUEST_SET_FEATURE_PREF = 14;
    public static final int REQUEST_START_ACTIVE_PROBE = 10;
    public static final int REQUEST_START_ICD = 12;
    public static final int REQUEST_START_NAT_KEEP_ALIVE = 5;
    public static final int REQUEST_START_RSSI_OFFLOAD = 3;
    public static final int REQUEST_STOP_ACTIVE_PROBE = 13;
    public static final int REQUEST_STOP_NAT_KEEP_ALIVE = 6;
    public static final int REQUEST_STOP_RSSI_OFFLOAD = 4;
    public static final int REQUEST_UPDATE_DEFAULT_NETWORK_INFO = 5;
    public static final int REQUEST_UPDATE_POLICY = 18;
    public static final int REQUEST_UPDATE_WLAN_INFO = 2;
    public static final int REQUEST_UPDATE_WWAN_INFO = 3;
    public static final int RESP_SET_FEATURE_PREF = 16;
    public static final int SCREEN_STATE_EVT = 1;
    public static final int SLOT_FIRST_IDX = 1;
    public static final int SLOT_MAX_IDX = 3;
    public static final int SLOT_SECOND_IDX = 2;
    public static final int SLOT_THIRD_IDX = 3;
    public static final int SLOT_UNSPECIFIED = 0;
    public static final int SOFTAP_STATE_DISABLED = 11;
    public static final int SOFTAP_STATE_DISABLING = 10;
    public static final int SOFTAP_STATE_ENABLED = 13;
    public static final int SOFTAP_STATE_ENABLING = 12;
    public static final int SOFTAP_STATE_FAILED = 14;
    public static final int SOFTAP_STATE_UNKNOWN = 65535;
    public static final int SOLICITED_MESSAGE = 0;
    public static final int SUBINFO_NOT_READY = 1;
    public static final int SUBTYPE_1xRTT = 7;
    public static final int SUBTYPE_CDMA = 4;
    public static final int SUBTYPE_EDGE = 2;
    public static final int SUBTYPE_EHRPD = 14;
    public static final int SUBTYPE_EVDO_0 = 5;
    public static final int SUBTYPE_EVDO_A = 6;
    public static final int SUBTYPE_EVDO_B = 12;
    public static final int SUBTYPE_GPRS = 1;
    public static final int SUBTYPE_GSM = 16;
    public static final int SUBTYPE_HSDPA = 8;
    public static final int SUBTYPE_HSPA = 10;
    public static final int SUBTYPE_HSPAP = 15;
    public static final int SUBTYPE_HSUPA = 9;
    public static final int SUBTYPE_IDEN = 11;
    public static final int SUBTYPE_LTE = 13;
    public static final int SUBTYPE_LTE_CA = 19;
    public static final int SUBTYPE_UMTS = 3;
    public static final int SUBTYPE_UNKNOWN = 0;
    public static final int SUBTYPE_WLAN_B = 100;
    public static final int SUBTYPE_WLAN_G = 101;
    public static final int UNSOLICITED_MESSAGE = 1;
    public static final int USER_ACTIVE_EVT = 2;
    public static final int WIFI_STATE_DISABLED = 1;
    public static final int WIFI_STATE_DISABLING = 0;
    public static final int WIFI_STATE_ENABLED = 3;
    public static final int WIFI_STATE_ENABLING = 2;
    public static final int WIFI_STATE_UNKNOWN = 4;
    public static final int WLAN_CONNECTED = 1;
    public static final int WLAN_DISCONNECTED = 2;
    public static final int WLAN_QUALITY_BAD = 1;
    public static final int WLAN_QUALITY_GOOD = 2;
    public static final int WLAN_QUALITY_UNKNOWN = 0;
    public static final int WLAN_UNKNOWN = 0;
    public static final int WQE_RESULT_CONCLUDED = 9;
    public static final int WQE_RESULT_CONCLUDED_BQE_FAILED = 14;
    public static final int WQE_RESULT_CONCLUDED_CQE_FAILED_INCONCL = 12;
    public static final int WQE_RESULT_CONCLUDED_CQE_FAILED_MAC = 11;
    public static final int WQE_RESULT_CONCLUDED_CQE_FAILED_RSSI = 10;
    public static final int WQE_RESULT_CONCLUDED_ICD_FAILED = 13;
    public static final int WQE_RESULT_CONCLUDED_TQE_FAILED = 15;
    public static final int WQE_RESULT_ONGOING_CQE_FAILED_INCONCL = 8;
    public static final int WQE_RESULT_ONGOING_CQE_FAILED_MAC = 7;
    public static final int WQE_RESULT_ONGOING_CQE_FAILED_RSSI = 6;
    public static final int WQE_RESULT_ONGOING_CQE_PASS_INCONCL = 5;
    public static final int WQE_RESULT_ONGOING_CQE_PASS_MAC = 4;
    public static final int WQE_RESULT_ONGOING_CQE_PASS_RSSI = 3;
    public static final int _2GHz = 0;
    public static final int _5GHz = 1;

    private Native() {
    }

    public static final class CneCommands extends MessageMicro {
        public static final int CMD_FIELD_NUMBER = 1;
        public static final int PAYLOAD_FIELD_NUMBER = 3;
        public static final int SERIAL_FIELD_NUMBER = 2;
        private int cachedSize = -1;
        private int cmd_ = 1;
        private boolean hasCmd;
        private boolean hasPayload;
        private boolean hasSerial;
        private ByteStringMicro payload_ = ByteStringMicro.EMPTY;
        private int serial_ = 0;

        public boolean hasCmd() {
            return this.hasCmd;
        }

        public int getCmd() {
            return this.cmd_;
        }

        public CneCommands setCmd(int value) {
            this.hasCmd = true;
            this.cmd_ = value;
            return this;
        }

        public CneCommands clearCmd() {
            this.hasCmd = false;
            this.cmd_ = 1;
            return this;
        }

        public int getSerial() {
            return this.serial_;
        }

        public boolean hasSerial() {
            return this.hasSerial;
        }

        public CneCommands setSerial(int value) {
            this.hasSerial = true;
            this.serial_ = value;
            return this;
        }

        public CneCommands clearSerial() {
            this.hasSerial = false;
            this.serial_ = 0;
            return this;
        }

        public ByteStringMicro getPayload() {
            return this.payload_;
        }

        public boolean hasPayload() {
            return this.hasPayload;
        }

        public CneCommands setPayload(ByteStringMicro value) {
            this.hasPayload = true;
            this.payload_ = value;
            return this;
        }

        public CneCommands clearPayload() {
            this.hasPayload = false;
            this.payload_ = ByteStringMicro.EMPTY;
            return this;
        }

        public final CneCommands clear() {
            clearCmd();
            clearSerial();
            clearPayload();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasCmd()) {
                output.writeInt32(1, getCmd());
            }
            if (hasSerial()) {
                output.writeInt32(2, getSerial());
            }
            if (hasPayload()) {
                output.writeBytes(3, getPayload());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasCmd()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getCmd()) + 0;
            }
            if (hasSerial()) {
                size += CodedOutputStreamMicro.computeInt32Size(2, getSerial());
            }
            if (hasPayload()) {
                size += CodedOutputStreamMicro.computeBytesSize(3, getPayload());
            }
            this.cachedSize = size;
            return size;
        }

        public CneCommands mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setCmd(input.readInt32());
                        break;
                    case 16:
                        setSerial(input.readInt32());
                        break;
                    case 26:
                        setPayload(input.readBytes());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static CneCommands parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (CneCommands) new CneCommands().mergeFrom(data);
        }

        public static CneCommands parseFrom(CodedInputStreamMicro input) throws IOException {
            return new CneCommands().mergeFrom(input);
        }
    }

    public static final class WwanSubtypeInfo extends MessageMicro {
        public static final int SUBTYPE_FIELD_NUMBER = 1;
        private int cachedSize = -1;
        private boolean hasSubtype;
        private int subtype_ = 0;

        public boolean hasSubtype() {
            return this.hasSubtype;
        }

        public int getSubtype() {
            return this.subtype_;
        }

        public WwanSubtypeInfo setSubtype(int value) {
            this.hasSubtype = true;
            this.subtype_ = value;
            return this;
        }

        public WwanSubtypeInfo clearSubtype() {
            this.hasSubtype = false;
            this.subtype_ = 0;
            return this;
        }

        public final WwanSubtypeInfo clear() {
            clearSubtype();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasSubtype()) {
                output.writeInt32(1, getSubtype());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasSubtype()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getSubtype()) + 0;
            }
            this.cachedSize = size;
            return size;
        }

        public WwanSubtypeInfo mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setSubtype(input.readInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static WwanSubtypeInfo parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (WwanSubtypeInfo) new WwanSubtypeInfo().mergeFrom(data);
        }

        public static WwanSubtypeInfo parseFrom(CodedInputStreamMicro input) throws IOException {
            return new WwanSubtypeInfo().mergeFrom(input);
        }
    }

    public static final class QuotaInfo extends MessageMicro {
        public static final int ISQUOTAREACHED_FIELD_NUMBER = 1;
        private int cachedSize = -1;
        private boolean hasIsQuotaReached;
        private int isQuotaReached_ = 0;

        public int getIsQuotaReached() {
            return this.isQuotaReached_;
        }

        public boolean hasIsQuotaReached() {
            return this.hasIsQuotaReached;
        }

        public QuotaInfo setIsQuotaReached(int value) {
            this.hasIsQuotaReached = true;
            this.isQuotaReached_ = value;
            return this;
        }

        public QuotaInfo clearIsQuotaReached() {
            this.hasIsQuotaReached = false;
            this.isQuotaReached_ = 0;
            return this;
        }

        public final QuotaInfo clear() {
            clearIsQuotaReached();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasIsQuotaReached()) {
                output.writeInt32(1, getIsQuotaReached());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasIsQuotaReached()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getIsQuotaReached()) + 0;
            }
            this.cachedSize = size;
            return size;
        }

        public QuotaInfo mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setIsQuotaReached(input.readInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static QuotaInfo parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (QuotaInfo) new QuotaInfo().mergeFrom(data);
        }

        public static QuotaInfo parseFrom(CodedInputStreamMicro input) throws IOException {
            return new QuotaInfo().mergeFrom(input);
        }
    }

    public static final class FeatureInfo extends MessageMicro {
        public static final int FEATUREID_FIELD_NUMBER = 1;
        public static final int FEATURESTATUS_FIELD_NUMBER = 2;
        private int cachedSize = -1;
        private int featureId_ = 1;
        private int featureStatus_ = 1;
        private boolean hasFeatureId;
        private boolean hasFeatureStatus;

        public boolean hasFeatureId() {
            return this.hasFeatureId;
        }

        public int getFeatureId() {
            return this.featureId_;
        }

        public FeatureInfo setFeatureId(int value) {
            this.hasFeatureId = true;
            this.featureId_ = value;
            return this;
        }

        public FeatureInfo clearFeatureId() {
            this.hasFeatureId = false;
            this.featureId_ = 1;
            return this;
        }

        public boolean hasFeatureStatus() {
            return this.hasFeatureStatus;
        }

        public int getFeatureStatus() {
            return this.featureStatus_;
        }

        public FeatureInfo setFeatureStatus(int value) {
            this.hasFeatureStatus = true;
            this.featureStatus_ = value;
            return this;
        }

        public FeatureInfo clearFeatureStatus() {
            this.hasFeatureStatus = false;
            this.featureStatus_ = 1;
            return this;
        }

        public final FeatureInfo clear() {
            clearFeatureId();
            clearFeatureStatus();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasFeatureId()) {
                output.writeInt32(1, getFeatureId());
            }
            if (hasFeatureStatus()) {
                output.writeInt32(2, getFeatureStatus());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasFeatureId()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getFeatureId()) + 0;
            }
            if (hasFeatureStatus()) {
                size += CodedOutputStreamMicro.computeInt32Size(2, getFeatureStatus());
            }
            this.cachedSize = size;
            return size;
        }

        public FeatureInfo mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setFeatureId(input.readInt32());
                        break;
                    case 16:
                        setFeatureStatus(input.readInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static FeatureInfo parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (FeatureInfo) new FeatureInfo().mergeFrom(data);
        }

        public static FeatureInfo parseFrom(CodedInputStreamMicro input) throws IOException {
            return new FeatureInfo().mergeFrom(input);
        }
    }

    public static final class DefaultNetwork extends MessageMicro {
        public static final int NETWORK_FIELD_NUMBER = 1;
        private int cachedSize = -1;
        private boolean hasNetwork;
        private int network_ = 0;

        public int getNetwork() {
            return this.network_;
        }

        public boolean hasNetwork() {
            return this.hasNetwork;
        }

        public DefaultNetwork setNetwork(int value) {
            this.hasNetwork = true;
            this.network_ = value;
            return this;
        }

        public DefaultNetwork clearNetwork() {
            this.hasNetwork = false;
            this.network_ = 0;
            return this;
        }

        public final DefaultNetwork clear() {
            clearNetwork();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasNetwork()) {
                output.writeInt32(1, getNetwork());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasNetwork()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getNetwork()) + 0;
            }
            this.cachedSize = size;
            return size;
        }

        public DefaultNetwork mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setNetwork(input.readInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static DefaultNetwork parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (DefaultNetwork) new DefaultNetwork().mergeFrom(data);
        }

        public static DefaultNetwork parseFrom(CodedInputStreamMicro input) throws IOException {
            return new DefaultNetwork().mergeFrom(input);
        }
    }

    public static final class RatStatus extends MessageMicro {
        public static final int IPADDRV6_FIELD_NUMBER = 4;
        public static final int IPADDR_FIELD_NUMBER = 3;
        public static final int RATSTATUS_FIELD_NUMBER = 2;
        public static final int RAT_FIELD_NUMBER = 1;
        private int cachedSize = -1;
        private boolean hasIpAddr;
        private boolean hasIpAddrV6;
        private boolean hasRat;
        private boolean hasRatStatus;
        private String ipAddrV6_ = "";
        private String ipAddr_ = "";
        private int ratStatus_ = 0;
        private int rat_ = 0;

        public boolean hasRat() {
            return this.hasRat;
        }

        public int getRat() {
            return this.rat_;
        }

        public RatStatus setRat(int value) {
            this.hasRat = true;
            this.rat_ = value;
            return this;
        }

        public RatStatus clearRat() {
            this.hasRat = false;
            this.rat_ = 0;
            return this;
        }

        public boolean hasRatStatus() {
            return this.hasRatStatus;
        }

        public int getRatStatus() {
            return this.ratStatus_;
        }

        public RatStatus setRatStatus(int value) {
            this.hasRatStatus = true;
            this.ratStatus_ = value;
            return this;
        }

        public RatStatus clearRatStatus() {
            this.hasRatStatus = false;
            this.ratStatus_ = 0;
            return this;
        }

        public String getIpAddr() {
            return this.ipAddr_;
        }

        public boolean hasIpAddr() {
            return this.hasIpAddr;
        }

        public RatStatus setIpAddr(String value) {
            this.hasIpAddr = true;
            this.ipAddr_ = value;
            return this;
        }

        public RatStatus clearIpAddr() {
            this.hasIpAddr = false;
            this.ipAddr_ = "";
            return this;
        }

        public String getIpAddrV6() {
            return this.ipAddrV6_;
        }

        public boolean hasIpAddrV6() {
            return this.hasIpAddrV6;
        }

        public RatStatus setIpAddrV6(String value) {
            this.hasIpAddrV6 = true;
            this.ipAddrV6_ = value;
            return this;
        }

        public RatStatus clearIpAddrV6() {
            this.hasIpAddrV6 = false;
            this.ipAddrV6_ = "";
            return this;
        }

        public final RatStatus clear() {
            clearRat();
            clearRatStatus();
            clearIpAddr();
            clearIpAddrV6();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasRat()) {
                output.writeInt32(1, getRat());
            }
            if (hasRatStatus()) {
                output.writeInt32(2, getRatStatus());
            }
            if (hasIpAddr()) {
                output.writeString(3, getIpAddr());
            }
            if (hasIpAddrV6()) {
                output.writeString(4, getIpAddrV6());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasRat()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getRat()) + 0;
            }
            if (hasRatStatus()) {
                size += CodedOutputStreamMicro.computeInt32Size(2, getRatStatus());
            }
            if (hasIpAddr()) {
                size += CodedOutputStreamMicro.computeStringSize(3, getIpAddr());
            }
            if (hasIpAddrV6()) {
                size += CodedOutputStreamMicro.computeStringSize(4, getIpAddrV6());
            }
            this.cachedSize = size;
            return size;
        }

        public RatStatus mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setRat(input.readInt32());
                        break;
                    case 16:
                        setRatStatus(input.readInt32());
                        break;
                    case 26:
                        setIpAddr(input.readString());
                        break;
                    case 34:
                        setIpAddrV6(input.readString());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static RatStatus parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (RatStatus) new RatStatus().mergeFrom(data);
        }

        public static RatStatus parseFrom(CodedInputStreamMicro input) throws IOException {
            return new RatStatus().mergeFrom(input);
        }
    }

    public static final class PbMobileDataState extends MessageMicro {
        public static final int ISENABLED_FIELD_NUMBER = 1;
        private int cachedSize = -1;
        private boolean hasIsEnabled;
        private int isEnabled_ = 0;

        public int getIsEnabled() {
            return this.isEnabled_;
        }

        public boolean hasIsEnabled() {
            return this.hasIsEnabled;
        }

        public PbMobileDataState setIsEnabled(int value) {
            this.hasIsEnabled = true;
            this.isEnabled_ = value;
            return this;
        }

        public PbMobileDataState clearIsEnabled() {
            this.hasIsEnabled = false;
            this.isEnabled_ = 0;
            return this;
        }

        public final PbMobileDataState clear() {
            clearIsEnabled();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasIsEnabled()) {
                output.writeInt32(1, getIsEnabled());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasIsEnabled()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getIsEnabled()) + 0;
            }
            this.cachedSize = size;
            return size;
        }

        public PbMobileDataState mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setIsEnabled(input.readInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static PbMobileDataState parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (PbMobileDataState) new PbMobileDataState().mergeFrom(data);
        }

        public static PbMobileDataState parseFrom(CodedInputStreamMicro input) throws IOException {
            return new PbMobileDataState().mergeFrom(input);
        }
    }

    public static final class WlanFamType extends MessageMicro {
        public static final int FAMILY_FIELD_NUMBER = 1;
        public static final int ISANDROIDVALIDATED_FIELD_NUMBER = 2;
        private int cachedSize = -1;
        private int family_ = 0;
        private boolean hasFamily;
        private boolean hasIsAndroidValidated;
        private boolean isAndroidValidated_ = false;

        public boolean hasFamily() {
            return this.hasFamily;
        }

        public int getFamily() {
            return this.family_;
        }

        public WlanFamType setFamily(int value) {
            this.hasFamily = true;
            this.family_ = value;
            return this;
        }

        public WlanFamType clearFamily() {
            this.hasFamily = false;
            this.family_ = 0;
            return this;
        }

        public boolean getIsAndroidValidated() {
            return this.isAndroidValidated_;
        }

        public boolean hasIsAndroidValidated() {
            return this.hasIsAndroidValidated;
        }

        public WlanFamType setIsAndroidValidated(boolean value) {
            this.hasIsAndroidValidated = true;
            this.isAndroidValidated_ = value;
            return this;
        }

        public WlanFamType clearIsAndroidValidated() {
            this.hasIsAndroidValidated = false;
            this.isAndroidValidated_ = false;
            return this;
        }

        public final WlanFamType clear() {
            clearFamily();
            clearIsAndroidValidated();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasFamily()) {
                output.writeInt32(1, getFamily());
            }
            if (hasIsAndroidValidated()) {
                output.writeBool(2, getIsAndroidValidated());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasFamily()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getFamily()) + 0;
            }
            if (hasIsAndroidValidated()) {
                size += CodedOutputStreamMicro.computeBoolSize(2, getIsAndroidValidated());
            }
            this.cachedSize = size;
            return size;
        }

        public WlanFamType mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setFamily(input.readInt32());
                        break;
                    case 16:
                        setIsAndroidValidated(input.readBool());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static WlanFamType parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (WlanFamType) new WlanFamType().mergeFrom(data);
        }

        public static WlanFamType parseFrom(CodedInputStreamMicro input) throws IOException {
            return new WlanFamType().mergeFrom(input);
        }
    }

    public static final class WifiApInfo extends MessageMicro {
        public static final int CURRSTATE_FIELD_NUMBER = 1;
        public static final int PREVSTATE_FIELD_NUMBER = 2;
        private int cachedSize = -1;
        private int currState_ = 0;
        private boolean hasCurrState;
        private boolean hasPrevState;
        private int prevState_ = 0;

        public int getCurrState() {
            return this.currState_;
        }

        public boolean hasCurrState() {
            return this.hasCurrState;
        }

        public WifiApInfo setCurrState(int value) {
            this.hasCurrState = true;
            this.currState_ = value;
            return this;
        }

        public WifiApInfo clearCurrState() {
            this.hasCurrState = false;
            this.currState_ = 0;
            return this;
        }

        public int getPrevState() {
            return this.prevState_;
        }

        public boolean hasPrevState() {
            return this.hasPrevState;
        }

        public WifiApInfo setPrevState(int value) {
            this.hasPrevState = true;
            this.prevState_ = value;
            return this;
        }

        public WifiApInfo clearPrevState() {
            this.hasPrevState = false;
            this.prevState_ = 0;
            return this;
        }

        public final WifiApInfo clear() {
            clearCurrState();
            clearPrevState();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasCurrState()) {
                output.writeInt32(1, getCurrState());
            }
            if (hasPrevState()) {
                output.writeInt32(2, getPrevState());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasCurrState()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getCurrState()) + 0;
            }
            if (hasPrevState()) {
                size += CodedOutputStreamMicro.computeInt32Size(2, getPrevState());
            }
            this.cachedSize = size;
            return size;
        }

        public WifiApInfo mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setCurrState(input.readInt32());
                        break;
                    case 16:
                        setPrevState(input.readInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static WifiApInfo parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (WifiApInfo) new WifiApInfo().mergeFrom(data);
        }

        public static WifiApInfo parseFrom(CodedInputStreamMicro input) throws IOException {
            return new WifiApInfo().mergeFrom(input);
        }
    }

    public static final class WifiP2pInfo extends MessageMicro {
        public static final int CURRSTATE_FIELD_NUMBER = 1;
        private int cachedSize = -1;
        private int currState_ = 0;
        private boolean hasCurrState;

        public int getCurrState() {
            return this.currState_;
        }

        public boolean hasCurrState() {
            return this.hasCurrState;
        }

        public WifiP2pInfo setCurrState(int value) {
            this.hasCurrState = true;
            this.currState_ = value;
            return this;
        }

        public WifiP2pInfo clearCurrState() {
            this.hasCurrState = false;
            this.currState_ = 0;
            return this;
        }

        public final WifiP2pInfo clear() {
            clearCurrState();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasCurrState()) {
                output.writeInt32(1, getCurrState());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasCurrState()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getCurrState()) + 0;
            }
            this.cachedSize = size;
            return size;
        }

        public WifiP2pInfo mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setCurrState(input.readInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static WifiP2pInfo parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (WifiP2pInfo) new WifiP2pInfo().mergeFrom(data);
        }

        public static WifiP2pInfo parseFrom(CodedInputStreamMicro input) throws IOException {
            return new WifiP2pInfo().mergeFrom(input);
        }
    }

    public static final class RatInfo extends MessageMicro {
        public static final int ERRORCAUSE_FIELD_NUMBER = 12;
        public static final int IFACEV6_FIELD_NUMBER = 7;
        public static final int IFACE_FIELD_NUMBER = 6;
        public static final int IPADDRV6_FIELD_NUMBER = 5;
        public static final int IPADDR_FIELD_NUMBER = 4;
        public static final int ISANDROIDVALIDATED_FIELD_NUMBER = 9;
        public static final int NETHDL_FIELD_NUMBER = 10;
        public static final int NETTYPE_FIELD_NUMBER = 1;
        public static final int NETWORKSTATE_FIELD_NUMBER = 3;
        public static final int SLOT_FIELD_NUMBER = 11;
        public static final int SUBTYPE_FIELD_NUMBER = 2;
        public static final int TIMESTAMP_FIELD_NUMBER = 8;
        private int cachedSize = -1;
        private int errorCause_ = 0;
        private boolean hasErrorCause;
        private boolean hasIface;
        private boolean hasIfaceV6;
        private boolean hasIpAddr;
        private boolean hasIpAddrV6;
        private boolean hasIsAndroidValidated;
        private boolean hasNetHdl;
        private boolean hasNetType;
        private boolean hasNetworkState;
        private boolean hasSlot;
        private boolean hasSubType;
        private boolean hasTimeStamp;
        private String ifaceV6_ = "";
        private String iface_ = "";
        private String ipAddrV6_ = "";
        private String ipAddr_ = "";
        private boolean isAndroidValidated_ = false;
        private long netHdl_ = 0;
        private int netType_ = 0;
        private int networkState_ = 0;
        private int slot_ = 0;
        private int subType_ = 0;
        private String timeStamp_ = "";

        public int getNetType() {
            return this.netType_;
        }

        public boolean hasNetType() {
            return this.hasNetType;
        }

        public RatInfo setNetType(int value) {
            this.hasNetType = true;
            this.netType_ = value;
            return this;
        }

        public RatInfo clearNetType() {
            this.hasNetType = false;
            this.netType_ = 0;
            return this;
        }

        public int getSubType() {
            return this.subType_;
        }

        public boolean hasSubType() {
            return this.hasSubType;
        }

        public RatInfo setSubType(int value) {
            this.hasSubType = true;
            this.subType_ = value;
            return this;
        }

        public RatInfo clearSubType() {
            this.hasSubType = false;
            this.subType_ = 0;
            return this;
        }

        public int getNetworkState() {
            return this.networkState_;
        }

        public boolean hasNetworkState() {
            return this.hasNetworkState;
        }

        public RatInfo setNetworkState(int value) {
            this.hasNetworkState = true;
            this.networkState_ = value;
            return this;
        }

        public RatInfo clearNetworkState() {
            this.hasNetworkState = false;
            this.networkState_ = 0;
            return this;
        }

        public String getIpAddr() {
            return this.ipAddr_;
        }

        public boolean hasIpAddr() {
            return this.hasIpAddr;
        }

        public RatInfo setIpAddr(String value) {
            this.hasIpAddr = true;
            this.ipAddr_ = value;
            return this;
        }

        public RatInfo clearIpAddr() {
            this.hasIpAddr = false;
            this.ipAddr_ = "";
            return this;
        }

        public String getIpAddrV6() {
            return this.ipAddrV6_;
        }

        public boolean hasIpAddrV6() {
            return this.hasIpAddrV6;
        }

        public RatInfo setIpAddrV6(String value) {
            this.hasIpAddrV6 = true;
            this.ipAddrV6_ = value;
            return this;
        }

        public RatInfo clearIpAddrV6() {
            this.hasIpAddrV6 = false;
            this.ipAddrV6_ = "";
            return this;
        }

        public String getIface() {
            return this.iface_;
        }

        public boolean hasIface() {
            return this.hasIface;
        }

        public RatInfo setIface(String value) {
            this.hasIface = true;
            this.iface_ = value;
            return this;
        }

        public RatInfo clearIface() {
            this.hasIface = false;
            this.iface_ = "";
            return this;
        }

        public String getIfaceV6() {
            return this.ifaceV6_;
        }

        public boolean hasIfaceV6() {
            return this.hasIfaceV6;
        }

        public RatInfo setIfaceV6(String value) {
            this.hasIfaceV6 = true;
            this.ifaceV6_ = value;
            return this;
        }

        public RatInfo clearIfaceV6() {
            this.hasIfaceV6 = false;
            this.ifaceV6_ = "";
            return this;
        }

        public String getTimeStamp() {
            return this.timeStamp_;
        }

        public boolean hasTimeStamp() {
            return this.hasTimeStamp;
        }

        public RatInfo setTimeStamp(String value) {
            this.hasTimeStamp = true;
            this.timeStamp_ = value;
            return this;
        }

        public RatInfo clearTimeStamp() {
            this.hasTimeStamp = false;
            this.timeStamp_ = "";
            return this;
        }

        public boolean getIsAndroidValidated() {
            return this.isAndroidValidated_;
        }

        public boolean hasIsAndroidValidated() {
            return this.hasIsAndroidValidated;
        }

        public RatInfo setIsAndroidValidated(boolean value) {
            this.hasIsAndroidValidated = true;
            this.isAndroidValidated_ = value;
            return this;
        }

        public RatInfo clearIsAndroidValidated() {
            this.hasIsAndroidValidated = false;
            this.isAndroidValidated_ = false;
            return this;
        }

        public long getNetHdl() {
            return this.netHdl_;
        }

        public boolean hasNetHdl() {
            return this.hasNetHdl;
        }

        public RatInfo setNetHdl(long value) {
            this.hasNetHdl = true;
            this.netHdl_ = value;
            return this;
        }

        public RatInfo clearNetHdl() {
            this.hasNetHdl = false;
            this.netHdl_ = 0;
            return this;
        }

        public int getSlot() {
            return this.slot_;
        }

        public boolean hasSlot() {
            return this.hasSlot;
        }

        public RatInfo setSlot(int value) {
            this.hasSlot = true;
            this.slot_ = value;
            return this;
        }

        public RatInfo clearSlot() {
            this.hasSlot = false;
            this.slot_ = 0;
            return this;
        }

        public int getErrorCause() {
            return this.errorCause_;
        }

        public boolean hasErrorCause() {
            return this.hasErrorCause;
        }

        public RatInfo setErrorCause(int value) {
            this.hasErrorCause = true;
            this.errorCause_ = value;
            return this;
        }

        public RatInfo clearErrorCause() {
            this.hasErrorCause = false;
            this.errorCause_ = 0;
            return this;
        }

        public final RatInfo clear() {
            clearNetType();
            clearSubType();
            clearNetworkState();
            clearIpAddr();
            clearIpAddrV6();
            clearIface();
            clearIfaceV6();
            clearTimeStamp();
            clearIsAndroidValidated();
            clearNetHdl();
            clearSlot();
            clearErrorCause();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasNetType()) {
                output.writeInt32(1, getNetType());
            }
            if (hasSubType()) {
                output.writeInt32(2, getSubType());
            }
            if (hasNetworkState()) {
                output.writeInt32(3, getNetworkState());
            }
            if (hasIpAddr()) {
                output.writeString(4, getIpAddr());
            }
            if (hasIpAddrV6()) {
                output.writeString(5, getIpAddrV6());
            }
            if (hasIface()) {
                output.writeString(6, getIface());
            }
            if (hasIfaceV6()) {
                output.writeString(7, getIfaceV6());
            }
            if (hasTimeStamp()) {
                output.writeString(8, getTimeStamp());
            }
            if (hasIsAndroidValidated()) {
                output.writeBool(9, getIsAndroidValidated());
            }
            if (hasNetHdl()) {
                output.writeUInt64(10, getNetHdl());
            }
            if (hasSlot()) {
                output.writeInt32(11, getSlot());
            }
            if (hasErrorCause()) {
                output.writeInt32(12, getErrorCause());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasNetType()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getNetType()) + 0;
            }
            if (hasSubType()) {
                size += CodedOutputStreamMicro.computeInt32Size(2, getSubType());
            }
            if (hasNetworkState()) {
                size += CodedOutputStreamMicro.computeInt32Size(3, getNetworkState());
            }
            if (hasIpAddr()) {
                size += CodedOutputStreamMicro.computeStringSize(4, getIpAddr());
            }
            if (hasIpAddrV6()) {
                size += CodedOutputStreamMicro.computeStringSize(5, getIpAddrV6());
            }
            if (hasIface()) {
                size += CodedOutputStreamMicro.computeStringSize(6, getIface());
            }
            if (hasIfaceV6()) {
                size += CodedOutputStreamMicro.computeStringSize(7, getIfaceV6());
            }
            if (hasTimeStamp()) {
                size += CodedOutputStreamMicro.computeStringSize(8, getTimeStamp());
            }
            if (hasIsAndroidValidated()) {
                size += CodedOutputStreamMicro.computeBoolSize(9, getIsAndroidValidated());
            }
            if (hasNetHdl()) {
                size += CodedOutputStreamMicro.computeUInt64Size(10, getNetHdl());
            }
            if (hasSlot()) {
                size += CodedOutputStreamMicro.computeInt32Size(11, getSlot());
            }
            if (hasErrorCause()) {
                size += CodedOutputStreamMicro.computeInt32Size(12, getErrorCause());
            }
            this.cachedSize = size;
            return size;
        }

        public RatInfo mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setNetType(input.readInt32());
                        break;
                    case 16:
                        setSubType(input.readInt32());
                        break;
                    case Native.NOTIFY_IMS_PROFILE_OVERRIDE_SETTING /*24*/:
                        setNetworkState(input.readInt32());
                        break;
                    case 34:
                        setIpAddr(input.readString());
                        break;
                    case 42:
                        setIpAddrV6(input.readString());
                        break;
                    case 50:
                        setIface(input.readString());
                        break;
                    case 58:
                        setIfaceV6(input.readString());
                        break;
                    case 66:
                        setTimeStamp(input.readString());
                        break;
                    case 72:
                        setIsAndroidValidated(input.readBool());
                        break;
                    case 80:
                        setNetHdl(input.readUInt64());
                        break;
                    case 88:
                        setSlot(input.readInt32());
                        break;
                    case 96:
                        setErrorCause(input.readInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static RatInfo parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (RatInfo) new RatInfo().mergeFrom(data);
        }

        public static RatInfo parseFrom(CodedInputStreamMicro input) throws IOException {
            return new RatInfo().mergeFrom(input);
        }
    }

    public static final class WlanInfo extends MessageMicro {
        public static final int BSSID_FIELD_NUMBER = 7;
        public static final int DNSINFO_FIELD_NUMBER = 15;
        public static final int FREQBAND_FIELD_NUMBER = 3;
        public static final int RATINFO_FIELD_NUMBER = 1;
        public static final int RSSI_FIELD_NUMBER = 5;
        public static final int SSID_FIELD_NUMBER = 6;
        public static final int WIFISTATE_FIELD_NUMBER = 4;
        private String bssid_ = "";
        private int cachedSize = -1;
        private List<String> dnsInfo_ = Collections.emptyList();
        private int freqBand_ = 0;
        private boolean hasBssid;
        private boolean hasFreqBand;
        private boolean hasRatInfo;
        private boolean hasRssi;
        private boolean hasSsid;
        private boolean hasWifiState;
        private RatInfo ratInfo_ = null;
        private int rssi_ = 0;
        private String ssid_ = "";
        private int wifiState_ = 0;

        public boolean hasRatInfo() {
            return this.hasRatInfo;
        }

        public RatInfo getRatInfo() {
            return this.ratInfo_;
        }

        public WlanInfo setRatInfo(RatInfo value) {
            if (value == null) {
                throw new NullPointerException();
            }
            this.hasRatInfo = true;
            this.ratInfo_ = value;
            return this;
        }

        public WlanInfo clearRatInfo() {
            this.hasRatInfo = false;
            this.ratInfo_ = null;
            return this;
        }

        public boolean hasFreqBand() {
            return this.hasFreqBand;
        }

        public int getFreqBand() {
            return this.freqBand_;
        }

        public WlanInfo setFreqBand(int value) {
            this.hasFreqBand = true;
            this.freqBand_ = value;
            return this;
        }

        public WlanInfo clearFreqBand() {
            this.hasFreqBand = false;
            this.freqBand_ = 0;
            return this;
        }

        public boolean hasWifiState() {
            return this.hasWifiState;
        }

        public int getWifiState() {
            return this.wifiState_;
        }

        public WlanInfo setWifiState(int value) {
            this.hasWifiState = true;
            this.wifiState_ = value;
            return this;
        }

        public WlanInfo clearWifiState() {
            this.hasWifiState = false;
            this.wifiState_ = 0;
            return this;
        }

        public int getRssi() {
            return this.rssi_;
        }

        public boolean hasRssi() {
            return this.hasRssi;
        }

        public WlanInfo setRssi(int value) {
            this.hasRssi = true;
            this.rssi_ = value;
            return this;
        }

        public WlanInfo clearRssi() {
            this.hasRssi = false;
            this.rssi_ = 0;
            return this;
        }

        public String getSsid() {
            return this.ssid_;
        }

        public boolean hasSsid() {
            return this.hasSsid;
        }

        public WlanInfo setSsid(String value) {
            this.hasSsid = true;
            this.ssid_ = value;
            return this;
        }

        public WlanInfo clearSsid() {
            this.hasSsid = false;
            this.ssid_ = "";
            return this;
        }

        public String getBssid() {
            return this.bssid_;
        }

        public boolean hasBssid() {
            return this.hasBssid;
        }

        public WlanInfo setBssid(String value) {
            this.hasBssid = true;
            this.bssid_ = value;
            return this;
        }

        public WlanInfo clearBssid() {
            this.hasBssid = false;
            this.bssid_ = "";
            return this;
        }

        public List<String> getDnsInfoList() {
            return this.dnsInfo_;
        }

        public int getDnsInfoCount() {
            return this.dnsInfo_.size();
        }

        public String getDnsInfo(int index) {
            return this.dnsInfo_.get(index);
        }

        public WlanInfo setDnsInfo(int index, String value) {
            if (value == null) {
                throw new NullPointerException();
            }
            this.dnsInfo_.set(index, value);
            return this;
        }

        public WlanInfo addDnsInfo(String value) {
            if (value == null) {
                throw new NullPointerException();
            }
            if (this.dnsInfo_.isEmpty()) {
                this.dnsInfo_ = new ArrayList();
            }
            this.dnsInfo_.add(value);
            return this;
        }

        public WlanInfo clearDnsInfo() {
            this.dnsInfo_ = Collections.emptyList();
            return this;
        }

        public final WlanInfo clear() {
            clearRatInfo();
            clearFreqBand();
            clearWifiState();
            clearRssi();
            clearSsid();
            clearBssid();
            clearDnsInfo();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasRatInfo()) {
                output.writeMessage(1, getRatInfo());
            }
            if (hasFreqBand()) {
                output.writeInt32(3, getFreqBand());
            }
            if (hasWifiState()) {
                output.writeInt32(4, getWifiState());
            }
            if (hasRssi()) {
                output.writeSInt32(5, getRssi());
            }
            if (hasSsid()) {
                output.writeString(6, getSsid());
            }
            if (hasBssid()) {
                output.writeString(7, getBssid());
            }
            for (String element : getDnsInfoList()) {
                output.writeString(15, element);
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasRatInfo()) {
                size = CodedOutputStreamMicro.computeMessageSize(1, getRatInfo()) + 0;
            }
            if (hasFreqBand()) {
                size += CodedOutputStreamMicro.computeInt32Size(3, getFreqBand());
            }
            if (hasWifiState()) {
                size += CodedOutputStreamMicro.computeInt32Size(4, getWifiState());
            }
            if (hasRssi()) {
                size += CodedOutputStreamMicro.computeSInt32Size(5, getRssi());
            }
            if (hasSsid()) {
                size += CodedOutputStreamMicro.computeStringSize(6, getSsid());
            }
            if (hasBssid()) {
                size += CodedOutputStreamMicro.computeStringSize(7, getBssid());
            }
            int dataSize = 0;
            for (String element : getDnsInfoList()) {
                dataSize += CodedOutputStreamMicro.computeStringSizeNoTag(element);
            }
            int size2 = size + dataSize + (getDnsInfoList().size() * 1);
            this.cachedSize = size2;
            return size2;
        }

        public WlanInfo mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 10:
                        RatInfo value = new RatInfo();
                        input.readMessage(value);
                        setRatInfo(value);
                        break;
                    case Native.NOTIFY_IMS_PROFILE_OVERRIDE_SETTING /*24*/:
                        setFreqBand(input.readInt32());
                        break;
                    case ICDClient.FLAG_TPUT_DL_PRESENT:
                        setWifiState(input.readInt32());
                        break;
                    case 40:
                        setRssi(input.readSInt32());
                        break;
                    case 50:
                        setSsid(input.readString());
                        break;
                    case 58:
                        setBssid(input.readString());
                        break;
                    case 122:
                        addDnsInfo(input.readString());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static WlanInfo parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (WlanInfo) new WlanInfo().mergeFrom(data);
        }

        public static WlanInfo parseFrom(CodedInputStreamMicro input) throws IOException {
            return new WlanInfo().mergeFrom(input);
        }
    }

    public static final class WwanInfo extends MessageMicro {
        public static final int MCCMNC_FIELD_NUMBER = 13;
        public static final int RATINFO_FIELD_NUMBER = 1;
        public static final int ROAMING_FIELD_NUMBER = 12;
        public static final int SIGNALSTRENGTH_FIELD_NUMBER = 11;
        private int cachedSize = -1;
        private boolean hasMccMnc;
        private boolean hasRatInfo;
        private boolean hasRoaming;
        private boolean hasSignalStrength;
        private String mccMnc_ = "";
        private RatInfo ratInfo_ = null;
        private int roaming_ = 0;
        private int signalStrength_ = 0;

        public boolean hasRatInfo() {
            return this.hasRatInfo;
        }

        public RatInfo getRatInfo() {
            return this.ratInfo_;
        }

        public WwanInfo setRatInfo(RatInfo value) {
            if (value == null) {
                throw new NullPointerException();
            }
            this.hasRatInfo = true;
            this.ratInfo_ = value;
            return this;
        }

        public WwanInfo clearRatInfo() {
            this.hasRatInfo = false;
            this.ratInfo_ = null;
            return this;
        }

        public int getSignalStrength() {
            return this.signalStrength_;
        }

        public boolean hasSignalStrength() {
            return this.hasSignalStrength;
        }

        public WwanInfo setSignalStrength(int value) {
            this.hasSignalStrength = true;
            this.signalStrength_ = value;
            return this;
        }

        public WwanInfo clearSignalStrength() {
            this.hasSignalStrength = false;
            this.signalStrength_ = 0;
            return this;
        }

        public int getRoaming() {
            return this.roaming_;
        }

        public boolean hasRoaming() {
            return this.hasRoaming;
        }

        public WwanInfo setRoaming(int value) {
            this.hasRoaming = true;
            this.roaming_ = value;
            return this;
        }

        public WwanInfo clearRoaming() {
            this.hasRoaming = false;
            this.roaming_ = 0;
            return this;
        }

        public String getMccMnc() {
            return this.mccMnc_;
        }

        public boolean hasMccMnc() {
            return this.hasMccMnc;
        }

        public WwanInfo setMccMnc(String value) {
            this.hasMccMnc = true;
            this.mccMnc_ = value;
            return this;
        }

        public WwanInfo clearMccMnc() {
            this.hasMccMnc = false;
            this.mccMnc_ = "";
            return this;
        }

        public final WwanInfo clear() {
            clearRatInfo();
            clearSignalStrength();
            clearRoaming();
            clearMccMnc();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasRatInfo()) {
                output.writeMessage(1, getRatInfo());
            }
            if (hasSignalStrength()) {
                output.writeSInt32(11, getSignalStrength());
            }
            if (hasRoaming()) {
                output.writeInt32(12, getRoaming());
            }
            if (hasMccMnc()) {
                output.writeString(13, getMccMnc());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasRatInfo()) {
                size = CodedOutputStreamMicro.computeMessageSize(1, getRatInfo()) + 0;
            }
            if (hasSignalStrength()) {
                size += CodedOutputStreamMicro.computeSInt32Size(11, getSignalStrength());
            }
            if (hasRoaming()) {
                size += CodedOutputStreamMicro.computeInt32Size(12, getRoaming());
            }
            if (hasMccMnc()) {
                size += CodedOutputStreamMicro.computeStringSize(13, getMccMnc());
            }
            this.cachedSize = size;
            return size;
        }

        public WwanInfo mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 10:
                        RatInfo value = new RatInfo();
                        input.readMessage(value);
                        setRatInfo(value);
                        break;
                    case 88:
                        setSignalStrength(input.readSInt32());
                        break;
                    case 96:
                        setRoaming(input.readInt32());
                        break;
                    case 106:
                        setMccMnc(input.readString());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static WwanInfo parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (WwanInfo) new WwanInfo().mergeFrom(data);
        }

        public static WwanInfo parseFrom(CodedInputStreamMicro input) throws IOException {
            return new WwanInfo().mergeFrom(input);
        }
    }

    public static final class CneState extends MessageMicro {
        public static final int STATE_FIELD_NUMBER = 2;
        public static final int TYPE_FIELD_NUMBER = 1;
        private int cachedSize = -1;
        private boolean hasState;
        private boolean hasType;
        private int state_ = 0;
        private int type_ = 1;

        public boolean hasType() {
            return this.hasType;
        }

        public int getType() {
            return this.type_;
        }

        public CneState setType(int value) {
            this.hasType = true;
            this.type_ = value;
            return this;
        }

        public CneState clearType() {
            this.hasType = false;
            this.type_ = 1;
            return this;
        }

        public int getState() {
            return this.state_;
        }

        public boolean hasState() {
            return this.hasState;
        }

        public CneState setState(int value) {
            this.hasState = true;
            this.state_ = value;
            return this;
        }

        public CneState clearState() {
            this.hasState = false;
            this.state_ = 0;
            return this;
        }

        public final CneState clear() {
            clearType();
            clearState();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasType()) {
                output.writeInt32(1, getType());
            }
            if (hasState()) {
                output.writeInt32(2, getState());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasType()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getType()) + 0;
            }
            if (hasState()) {
                size += CodedOutputStreamMicro.computeInt32Size(2, getState());
            }
            this.cachedSize = size;
            return size;
        }

        public CneState mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setType(input.readInt32());
                        break;
                    case 16:
                        setState(input.readInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static CneState parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (CneState) new CneState().mergeFrom(data);
        }

        public static CneState parseFrom(CodedInputStreamMicro input) throws IOException {
            return new CneState().mergeFrom(input);
        }
    }

    public static final class NatKeepAliveResult extends MessageMicro {
        public static final int RETCODE_FIELD_NUMBER = 1;
        private int cachedSize = -1;
        private boolean hasRetcode;
        private int retcode_ = 0;

        public int getRetcode() {
            return this.retcode_;
        }

        public boolean hasRetcode() {
            return this.hasRetcode;
        }

        public NatKeepAliveResult setRetcode(int value) {
            this.hasRetcode = true;
            this.retcode_ = value;
            return this;
        }

        public NatKeepAliveResult clearRetcode() {
            this.hasRetcode = false;
            this.retcode_ = 0;
            return this;
        }

        public final NatKeepAliveResult clear() {
            clearRetcode();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasRetcode()) {
                output.writeInt32(1, getRetcode());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasRetcode()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getRetcode()) + 0;
            }
            this.cachedSize = size;
            return size;
        }

        public NatKeepAliveResult mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setRetcode(input.readInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static NatKeepAliveResult parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (NatKeepAliveResult) new NatKeepAliveResult().mergeFrom(data);
        }

        public static NatKeepAliveResult parseFrom(CodedInputStreamMicro input) throws IOException {
            return new NatKeepAliveResult().mergeFrom(input);
        }
    }

    public static final class ProfileWlanStatus extends MessageMicro {
        public static final int CONNECTIONSTATUS_FIELD_NUMBER = 2;
        public static final int PROFILE_FIELD_NUMBER = 1;
        public static final int REASON_FIELD_NUMBER = 3;
        private int cachedSize = -1;
        private int connectionStatus_ = 0;
        private boolean hasConnectionStatus;
        private boolean hasProfile;
        private boolean hasReason;
        private String profile_ = "";
        private int reason_ = 0;

        public String getProfile() {
            return this.profile_;
        }

        public boolean hasProfile() {
            return this.hasProfile;
        }

        public ProfileWlanStatus setProfile(String value) {
            this.hasProfile = true;
            this.profile_ = value;
            return this;
        }

        public ProfileWlanStatus clearProfile() {
            this.hasProfile = false;
            this.profile_ = "";
            return this;
        }

        public int getConnectionStatus() {
            return this.connectionStatus_;
        }

        public boolean hasConnectionStatus() {
            return this.hasConnectionStatus;
        }

        public ProfileWlanStatus setConnectionStatus(int value) {
            this.hasConnectionStatus = true;
            this.connectionStatus_ = value;
            return this;
        }

        public ProfileWlanStatus clearConnectionStatus() {
            this.hasConnectionStatus = false;
            this.connectionStatus_ = 0;
            return this;
        }

        public int getReason() {
            return this.reason_;
        }

        public boolean hasReason() {
            return this.hasReason;
        }

        public ProfileWlanStatus setReason(int value) {
            this.hasReason = true;
            this.reason_ = value;
            return this;
        }

        public ProfileWlanStatus clearReason() {
            this.hasReason = false;
            this.reason_ = 0;
            return this;
        }

        public final ProfileWlanStatus clear() {
            clearProfile();
            clearConnectionStatus();
            clearReason();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasProfile()) {
                output.writeString(1, getProfile());
            }
            if (hasConnectionStatus()) {
                output.writeInt32(2, getConnectionStatus());
            }
            if (hasReason()) {
                output.writeInt32(3, getReason());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasProfile()) {
                size = CodedOutputStreamMicro.computeStringSize(1, getProfile()) + 0;
            }
            if (hasConnectionStatus()) {
                size += CodedOutputStreamMicro.computeInt32Size(2, getConnectionStatus());
            }
            if (hasReason()) {
                size += CodedOutputStreamMicro.computeInt32Size(3, getReason());
            }
            this.cachedSize = size;
            return size;
        }

        public ProfileWlanStatus mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 10:
                        setProfile(input.readString());
                        break;
                    case 16:
                        setConnectionStatus(input.readInt32());
                        break;
                    case Native.NOTIFY_IMS_PROFILE_OVERRIDE_SETTING /*24*/:
                        setReason(input.readInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static ProfileWlanStatus parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (ProfileWlanStatus) new ProfileWlanStatus().mergeFrom(data);
        }

        public static ProfileWlanStatus parseFrom(CodedInputStreamMicro input) throws IOException {
            return new ProfileWlanStatus().mergeFrom(input);
        }
    }

    public static final class IcdHttpResult extends MessageMicro {
        public static final int BSSID_FIELD_NUMBER = 1;
        public static final int FAMILY_FIELD_NUMBER = 4;
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int TID_FIELD_NUMBER = 3;
        private String bssid_ = "";
        private int cachedSize = -1;
        private int family_ = 0;
        private boolean hasBssid;
        private boolean hasFamily;
        private boolean hasResult;
        private boolean hasTid;
        private int result_ = 0;
        private int tid_ = 0;

        public String getBssid() {
            return this.bssid_;
        }

        public boolean hasBssid() {
            return this.hasBssid;
        }

        public IcdHttpResult setBssid(String value) {
            this.hasBssid = true;
            this.bssid_ = value;
            return this;
        }

        public IcdHttpResult clearBssid() {
            this.hasBssid = false;
            this.bssid_ = "";
            return this;
        }

        public int getResult() {
            return this.result_;
        }

        public boolean hasResult() {
            return this.hasResult;
        }

        public IcdHttpResult setResult(int value) {
            this.hasResult = true;
            this.result_ = value;
            return this;
        }

        public IcdHttpResult clearResult() {
            this.hasResult = false;
            this.result_ = 0;
            return this;
        }

        public int getTid() {
            return this.tid_;
        }

        public boolean hasTid() {
            return this.hasTid;
        }

        public IcdHttpResult setTid(int value) {
            this.hasTid = true;
            this.tid_ = value;
            return this;
        }

        public IcdHttpResult clearTid() {
            this.hasTid = false;
            this.tid_ = 0;
            return this;
        }

        public int getFamily() {
            return this.family_;
        }

        public boolean hasFamily() {
            return this.hasFamily;
        }

        public IcdHttpResult setFamily(int value) {
            this.hasFamily = true;
            this.family_ = value;
            return this;
        }

        public IcdHttpResult clearFamily() {
            this.hasFamily = false;
            this.family_ = 0;
            return this;
        }

        public final IcdHttpResult clear() {
            clearBssid();
            clearResult();
            clearTid();
            clearFamily();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasBssid()) {
                output.writeString(1, getBssid());
            }
            if (hasResult()) {
                output.writeUInt32(2, getResult());
            }
            if (hasTid()) {
                output.writeUInt32(3, getTid());
            }
            if (hasFamily()) {
                output.writeInt32(4, getFamily());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasBssid()) {
                size = CodedOutputStreamMicro.computeStringSize(1, getBssid()) + 0;
            }
            if (hasResult()) {
                size += CodedOutputStreamMicro.computeUInt32Size(2, getResult());
            }
            if (hasTid()) {
                size += CodedOutputStreamMicro.computeUInt32Size(3, getTid());
            }
            if (hasFamily()) {
                size += CodedOutputStreamMicro.computeInt32Size(4, getFamily());
            }
            this.cachedSize = size;
            return size;
        }

        public IcdHttpResult mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 10:
                        setBssid(input.readString());
                        break;
                    case 16:
                        setResult(input.readUInt32());
                        break;
                    case Native.NOTIFY_IMS_PROFILE_OVERRIDE_SETTING /*24*/:
                        setTid(input.readUInt32());
                        break;
                    case ICDClient.FLAG_TPUT_DL_PRESENT:
                        setFamily(input.readInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static IcdHttpResult parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (IcdHttpResult) new IcdHttpResult().mergeFrom(data);
        }

        public static IcdHttpResult parseFrom(CodedInputStreamMicro input) throws IOException {
            return new IcdHttpResult().mergeFrom(input);
        }
    }

    public static final class IcdResult extends MessageMicro {
        public static final int BQEPROB_FIELD_NUMBER = 8;
        public static final int BQEQUOTA_FIELD_NUMBER = 7;
        public static final int BSSID_FIELD_NUMBER = 1;
        public static final int FLAGS_FIELD_NUMBER = 3;
        public static final int ICDPROB_FIELD_NUMBER = 6;
        public static final int ICDQUOTA_FIELD_NUMBER = 5;
        public static final int MBW_FIELD_NUMBER = 9;
        public static final int RESULT_FIELD_NUMBER = 2;
        public static final int TID_FIELD_NUMBER = 4;
        public static final int TPUTDL_FIELD_NUMBER = 10;
        public static final int TPUTSDEV_FIELD_NUMBER = 11;
        private int bqeProb_ = 0;
        private int bqeQuota_ = 0;
        private String bssid_ = "";
        private int cachedSize = -1;
        private int flags_ = 0;
        private boolean hasBqeProb;
        private boolean hasBqeQuota;
        private boolean hasBssid;
        private boolean hasFlags;
        private boolean hasIcdProb;
        private boolean hasIcdQuota;
        private boolean hasMbw;
        private boolean hasResult;
        private boolean hasTid;
        private boolean hasTputDl;
        private boolean hasTputSdev;
        private int icdProb_ = 0;
        private int icdQuota_ = 0;
        private int mbw_ = 0;
        private int result_ = 0;
        private int tid_ = 0;
        private int tputDl_ = 0;
        private int tputSdev_ = 0;

        public String getBssid() {
            return this.bssid_;
        }

        public boolean hasBssid() {
            return this.hasBssid;
        }

        public IcdResult setBssid(String value) {
            this.hasBssid = true;
            this.bssid_ = value;
            return this;
        }

        public IcdResult clearBssid() {
            this.hasBssid = false;
            this.bssid_ = "";
            return this;
        }

        public int getResult() {
            return this.result_;
        }

        public boolean hasResult() {
            return this.hasResult;
        }

        public IcdResult setResult(int value) {
            this.hasResult = true;
            this.result_ = value;
            return this;
        }

        public IcdResult clearResult() {
            this.hasResult = false;
            this.result_ = 0;
            return this;
        }

        public int getFlags() {
            return this.flags_;
        }

        public boolean hasFlags() {
            return this.hasFlags;
        }

        public IcdResult setFlags(int value) {
            this.hasFlags = true;
            this.flags_ = value;
            return this;
        }

        public IcdResult clearFlags() {
            this.hasFlags = false;
            this.flags_ = 0;
            return this;
        }

        public int getTid() {
            return this.tid_;
        }

        public boolean hasTid() {
            return this.hasTid;
        }

        public IcdResult setTid(int value) {
            this.hasTid = true;
            this.tid_ = value;
            return this;
        }

        public IcdResult clearTid() {
            this.hasTid = false;
            this.tid_ = 0;
            return this;
        }

        public int getIcdQuota() {
            return this.icdQuota_;
        }

        public boolean hasIcdQuota() {
            return this.hasIcdQuota;
        }

        public IcdResult setIcdQuota(int value) {
            this.hasIcdQuota = true;
            this.icdQuota_ = value;
            return this;
        }

        public IcdResult clearIcdQuota() {
            this.hasIcdQuota = false;
            this.icdQuota_ = 0;
            return this;
        }

        public int getIcdProb() {
            return this.icdProb_;
        }

        public boolean hasIcdProb() {
            return this.hasIcdProb;
        }

        public IcdResult setIcdProb(int value) {
            this.hasIcdProb = true;
            this.icdProb_ = value;
            return this;
        }

        public IcdResult clearIcdProb() {
            this.hasIcdProb = false;
            this.icdProb_ = 0;
            return this;
        }

        public int getBqeQuota() {
            return this.bqeQuota_;
        }

        public boolean hasBqeQuota() {
            return this.hasBqeQuota;
        }

        public IcdResult setBqeQuota(int value) {
            this.hasBqeQuota = true;
            this.bqeQuota_ = value;
            return this;
        }

        public IcdResult clearBqeQuota() {
            this.hasBqeQuota = false;
            this.bqeQuota_ = 0;
            return this;
        }

        public int getBqeProb() {
            return this.bqeProb_;
        }

        public boolean hasBqeProb() {
            return this.hasBqeProb;
        }

        public IcdResult setBqeProb(int value) {
            this.hasBqeProb = true;
            this.bqeProb_ = value;
            return this;
        }

        public IcdResult clearBqeProb() {
            this.hasBqeProb = false;
            this.bqeProb_ = 0;
            return this;
        }

        public int getMbw() {
            return this.mbw_;
        }

        public boolean hasMbw() {
            return this.hasMbw;
        }

        public IcdResult setMbw(int value) {
            this.hasMbw = true;
            this.mbw_ = value;
            return this;
        }

        public IcdResult clearMbw() {
            this.hasMbw = false;
            this.mbw_ = 0;
            return this;
        }

        public int getTputDl() {
            return this.tputDl_;
        }

        public boolean hasTputDl() {
            return this.hasTputDl;
        }

        public IcdResult setTputDl(int value) {
            this.hasTputDl = true;
            this.tputDl_ = value;
            return this;
        }

        public IcdResult clearTputDl() {
            this.hasTputDl = false;
            this.tputDl_ = 0;
            return this;
        }

        public int getTputSdev() {
            return this.tputSdev_;
        }

        public boolean hasTputSdev() {
            return this.hasTputSdev;
        }

        public IcdResult setTputSdev(int value) {
            this.hasTputSdev = true;
            this.tputSdev_ = value;
            return this;
        }

        public IcdResult clearTputSdev() {
            this.hasTputSdev = false;
            this.tputSdev_ = 0;
            return this;
        }

        public final IcdResult clear() {
            clearBssid();
            clearResult();
            clearFlags();
            clearTid();
            clearIcdQuota();
            clearIcdProb();
            clearBqeQuota();
            clearBqeProb();
            clearMbw();
            clearTputDl();
            clearTputSdev();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasBssid()) {
                output.writeString(1, getBssid());
            }
            if (hasResult()) {
                output.writeUInt32(2, getResult());
            }
            if (hasFlags()) {
                output.writeUInt32(3, getFlags());
            }
            if (hasTid()) {
                output.writeUInt32(4, getTid());
            }
            if (hasIcdQuota()) {
                output.writeUInt32(5, getIcdQuota());
            }
            if (hasIcdProb()) {
                output.writeUInt32(6, getIcdProb());
            }
            if (hasBqeQuota()) {
                output.writeUInt32(7, getBqeQuota());
            }
            if (hasBqeProb()) {
                output.writeUInt32(8, getBqeProb());
            }
            if (hasMbw()) {
                output.writeUInt32(9, getMbw());
            }
            if (hasTputDl()) {
                output.writeUInt32(10, getTputDl());
            }
            if (hasTputSdev()) {
                output.writeUInt32(11, getTputSdev());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasBssid()) {
                size = CodedOutputStreamMicro.computeStringSize(1, getBssid()) + 0;
            }
            if (hasResult()) {
                size += CodedOutputStreamMicro.computeUInt32Size(2, getResult());
            }
            if (hasFlags()) {
                size += CodedOutputStreamMicro.computeUInt32Size(3, getFlags());
            }
            if (hasTid()) {
                size += CodedOutputStreamMicro.computeUInt32Size(4, getTid());
            }
            if (hasIcdQuota()) {
                size += CodedOutputStreamMicro.computeUInt32Size(5, getIcdQuota());
            }
            if (hasIcdProb()) {
                size += CodedOutputStreamMicro.computeUInt32Size(6, getIcdProb());
            }
            if (hasBqeQuota()) {
                size += CodedOutputStreamMicro.computeUInt32Size(7, getBqeQuota());
            }
            if (hasBqeProb()) {
                size += CodedOutputStreamMicro.computeUInt32Size(8, getBqeProb());
            }
            if (hasMbw()) {
                size += CodedOutputStreamMicro.computeUInt32Size(9, getMbw());
            }
            if (hasTputDl()) {
                size += CodedOutputStreamMicro.computeUInt32Size(10, getTputDl());
            }
            if (hasTputSdev()) {
                size += CodedOutputStreamMicro.computeUInt32Size(11, getTputSdev());
            }
            this.cachedSize = size;
            return size;
        }

        public IcdResult mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 10:
                        setBssid(input.readString());
                        break;
                    case 16:
                        setResult(input.readUInt32());
                        break;
                    case Native.NOTIFY_IMS_PROFILE_OVERRIDE_SETTING /*24*/:
                        setFlags(input.readUInt32());
                        break;
                    case ICDClient.FLAG_TPUT_DL_PRESENT:
                        setTid(input.readUInt32());
                        break;
                    case 40:
                        setIcdQuota(input.readUInt32());
                        break;
                    case 48:
                        setIcdProb(input.readUInt32());
                        break;
                    case 56:
                        setBqeQuota(input.readUInt32());
                        break;
                    case ICDClient.FLAG_TPUT_SDEV_PRESENT:
                        setBqeProb(input.readUInt32());
                        break;
                    case 72:
                        setMbw(input.readUInt32());
                        break;
                    case 80:
                        setTputDl(input.readUInt32());
                        break;
                    case 88:
                        setTputSdev(input.readUInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static IcdResult parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (IcdResult) new IcdResult().mergeFrom(data);
        }

        public static IcdResult parseFrom(CodedInputStreamMicro input) throws IOException {
            return new IcdResult().mergeFrom(input);
        }
    }

    public static final class JrttResult extends MessageMicro {
        public static final int GETTSMILLIS_FIELD_NUMBER = 4;
        public static final int GETTSSECONDS_FIELD_NUMBER = 3;
        public static final int JRTTMILLIS_FIELD_NUMBER = 2;
        public static final int RESULT_FIELD_NUMBER = 1;
        private int cachedSize = -1;
        private int getTsMillis_ = 0;
        private int getTsSeconds_ = 0;
        private boolean hasGetTsMillis;
        private boolean hasGetTsSeconds;
        private boolean hasJrttMillis;
        private boolean hasResult;
        private int jrttMillis_ = 0;
        private int result_ = 0;

        public int getResult() {
            return this.result_;
        }

        public boolean hasResult() {
            return this.hasResult;
        }

        public JrttResult setResult(int value) {
            this.hasResult = true;
            this.result_ = value;
            return this;
        }

        public JrttResult clearResult() {
            this.hasResult = false;
            this.result_ = 0;
            return this;
        }

        public int getJrttMillis() {
            return this.jrttMillis_;
        }

        public boolean hasJrttMillis() {
            return this.hasJrttMillis;
        }

        public JrttResult setJrttMillis(int value) {
            this.hasJrttMillis = true;
            this.jrttMillis_ = value;
            return this;
        }

        public JrttResult clearJrttMillis() {
            this.hasJrttMillis = false;
            this.jrttMillis_ = 0;
            return this;
        }

        public int getGetTsSeconds() {
            return this.getTsSeconds_;
        }

        public boolean hasGetTsSeconds() {
            return this.hasGetTsSeconds;
        }

        public JrttResult setGetTsSeconds(int value) {
            this.hasGetTsSeconds = true;
            this.getTsSeconds_ = value;
            return this;
        }

        public JrttResult clearGetTsSeconds() {
            this.hasGetTsSeconds = false;
            this.getTsSeconds_ = 0;
            return this;
        }

        public int getGetTsMillis() {
            return this.getTsMillis_;
        }

        public boolean hasGetTsMillis() {
            return this.hasGetTsMillis;
        }

        public JrttResult setGetTsMillis(int value) {
            this.hasGetTsMillis = true;
            this.getTsMillis_ = value;
            return this;
        }

        public JrttResult clearGetTsMillis() {
            this.hasGetTsMillis = false;
            this.getTsMillis_ = 0;
            return this;
        }

        public final JrttResult clear() {
            clearResult();
            clearJrttMillis();
            clearGetTsSeconds();
            clearGetTsMillis();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasResult()) {
                output.writeUInt32(1, getResult());
            }
            if (hasJrttMillis()) {
                output.writeUInt32(2, getJrttMillis());
            }
            if (hasGetTsSeconds()) {
                output.writeUInt32(3, getGetTsSeconds());
            }
            if (hasGetTsMillis()) {
                output.writeUInt32(4, getGetTsMillis());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasResult()) {
                size = CodedOutputStreamMicro.computeUInt32Size(1, getResult()) + 0;
            }
            if (hasJrttMillis()) {
                size += CodedOutputStreamMicro.computeUInt32Size(2, getJrttMillis());
            }
            if (hasGetTsSeconds()) {
                size += CodedOutputStreamMicro.computeUInt32Size(3, getGetTsSeconds());
            }
            if (hasGetTsMillis()) {
                size += CodedOutputStreamMicro.computeUInt32Size(4, getGetTsMillis());
            }
            this.cachedSize = size;
            return size;
        }

        public JrttResult mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setResult(input.readUInt32());
                        break;
                    case 16:
                        setJrttMillis(input.readUInt32());
                        break;
                    case Native.NOTIFY_IMS_PROFILE_OVERRIDE_SETTING /*24*/:
                        setGetTsSeconds(input.readUInt32());
                        break;
                    case ICDClient.FLAG_TPUT_DL_PRESENT:
                        setGetTsMillis(input.readUInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static JrttResult parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (JrttResult) new JrttResult().mergeFrom(data);
        }

        public static JrttResult parseFrom(CodedInputStreamMicro input) throws IOException {
            return new JrttResult().mergeFrom(input);
        }
    }

    public static final class VendorType extends MessageMicro {
        public static final int DATA_FIELD_NUMBER = 3;
        public static final int LENGTH_FIELD_NUMBER = 2;
        private int cachedSize = -1;
        private ByteStringMicro data_ = ByteStringMicro.EMPTY;
        private boolean hasData;
        private boolean hasLength;
        private int length_ = 0;

        public int getLength() {
            return this.length_;
        }

        public boolean hasLength() {
            return this.hasLength;
        }

        public VendorType setLength(int value) {
            this.hasLength = true;
            this.length_ = value;
            return this;
        }

        public VendorType clearLength() {
            this.hasLength = false;
            this.length_ = 0;
            return this;
        }

        public ByteStringMicro getData() {
            return this.data_;
        }

        public boolean hasData() {
            return this.hasData;
        }

        public VendorType setData(ByteStringMicro value) {
            this.hasData = true;
            this.data_ = value;
            return this;
        }

        public VendorType clearData() {
            this.hasData = false;
            this.data_ = ByteStringMicro.EMPTY;
            return this;
        }

        public final VendorType clear() {
            clearLength();
            clearData();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasLength()) {
                output.writeUInt32(2, getLength());
            }
            if (hasData()) {
                output.writeBytes(3, getData());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasLength()) {
                size = CodedOutputStreamMicro.computeUInt32Size(2, getLength()) + 0;
            }
            if (hasData()) {
                size += CodedOutputStreamMicro.computeBytesSize(3, getData());
            }
            this.cachedSize = size;
            return size;
        }

        public VendorType mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 16:
                        setLength(input.readUInt32());
                        break;
                    case 26:
                        setData(input.readBytes());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static VendorType parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (VendorType) new VendorType().mergeFrom(data);
        }

        public static VendorType parseFrom(CodedInputStreamMicro input) throws IOException {
            return new VendorType().mergeFrom(input);
        }
    }

    public static final class CneMessage extends MessageMicro {
        public static final int MSGBODY_FIELD_NUMBER = 3;
        public static final int MSGID_FIELD_NUMBER = 2;
        public static final int RESPONSE_FIELD_NUMBER = 1;
        private int cachedSize = -1;
        private boolean hasMsgId;
        private boolean hasMsgbody;
        private boolean hasResponse;
        private int msgId_ = 1;
        private ByteStringMicro msgbody_ = ByteStringMicro.EMPTY;
        private int response_ = 0;

        public boolean hasResponse() {
            return this.hasResponse;
        }

        public int getResponse() {
            return this.response_;
        }

        public CneMessage setResponse(int value) {
            this.hasResponse = true;
            this.response_ = value;
            return this;
        }

        public CneMessage clearResponse() {
            this.hasResponse = false;
            this.response_ = 0;
            return this;
        }

        public boolean hasMsgId() {
            return this.hasMsgId;
        }

        public int getMsgId() {
            return this.msgId_;
        }

        public CneMessage setMsgId(int value) {
            this.hasMsgId = true;
            this.msgId_ = value;
            return this;
        }

        public CneMessage clearMsgId() {
            this.hasMsgId = false;
            this.msgId_ = 1;
            return this;
        }

        public ByteStringMicro getMsgbody() {
            return this.msgbody_;
        }

        public boolean hasMsgbody() {
            return this.hasMsgbody;
        }

        public CneMessage setMsgbody(ByteStringMicro value) {
            this.hasMsgbody = true;
            this.msgbody_ = value;
            return this;
        }

        public CneMessage clearMsgbody() {
            this.hasMsgbody = false;
            this.msgbody_ = ByteStringMicro.EMPTY;
            return this;
        }

        public final CneMessage clear() {
            clearResponse();
            clearMsgId();
            clearMsgbody();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasResponse()) {
                output.writeInt32(1, getResponse());
            }
            if (hasMsgId()) {
                output.writeInt32(2, getMsgId());
            }
            if (hasMsgbody()) {
                output.writeBytes(3, getMsgbody());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasResponse()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getResponse()) + 0;
            }
            if (hasMsgId()) {
                size += CodedOutputStreamMicro.computeInt32Size(2, getMsgId());
            }
            if (hasMsgbody()) {
                size += CodedOutputStreamMicro.computeBytesSize(3, getMsgbody());
            }
            this.cachedSize = size;
            return size;
        }

        public CneMessage mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setResponse(input.readInt32());
                        break;
                    case 16:
                        setMsgId(input.readInt32());
                        break;
                    case 26:
                        setMsgbody(input.readBytes());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static CneMessage parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (CneMessage) new CneMessage().mergeFrom(data);
        }

        public static CneMessage parseFrom(CodedInputStreamMicro input) throws IOException {
            return new CneMessage().mergeFrom(input);
        }
    }

    public static final class SolictedMsg extends MessageMicro {
        public static final int ERROR_FIELD_NUMBER = 2;
        public static final int SERIAL_FIELD_NUMBER = 1;
        private int cachedSize = -1;
        private int error_ = 0;
        private boolean hasError;
        private boolean hasSerial;
        private int serial_ = 0;

        public int getSerial() {
            return this.serial_;
        }

        public boolean hasSerial() {
            return this.hasSerial;
        }

        public SolictedMsg setSerial(int value) {
            this.hasSerial = true;
            this.serial_ = value;
            return this;
        }

        public SolictedMsg clearSerial() {
            this.hasSerial = false;
            this.serial_ = 0;
            return this;
        }

        public int getError() {
            return this.error_;
        }

        public boolean hasError() {
            return this.hasError;
        }

        public SolictedMsg setError(int value) {
            this.hasError = true;
            this.error_ = value;
            return this;
        }

        public SolictedMsg clearError() {
            this.hasError = false;
            this.error_ = 0;
            return this;
        }

        public final SolictedMsg clear() {
            clearSerial();
            clearError();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasSerial()) {
                output.writeInt32(1, getSerial());
            }
            if (hasError()) {
                output.writeInt32(2, getError());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasSerial()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getSerial()) + 0;
            }
            if (hasError()) {
                size += CodedOutputStreamMicro.computeInt32Size(2, getError());
            }
            this.cachedSize = size;
            return size;
        }

        public SolictedMsg mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setSerial(input.readInt32());
                        break;
                    case 16:
                        setError(input.readInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static SolictedMsg parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (SolictedMsg) new SolictedMsg().mergeFrom(data);
        }

        public static SolictedMsg parseFrom(CodedInputStreamMicro input) throws IOException {
            return new SolictedMsg().mergeFrom(input);
        }
    }

    public static final class NetRequest extends MessageMicro {
        public static final int RATTYPE_FIELD_NUMBER = 1;
        public static final int SLOTTYPE_FIELD_NUMBER = 2;
        private int cachedSize = -1;
        private boolean hasRattype;
        private boolean hasSlottype;
        private int rattype_ = 0;
        private int slottype_ = 0;

        public boolean hasRattype() {
            return this.hasRattype;
        }

        public int getRattype() {
            return this.rattype_;
        }

        public NetRequest setRattype(int value) {
            this.hasRattype = true;
            this.rattype_ = value;
            return this;
        }

        public NetRequest clearRattype() {
            this.hasRattype = false;
            this.rattype_ = 0;
            return this;
        }

        public boolean hasSlottype() {
            return this.hasSlottype;
        }

        public int getSlottype() {
            return this.slottype_;
        }

        public NetRequest setSlottype(int value) {
            this.hasSlottype = true;
            this.slottype_ = value;
            return this;
        }

        public NetRequest clearSlottype() {
            this.hasSlottype = false;
            this.slottype_ = 0;
            return this;
        }

        public final NetRequest clear() {
            clearRattype();
            clearSlottype();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasRattype()) {
                output.writeInt32(1, getRattype());
            }
            if (hasSlottype()) {
                output.writeInt32(2, getSlottype());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasRattype()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getRattype()) + 0;
            }
            if (hasSlottype()) {
                size += CodedOutputStreamMicro.computeInt32Size(2, getSlottype());
            }
            this.cachedSize = size;
            return size;
        }

        public NetRequest mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setRattype(input.readInt32());
                        break;
                    case 16:
                        setSlottype(input.readInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static NetRequest parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (NetRequest) new NetRequest().mergeFrom(data);
        }

        public static NetRequest parseFrom(CodedInputStreamMicro input) throws IOException {
            return new NetRequest().mergeFrom(input);
        }
    }

    public static final class DisallowedAP extends MessageMicro {
        public static final int BSSID_FIELD_NUMBER = 3;
        public static final int DISALLOWED_FIELD_NUMBER = 1;
        public static final int REASON_FIELD_NUMBER = 2;
        private String bssid_ = "";
        private int cachedSize = -1;
        private int disallowed_ = 0;
        private boolean hasBssid;
        private boolean hasDisallowed;
        private boolean hasReason;
        private int reason_ = 0;

        public int getDisallowed() {
            return this.disallowed_;
        }

        public boolean hasDisallowed() {
            return this.hasDisallowed;
        }

        public DisallowedAP setDisallowed(int value) {
            this.hasDisallowed = true;
            this.disallowed_ = value;
            return this;
        }

        public DisallowedAP clearDisallowed() {
            this.hasDisallowed = false;
            this.disallowed_ = 0;
            return this;
        }

        public int getReason() {
            return this.reason_;
        }

        public boolean hasReason() {
            return this.hasReason;
        }

        public DisallowedAP setReason(int value) {
            this.hasReason = true;
            this.reason_ = value;
            return this;
        }

        public DisallowedAP clearReason() {
            this.hasReason = false;
            this.reason_ = 0;
            return this;
        }

        public String getBssid() {
            return this.bssid_;
        }

        public boolean hasBssid() {
            return this.hasBssid;
        }

        public DisallowedAP setBssid(String value) {
            this.hasBssid = true;
            this.bssid_ = value;
            return this;
        }

        public DisallowedAP clearBssid() {
            this.hasBssid = false;
            this.bssid_ = "";
            return this;
        }

        public final DisallowedAP clear() {
            clearDisallowed();
            clearReason();
            clearBssid();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasDisallowed()) {
                output.writeUInt32(1, getDisallowed());
            }
            if (hasReason()) {
                output.writeUInt32(2, getReason());
            }
            if (hasBssid()) {
                output.writeString(3, getBssid());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasDisallowed()) {
                size = CodedOutputStreamMicro.computeUInt32Size(1, getDisallowed()) + 0;
            }
            if (hasReason()) {
                size += CodedOutputStreamMicro.computeUInt32Size(2, getReason());
            }
            if (hasBssid()) {
                size += CodedOutputStreamMicro.computeStringSize(3, getBssid());
            }
            this.cachedSize = size;
            return size;
        }

        public DisallowedAP mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setDisallowed(input.readUInt32());
                        break;
                    case 16:
                        setReason(input.readUInt32());
                        break;
                    case 26:
                        setBssid(input.readString());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static DisallowedAP parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (DisallowedAP) new DisallowedAP().mergeFrom(data);
        }

        public static DisallowedAP parseFrom(CodedInputStreamMicro input) throws IOException {
            return new DisallowedAP().mergeFrom(input);
        }
    }

    public static final class BqeActiveProbeMsg extends MessageMicro {
        public static final int BSSID_FIELD_NUMBER = 1;
        public static final int FILESIZE_FIELD_NUMBER = 4;
        public static final int HTTPURI_FIELD_NUMBER = 3;
        public static final int URI_FIELD_NUMBER = 2;
        private String bssid_ = "";
        private int cachedSize = -1;
        private String fileSize_ = "";
        private boolean hasBssid;
        private boolean hasFileSize;
        private boolean hasHttpuri;
        private boolean hasUri;
        private String httpuri_ = "";
        private String uri_ = "";

        public String getBssid() {
            return this.bssid_;
        }

        public boolean hasBssid() {
            return this.hasBssid;
        }

        public BqeActiveProbeMsg setBssid(String value) {
            this.hasBssid = true;
            this.bssid_ = value;
            return this;
        }

        public BqeActiveProbeMsg clearBssid() {
            this.hasBssid = false;
            this.bssid_ = "";
            return this;
        }

        public String getUri() {
            return this.uri_;
        }

        public boolean hasUri() {
            return this.hasUri;
        }

        public BqeActiveProbeMsg setUri(String value) {
            this.hasUri = true;
            this.uri_ = value;
            return this;
        }

        public BqeActiveProbeMsg clearUri() {
            this.hasUri = false;
            this.uri_ = "";
            return this;
        }

        public String getHttpuri() {
            return this.httpuri_;
        }

        public boolean hasHttpuri() {
            return this.hasHttpuri;
        }

        public BqeActiveProbeMsg setHttpuri(String value) {
            this.hasHttpuri = true;
            this.httpuri_ = value;
            return this;
        }

        public BqeActiveProbeMsg clearHttpuri() {
            this.hasHttpuri = false;
            this.httpuri_ = "";
            return this;
        }

        public String getFileSize() {
            return this.fileSize_;
        }

        public boolean hasFileSize() {
            return this.hasFileSize;
        }

        public BqeActiveProbeMsg setFileSize(String value) {
            this.hasFileSize = true;
            this.fileSize_ = value;
            return this;
        }

        public BqeActiveProbeMsg clearFileSize() {
            this.hasFileSize = false;
            this.fileSize_ = "";
            return this;
        }

        public final BqeActiveProbeMsg clear() {
            clearBssid();
            clearUri();
            clearHttpuri();
            clearFileSize();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasBssid()) {
                output.writeString(1, getBssid());
            }
            if (hasUri()) {
                output.writeString(2, getUri());
            }
            if (hasHttpuri()) {
                output.writeString(3, getHttpuri());
            }
            if (hasFileSize()) {
                output.writeString(4, getFileSize());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasBssid()) {
                size = CodedOutputStreamMicro.computeStringSize(1, getBssid()) + 0;
            }
            if (hasUri()) {
                size += CodedOutputStreamMicro.computeStringSize(2, getUri());
            }
            if (hasHttpuri()) {
                size += CodedOutputStreamMicro.computeStringSize(3, getHttpuri());
            }
            if (hasFileSize()) {
                size += CodedOutputStreamMicro.computeStringSize(4, getFileSize());
            }
            this.cachedSize = size;
            return size;
        }

        public BqeActiveProbeMsg mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 10:
                        setBssid(input.readString());
                        break;
                    case 18:
                        setUri(input.readString());
                        break;
                    case 26:
                        setHttpuri(input.readString());
                        break;
                    case 34:
                        setFileSize(input.readString());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static BqeActiveProbeMsg parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (BqeActiveProbeMsg) new BqeActiveProbeMsg().mergeFrom(data);
        }

        public static BqeActiveProbeMsg parseFrom(CodedInputStreamMicro input) throws IOException {
            return new BqeActiveProbeMsg().mergeFrom(input);
        }
    }

    public static final class SetDefaultRouteMsg extends MessageMicro {
        public static final int RATTYPE_FIELD_NUMBER = 1;
        private int cachedSize = -1;
        private boolean hasRattype;
        private int rattype_ = 0;

        public boolean hasRattype() {
            return this.hasRattype;
        }

        public int getRattype() {
            return this.rattype_;
        }

        public SetDefaultRouteMsg setRattype(int value) {
            this.hasRattype = true;
            this.rattype_ = value;
            return this;
        }

        public SetDefaultRouteMsg clearRattype() {
            this.hasRattype = false;
            this.rattype_ = 0;
            return this;
        }

        public final SetDefaultRouteMsg clear() {
            clearRattype();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasRattype()) {
                output.writeInt32(1, getRattype());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasRattype()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getRattype()) + 0;
            }
            this.cachedSize = size;
            return size;
        }

        public SetDefaultRouteMsg mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setRattype(input.readInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static SetDefaultRouteMsg parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (SetDefaultRouteMsg) new SetDefaultRouteMsg().mergeFrom(data);
        }

        public static SetDefaultRouteMsg parseFrom(CodedInputStreamMicro input) throws IOException {
            return new SetDefaultRouteMsg().mergeFrom(input);
        }
    }

    public static final class IcdStartMsg extends MessageMicro {
        public static final int BSSID_FIELD_NUMBER = 3;
        public static final int HTTPURI_FIELD_NUMBER = 2;
        public static final int TID_FIELD_NUMBER = 5;
        public static final int TIMEOUT_FIELD_NUMBER = 4;
        public static final int URI_FIELD_NUMBER = 1;
        private String bssid_ = "";
        private int cachedSize = -1;
        private boolean hasBssid;
        private boolean hasHttpuri;
        private boolean hasTid;
        private boolean hasTimeout;
        private boolean hasUri;
        private String httpuri_ = "";
        private int tid_ = 0;
        private int timeout_ = 0;
        private String uri_ = "";

        public String getUri() {
            return this.uri_;
        }

        public boolean hasUri() {
            return this.hasUri;
        }

        public IcdStartMsg setUri(String value) {
            this.hasUri = true;
            this.uri_ = value;
            return this;
        }

        public IcdStartMsg clearUri() {
            this.hasUri = false;
            this.uri_ = "";
            return this;
        }

        public String getHttpuri() {
            return this.httpuri_;
        }

        public boolean hasHttpuri() {
            return this.hasHttpuri;
        }

        public IcdStartMsg setHttpuri(String value) {
            this.hasHttpuri = true;
            this.httpuri_ = value;
            return this;
        }

        public IcdStartMsg clearHttpuri() {
            this.hasHttpuri = false;
            this.httpuri_ = "";
            return this;
        }

        public String getBssid() {
            return this.bssid_;
        }

        public boolean hasBssid() {
            return this.hasBssid;
        }

        public IcdStartMsg setBssid(String value) {
            this.hasBssid = true;
            this.bssid_ = value;
            return this;
        }

        public IcdStartMsg clearBssid() {
            this.hasBssid = false;
            this.bssid_ = "";
            return this;
        }

        public int getTimeout() {
            return this.timeout_;
        }

        public boolean hasTimeout() {
            return this.hasTimeout;
        }

        public IcdStartMsg setTimeout(int value) {
            this.hasTimeout = true;
            this.timeout_ = value;
            return this;
        }

        public IcdStartMsg clearTimeout() {
            this.hasTimeout = false;
            this.timeout_ = 0;
            return this;
        }

        public int getTid() {
            return this.tid_;
        }

        public boolean hasTid() {
            return this.hasTid;
        }

        public IcdStartMsg setTid(int value) {
            this.hasTid = true;
            this.tid_ = value;
            return this;
        }

        public IcdStartMsg clearTid() {
            this.hasTid = false;
            this.tid_ = 0;
            return this;
        }

        public final IcdStartMsg clear() {
            clearUri();
            clearHttpuri();
            clearBssid();
            clearTimeout();
            clearTid();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasUri()) {
                output.writeString(1, getUri());
            }
            if (hasHttpuri()) {
                output.writeString(2, getHttpuri());
            }
            if (hasBssid()) {
                output.writeString(3, getBssid());
            }
            if (hasTimeout()) {
                output.writeUInt32(4, getTimeout());
            }
            if (hasTid()) {
                output.writeUInt32(5, getTid());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasUri()) {
                size = CodedOutputStreamMicro.computeStringSize(1, getUri()) + 0;
            }
            if (hasHttpuri()) {
                size += CodedOutputStreamMicro.computeStringSize(2, getHttpuri());
            }
            if (hasBssid()) {
                size += CodedOutputStreamMicro.computeStringSize(3, getBssid());
            }
            if (hasTimeout()) {
                size += CodedOutputStreamMicro.computeUInt32Size(4, getTimeout());
            }
            if (hasTid()) {
                size += CodedOutputStreamMicro.computeUInt32Size(5, getTid());
            }
            this.cachedSize = size;
            return size;
        }

        public IcdStartMsg mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 10:
                        setUri(input.readString());
                        break;
                    case 18:
                        setHttpuri(input.readString());
                        break;
                    case 26:
                        setBssid(input.readString());
                        break;
                    case ICDClient.FLAG_TPUT_DL_PRESENT:
                        setTimeout(input.readUInt32());
                        break;
                    case 40:
                        setTid(input.readUInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static IcdStartMsg parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (IcdStartMsg) new IcdStartMsg().mergeFrom(data);
        }

        public static IcdStartMsg parseFrom(CodedInputStreamMicro input) throws IOException {
            return new IcdStartMsg().mergeFrom(input);
        }
    }

    public static final class BqePostParamsMsg extends MessageMicro {
        public static final int BSSID_FIELD_NUMBER = 1;
        public static final int TIMESTAMPSEC_FIELD_NUMBER = 4;
        public static final int TPUTKILOBITSPERSEC_FIELD_NUMBER = 3;
        public static final int URI_FIELD_NUMBER = 2;
        private String bssid_ = "";
        private int cachedSize = -1;
        private boolean hasBssid;
        private boolean hasTimeStampSec;
        private boolean hasTputKiloBitsPerSec;
        private boolean hasUri;
        private int timeStampSec_ = 0;
        private int tputKiloBitsPerSec_ = 0;
        private String uri_ = "";

        public String getBssid() {
            return this.bssid_;
        }

        public boolean hasBssid() {
            return this.hasBssid;
        }

        public BqePostParamsMsg setBssid(String value) {
            this.hasBssid = true;
            this.bssid_ = value;
            return this;
        }

        public BqePostParamsMsg clearBssid() {
            this.hasBssid = false;
            this.bssid_ = "";
            return this;
        }

        public String getUri() {
            return this.uri_;
        }

        public boolean hasUri() {
            return this.hasUri;
        }

        public BqePostParamsMsg setUri(String value) {
            this.hasUri = true;
            this.uri_ = value;
            return this;
        }

        public BqePostParamsMsg clearUri() {
            this.hasUri = false;
            this.uri_ = "";
            return this;
        }

        public int getTputKiloBitsPerSec() {
            return this.tputKiloBitsPerSec_;
        }

        public boolean hasTputKiloBitsPerSec() {
            return this.hasTputKiloBitsPerSec;
        }

        public BqePostParamsMsg setTputKiloBitsPerSec(int value) {
            this.hasTputKiloBitsPerSec = true;
            this.tputKiloBitsPerSec_ = value;
            return this;
        }

        public BqePostParamsMsg clearTputKiloBitsPerSec() {
            this.hasTputKiloBitsPerSec = false;
            this.tputKiloBitsPerSec_ = 0;
            return this;
        }

        public int getTimeStampSec() {
            return this.timeStampSec_;
        }

        public boolean hasTimeStampSec() {
            return this.hasTimeStampSec;
        }

        public BqePostParamsMsg setTimeStampSec(int value) {
            this.hasTimeStampSec = true;
            this.timeStampSec_ = value;
            return this;
        }

        public BqePostParamsMsg clearTimeStampSec() {
            this.hasTimeStampSec = false;
            this.timeStampSec_ = 0;
            return this;
        }

        public final BqePostParamsMsg clear() {
            clearBssid();
            clearUri();
            clearTputKiloBitsPerSec();
            clearTimeStampSec();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasBssid()) {
                output.writeString(1, getBssid());
            }
            if (hasUri()) {
                output.writeString(2, getUri());
            }
            if (hasTputKiloBitsPerSec()) {
                output.writeUInt32(3, getTputKiloBitsPerSec());
            }
            if (hasTimeStampSec()) {
                output.writeUInt32(4, getTimeStampSec());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasBssid()) {
                size = CodedOutputStreamMicro.computeStringSize(1, getBssid()) + 0;
            }
            if (hasUri()) {
                size += CodedOutputStreamMicro.computeStringSize(2, getUri());
            }
            if (hasTputKiloBitsPerSec()) {
                size += CodedOutputStreamMicro.computeUInt32Size(3, getTputKiloBitsPerSec());
            }
            if (hasTimeStampSec()) {
                size += CodedOutputStreamMicro.computeUInt32Size(4, getTimeStampSec());
            }
            this.cachedSize = size;
            return size;
        }

        public BqePostParamsMsg mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 10:
                        setBssid(input.readString());
                        break;
                    case 18:
                        setUri(input.readString());
                        break;
                    case Native.NOTIFY_IMS_PROFILE_OVERRIDE_SETTING /*24*/:
                        setTputKiloBitsPerSec(input.readUInt32());
                        break;
                    case ICDClient.FLAG_TPUT_DL_PRESENT:
                        setTimeStampSec(input.readUInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static BqePostParamsMsg parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (BqePostParamsMsg) new BqePostParamsMsg().mergeFrom(data);
        }

        public static BqePostParamsMsg parseFrom(CodedInputStreamMicro input) throws IOException {
            return new BqePostParamsMsg().mergeFrom(input);
        }
    }

    public static final class FeatureRespMsg extends MessageMicro {
        public static final int FEATURESTATUS_FIELD_NUMBER = 2;
        public static final int FEATURETYPE_FIELD_NUMBER = 1;
        public static final int RESULT_FIELD_NUMBER = 3;
        private int cachedSize = -1;
        private int featureStatus_ = 1;
        private int featureType_ = 1;
        private boolean hasFeatureStatus;
        private boolean hasFeatureType;
        private boolean hasResult;
        private int result_ = 0;

        public boolean hasFeatureType() {
            return this.hasFeatureType;
        }

        public int getFeatureType() {
            return this.featureType_;
        }

        public FeatureRespMsg setFeatureType(int value) {
            this.hasFeatureType = true;
            this.featureType_ = value;
            return this;
        }

        public FeatureRespMsg clearFeatureType() {
            this.hasFeatureType = false;
            this.featureType_ = 1;
            return this;
        }

        public boolean hasFeatureStatus() {
            return this.hasFeatureStatus;
        }

        public int getFeatureStatus() {
            return this.featureStatus_;
        }

        public FeatureRespMsg setFeatureStatus(int value) {
            this.hasFeatureStatus = true;
            this.featureStatus_ = value;
            return this;
        }

        public FeatureRespMsg clearFeatureStatus() {
            this.hasFeatureStatus = false;
            this.featureStatus_ = 1;
            return this;
        }

        public int getResult() {
            return this.result_;
        }

        public boolean hasResult() {
            return this.hasResult;
        }

        public FeatureRespMsg setResult(int value) {
            this.hasResult = true;
            this.result_ = value;
            return this;
        }

        public FeatureRespMsg clearResult() {
            this.hasResult = false;
            this.result_ = 0;
            return this;
        }

        public final FeatureRespMsg clear() {
            clearFeatureType();
            clearFeatureStatus();
            clearResult();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasFeatureType()) {
                output.writeInt32(1, getFeatureType());
            }
            if (hasFeatureStatus()) {
                output.writeInt32(2, getFeatureStatus());
            }
            if (hasResult()) {
                output.writeInt32(3, getResult());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasFeatureType()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getFeatureType()) + 0;
            }
            if (hasFeatureStatus()) {
                size += CodedOutputStreamMicro.computeInt32Size(2, getFeatureStatus());
            }
            if (hasResult()) {
                size += CodedOutputStreamMicro.computeInt32Size(3, getResult());
            }
            this.cachedSize = size;
            return size;
        }

        public FeatureRespMsg mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setFeatureType(input.readInt32());
                        break;
                    case 16:
                        setFeatureStatus(input.readInt32());
                        break;
                    case Native.NOTIFY_IMS_PROFILE_OVERRIDE_SETTING /*24*/:
                        setResult(input.readInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static FeatureRespMsg parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (FeatureRespMsg) new FeatureRespMsg().mergeFrom(data);
        }

        public static FeatureRespMsg parseFrom(CodedInputStreamMicro input) throws IOException {
            return new FeatureRespMsg().mergeFrom(input);
        }
    }

    public static final class PolicyUpdateRespMsg extends MessageMicro {
        public static final int POLICY_FIELD_NUMBER = 1;
        public static final int RESULT_FIELD_NUMBER = 2;
        private int cachedSize = -1;
        private boolean hasPolicy;
        private boolean hasResult;
        private int policy_ = 1;
        private int result_ = 0;

        public boolean hasPolicy() {
            return this.hasPolicy;
        }

        public int getPolicy() {
            return this.policy_;
        }

        public PolicyUpdateRespMsg setPolicy(int value) {
            this.hasPolicy = true;
            this.policy_ = value;
            return this;
        }

        public PolicyUpdateRespMsg clearPolicy() {
            this.hasPolicy = false;
            this.policy_ = 1;
            return this;
        }

        public int getResult() {
            return this.result_;
        }

        public boolean hasResult() {
            return this.hasResult;
        }

        public PolicyUpdateRespMsg setResult(int value) {
            this.hasResult = true;
            this.result_ = value;
            return this;
        }

        public PolicyUpdateRespMsg clearResult() {
            this.hasResult = false;
            this.result_ = 0;
            return this;
        }

        public final PolicyUpdateRespMsg clear() {
            clearPolicy();
            clearResult();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasPolicy()) {
                output.writeInt32(1, getPolicy());
            }
            if (hasResult()) {
                output.writeInt32(2, getResult());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasPolicy()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getPolicy()) + 0;
            }
            if (hasResult()) {
                size += CodedOutputStreamMicro.computeInt32Size(2, getResult());
            }
            this.cachedSize = size;
            return size;
        }

        public PolicyUpdateRespMsg mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setPolicy(input.readInt32());
                        break;
                    case 16:
                        setResult(input.readInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static PolicyUpdateRespMsg parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (PolicyUpdateRespMsg) new PolicyUpdateRespMsg().mergeFrom(data);
        }

        public static PolicyUpdateRespMsg parseFrom(CodedInputStreamMicro input) throws IOException {
            return new PolicyUpdateRespMsg().mergeFrom(input);
        }
    }

    public static final class NatKeepAliveRequestMsg extends MessageMicro {
        public static final int DESTIP_FIELD_NUMBER = 4;
        public static final int DESTPORT_FIELD_NUMBER = 3;
        public static final int SRCPORT_FIELD_NUMBER = 2;
        public static final int TIMER_FIELD_NUMBER = 1;
        private int cachedSize = -1;
        private String destIp_ = "";
        private int destPort_ = 0;
        private boolean hasDestIp;
        private boolean hasDestPort;
        private boolean hasSrcPort;
        private boolean hasTimer;
        private int srcPort_ = 0;
        private int timer_ = 0;

        public int getTimer() {
            return this.timer_;
        }

        public boolean hasTimer() {
            return this.hasTimer;
        }

        public NatKeepAliveRequestMsg setTimer(int value) {
            this.hasTimer = true;
            this.timer_ = value;
            return this;
        }

        public NatKeepAliveRequestMsg clearTimer() {
            this.hasTimer = false;
            this.timer_ = 0;
            return this;
        }

        public int getSrcPort() {
            return this.srcPort_;
        }

        public boolean hasSrcPort() {
            return this.hasSrcPort;
        }

        public NatKeepAliveRequestMsg setSrcPort(int value) {
            this.hasSrcPort = true;
            this.srcPort_ = value;
            return this;
        }

        public NatKeepAliveRequestMsg clearSrcPort() {
            this.hasSrcPort = false;
            this.srcPort_ = 0;
            return this;
        }

        public int getDestPort() {
            return this.destPort_;
        }

        public boolean hasDestPort() {
            return this.hasDestPort;
        }

        public NatKeepAliveRequestMsg setDestPort(int value) {
            this.hasDestPort = true;
            this.destPort_ = value;
            return this;
        }

        public NatKeepAliveRequestMsg clearDestPort() {
            this.hasDestPort = false;
            this.destPort_ = 0;
            return this;
        }

        public String getDestIp() {
            return this.destIp_;
        }

        public boolean hasDestIp() {
            return this.hasDestIp;
        }

        public NatKeepAliveRequestMsg setDestIp(String value) {
            this.hasDestIp = true;
            this.destIp_ = value;
            return this;
        }

        public NatKeepAliveRequestMsg clearDestIp() {
            this.hasDestIp = false;
            this.destIp_ = "";
            return this;
        }

        public final NatKeepAliveRequestMsg clear() {
            clearTimer();
            clearSrcPort();
            clearDestPort();
            clearDestIp();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasTimer()) {
                output.writeUInt32(1, getTimer());
            }
            if (hasSrcPort()) {
                output.writeUInt32(2, getSrcPort());
            }
            if (hasDestPort()) {
                output.writeUInt32(3, getDestPort());
            }
            if (hasDestIp()) {
                output.writeString(4, getDestIp());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasTimer()) {
                size = CodedOutputStreamMicro.computeUInt32Size(1, getTimer()) + 0;
            }
            if (hasSrcPort()) {
                size += CodedOutputStreamMicro.computeUInt32Size(2, getSrcPort());
            }
            if (hasDestPort()) {
                size += CodedOutputStreamMicro.computeUInt32Size(3, getDestPort());
            }
            if (hasDestIp()) {
                size += CodedOutputStreamMicro.computeStringSize(4, getDestIp());
            }
            this.cachedSize = size;
            return size;
        }

        public NatKeepAliveRequestMsg mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setTimer(input.readUInt32());
                        break;
                    case 16:
                        setSrcPort(input.readUInt32());
                        break;
                    case Native.NOTIFY_IMS_PROFILE_OVERRIDE_SETTING /*24*/:
                        setDestPort(input.readUInt32());
                        break;
                    case 34:
                        setDestIp(input.readString());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static NatKeepAliveRequestMsg parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (NatKeepAliveRequestMsg) new NatKeepAliveRequestMsg().mergeFrom(data);
        }

        public static NatKeepAliveRequestMsg parseFrom(CodedInputStreamMicro input) throws IOException {
            return new NatKeepAliveRequestMsg().mergeFrom(input);
        }
    }

    public static final class RssiOffloadMsg extends MessageMicro {
        public static final int OPERATORNAME_FIELD_NUMBER = 2;
        public static final int PROFILENAME_FIELD_NUMBER = 1;
        public static final int RSSIHIGH_FIELD_NUMBER = 3;
        public static final int RSSILOW_FIELD_NUMBER = 4;
        private int cachedSize = -1;
        private boolean hasOperatorName;
        private boolean hasProfileName;
        private boolean hasRssiHigh;
        private boolean hasRssiLow;
        private String operatorName_ = "";
        private String profileName_ = "";
        private int rssiHigh_ = 0;
        private int rssiLow_ = 0;

        public String getProfileName() {
            return this.profileName_;
        }

        public boolean hasProfileName() {
            return this.hasProfileName;
        }

        public RssiOffloadMsg setProfileName(String value) {
            this.hasProfileName = true;
            this.profileName_ = value;
            return this;
        }

        public RssiOffloadMsg clearProfileName() {
            this.hasProfileName = false;
            this.profileName_ = "";
            return this;
        }

        public String getOperatorName() {
            return this.operatorName_;
        }

        public boolean hasOperatorName() {
            return this.hasOperatorName;
        }

        public RssiOffloadMsg setOperatorName(String value) {
            this.hasOperatorName = true;
            this.operatorName_ = value;
            return this;
        }

        public RssiOffloadMsg clearOperatorName() {
            this.hasOperatorName = false;
            this.operatorName_ = "";
            return this;
        }

        public int getRssiHigh() {
            return this.rssiHigh_;
        }

        public boolean hasRssiHigh() {
            return this.hasRssiHigh;
        }

        public RssiOffloadMsg setRssiHigh(int value) {
            this.hasRssiHigh = true;
            this.rssiHigh_ = value;
            return this;
        }

        public RssiOffloadMsg clearRssiHigh() {
            this.hasRssiHigh = false;
            this.rssiHigh_ = 0;
            return this;
        }

        public int getRssiLow() {
            return this.rssiLow_;
        }

        public boolean hasRssiLow() {
            return this.hasRssiLow;
        }

        public RssiOffloadMsg setRssiLow(int value) {
            this.hasRssiLow = true;
            this.rssiLow_ = value;
            return this;
        }

        public RssiOffloadMsg clearRssiLow() {
            this.hasRssiLow = false;
            this.rssiLow_ = 0;
            return this;
        }

        public final RssiOffloadMsg clear() {
            clearProfileName();
            clearOperatorName();
            clearRssiHigh();
            clearRssiLow();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasProfileName()) {
                output.writeString(1, getProfileName());
            }
            if (hasOperatorName()) {
                output.writeString(2, getOperatorName());
            }
            if (hasRssiHigh()) {
                output.writeSInt32(3, getRssiHigh());
            }
            if (hasRssiLow()) {
                output.writeSInt32(4, getRssiLow());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasProfileName()) {
                size = CodedOutputStreamMicro.computeStringSize(1, getProfileName()) + 0;
            }
            if (hasOperatorName()) {
                size += CodedOutputStreamMicro.computeStringSize(2, getOperatorName());
            }
            if (hasRssiHigh()) {
                size += CodedOutputStreamMicro.computeSInt32Size(3, getRssiHigh());
            }
            if (hasRssiLow()) {
                size += CodedOutputStreamMicro.computeSInt32Size(4, getRssiLow());
            }
            this.cachedSize = size;
            return size;
        }

        public RssiOffloadMsg mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 10:
                        setProfileName(input.readString());
                        break;
                    case 18:
                        setOperatorName(input.readString());
                        break;
                    case Native.NOTIFY_IMS_PROFILE_OVERRIDE_SETTING /*24*/:
                        setRssiHigh(input.readSInt32());
                        break;
                    case ICDClient.FLAG_TPUT_DL_PRESENT:
                        setRssiLow(input.readSInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static RssiOffloadMsg parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (RssiOffloadMsg) new RssiOffloadMsg().mergeFrom(data);
        }

        public static RssiOffloadMsg parseFrom(CodedInputStreamMicro input) throws IOException {
            return new RssiOffloadMsg().mergeFrom(input);
        }
    }

    public static final class ProfileOverride extends MessageMicro {
        public static final int ISOVERRIDESET_FIELD_NUMBER = 1;
        private int cachedSize = -1;
        private boolean hasIsOverrideSet;
        private int isOverrideSet_ = 0;

        public int getIsOverrideSet() {
            return this.isOverrideSet_;
        }

        public boolean hasIsOverrideSet() {
            return this.hasIsOverrideSet;
        }

        public ProfileOverride setIsOverrideSet(int value) {
            this.hasIsOverrideSet = true;
            this.isOverrideSet_ = value;
            return this;
        }

        public ProfileOverride clearIsOverrideSet() {
            this.hasIsOverrideSet = false;
            this.isOverrideSet_ = 0;
            return this;
        }

        public final ProfileOverride clear() {
            clearIsOverrideSet();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasIsOverrideSet()) {
                output.writeUInt32(1, getIsOverrideSet());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasIsOverrideSet()) {
                size = CodedOutputStreamMicro.computeUInt32Size(1, getIsOverrideSet()) + 0;
            }
            this.cachedSize = size;
            return size;
        }

        public ProfileOverride mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setIsOverrideSet(input.readUInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static ProfileOverride parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (ProfileOverride) new ProfileOverride().mergeFrom(data);
        }

        public static ProfileOverride parseFrom(CodedInputStreamMicro input) throws IOException {
            return new ProfileOverride().mergeFrom(input);
        }
    }

    public static final class ProfileInfo extends MessageMicro {
        public static final int PROFILENAME_FIELD_NUMBER = 1;
        private int cachedSize = -1;
        private boolean hasProfileName;
        private String profileName_ = "";

        public String getProfileName() {
            return this.profileName_;
        }

        public boolean hasProfileName() {
            return this.hasProfileName;
        }

        public ProfileInfo setProfileName(String value) {
            this.hasProfileName = true;
            this.profileName_ = value;
            return this;
        }

        public ProfileInfo clearProfileName() {
            this.hasProfileName = false;
            this.profileName_ = "";
            return this;
        }

        public final ProfileInfo clear() {
            clearProfileName();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasProfileName()) {
                output.writeString(1, getProfileName());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasProfileName()) {
                size = CodedOutputStreamMicro.computeStringSize(1, getProfileName()) + 0;
            }
            this.cachedSize = size;
            return size;
        }

        public ProfileInfo mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 10:
                        setProfileName(input.readString());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static ProfileInfo parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (ProfileInfo) new ProfileInfo().mergeFrom(data);
        }

        public static ProfileInfo parseFrom(CodedInputStreamMicro input) throws IOException {
            return new ProfileInfo().mergeFrom(input);
        }
    }

    public static final class NetRequestInfo extends MessageMicro {
        public static final int RAT_FIELD_NUMBER = 1;
        public static final int SLOT_FIELD_NUMBER = 2;
        private int cachedSize = -1;
        private boolean hasRat;
        private boolean hasSlot;
        private int rat_ = 0;
        private int slot_ = 0;

        public boolean hasRat() {
            return this.hasRat;
        }

        public int getRat() {
            return this.rat_;
        }

        public NetRequestInfo setRat(int value) {
            this.hasRat = true;
            this.rat_ = value;
            return this;
        }

        public NetRequestInfo clearRat() {
            this.hasRat = false;
            this.rat_ = 0;
            return this;
        }

        public boolean hasSlot() {
            return this.hasSlot;
        }

        public int getSlot() {
            return this.slot_;
        }

        public NetRequestInfo setSlot(int value) {
            this.hasSlot = true;
            this.slot_ = value;
            return this;
        }

        public NetRequestInfo clearSlot() {
            this.hasSlot = false;
            this.slot_ = 0;
            return this;
        }

        public final NetRequestInfo clear() {
            clearRat();
            clearSlot();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasRat()) {
                output.writeInt32(1, getRat());
            }
            if (hasSlot()) {
                output.writeInt32(2, getSlot());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasRat()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getRat()) + 0;
            }
            if (hasSlot()) {
                size += CodedOutputStreamMicro.computeInt32Size(2, getSlot());
            }
            this.cachedSize = size;
            return size;
        }

        public NetRequestInfo mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setRat(input.readInt32());
                        break;
                    case 16:
                        setSlot(input.readInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static NetRequestInfo parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (NetRequestInfo) new NetRequestInfo().mergeFrom(data);
        }

        public static NetRequestInfo parseFrom(CodedInputStreamMicro input) throws IOException {
            return new NetRequestInfo().mergeFrom(input);
        }
    }

    public static final class NetTypeInfo extends MessageMicro {
        public static final int ERRORCAUSE_FIELD_NUMBER = 5;
        public static final int RAT_FIELD_NUMBER = 1;
        public static final int SLOT_FIELD_NUMBER = 4;
        public static final int SUBTYPEFWD_FIELD_NUMBER = 2;
        public static final int SUBTYPEREV_FIELD_NUMBER = 3;
        private int cachedSize = -1;
        private int errorCause_ = 0;
        private boolean hasErrorCause;
        private boolean hasRat;
        private boolean hasSlot;
        private boolean hasSubtypeFwd;
        private boolean hasSubtypeRev;
        private int rat_ = 0;
        private int slot_ = 0;
        private int subtypeFwd_ = 0;
        private int subtypeRev_ = 0;

        public boolean hasRat() {
            return this.hasRat;
        }

        public int getRat() {
            return this.rat_;
        }

        public NetTypeInfo setRat(int value) {
            this.hasRat = true;
            this.rat_ = value;
            return this;
        }

        public NetTypeInfo clearRat() {
            this.hasRat = false;
            this.rat_ = 0;
            return this;
        }

        public boolean hasSubtypeFwd() {
            return this.hasSubtypeFwd;
        }

        public int getSubtypeFwd() {
            return this.subtypeFwd_;
        }

        public NetTypeInfo setSubtypeFwd(int value) {
            this.hasSubtypeFwd = true;
            this.subtypeFwd_ = value;
            return this;
        }

        public NetTypeInfo clearSubtypeFwd() {
            this.hasSubtypeFwd = false;
            this.subtypeFwd_ = 0;
            return this;
        }

        public boolean hasSubtypeRev() {
            return this.hasSubtypeRev;
        }

        public int getSubtypeRev() {
            return this.subtypeRev_;
        }

        public NetTypeInfo setSubtypeRev(int value) {
            this.hasSubtypeRev = true;
            this.subtypeRev_ = value;
            return this;
        }

        public NetTypeInfo clearSubtypeRev() {
            this.hasSubtypeRev = false;
            this.subtypeRev_ = 0;
            return this;
        }

        public boolean hasSlot() {
            return this.hasSlot;
        }

        public int getSlot() {
            return this.slot_;
        }

        public NetTypeInfo setSlot(int value) {
            this.hasSlot = true;
            this.slot_ = value;
            return this;
        }

        public NetTypeInfo clearSlot() {
            this.hasSlot = false;
            this.slot_ = 0;
            return this;
        }

        public boolean hasErrorCause() {
            return this.hasErrorCause;
        }

        public int getErrorCause() {
            return this.errorCause_;
        }

        public NetTypeInfo setErrorCause(int value) {
            this.hasErrorCause = true;
            this.errorCause_ = value;
            return this;
        }

        public NetTypeInfo clearErrorCause() {
            this.hasErrorCause = false;
            this.errorCause_ = 0;
            return this;
        }

        public final NetTypeInfo clear() {
            clearRat();
            clearSubtypeFwd();
            clearSubtypeRev();
            clearSlot();
            clearErrorCause();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasRat()) {
                output.writeInt32(1, getRat());
            }
            if (hasSubtypeFwd()) {
                output.writeInt32(2, getSubtypeFwd());
            }
            if (hasSubtypeRev()) {
                output.writeInt32(3, getSubtypeRev());
            }
            if (hasSlot()) {
                output.writeInt32(4, getSlot());
            }
            if (hasErrorCause()) {
                output.writeInt32(5, getErrorCause());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasRat()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getRat()) + 0;
            }
            if (hasSubtypeFwd()) {
                size += CodedOutputStreamMicro.computeInt32Size(2, getSubtypeFwd());
            }
            if (hasSubtypeRev()) {
                size += CodedOutputStreamMicro.computeInt32Size(3, getSubtypeRev());
            }
            if (hasSlot()) {
                size += CodedOutputStreamMicro.computeInt32Size(4, getSlot());
            }
            if (hasErrorCause()) {
                size += CodedOutputStreamMicro.computeInt32Size(5, getErrorCause());
            }
            this.cachedSize = size;
            return size;
        }

        public NetTypeInfo mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setRat(input.readInt32());
                        break;
                    case 16:
                        setSubtypeFwd(input.readInt32());
                        break;
                    case Native.NOTIFY_IMS_PROFILE_OVERRIDE_SETTING /*24*/:
                        setSubtypeRev(input.readInt32());
                        break;
                    case ICDClient.FLAG_TPUT_DL_PRESENT:
                        setSlot(input.readInt32());
                        break;
                    case 40:
                        setErrorCause(input.readInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static NetTypeInfo parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (NetTypeInfo) new NetTypeInfo().mergeFrom(data);
        }

        public static NetTypeInfo parseFrom(CodedInputStreamMicro input) throws IOException {
            return new NetTypeInfo().mergeFrom(input);
        }
    }

    public static final class CnoNetcfgInfo extends MessageMicro {
        public static final int IPV4_FIELD_NUMBER = 2;
        public static final int IPV6_FIELD_NUMBER = 3;
        public static final int ISCONNECTED_FIELD_NUMBER = 7;
        public static final int ISDEFAULT_FIELD_NUMBER = 5;
        public static final int MTU_FIELD_NUMBER = 4;
        public static final int NETHDL_FIELD_NUMBER = 6;
        public static final int NETINFO_FIELD_NUMBER = 1;
        public static final int NOTIFY_FIELD_NUMBER = 8;
        private int cachedSize = -1;
        private boolean hasIpv4;
        private boolean hasIpv6;
        private boolean hasIsConnected;
        private boolean hasIsDefault;
        private boolean hasMtu;
        private boolean hasNetHdl;
        private boolean hasNetInfo;
        private boolean hasNotify;
        private String ipv4_ = "";
        private String ipv6_ = "";
        private boolean isConnected_ = false;
        private boolean isDefault_ = false;
        private int mtu_ = 0;
        private long netHdl_ = 0;
        private NetTypeInfo netInfo_ = null;
        private boolean notify_ = false;

        public boolean hasNetInfo() {
            return this.hasNetInfo;
        }

        public NetTypeInfo getNetInfo() {
            return this.netInfo_;
        }

        public CnoNetcfgInfo setNetInfo(NetTypeInfo value) {
            if (value == null) {
                throw new NullPointerException();
            }
            this.hasNetInfo = true;
            this.netInfo_ = value;
            return this;
        }

        public CnoNetcfgInfo clearNetInfo() {
            this.hasNetInfo = false;
            this.netInfo_ = null;
            return this;
        }

        public String getIpv4() {
            return this.ipv4_;
        }

        public boolean hasIpv4() {
            return this.hasIpv4;
        }

        public CnoNetcfgInfo setIpv4(String value) {
            this.hasIpv4 = true;
            this.ipv4_ = value;
            return this;
        }

        public CnoNetcfgInfo clearIpv4() {
            this.hasIpv4 = false;
            this.ipv4_ = "";
            return this;
        }

        public String getIpv6() {
            return this.ipv6_;
        }

        public boolean hasIpv6() {
            return this.hasIpv6;
        }

        public CnoNetcfgInfo setIpv6(String value) {
            this.hasIpv6 = true;
            this.ipv6_ = value;
            return this;
        }

        public CnoNetcfgInfo clearIpv6() {
            this.hasIpv6 = false;
            this.ipv6_ = "";
            return this;
        }

        public int getMtu() {
            return this.mtu_;
        }

        public boolean hasMtu() {
            return this.hasMtu;
        }

        public CnoNetcfgInfo setMtu(int value) {
            this.hasMtu = true;
            this.mtu_ = value;
            return this;
        }

        public CnoNetcfgInfo clearMtu() {
            this.hasMtu = false;
            this.mtu_ = 0;
            return this;
        }

        public boolean getIsDefault() {
            return this.isDefault_;
        }

        public boolean hasIsDefault() {
            return this.hasIsDefault;
        }

        public CnoNetcfgInfo setIsDefault(boolean value) {
            this.hasIsDefault = true;
            this.isDefault_ = value;
            return this;
        }

        public CnoNetcfgInfo clearIsDefault() {
            this.hasIsDefault = false;
            this.isDefault_ = false;
            return this;
        }

        public long getNetHdl() {
            return this.netHdl_;
        }

        public boolean hasNetHdl() {
            return this.hasNetHdl;
        }

        public CnoNetcfgInfo setNetHdl(long value) {
            this.hasNetHdl = true;
            this.netHdl_ = value;
            return this;
        }

        public CnoNetcfgInfo clearNetHdl() {
            this.hasNetHdl = false;
            this.netHdl_ = 0;
            return this;
        }

        public boolean getIsConnected() {
            return this.isConnected_;
        }

        public boolean hasIsConnected() {
            return this.hasIsConnected;
        }

        public CnoNetcfgInfo setIsConnected(boolean value) {
            this.hasIsConnected = true;
            this.isConnected_ = value;
            return this;
        }

        public CnoNetcfgInfo clearIsConnected() {
            this.hasIsConnected = false;
            this.isConnected_ = false;
            return this;
        }

        public boolean getNotify() {
            return this.notify_;
        }

        public boolean hasNotify() {
            return this.hasNotify;
        }

        public CnoNetcfgInfo setNotify(boolean value) {
            this.hasNotify = true;
            this.notify_ = value;
            return this;
        }

        public CnoNetcfgInfo clearNotify() {
            this.hasNotify = false;
            this.notify_ = false;
            return this;
        }

        public final CnoNetcfgInfo clear() {
            clearNetInfo();
            clearIpv4();
            clearIpv6();
            clearMtu();
            clearIsDefault();
            clearNetHdl();
            clearIsConnected();
            clearNotify();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasNetInfo()) {
                output.writeMessage(1, getNetInfo());
            }
            if (hasIpv4()) {
                output.writeString(2, getIpv4());
            }
            if (hasIpv6()) {
                output.writeString(3, getIpv6());
            }
            if (hasMtu()) {
                output.writeUInt32(4, getMtu());
            }
            if (hasIsDefault()) {
                output.writeBool(5, getIsDefault());
            }
            if (hasNetHdl()) {
                output.writeUInt64(6, getNetHdl());
            }
            if (hasIsConnected()) {
                output.writeBool(7, getIsConnected());
            }
            if (hasNotify()) {
                output.writeBool(8, getNotify());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasNetInfo()) {
                size = CodedOutputStreamMicro.computeMessageSize(1, getNetInfo()) + 0;
            }
            if (hasIpv4()) {
                size += CodedOutputStreamMicro.computeStringSize(2, getIpv4());
            }
            if (hasIpv6()) {
                size += CodedOutputStreamMicro.computeStringSize(3, getIpv6());
            }
            if (hasMtu()) {
                size += CodedOutputStreamMicro.computeUInt32Size(4, getMtu());
            }
            if (hasIsDefault()) {
                size += CodedOutputStreamMicro.computeBoolSize(5, getIsDefault());
            }
            if (hasNetHdl()) {
                size += CodedOutputStreamMicro.computeUInt64Size(6, getNetHdl());
            }
            if (hasIsConnected()) {
                size += CodedOutputStreamMicro.computeBoolSize(7, getIsConnected());
            }
            if (hasNotify()) {
                size += CodedOutputStreamMicro.computeBoolSize(8, getNotify());
            }
            this.cachedSize = size;
            return size;
        }

        public CnoNetcfgInfo mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 10:
                        NetTypeInfo value = new NetTypeInfo();
                        input.readMessage(value);
                        setNetInfo(value);
                        break;
                    case 18:
                        setIpv4(input.readString());
                        break;
                    case 26:
                        setIpv6(input.readString());
                        break;
                    case ICDClient.FLAG_TPUT_DL_PRESENT:
                        setMtu(input.readUInt32());
                        break;
                    case 40:
                        setIsDefault(input.readBool());
                        break;
                    case 48:
                        setNetHdl(input.readUInt64());
                        break;
                    case 56:
                        setIsConnected(input.readBool());
                        break;
                    case ICDClient.FLAG_TPUT_SDEV_PRESENT:
                        setNotify(input.readBool());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static CnoNetcfgInfo parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (CnoNetcfgInfo) new CnoNetcfgInfo().mergeFrom(data);
        }

        public static CnoNetcfgInfo parseFrom(CodedInputStreamMicro input) throws IOException {
            return new CnoNetcfgInfo().mergeFrom(input);
        }
    }

    public static final class WqeResultInfo extends MessageMicro {
        public static final int REASON_FIELD_NUMBER = 2;
        public static final int WLANQUALITY_FIELD_NUMBER = 1;
        private int cachedSize = -1;
        private boolean hasReason;
        private boolean hasWlanquality;
        private int reason_ = 0;
        private int wlanquality_ = 0;

        public boolean hasWlanquality() {
            return this.hasWlanquality;
        }

        public int getWlanquality() {
            return this.wlanquality_;
        }

        public WqeResultInfo setWlanquality(int value) {
            this.hasWlanquality = true;
            this.wlanquality_ = value;
            return this;
        }

        public WqeResultInfo clearWlanquality() {
            this.hasWlanquality = false;
            this.wlanquality_ = 0;
            return this;
        }

        public boolean hasReason() {
            return this.hasReason;
        }

        public int getReason() {
            return this.reason_;
        }

        public WqeResultInfo setReason(int value) {
            this.hasReason = true;
            this.reason_ = value;
            return this;
        }

        public WqeResultInfo clearReason() {
            this.hasReason = false;
            this.reason_ = 0;
            return this;
        }

        public final WqeResultInfo clear() {
            clearWlanquality();
            clearReason();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasWlanquality()) {
                output.writeInt32(1, getWlanquality());
            }
            if (hasReason()) {
                output.writeInt32(2, getReason());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasWlanquality()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getWlanquality()) + 0;
            }
            if (hasReason()) {
                size += CodedOutputStreamMicro.computeInt32Size(2, getReason());
            }
            this.cachedSize = size;
            return size;
        }

        public WqeResultInfo mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setWlanquality(input.readInt32());
                        break;
                    case 16:
                        setReason(input.readInt32());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static WqeResultInfo parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (WqeResultInfo) new WqeResultInfo().mergeFrom(data);
        }

        public static WqeResultInfo parseFrom(CodedInputStreamMicro input) throws IOException {
            return new WqeResultInfo().mergeFrom(input);
        }
    }

    public static final class WlanNetConfigInfo extends MessageMicro {
        public static final int BSSID_FIELD_NUMBER = 3;
        public static final int IP4DNS_FIELD_NUMBER = 5;
        public static final int IP6DNS_FIELD_NUMBER = 6;
        public static final int NC_FIELD_NUMBER = 2;
        public static final int PROFILE_FIELD_NUMBER = 1;
        public static final int SSID_FIELD_NUMBER = 4;
        public static final int STATE_FIELD_NUMBER = 7;
        public static final int WQERESULT_FIELD_NUMBER = 8;
        private String bssid_ = "";
        private int cachedSize = -1;
        private boolean hasBssid;
        private boolean hasNc;
        private boolean hasProfile;
        private boolean hasSsid;
        private boolean hasState;
        private boolean hasWqeresult;
        private List<String> ip4Dns_ = Collections.emptyList();
        private List<String> ip6Dns_ = Collections.emptyList();
        private CnoNetcfgInfo nc_ = null;
        private String profile_ = "";
        private String ssid_ = "";
        private int state_ = 0;
        private WqeResultInfo wqeresult_ = null;

        public String getProfile() {
            return this.profile_;
        }

        public boolean hasProfile() {
            return this.hasProfile;
        }

        public WlanNetConfigInfo setProfile(String value) {
            this.hasProfile = true;
            this.profile_ = value;
            return this;
        }

        public WlanNetConfigInfo clearProfile() {
            this.hasProfile = false;
            this.profile_ = "";
            return this;
        }

        public boolean hasNc() {
            return this.hasNc;
        }

        public CnoNetcfgInfo getNc() {
            return this.nc_;
        }

        public WlanNetConfigInfo setNc(CnoNetcfgInfo value) {
            if (value == null) {
                throw new NullPointerException();
            }
            this.hasNc = true;
            this.nc_ = value;
            return this;
        }

        public WlanNetConfigInfo clearNc() {
            this.hasNc = false;
            this.nc_ = null;
            return this;
        }

        public String getBssid() {
            return this.bssid_;
        }

        public boolean hasBssid() {
            return this.hasBssid;
        }

        public WlanNetConfigInfo setBssid(String value) {
            this.hasBssid = true;
            this.bssid_ = value;
            return this;
        }

        public WlanNetConfigInfo clearBssid() {
            this.hasBssid = false;
            this.bssid_ = "";
            return this;
        }

        public String getSsid() {
            return this.ssid_;
        }

        public boolean hasSsid() {
            return this.hasSsid;
        }

        public WlanNetConfigInfo setSsid(String value) {
            this.hasSsid = true;
            this.ssid_ = value;
            return this;
        }

        public WlanNetConfigInfo clearSsid() {
            this.hasSsid = false;
            this.ssid_ = "";
            return this;
        }

        public List<String> getIp4DnsList() {
            return this.ip4Dns_;
        }

        public int getIp4DnsCount() {
            return this.ip4Dns_.size();
        }

        public String getIp4Dns(int index) {
            return this.ip4Dns_.get(index);
        }

        public WlanNetConfigInfo setIp4Dns(int index, String value) {
            if (value == null) {
                throw new NullPointerException();
            }
            this.ip4Dns_.set(index, value);
            return this;
        }

        public WlanNetConfigInfo addIp4Dns(String value) {
            if (value == null) {
                throw new NullPointerException();
            }
            if (this.ip4Dns_.isEmpty()) {
                this.ip4Dns_ = new ArrayList();
            }
            this.ip4Dns_.add(value);
            return this;
        }

        public WlanNetConfigInfo clearIp4Dns() {
            this.ip4Dns_ = Collections.emptyList();
            return this;
        }

        public List<String> getIp6DnsList() {
            return this.ip6Dns_;
        }

        public int getIp6DnsCount() {
            return this.ip6Dns_.size();
        }

        public String getIp6Dns(int index) {
            return this.ip6Dns_.get(index);
        }

        public WlanNetConfigInfo setIp6Dns(int index, String value) {
            if (value == null) {
                throw new NullPointerException();
            }
            this.ip6Dns_.set(index, value);
            return this;
        }

        public WlanNetConfigInfo addIp6Dns(String value) {
            if (value == null) {
                throw new NullPointerException();
            }
            if (this.ip6Dns_.isEmpty()) {
                this.ip6Dns_ = new ArrayList();
            }
            this.ip6Dns_.add(value);
            return this;
        }

        public WlanNetConfigInfo clearIp6Dns() {
            this.ip6Dns_ = Collections.emptyList();
            return this;
        }

        public int getState() {
            return this.state_;
        }

        public boolean hasState() {
            return this.hasState;
        }

        public WlanNetConfigInfo setState(int value) {
            this.hasState = true;
            this.state_ = value;
            return this;
        }

        public WlanNetConfigInfo clearState() {
            this.hasState = false;
            this.state_ = 0;
            return this;
        }

        public boolean hasWqeresult() {
            return this.hasWqeresult;
        }

        public WqeResultInfo getWqeresult() {
            return this.wqeresult_;
        }

        public WlanNetConfigInfo setWqeresult(WqeResultInfo value) {
            if (value == null) {
                throw new NullPointerException();
            }
            this.hasWqeresult = true;
            this.wqeresult_ = value;
            return this;
        }

        public WlanNetConfigInfo clearWqeresult() {
            this.hasWqeresult = false;
            this.wqeresult_ = null;
            return this;
        }

        public final WlanNetConfigInfo clear() {
            clearProfile();
            clearNc();
            clearBssid();
            clearSsid();
            clearIp4Dns();
            clearIp6Dns();
            clearState();
            clearWqeresult();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasProfile()) {
                output.writeString(1, getProfile());
            }
            if (hasNc()) {
                output.writeMessage(2, getNc());
            }
            if (hasBssid()) {
                output.writeString(3, getBssid());
            }
            if (hasSsid()) {
                output.writeString(4, getSsid());
            }
            for (String element : getIp4DnsList()) {
                output.writeString(5, element);
            }
            for (String element2 : getIp6DnsList()) {
                output.writeString(6, element2);
            }
            if (hasState()) {
                output.writeInt32(7, getState());
            }
            if (hasWqeresult()) {
                output.writeMessage(8, getWqeresult());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasProfile()) {
                size = CodedOutputStreamMicro.computeStringSize(1, getProfile()) + 0;
            }
            if (hasNc()) {
                size += CodedOutputStreamMicro.computeMessageSize(2, getNc());
            }
            if (hasBssid()) {
                size += CodedOutputStreamMicro.computeStringSize(3, getBssid());
            }
            if (hasSsid()) {
                size += CodedOutputStreamMicro.computeStringSize(4, getSsid());
            }
            int dataSize = 0;
            for (String element : getIp4DnsList()) {
                dataSize += CodedOutputStreamMicro.computeStringSizeNoTag(element);
            }
            int size2 = size + dataSize + (getIp4DnsList().size() * 1);
            int dataSize2 = 0;
            for (String element2 : getIp6DnsList()) {
                dataSize2 += CodedOutputStreamMicro.computeStringSizeNoTag(element2);
            }
            int size3 = size2 + dataSize2 + (getIp6DnsList().size() * 1);
            if (hasState()) {
                size3 += CodedOutputStreamMicro.computeInt32Size(7, getState());
            }
            if (hasWqeresult()) {
                size3 += CodedOutputStreamMicro.computeMessageSize(8, getWqeresult());
            }
            this.cachedSize = size3;
            return size3;
        }

        public WlanNetConfigInfo mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 10:
                        setProfile(input.readString());
                        break;
                    case 18:
                        CnoNetcfgInfo value = new CnoNetcfgInfo();
                        input.readMessage(value);
                        setNc(value);
                        break;
                    case 26:
                        setBssid(input.readString());
                        break;
                    case 34:
                        setSsid(input.readString());
                        break;
                    case 42:
                        addIp4Dns(input.readString());
                        break;
                    case 50:
                        addIp6Dns(input.readString());
                        break;
                    case 56:
                        setState(input.readInt32());
                        break;
                    case 66:
                        WqeResultInfo value2 = new WqeResultInfo();
                        input.readMessage(value2);
                        setWqeresult(value2);
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static WlanNetConfigInfo parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (WlanNetConfigInfo) new WlanNetConfigInfo().mergeFrom(data);
        }

        public static WlanNetConfigInfo parseFrom(CodedInputStreamMicro input) throws IOException {
            return new WlanNetConfigInfo().mergeFrom(input);
        }
    }

    public static final class WwanNetConfigInfo extends MessageMicro {
        public static final int NC_FIELD_NUMBER = 1;
        private int cachedSize = -1;
        private boolean hasNc;
        private CnoNetcfgInfo nc_ = null;

        public boolean hasNc() {
            return this.hasNc;
        }

        public CnoNetcfgInfo getNc() {
            return this.nc_;
        }

        public WwanNetConfigInfo setNc(CnoNetcfgInfo value) {
            if (value == null) {
                throw new NullPointerException();
            }
            this.hasNc = true;
            this.nc_ = value;
            return this;
        }

        public WwanNetConfigInfo clearNc() {
            this.hasNc = false;
            this.nc_ = null;
            return this;
        }

        public final WwanNetConfigInfo clear() {
            clearNc();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasNc()) {
                output.writeMessage(1, getNc());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasNc()) {
                size = CodedOutputStreamMicro.computeMessageSize(1, getNc()) + 0;
            }
            this.cachedSize = size;
            return size;
        }

        public WwanNetConfigInfo mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 10:
                        CnoNetcfgInfo value = new CnoNetcfgInfo();
                        input.readMessage(value);
                        setNc(value);
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static WwanNetConfigInfo parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (WwanNetConfigInfo) new WwanNetConfigInfo().mergeFrom(data);
        }

        public static WwanNetConfigInfo parseFrom(CodedInputStreamMicro input) throws IOException {
            return new WwanNetConfigInfo().mergeFrom(input);
        }
    }

    public static final class CasFeatureInfo extends MessageMicro {
        public static final int FEATUREID_FIELD_NUMBER = 1;
        public static final int FEATURESTATUS_FIELD_NUMBER = 2;
        public static final int NOTIFY_FIELD_NUMBER = 3;
        private int cachedSize = -1;
        private int featureId_ = 1;
        private int featureStatus_ = 1;
        private boolean hasFeatureId;
        private boolean hasFeatureStatus;
        private boolean hasNotify;
        private boolean notify_ = false;

        public boolean hasFeatureId() {
            return this.hasFeatureId;
        }

        public int getFeatureId() {
            return this.featureId_;
        }

        public CasFeatureInfo setFeatureId(int value) {
            this.hasFeatureId = true;
            this.featureId_ = value;
            return this;
        }

        public CasFeatureInfo clearFeatureId() {
            this.hasFeatureId = false;
            this.featureId_ = 1;
            return this;
        }

        public boolean hasFeatureStatus() {
            return this.hasFeatureStatus;
        }

        public int getFeatureStatus() {
            return this.featureStatus_;
        }

        public CasFeatureInfo setFeatureStatus(int value) {
            this.hasFeatureStatus = true;
            this.featureStatus_ = value;
            return this;
        }

        public CasFeatureInfo clearFeatureStatus() {
            this.hasFeatureStatus = false;
            this.featureStatus_ = 1;
            return this;
        }

        public boolean getNotify() {
            return this.notify_;
        }

        public boolean hasNotify() {
            return this.hasNotify;
        }

        public CasFeatureInfo setNotify(boolean value) {
            this.hasNotify = true;
            this.notify_ = value;
            return this;
        }

        public CasFeatureInfo clearNotify() {
            this.hasNotify = false;
            this.notify_ = false;
            return this;
        }

        public final CasFeatureInfo clear() {
            clearFeatureId();
            clearFeatureStatus();
            clearNotify();
            this.cachedSize = -1;
            return this;
        }

        public final boolean isInitialized() {
            return true;
        }

        public void writeTo(CodedOutputStreamMicro output) throws IOException {
            if (hasFeatureId()) {
                output.writeInt32(1, getFeatureId());
            }
            if (hasFeatureStatus()) {
                output.writeInt32(2, getFeatureStatus());
            }
            if (hasNotify()) {
                output.writeBool(3, getNotify());
            }
        }

        public int getCachedSize() {
            if (this.cachedSize < 0) {
                getSerializedSize();
            }
            return this.cachedSize;
        }

        public int getSerializedSize() {
            int size = 0;
            if (hasFeatureId()) {
                size = CodedOutputStreamMicro.computeInt32Size(1, getFeatureId()) + 0;
            }
            if (hasFeatureStatus()) {
                size += CodedOutputStreamMicro.computeInt32Size(2, getFeatureStatus());
            }
            if (hasNotify()) {
                size += CodedOutputStreamMicro.computeBoolSize(3, getNotify());
            }
            this.cachedSize = size;
            return size;
        }

        public CasFeatureInfo mergeFrom(CodedInputStreamMicro input) throws IOException {
            while (true) {
                int tag = input.readTag();
                switch (tag) {
                    case 0:
                        return this;
                    case 8:
                        setFeatureId(input.readInt32());
                        break;
                    case 16:
                        setFeatureStatus(input.readInt32());
                        break;
                    case Native.NOTIFY_IMS_PROFILE_OVERRIDE_SETTING /*24*/:
                        setNotify(input.readBool());
                        break;
                    default:
                        if (parseUnknownField(input, tag)) {
                            break;
                        } else {
                            return this;
                        }
                }
            }
        }

        public static CasFeatureInfo parseFrom(byte[] data) throws InvalidProtocolBufferMicroException {
            return (CasFeatureInfo) new CasFeatureInfo().mergeFrom(data);
        }

        public static CasFeatureInfo parseFrom(CodedInputStreamMicro input) throws IOException {
            return new CasFeatureInfo().mergeFrom(input);
        }
    }
}
