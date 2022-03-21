package com.quicinc.cne;

import com.google.protobuf.micro.InvalidProtocolBufferMicroException;
import com.quicinc.cne.CNE;
import com.quicinc.cne.Native;

public class ProtoMsgTest {
    private static final String TEST_TAG = "TEST";
    private static CNE mCne;

    public static void TEST_SEND_PROTOBUF_MSG(CNE cne) {
        mCne = cne;
        CneMsg.logi("TEST", "*******************************************");
        CneMsg.logi("TEST", "*      PROTOMSG TEST cnej->cnd START      *");
        CneMsg.logi("TEST", "*******************************************");
        TEST_NOTIFY_WWAN_SUBTYPE();
        TEST_REQUEST_UPDATE_DEFAULT_NETWORK_INFO();
        TEST_REQUEST_UPDATE_WLAN_INFO();
        TEST_NOTIFY_NETWORK_REQUEST_INFO();
        TEST_NOTIFY_NAT_KEEP_ALIVE_RESULT();
        CneMsg.logi("TEST", "*******************************************");
        CneMsg.logi("TEST", "*     PROTOMSG TEST cnej->cnd COMPLETE    *");
        CneMsg.logi("TEST", "*******************************************");
    }

    private static void TEST_NOTIFY_WWAN_SUBTYPE() {
        CneMsg.logi("TEST", "------> TEST_NOTIFY_WWAN_SUBTYPE");
        CNERequest rr = ProtoMsgParser.createSubRatRequest(101);
        if (rr == null) {
            CneMsg.logw("TEST", "notifySubRat: rr=NULL - not updated");
        } else {
            mCne.send(rr);
        }
    }

    private static void TEST_REQUEST_UPDATE_DEFAULT_NETWORK_INFO() {
        CneMsg.logi("TEST", "------> TEST_REQUEST_UPDATE_DEFAULT_NETWORK_INFO");
        CNERequest rr = ProtoMsgParser.createRequestDfNw(1);
        if (rr == null) {
            CneMsg.logw("TEST", "sendDefaultNwMsg: rr=NULL - not updated");
        } else {
            mCne.send(rr);
        }
    }

    private static void TEST_REQUEST_UPDATE_WLAN_INFO() {
        CneMsg.logi("TEST", "------> TEST_REQUEST_UPDATE_WLAN_INFO");
        CNE cne = mCne;
        cne.getClass();
        CNE.CneWifiInfo cw = new CNE.CneWifiInfo();
        cw.networkType = 1;
        cw.subType = 101;
        cw.networkState = 1;
        cw.netHdl = 433808132830L;
        cw.ipAddrV4 = "192.168.1.100";
        cw.ipAddrV6 = "2001:0DBB:ABCD:1234:5678:::9999";
        cw.ifNameV4 = "wlan0";
        cw.ifNameV6 = "wlan1";
        cw.timeStamp = "2016-05-10 13:00:31.123";
        cw.isAndroidValidated = true;
        cw.wifiState = 2;
        cw.rssi = -70;
        cw.freqBand = CNE.FreqBand._5GHz;
        cw.ssid = "test_ssid";
        cw.bssid = "AB:CD:EF:12:34:56";
        for (int i = 0; i < 4; i++) {
            cw.dnsInfo[i] = "1.2.3.4";
        }
        CNERequest rr = ProtoMsgParser.createRequest(cw);
        if (rr == null) {
            CneMsg.logw("TEST", "updateWlanStatus: rr=NULL - no updated");
        } else {
            mCne.send(rr);
        }
    }

    private static void TEST_NOTIFY_NETWORK_REQUEST_INFO() {
        CneMsg.logi("TEST", "------> TEST_NOTIFY_NETWORK_REQUEST_INFO");
        CNE cne = mCne;
        cne.getClass();
        CNE.CneRatInfo ratInfo = new CNE.CneRatInfo();
        ratInfo.setNetworkType(1);
        ratInfo.setSubType(101);
        ratInfo.setNetworkState(1);
        ratInfo.setIPv4Address("192.168.1.100");
        ratInfo.setIPv6Address("2001:0DBB:ABCD:1234:5678:::9999");
        ratInfo.setIPv4Iface("wlan0");
        ratInfo.setIPv6Iface("wlan1");
        ratInfo.setTimeStamp("2016-05-10 13:00:31.123");
        ratInfo.setAndroidValidated(true);
        ratInfo.setNetHandle(433808132830L);
        ratInfo.setSlotIdx(2);
        ratInfo.setErrorCause(0);
        CNERequest rr = ProtoMsgParser.createRequest(ratInfo, 1);
        if (rr == null) {
            CneMsg.rlog("TEST", "sendRatInfo: rr=NULL");
        } else {
            mCne.send(rr);
        }
    }

    private static void TEST_NOTIFY_NAT_KEEP_ALIVE_RESULT() {
        CneMsg.logi("TEST", "------> TEST_NOTIFY_NAT_KEEP_ALIVE_RESULT");
        CNERequest rr = ProtoMsgParser.createNatKaRequest(0);
        if (rr == null) {
            CneMsg.rlog("TEST", "sendNatKeepAliveErrorResult: rr=NULL");
        } else {
            mCne.send(rr);
        }
    }

    public static void TEST_RECV_PROTOBUF_MSG(byte[] buffer, int length) {
        CneMsg.rlog("TEST", "ATTENTION: IN TEST MODE!!! received protobuf msg: ");
        byte[] pto = new byte[length];
        System.arraycopy(buffer, 0, pto, 0, length);
        try {
            Native.CneMessage msg = Native.CneMessage.parseFrom(pto);
            if (msg.getResponse() == 1) {
                TEST_processUnsolicitedProtoBufMsg(msg);
            } else {
                CneMsg.rlog("TEST", "unknown protobuf msg, ignore.");
            }
        } catch (InvalidProtocolBufferMicroException e) {
            CneMsg.rlog("TEST", " parsing protobuf msg exception");
        }
    }

    private static void TEST_processUnsolicitedProtoBufMsg(Native.CneMessage rsp) {
        CneMsg.logi("TEST", "processUnsolicited called");
        int response = rsp.getMsgId();
        byte[] data = rsp.getMsgbody().toByteArray();
        switch (response) {
            case 1:
                CneMsg.rlog("TEST", "REQUEST_BRING_RAT_DOWN received");
                Native.NetRequest p = ProtoMsgParser.parseNetRequest(data);
                if (p != null && p.getRattype() == 4 && p.getSlottype() == 1) {
                    CneMsg.logi("TEST", "REQUEST_BRING_RAT_DOWN...OK");
                    return;
                } else {
                    CneMsg.logi("TEST", "REQUEST_BRING_RAT_DOWN...FAIL");
                    return;
                }
            case 3:
                CneMsg.rlog("TEST", "REQUEST_START_RSSI_OFFLOAD received");
                Native.RssiOffloadMsg p2 = ProtoMsgParser.parseRssiOffload(data);
                if (p2 == null || !p2.getProfileName().equals("profile0") || !p2.getOperatorName().equals("testoperator") || p2.getRssiHigh() != -50 || p2.getRssiLow() != -60) {
                    CneMsg.logi("TEST", "REQUEST_START_RSSI_OFFLOAD...FAIL");
                    return;
                } else {
                    CneMsg.logi("TEST", "REQUEST_START_RSSI_OFFLOAD...OK");
                    return;
                }
            case 5:
                CneMsg.rlog("TEST", "REQUEST_START_NAT_KEEP_ALIVE received");
                Native.NatKeepAliveRequestMsg p3 = ProtoMsgParser.parseNatKA(data);
                if (p3 != null && p3.getTimer() == 20 && p3.getSrcPort() == 1000 && p3.getDestPort() == 2000 && p3.getDestIp().equals("100.101.102.103")) {
                    CneMsg.logi("TEST", "REQUEST_START_NAT_KEEP_ALIVE...OK");
                    return;
                } else {
                    CneMsg.logi("TEST", "REQUEST_START_NAT_KEEP_ALIVE...FAIL");
                    return;
                }
            case 10:
                CneMsg.rlog("TEST", "REQUEST_START_ACTIVE_PROBE received");
                Native.BqeActiveProbeMsg p4 = ProtoMsgParser.parseBqeActiveProbe(data);
                if (p4 == null || !p4.getBssid().equals("AA:BB:CC:DD:EE:FF") || !p4.getUri().equals("testUri, testUri, testUri") || !p4.getHttpuri().equals("testHttpUri, testHttpUri, testHttpUri") || !p4.getFileSize().equals("1212.34")) {
                    CneMsg.logi("TEST", "REQUEST_START_ACTIVE_PROBE...FAIL");
                    return;
                } else {
                    CneMsg.logi("TEST", "REQUEST_START_ACTIVE_PROBE...OK");
                    return;
                }
            case 12:
                CneMsg.rlog("TEST", "REQUEST_START_ICD received");
                Native.IcdStartMsg p5 = ProtoMsgParser.parseIcdStartMsg(data);
                if (p5 == null || !p5.getBssid().equals("AA:BB:CC:DD:EE:FF") || !p5.getUri().equals("testUri, testUri, testUri") || !p5.getHttpuri().equals("testHttpUri, testHttpUri, testHttpUri") || p5.getTimeout() != 12345678 || p5.getTid() != 9999) {
                    CneMsg.logi("TEST", "REQUEST_START_ICD...FAIL");
                    return;
                } else {
                    CneMsg.logi("TEST", "REQUEST_START_ICD...OK");
                    return;
                }
            case 14:
                CneMsg.rlog("TEST", "REQUEST_POST_BQE_RESULTS received");
                Native.BqePostParamsMsg p6 = ProtoMsgParser.parseBqePostParam(data);
                if (p6 == null || !p6.getBssid().equals("AA:BB:CC:DD:EE:FF") || !p6.getUri().equals("testUri, testUri, testUri") || p6.getTputKiloBitsPerSec() != 12345678 || p6.getTimeStampSec() != 0) {
                    CneMsg.logi("TEST", "REQUEST_POST_BQE_RESULTS...FAIL");
                    return;
                } else {
                    CneMsg.logi("TEST", "REQUEST_POST_BQE_RESULTS...OK");
                    return;
                }
            case 17:
                CneMsg.rlog("TEST", "NOTIFY_POLICY_UPDATE_DONE received");
                Native.PolicyUpdateRespMsg p7 = ProtoMsgParser.parsePolicyUpdateResp(data);
                if (p7 != null && p7.getPolicy() == 1 && p7.getResult() == 0) {
                    CneMsg.logi("TEST", "NOTIFY_POLICY_UPDATE_DONE...OK");
                    return;
                } else {
                    CneMsg.logi("TEST", "NOTIFY_POLICY_UPDATE_DONE...FAIL");
                    return;
                }
            default:
                CneMsg.logw("TEST", "UNKOWN Unsolicited Event " + response);
                return;
        }
    }
}
