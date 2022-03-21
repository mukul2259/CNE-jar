package com.quicinc.cne;

import com.google.protobuf.micro.ByteStringMicro;
import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.quicinc.cne.CNE;
import com.quicinc.cne.Native;
import java.util.List;

public class ProtoMsgParser {
    private static final String SUB_TYPE = "PB_MSG";

    public static Native.NetRequest parseNetRequest(byte[] data) {
        if (data == null) {
            return null;
        }
        try {
            Native.NetRequest p = Native.NetRequest.parseFrom(data);
            if (!p.hasRattype() || !p.hasSlottype()) {
                CneMsg.loge(SUB_TYPE, "protobuf: missing at least one field.");
                return null;
            }
            CneMsg.logi(SUB_TYPE, "NetRequest: rat = " + p.getRattype() + " slot = " + p.getSlottype());
            return p;
        } catch (InvalidProtocolBufferMicroException e) {
            CneMsg.loge(SUB_TYPE, "parsing protobuf msg exception");
            CneMsg.logData(data, data.length, "RECV");
            return null;
        }
    }

    public static Native.DisallowedAP parseDisallowedAP(byte[] data) {
        if (data == null) {
            return null;
        }
        try {
            Native.DisallowedAP p = Native.DisallowedAP.parseFrom(data);
            if (!p.hasDisallowed() || !p.hasReason() || !p.hasBssid()) {
                CneMsg.loge(SUB_TYPE, "protobuf: missing at least one field.");
                return null;
            }
            CneMsg.logi(SUB_TYPE, "DisallowedAP: disallowed = " + p.getDisallowed() + " reason = " + p.getReason() + " bssid = " + p.getBssid());
            return p;
        } catch (InvalidProtocolBufferMicroException e) {
            CneMsg.loge(SUB_TYPE, "parsing protobuf msg exception");
            CneMsg.logData(data, data.length, "RECV");
            return null;
        }
    }

    public static Native.BqeActiveProbeMsg parseBqeActiveProbe(byte[] data) {
        if (data == null) {
            return null;
        }
        try {
            Native.BqeActiveProbeMsg p = Native.BqeActiveProbeMsg.parseFrom(data);
            if (!p.hasBssid() || !p.hasUri() || !p.hasHttpuri() || !p.hasFileSize()) {
                CneMsg.loge(SUB_TYPE, "protobuf: missing at least one field.");
                return null;
            }
            CneMsg.logi(SUB_TYPE, "BqeActiveProbeMsg:  bssid = " + p.getBssid() + " uri = " + p.getUri() + " httpuri = " + p.getHttpuri() + " fileSize = " + p.getFileSize());
            return p;
        } catch (InvalidProtocolBufferMicroException e) {
            CneMsg.loge(SUB_TYPE, "parsing protobuf msg exception");
            CneMsg.logData(data, data.length, "RECV");
            return null;
        }
    }

    public static Native.SetDefaultRouteMsg parseDefaultRoute(byte[] data) {
        if (data == null) {
            return null;
        }
        try {
            Native.SetDefaultRouteMsg p = Native.SetDefaultRouteMsg.parseFrom(data);
            if (!p.hasRattype()) {
                CneMsg.loge(SUB_TYPE, "protobuf: missing at least one field.");
                return null;
            }
            CneMsg.logi(SUB_TYPE, "SetDefaultRouteMsg: rat = " + p.getRattype());
            return p;
        } catch (InvalidProtocolBufferMicroException e) {
            CneMsg.rlog(SUB_TYPE, "parsing protobuf msg exception");
            CneMsg.logData(data, data.length, "RECV");
            return null;
        }
    }

    public static Native.IcdStartMsg parseIcdStartMsg(byte[] data) {
        if (data == null) {
            return null;
        }
        try {
            Native.IcdStartMsg p = Native.IcdStartMsg.parseFrom(data);
            if (!p.hasUri() || !p.hasHttpuri() || !p.hasBssid() || !p.hasTimeout() || !p.hasTid()) {
                CneMsg.loge(SUB_TYPE, "protobuf: missing at least one field.");
                return null;
            }
            CneMsg.logi(SUB_TYPE, "IcdStartMsg: uri = " + p.getUri() + " httpuri = " + p.getHttpuri() + " bssid = " + p.getBssid() + " timeout = " + p.getTimeout() + " tid = " + p.getTid());
            return p;
        } catch (InvalidProtocolBufferMicroException e) {
            CneMsg.rlog(SUB_TYPE, "parsing protobuf msg exception");
            CneMsg.logData(data, data.length, "RECV");
            return null;
        }
    }

    public static Native.BqePostParamsMsg parseBqePostParam(byte[] data) {
        if (data == null) {
            return null;
        }
        try {
            Native.BqePostParamsMsg p = Native.BqePostParamsMsg.parseFrom(data);
            if (!p.hasBssid() || !p.hasUri() || !p.hasTputKiloBitsPerSec() || !p.hasTimeStampSec()) {
                CneMsg.loge(SUB_TYPE, "protobuf: missing at least one field.");
                return null;
            }
            CneMsg.logi(SUB_TYPE, "BqePostParamsMsg:  bssid = " + p.getBssid() + " uri = " + p.getUri() + " tputKiloBitsPerSec = " + p.getTputKiloBitsPerSec() + " timeStampSec = " + p.getTimeStampSec());
            return p;
        } catch (InvalidProtocolBufferMicroException e) {
            CneMsg.rlog(SUB_TYPE, "parsing protobuf msg exception");
            CneMsg.logData(data, data.length, "RECV");
            return null;
        }
    }

    public static Native.FeatureInfo parseFeatureInfo(byte[] data) {
        if (data == null) {
            return null;
        }
        try {
            Native.FeatureInfo p = Native.FeatureInfo.parseFrom(data);
            if (!p.hasFeatureId() || !p.hasFeatureStatus()) {
                CneMsg.loge(SUB_TYPE, "protobuf: missing at least one field.");
                return null;
            }
            CneMsg.logi(SUB_TYPE, "FeatureInfo:  featureId = " + p.getFeatureId() + " featureStatus = " + p.getFeatureStatus());
            return p;
        } catch (InvalidProtocolBufferMicroException e) {
            CneMsg.rlog(SUB_TYPE, "parsing protobuf msg exception");
            CneMsg.logData(data, data.length, "RECV");
            return null;
        }
    }

    public static Native.FeatureRespMsg parseFeatureResp(byte[] data) {
        if (data == null) {
            return null;
        }
        try {
            Native.FeatureRespMsg p = Native.FeatureRespMsg.parseFrom(data);
            if (!p.hasFeatureType() || !p.hasFeatureStatus() || !p.hasResult()) {
                CneMsg.loge(SUB_TYPE, "protobuf: missing at least one field.");
                return null;
            }
            CneMsg.logi(SUB_TYPE, "FeatureRespMsg:  featureId = " + p.getFeatureType() + " featureStatus = " + p.getFeatureStatus() + " result = " + p.getResult());
            return p;
        } catch (InvalidProtocolBufferMicroException e) {
            CneMsg.rlog(SUB_TYPE, "parsing protobuf msg exception");
            CneMsg.logData(data, data.length, "RECV");
            return null;
        }
    }

    public static Native.PolicyUpdateRespMsg parsePolicyUpdateResp(byte[] data) {
        if (data == null) {
            return null;
        }
        try {
            Native.PolicyUpdateRespMsg p = Native.PolicyUpdateRespMsg.parseFrom(data);
            if (!p.hasPolicy() || !p.hasResult()) {
                CneMsg.loge(SUB_TYPE, "protobuf: missing at least one field.");
                return null;
            }
            CneMsg.logi(SUB_TYPE, "PolicyUpdateRespMsg:  policy = " + p.getPolicy() + " result = " + p.getResult());
            return p;
        } catch (InvalidProtocolBufferMicroException e) {
            CneMsg.rlog(SUB_TYPE, "parsing protobuf msg exception");
            CneMsg.logData(data, data.length, "RECV");
            return null;
        }
    }

    public static Native.NatKeepAliveRequestMsg parseNatKA(byte[] data) {
        if (data == null) {
            return null;
        }
        try {
            Native.NatKeepAliveRequestMsg p = Native.NatKeepAliveRequestMsg.parseFrom(data);
            if (!p.hasTimer() || !p.hasSrcPort() || !p.hasDestPort() || !p.hasDestIp()) {
                CneMsg.loge(SUB_TYPE, "protobuf: missing at least one field.");
                return null;
            }
            CneMsg.logi(SUB_TYPE, "NatKeepAliveRequestMsg:  timer = " + p.getTimer() + " srcPort = " + p.getSrcPort() + " destPort = " + p.getDestPort() + " destIp = " + p.getDestIp());
            return p;
        } catch (InvalidProtocolBufferMicroException e) {
            CneMsg.rlog(SUB_TYPE, "parsing protobuf msg exception");
            CneMsg.logData(data, data.length, "RECV");
            return null;
        }
    }

    public static Native.RssiOffloadMsg parseRssiOffload(byte[] data) {
        if (data == null) {
            return null;
        }
        try {
            Native.RssiOffloadMsg p = Native.RssiOffloadMsg.parseFrom(data);
            if (!p.hasProfileName() || !p.hasOperatorName() || !p.hasRssiHigh() || !p.hasRssiLow()) {
                CneMsg.loge(SUB_TYPE, "protobuf: missing at least one field.");
                return null;
            }
            CneMsg.logi(SUB_TYPE, "RssiOffloadMsg:  profileName = " + p.getProfileName() + " operatorName = " + p.getOperatorName() + " rssiHigh = " + p.getRssiHigh() + " rssiLow = " + p.getRssiLow());
            return p;
        } catch (InvalidProtocolBufferMicroException e) {
            CneMsg.rlog(SUB_TYPE, "parsing protobuf msg exception");
            CneMsg.logData(data, data.length, "RECV");
            return null;
        }
    }

    public static CNERequest createSubRatRequest(int subRat) {
        Native.WwanSubtypeInfo wwanSubtypeInfo = new Native.WwanSubtypeInfo();
        wwanSubtypeInfo.setSubtype(subRat);
        CneMsg.logi(SUB_TYPE, "****encoding**** --> Subtype: " + wwanSubtypeInfo.getSubtype());
        return encodeData(9, wwanSubtypeInfo.toByteArray());
    }

    public static CNERequest createRequestQuotaInfo(boolean isReached) {
        int res = isReached ? 1 : 0;
        Native.QuotaInfo quotaInfo = new Native.QuotaInfo();
        quotaInfo.setIsQuotaReached(res);
        CneMsg.logi(SUB_TYPE, "****encoding**** --> isQuotaReached: " + quotaInfo.getIsQuotaReached() + " (1 reached, 0 not reached) ");
        return encodeData(21, quotaInfo.toByteArray());
    }

    public static CNERequest createRequestFeature(int featureId, int newValue) {
        Native.FeatureInfo featureInfo = new Native.FeatureInfo();
        featureInfo.setFeatureId(featureId);
        featureInfo.setFeatureStatus(newValue);
        CneMsg.logi(SUB_TYPE, "****encoding**** --> requestFeatureSettingsChange: feature id: " + featureInfo.getFeatureId() + " new value: " + featureInfo.getFeatureStatus());
        return encodeData(14, featureInfo.toByteArray());
    }

    public static CNERequest createRequestFeatureSettings(int featureId) {
        Native.FeatureInfo featureInfo = new Native.FeatureInfo();
        featureInfo.setFeatureId(featureId);
        featureInfo.setFeatureStatus(65535);
        CneMsg.logi(SUB_TYPE, "****encoding**** --> requestFeatureSettings: featureId: " + featureInfo.getFeatureId());
        return encodeData(13, featureInfo.toByteArray());
    }

    public static CNERequest createRequestAndsf() {
        return encodeData(19);
    }

    public static CNERequest createRequestDfNw(int defNw) {
        Native.DefaultNetwork defaultNetwork = new Native.DefaultNetwork();
        defaultNetwork.setNetwork(NetworkTypetoCneRatType(defNw));
        CneMsg.logi(SUB_TYPE, "****encoding**** --> sendDefaultNwMsg: default = " + defaultNetwork.getNetwork());
        return encodeData(5, defaultNetwork.toByteArray());
    }

    public static CNERequest createRequest(int type, int status, String ipV4Addr, String ipV6Addr) {
        Native.RatStatus ratStatus = new Native.RatStatus();
        ratStatus.setRat(type);
        ratStatus.setRatStatus(status);
        ratStatus.setIpAddr(ipV4Addr);
        ratStatus.setIpAddrV6(ipV6Addr);
        CneMsg.logi(SUB_TYPE, "****encoding**** --> notifyRatConnectStatus ratType=" + ratStatus.getRat() + " status=" + ratStatus.getRatStatus() + " ipV4Addr=" + ratStatus.getIpAddr() + " ipV6Addr=" + ratStatus.getIpAddrV6());
        return encodeData(4, ratStatus.toByteArray());
    }

    public static CNERequest createRequestMobileData(boolean enabled) {
        Native.PbMobileDataState mobileDataState = new Native.PbMobileDataState();
        mobileDataState.setIsEnabled(enabled ? 1 : 0);
        CneMsg.logi(SUB_TYPE, "****encoding**** --> notifyMobileDataEnabled = " + mobileDataState.getIsEnabled());
        return encodeData(10, mobileDataState.toByteArray());
    }

    public static CNERequest createRequest(int familyType, boolean isAndroidValidated) {
        Native.WlanFamType wlanFam = new Native.WlanFamType();
        wlanFam.setFamily(familyType);
        wlanFam.setIsAndroidValidated(isAndroidValidated);
        CneMsg.logi(SUB_TYPE, "****encoding**** --> notifyWlanConnectivityUp familyType =  " + wlanFam.getFamily() + " , isAndroidValidated = " + wlanFam.getIsAndroidValidated());
        return encodeData(12, wlanFam.toByteArray());
    }

    public static CNERequest createRequestWifiAp(int currState, int prevState) {
        Native.WifiApInfo wifiApInfo = new Native.WifiApInfo();
        wifiApInfo.setCurrState(currState);
        wifiApInfo.setPrevState(prevState);
        CneMsg.logi(SUB_TYPE, "****encoding**** --> sendWifiApInfo- curstate " + wifiApInfo.getCurrState() + "prevState " + wifiApInfo.getPrevState());
        return encodeData(22, wifiApInfo.toByteArray());
    }

    public static CNERequest createRequestWifiP2p(int currState) {
        Native.WifiP2pInfo wifiP2pInfo = new Native.WifiP2pInfo();
        wifiP2pInfo.setCurrState(currState);
        byte[] data = wifiP2pInfo.toByteArray();
        CneMsg.logi(SUB_TYPE, "****encoding**** --> sendWifiP2pInfo - currstate: " + wifiP2pInfo.getCurrState());
        return encodeData(23, data);
    }

    public static CNERequest createRequest(CNE.CneWifiInfo _cneWifiInfo) {
        Native.RatInfo ratInfo = new Native.RatInfo();
        ratInfo.setNetType(_cneWifiInfo.getNetworkType());
        ratInfo.setSubType(_cneWifiInfo.getSubType());
        ratInfo.setNetworkState(_cneWifiInfo.getNetworkState());
        ratInfo.setIpAddr(_cneWifiInfo.getIPv4Address());
        ratInfo.setIpAddrV6(_cneWifiInfo.getIPv6Address());
        ratInfo.setIface(_cneWifiInfo.getIPv4Iface());
        ratInfo.setIfaceV6(_cneWifiInfo.getIPv6Iface());
        ratInfo.setTimeStamp(_cneWifiInfo.getTimestamp());
        ratInfo.setIsAndroidValidated(_cneWifiInfo.getAndroidValidated());
        ratInfo.setNetHdl(_cneWifiInfo.getNetHandle());
        Native.WlanInfo cneWlanInfo = new Native.WlanInfo();
        cneWlanInfo.setRatInfo(ratInfo);
        cneWlanInfo.setWifiState(_cneWifiInfo.wifiState);
        cneWlanInfo.setRssi(_cneWifiInfo.rssi);
        cneWlanInfo.setFreqBand(_cneWifiInfo.freqBand.ordinal());
        cneWlanInfo.setSsid(_cneWifiInfo.ssid);
        cneWlanInfo.setBssid(_cneWifiInfo.bssid);
        for (int i = 0; i < 4; i++) {
            cneWlanInfo.addDnsInfo(_cneWifiInfo.dnsInfo[i]);
        }
        List<String> dnsInfo = cneWlanInfo.getDnsInfoList();
        String dnsAddrs = new String(" ");
        for (String dnsStr : dnsInfo) {
            dnsAddrs = dnsAddrs + dnsStr + ", ";
        }
        CneMsg.logi(SUB_TYPE, "sendWifiStatus - subType: " + cneWlanInfo.getRatInfo().getSubType() + " networkState: " + cneWlanInfo.getRatInfo().getNetworkState() + " wifiState: " + cneWlanInfo.getWifiState() + " rssi=" + cneWlanInfo.getRssi() + " freqBand = " + _cneWifiInfo.freqBand + " ssid=" + cneWlanInfo.getSsid() + " bssid=" + cneWlanInfo.getBssid() + " ipV4Addr=" + cneWlanInfo.getRatInfo().getIpAddr() + " ifNameV4=" + cneWlanInfo.getRatInfo().getIface() + " ipAddrV6=" + cneWlanInfo.getRatInfo().getIpAddrV6() + " ifNameV6=" + cneWlanInfo.getRatInfo().getIfaceV6() + " timeStamp:" + cneWlanInfo.getRatInfo().getTimeStamp() + " net handle=" + String.valueOf(cneWlanInfo.getRatInfo().getNetHdl()) + " isAndroidValidated = " + cneWlanInfo.getRatInfo().getIsAndroidValidated() + " DNS addrs=" + dnsAddrs);
        return encodeData(2, cneWlanInfo.toByteArray());
    }

    public static CNERequest createRequest(CNE.CneWwanInfo _cneWwanInfo) {
        Native.RatInfo ratInfo = new Native.RatInfo();
        ratInfo.setNetType(_cneWwanInfo.getNetworkType());
        ratInfo.setSubType(_cneWwanInfo.getSubType());
        ratInfo.setNetworkState(_cneWwanInfo.getNetworkState());
        ratInfo.setIpAddr(_cneWwanInfo.getIPv4Address());
        ratInfo.setIpAddrV6(_cneWwanInfo.getIPv6Address());
        ratInfo.setIface(_cneWwanInfo.getIPv4Iface());
        ratInfo.setIfaceV6(_cneWwanInfo.getIPv6Iface());
        ratInfo.setTimeStamp(_cneWwanInfo.getTimestamp());
        ratInfo.setIsAndroidValidated(_cneWwanInfo.getAndroidValidated());
        ratInfo.setNetHdl(_cneWwanInfo.getNetHandle());
        Native.WwanInfo cneWwanInfo = new Native.WwanInfo();
        cneWwanInfo.setRatInfo(ratInfo);
        cneWwanInfo.setSignalStrength(_cneWwanInfo.signalStrength);
        cneWwanInfo.setRoaming(_cneWwanInfo.roaming);
        cneWwanInfo.setMccMnc(_cneWwanInfo.mccMnc);
        CneMsg.logi(SUB_TYPE, "sendWwanStatus type=" + cneWwanInfo.getRatInfo().getSubType() + " state=" + cneWwanInfo.getRatInfo().getNetworkState() + " strength=" + cneWwanInfo.getSignalStrength() + " roaming=" + cneWwanInfo.getRoaming() + " ipV4Addr=" + cneWwanInfo.getRatInfo().getIpAddr() + " ifNameV4=" + cneWwanInfo.getRatInfo().getIface() + " ipV6Addr=" + cneWwanInfo.getRatInfo().getIpAddrV6() + " ifNameV6=" + cneWwanInfo.getRatInfo().getIfaceV6() + " timeStamp=" + cneWwanInfo.getRatInfo().getTimeStamp() + " mccMnc=" + cneWwanInfo.getMccMnc() + " net handle=" + String.valueOf(cneWwanInfo.getRatInfo().getNetHdl()));
        return encodeData(3, cneWwanInfo.toByteArray());
    }

    public static CNERequest createRequest(String profile, int status, int reasonCode) {
        Native.ProfileWlanStatus profileWlanStatus = new Native.ProfileWlanStatus();
        profileWlanStatus.setProfile(profile);
        profileWlanStatus.setConnectionStatus(status);
        profileWlanStatus.setReason(reasonCode);
        CneMsg.logi(SUB_TYPE, "****encoding**** --> profile= " + profileWlanStatus.getProfile() + "connectionstatus= " + profileWlanStatus.getConnectionStatus() + "reasoncode = " + profileWlanStatus.getReason());
        return encodeData(7, profileWlanStatus.toByteArray());
    }

    public static CNERequest createRequest(int result, String bssid, int tid, int family) {
        Native.IcdHttpResult icdHttpResult = new Native.IcdHttpResult();
        icdHttpResult.setBssid(bssid);
        icdHttpResult.setResult(result);
        icdHttpResult.setTid(tid);
        icdHttpResult.setFamily(family);
        CneMsg.logi(SUB_TYPE, "****encoding**** --> notifyIcdHttpResult bssid= " + icdHttpResult.getBssid() + "result= " + icdHttpResult.getResult() + "tid= " + icdHttpResult.getTid() + "family= " + icdHttpResult.getFamily());
        return encodeData(18, icdHttpResult.toByteArray());
    }

    public static CNERequest createRequest(int result, String bssid, int flags, int tid, int icdQuota, int icdProb, int bqeQuota, int bqeProb, int mbw, int dl, int sdev) {
        Native.IcdResult icdResult = new Native.IcdResult();
        icdResult.setBssid(bssid);
        icdResult.setResult(result);
        icdResult.setFlags(flags);
        icdResult.setTid(tid);
        icdResult.setIcdQuota(icdQuota);
        icdResult.setIcdProb(icdProb);
        icdResult.setBqeQuota(bqeQuota);
        icdResult.setBqeProb(bqeProb);
        icdResult.setMbw(mbw);
        icdResult.setTputDl(dl);
        icdResult.setTputSdev(sdev);
        CneMsg.logi(SUB_TYPE, "****encoding**** --> notifyICDResult bssid= " + icdResult.getBssid() + "result= " + icdResult.getResult() + "flags= " + icdResult.getFlags() + "tid= " + icdResult.getTid() + "icdQuota= " + icdResult.getIcdQuota() + "icdprob= " + icdResult.getIcdProb() + "bqeQuota= " + icdResult.getBqeQuota() + "bqeProb= " + icdResult.getBqeProb() + "mbw= " + icdResult.getMbw() + "tputdl= " + icdResult.getTputDl() + "tputSdev= " + icdResult.getTputSdev());
        return encodeData(15, icdResult.toByteArray());
    }

    public static CNERequest createRequest(int result, int rtt, int tSec, int tMs) {
        Native.JrttResult jrttResult = new Native.JrttResult();
        jrttResult.setResult(result);
        jrttResult.setJrttMillis(rtt);
        jrttResult.setGetTsSeconds(tSec);
        jrttResult.setGetTsMillis(tMs);
        CneMsg.logi(SUB_TYPE, "****encoding**** --> notifyJRTTResult result=" + jrttResult.getResult() + " BQE params " + jrttResult.getJrttMillis() + " " + jrttResult.getGetTsSeconds() + " " + jrttResult.getGetTsMillis());
        return encodeData(16, jrttResult.toByteArray());
    }

    public static CNERequest createScreenRequest(boolean state) {
        int i = 1;
        Native.CneState cneState = new Native.CneState();
        cneState.setType(1);
        if (!state) {
            i = 0;
        }
        cneState.setState(i);
        CneMsg.logi(SUB_TYPE, "****encoding**** --> sendScreenState: state:" + cneState.getState());
        return encodeData(20, cneState.toByteArray());
    }

    public static CNERequest createUserActiveRequest(boolean state) {
        Native.CneState cneState = new Native.CneState();
        cneState.setType(2);
        cneState.setState(state ? 1 : 0);
        CneMsg.logi(SUB_TYPE, "****encoding**** --> sendUserActive: state:" + cneState.getState());
        return encodeData(25, cneState.toByteArray());
    }

    public static CNERequest createInitRequest() {
        return encodeData(1);
    }

    public static CNERequest createNatKaRequest(int result) {
        Native.NatKeepAliveResult natKeepAliveResult = new Native.NatKeepAliveResult();
        natKeepAliveResult.setRetcode(result);
        CneMsg.logi(SUB_TYPE, "****encoding**** --> natKeepAliveResultcode: " + natKeepAliveResult.getRetcode());
        return encodeData(8, natKeepAliveResult.toByteArray());
    }

    public static CNERequest createRequest(CNE.CneRatInfo info, int netType) {
        Native.RatInfo ratInfo = new Native.RatInfo();
        ratInfo.setNetType(netType);
        ratInfo.setSubType(info.getSubType());
        ratInfo.setNetworkState(info.getNetworkState());
        ratInfo.setIpAddr(info.getIPv4Address());
        ratInfo.setIpAddrV6(info.getIPv6Address());
        ratInfo.setIface(info.getIPv4Iface());
        ratInfo.setIfaceV6(info.getIPv6Iface());
        ratInfo.setTimeStamp(info.getTimestamp());
        ratInfo.setIsAndroidValidated(info.getAndroidValidated());
        ratInfo.setNetHdl(info.getNetHandle());
        String nhdlstr = String.valueOf(ratInfo.getNetHdl());
        ratInfo.setSlot(info.getSlotIdx());
        ratInfo.setErrorCause(info.getErrorCause());
        CneMsg.logi(SUB_TYPE, "****encoding**** -->  netType= " + ratInfo.getNetType() + " subtype=" + ratInfo.getSubType() + " state=" + ratInfo.getNetworkState() + " ipV4Addr=" + ratInfo.getIpAddr() + " ifNameV4=" + ratInfo.getIface() + " ipV6Addr=" + ratInfo.getIpAddrV6() + " ifNameV6=" + ratInfo.getIfaceV6() + " timeStamp=" + ratInfo.getTimeStamp() + " isandroidvalidated=" + ratInfo.getIsAndroidValidated() + " net handle=" + nhdlstr + " slot=" + ratInfo.getSlot() + " errorCause=" + ratInfo.getErrorCause());
        return encodeData(6, ratInfo.toByteArray());
    }

    public static CNERequest createRequestProfileOverride(int isOverrideSet) {
        Native.ProfileOverride po = new Native.ProfileOverride();
        po.setIsOverrideSet(isOverrideSet);
        CneMsg.logi(SUB_TYPE, "****encoding**** --> IMS profile override is set to: " + (isOverrideSet == 0 ? "false" : "true"));
        return encodeData(24, po.toByteArray());
    }

    private static CNERequest encodeData(int type) {
        return encodeData(type, (byte[]) null);
    }

    private static CNERequest encodeData(int type, byte[] data) {
        CNERequest rr = CNERequest.obtain(type);
        if (rr == null) {
            CneMsg.rlog(SUB_TYPE, "cannot create CNERequest type " + type);
            return null;
        }
        Native.CneCommands msg = new Native.CneCommands();
        msg.setCmd(rr.mRequest);
        msg.setSerial(rr.mSerial);
        if (data != null) {
            msg.setPayload(ByteStringMicro.copyFrom(data));
        }
        int msgLength = msg.getSerializedSize();
        rr.mData = new byte[msgLength];
        try {
            System.arraycopy(msg.toByteArray(), 0, rr.mData, 0, msgLength);
        } catch (IndexOutOfBoundsException e) {
            CneMsg.rlog(SUB_TYPE, "IndexOutOfBoundsException while encoding data");
        } catch (ArrayStoreException e2) {
            CneMsg.rlog(SUB_TYPE, "ArrayStoreException while encoding data");
        } catch (NullPointerException e3) {
            CneMsg.rlog(SUB_TYPE, "NullPointerException while encoding data");
        }
        return rr;
    }

    private static int NetworkTypetoCneRatType(int x) {
        switch (x) {
            case -1:
                return Native.RAT_NONE;
            case 0:
                return 0;
            case 1:
                return 1;
            default:
                return 255;
        }
    }
}
