.class public Lcom/quicinc/cne/ProtoMsgTest;
.super Ljava/lang/Object;
.source "ProtoMsgTest.java"


# static fields
.field private static final TEST_TAG:Ljava/lang/String; = "TEST"

.field private static mCne:Lcom/quicinc/cne/CNE;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static TEST_NOTIFY_NAT_KEEP_ALIVE_RESULT()V
    .locals 3

    .prologue
    .line 104
    const-string/jumbo v1, "TEST"

    const-string/jumbo v2, "------> TEST_NOTIFY_NAT_KEEP_ALIVE_RESULT"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/quicinc/cne/ProtoMsgParser;->createNatKaRequest(I)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 106
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 107
    const-string/jumbo v1, "TEST"

    const-string/jumbo v2, "sendNatKeepAliveErrorResult: rr=NULL"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void

    .line 110
    :cond_0
    sget-object v1, Lcom/quicinc/cne/ProtoMsgTest;->mCne:Lcom/quicinc/cne/CNE;

    invoke-virtual {v1, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 103
    return-void
.end method

.method private static TEST_NOTIFY_NETWORK_REQUEST_INFO()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 81
    const-string/jumbo v2, "TEST"

    const-string/jumbo v3, "------> TEST_NOTIFY_NETWORK_REQUEST_INFO"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/quicinc/cne/CNE$CneRatInfo;

    sget-object v2, Lcom/quicinc/cne/ProtoMsgTest;->mCne:Lcom/quicinc/cne/CNE;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/quicinc/cne/CNE$CneRatInfo;-><init>(Lcom/quicinc/cne/CNE;)V

    .line 83
    .local v0, "ratInfo":Lcom/quicinc/cne/CNE$CneRatInfo;
    invoke-virtual {v0, v4}, Lcom/quicinc/cne/CNE$CneRatInfo;->setNetworkType(I)V

    .line 84
    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Lcom/quicinc/cne/CNE$CneRatInfo;->setSubType(I)V

    .line 85
    invoke-virtual {v0, v4}, Lcom/quicinc/cne/CNE$CneRatInfo;->setNetworkState(I)V

    .line 86
    const-string/jumbo v2, "192.168.1.100"

    invoke-virtual {v0, v2}, Lcom/quicinc/cne/CNE$CneRatInfo;->setIPv4Address(Ljava/lang/String;)V

    .line 87
    const-string/jumbo v2, "2001:0DBB:ABCD:1234:5678:::9999"

    invoke-virtual {v0, v2}, Lcom/quicinc/cne/CNE$CneRatInfo;->setIPv6Address(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v2, "wlan0"

    invoke-virtual {v0, v2}, Lcom/quicinc/cne/CNE$CneRatInfo;->setIPv4Iface(Ljava/lang/String;)V

    .line 89
    const-string/jumbo v2, "wlan1"

    invoke-virtual {v0, v2}, Lcom/quicinc/cne/CNE$CneRatInfo;->setIPv6Iface(Ljava/lang/String;)V

    .line 90
    const-string/jumbo v2, "2016-05-10 13:00:31.123"

    invoke-virtual {v0, v2}, Lcom/quicinc/cne/CNE$CneRatInfo;->setTimeStamp(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, v4}, Lcom/quicinc/cne/CNE$CneRatInfo;->setAndroidValidated(Z)V

    .line 92
    const-wide v2, 0x6500facadeL

    invoke-virtual {v0, v2, v3}, Lcom/quicinc/cne/CNE$CneRatInfo;->setNetHandle(J)V

    .line 93
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/quicinc/cne/CNE$CneRatInfo;->setSlotIdx(I)V

    .line 94
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/quicinc/cne/CNE$CneRatInfo;->setErrorCause(I)V

    .line 95
    invoke-static {v0, v4}, Lcom/quicinc/cne/ProtoMsgParser;->createRequest(Lcom/quicinc/cne/CNE$CneRatInfo;I)Lcom/quicinc/cne/CNERequest;

    move-result-object v1

    .line 96
    .local v1, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v1, :cond_0

    .line 97
    const-string/jumbo v2, "TEST"

    const-string/jumbo v3, "sendRatInfo: rr=NULL"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-void

    .line 100
    :cond_0
    sget-object v2, Lcom/quicinc/cne/ProtoMsgTest;->mCne:Lcom/quicinc/cne/CNE;

    invoke-virtual {v2, v1}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 80
    return-void
.end method

.method private static TEST_NOTIFY_WWAN_SUBTYPE()V
    .locals 3

    .prologue
    .line 32
    const-string/jumbo v1, "TEST"

    const-string/jumbo v2, "------> TEST_NOTIFY_WWAN_SUBTYPE"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/16 v1, 0x65

    invoke-static {v1}, Lcom/quicinc/cne/ProtoMsgParser;->createSubRatRequest(I)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 34
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 35
    const-string/jumbo v1, "TEST"

    const-string/jumbo v2, "notifySubRat: rr=NULL - not updated"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void

    .line 38
    :cond_0
    sget-object v1, Lcom/quicinc/cne/ProtoMsgTest;->mCne:Lcom/quicinc/cne/CNE;

    invoke-virtual {v1, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 31
    return-void
.end method

.method public static TEST_RECV_PROTOBUF_MSG([BI)V
    .locals 7
    .param p0, "buffer"    # [B
    .param p1, "length"    # I

    .prologue
    const/4 v6, 0x0

    .line 115
    const-string/jumbo v4, "TEST"

    const-string/jumbo v5, "ATTENTION: IN TEST MODE!!! received protobuf msg: "

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-array v2, p1, [B

    .line 120
    .local v2, "pto":[B
    invoke-static {p0, v6, v2, v6, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 122
    :try_start_0
    invoke-static {v2}, Lcom/quicinc/cne/Native$CneMessage;->parseFrom([B)Lcom/quicinc/cne/Native$CneMessage;

    move-result-object v1

    .line 123
    .local v1, "msg":Lcom/quicinc/cne/Native$CneMessage;
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$CneMessage;->getResponse()I

    move-result v3

    .line 124
    .local v3, "rspType":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 125
    invoke-static {v1}, Lcom/quicinc/cne/ProtoMsgTest;->TEST_processUnsolicitedProtoBufMsg(Lcom/quicinc/cne/Native$CneMessage;)V

    .line 114
    .end local v1    # "msg":Lcom/quicinc/cne/Native$CneMessage;
    .end local v3    # "rspType":I
    :goto_0
    return-void

    .line 128
    .restart local v1    # "msg":Lcom/quicinc/cne/Native$CneMessage;
    .restart local v3    # "rspType":I
    :cond_0
    const-string/jumbo v4, "TEST"

    const-string/jumbo v5, "unknown protobuf msg, ignore."

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v1    # "msg":Lcom/quicinc/cne/Native$CneMessage;
    .end local v3    # "rspType":I
    :catch_0
    move-exception v0

    .line 132
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v4, "TEST"

    const-string/jumbo v5, " parsing protobuf msg exception"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static TEST_REQUEST_UPDATE_DEFAULT_NETWORK_INFO()V
    .locals 3

    .prologue
    .line 42
    const-string/jumbo v1, "TEST"

    const-string/jumbo v2, "------> TEST_REQUEST_UPDATE_DEFAULT_NETWORK_INFO"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/quicinc/cne/ProtoMsgParser;->createRequestDfNw(I)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    .line 44
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v0, :cond_0

    .line 45
    const-string/jumbo v1, "TEST"

    const-string/jumbo v2, "sendDefaultNwMsg: rr=NULL - not updated"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void

    .line 48
    :cond_0
    sget-object v1, Lcom/quicinc/cne/ProtoMsgTest;->mCne:Lcom/quicinc/cne/CNE;

    invoke-virtual {v1, v0}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 41
    return-void
.end method

.method private static TEST_REQUEST_UPDATE_WLAN_INFO()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 52
    const-string/jumbo v3, "TEST"

    const-string/jumbo v4, "------> TEST_REQUEST_UPDATE_WLAN_INFO"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Lcom/quicinc/cne/CNE$CneWifiInfo;

    sget-object v3, Lcom/quicinc/cne/ProtoMsgTest;->mCne:Lcom/quicinc/cne/CNE;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v3}, Lcom/quicinc/cne/CNE$CneWifiInfo;-><init>(Lcom/quicinc/cne/CNE;)V

    .line 54
    .local v0, "cw":Lcom/quicinc/cne/CNE$CneWifiInfo;
    iput v6, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->networkType:I

    .line 55
    const/16 v3, 0x65

    iput v3, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->subType:I

    .line 56
    iput v6, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->networkState:I

    .line 57
    const-wide v4, 0x6500facadeL

    iput-wide v4, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->netHdl:J

    .line 58
    const-string/jumbo v3, "192.168.1.100"

    iput-object v3, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ipAddrV4:Ljava/lang/String;

    .line 59
    const-string/jumbo v3, "2001:0DBB:ABCD:1234:5678:::9999"

    iput-object v3, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ipAddrV6:Ljava/lang/String;

    .line 60
    const-string/jumbo v3, "wlan0"

    iput-object v3, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ifNameV4:Ljava/lang/String;

    .line 61
    const-string/jumbo v3, "wlan1"

    iput-object v3, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ifNameV6:Ljava/lang/String;

    .line 62
    const-string/jumbo v3, "2016-05-10 13:00:31.123"

    iput-object v3, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->timeStamp:Ljava/lang/String;

    .line 63
    iput-boolean v6, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->isAndroidValidated:Z

    .line 64
    const/4 v3, 0x2

    iput v3, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->wifiState:I

    .line 65
    const/16 v3, -0x46

    iput v3, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->rssi:I

    .line 66
    sget-object v3, Lcom/quicinc/cne/CNE$FreqBand;->_5GHz:Lcom/quicinc/cne/CNE$FreqBand;

    iput-object v3, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->freqBand:Lcom/quicinc/cne/CNE$FreqBand;

    .line 67
    const-string/jumbo v3, "test_ssid"

    iput-object v3, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ssid:Ljava/lang/String;

    .line 68
    const-string/jumbo v3, "AB:CD:EF:12:34:56"

    iput-object v3, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->bssid:Ljava/lang/String;

    .line 69
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_0

    .line 70
    iget-object v3, v0, Lcom/quicinc/cne/CNE$CneWifiInfo;->dnsInfo:[Ljava/lang/String;

    const-string/jumbo v4, "1.2.3.4"

    aput-object v4, v3, v1

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {v0}, Lcom/quicinc/cne/ProtoMsgParser;->createRequest(Lcom/quicinc/cne/CNE$CneWifiInfo;)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    .line 73
    .local v2, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v2, :cond_1

    .line 74
    const-string/jumbo v3, "TEST"

    const-string/jumbo v4, "updateWlanStatus: rr=NULL - no updated"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void

    .line 77
    :cond_1
    sget-object v3, Lcom/quicinc/cne/ProtoMsgTest;->mCne:Lcom/quicinc/cne/CNE;

    invoke-virtual {v3, v2}, Lcom/quicinc/cne/CNE;->send(Lcom/quicinc/cne/CNERequest;)V

    .line 51
    return-void
.end method

.method public static TEST_SEND_PROTOBUF_MSG(Lcom/quicinc/cne/CNE;)V
    .locals 2
    .param p0, "cne"    # Lcom/quicinc/cne/CNE;

    .prologue
    .line 18
    sput-object p0, Lcom/quicinc/cne/ProtoMsgTest;->mCne:Lcom/quicinc/cne/CNE;

    .line 19
    const-string/jumbo v0, "TEST"

    const-string/jumbo v1, "*******************************************"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    const-string/jumbo v0, "TEST"

    const-string/jumbo v1, "*      PROTOMSG TEST cnej->cnd START      *"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string/jumbo v0, "TEST"

    const-string/jumbo v1, "*******************************************"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/quicinc/cne/ProtoMsgTest;->TEST_NOTIFY_WWAN_SUBTYPE()V

    .line 23
    invoke-static {}, Lcom/quicinc/cne/ProtoMsgTest;->TEST_REQUEST_UPDATE_DEFAULT_NETWORK_INFO()V

    .line 24
    invoke-static {}, Lcom/quicinc/cne/ProtoMsgTest;->TEST_REQUEST_UPDATE_WLAN_INFO()V

    .line 25
    invoke-static {}, Lcom/quicinc/cne/ProtoMsgTest;->TEST_NOTIFY_NETWORK_REQUEST_INFO()V

    .line 26
    invoke-static {}, Lcom/quicinc/cne/ProtoMsgTest;->TEST_NOTIFY_NAT_KEEP_ALIVE_RESULT()V

    .line 27
    const-string/jumbo v0, "TEST"

    const-string/jumbo v1, "*******************************************"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string/jumbo v0, "TEST"

    const-string/jumbo v1, "*     PROTOMSG TEST cnej->cnd COMPLETE    *"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string/jumbo v0, "TEST"

    const-string/jumbo v1, "*******************************************"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method private static TEST_processUnsolicitedProtoBufMsg(Lcom/quicinc/cne/Native$CneMessage;)V
    .locals 14
    .param p0, "rsp"    # Lcom/quicinc/cne/Native$CneMessage;

    .prologue
    const v13, 0xbc614e    # 1.729998E-38f

    const/4 v12, 0x1

    .line 138
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "processUnsolicited called"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->getMsgId()I

    move-result v9

    .line 142
    .local v9, "response":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->getMsgbody()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v0

    .line 143
    .local v0, "body":Lcom/google/protobuf/micro/ByteStringMicro;
    invoke-virtual {v0}, Lcom/google/protobuf/micro/ByteStringMicro;->toByteArray()[B

    move-result-object v1

    .line 144
    .local v1, "data":[B
    sparse-switch v9, :sswitch_data_0

    .line 249
    const-string/jumbo v10, "TEST"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "UNKOWN Unsolicited Event "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_0
    return-void

    .line 146
    :sswitch_0
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "REQUEST_BRING_RAT_DOWN received"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {v1}, Lcom/quicinc/cne/ProtoMsgParser;->parseNetRequest([B)Lcom/quicinc/cne/Native$NetRequest;

    move-result-object v6

    .line 148
    .local v6, "p":Lcom/quicinc/cne/Native$NetRequest;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/quicinc/cne/Native$NetRequest;->getRattype()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_0

    .line 149
    invoke-virtual {v6}, Lcom/quicinc/cne/Native$NetRequest;->getSlottype()I

    move-result v10

    if-ne v10, v12, :cond_0

    .line 150
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "REQUEST_BRING_RAT_DOWN...OK"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_0
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "REQUEST_BRING_RAT_DOWN...FAIL"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    .end local v6    # "p":Lcom/quicinc/cne/Native$NetRequest;
    :sswitch_1
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "REQUEST_START_NAT_KEEP_ALIVE received"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {v1}, Lcom/quicinc/cne/ProtoMsgParser;->parseNatKA([B)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    move-result-object v5

    .line 161
    .local v5, "p":Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getTimer()I

    move-result v10

    const/16 v11, 0x14

    if-ne v10, v11, :cond_1

    invoke-virtual {v5}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getSrcPort()I

    move-result v10

    const/16 v11, 0x3e8

    if-ne v10, v11, :cond_1

    .line 162
    invoke-virtual {v5}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getDestPort()I

    move-result v10

    const/16 v11, 0x7d0

    if-ne v10, v11, :cond_1

    invoke-virtual {v5}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getDestIp()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "100.101.102.103"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 161
    if-eqz v10, :cond_1

    .line 163
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "REQUEST_START_NAT_KEEP_ALIVE...OK"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_1
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "REQUEST_START_NAT_KEEP_ALIVE...FAIL"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    .end local v5    # "p":Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    :sswitch_2
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "REQUEST_START_RSSI_OFFLOAD received"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {v1}, Lcom/quicinc/cne/ProtoMsgParser;->parseRssiOffload([B)Lcom/quicinc/cne/Native$RssiOffloadMsg;

    move-result-object v8

    .line 174
    .local v8, "p":Lcom/quicinc/cne/Native$RssiOffloadMsg;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getProfileName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "profile0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 175
    invoke-virtual {v8}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getOperatorName()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "testoperator"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 174
    if-eqz v10, :cond_2

    .line 176
    invoke-virtual {v8}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getRssiHigh()I

    move-result v10

    const/16 v11, -0x32

    if-ne v10, v11, :cond_2

    .line 177
    invoke-virtual {v8}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getRssiLow()I

    move-result v10

    const/16 v11, -0x3c

    if-ne v10, v11, :cond_2

    .line 178
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "REQUEST_START_RSSI_OFFLOAD...OK"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 181
    :cond_2
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "REQUEST_START_RSSI_OFFLOAD...FAIL"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 187
    .end local v8    # "p":Lcom/quicinc/cne/Native$RssiOffloadMsg;
    :sswitch_3
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "NOTIFY_POLICY_UPDATE_DONE received"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {v1}, Lcom/quicinc/cne/ProtoMsgParser;->parsePolicyUpdateResp([B)Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;

    move-result-object v7

    .line 189
    .local v7, "p":Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->getPolicy()I

    move-result v10

    if-ne v10, v12, :cond_3

    .line 190
    invoke-virtual {v7}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->getResult()I

    move-result v10

    if-nez v10, :cond_3

    .line 191
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "NOTIFY_POLICY_UPDATE_DONE...OK"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    :cond_3
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "NOTIFY_POLICY_UPDATE_DONE...FAIL"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 200
    .end local v7    # "p":Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;
    :sswitch_4
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "REQUEST_START_ACTIVE_PROBE received"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {v1}, Lcom/quicinc/cne/ProtoMsgParser;->parseBqeActiveProbe([B)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    move-result-object v2

    .line 202
    .local v2, "p":Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getBssid()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "AA:BB:CC:DD:EE:FF"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 203
    invoke-virtual {v2}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getUri()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "testUri, testUri, testUri"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 202
    if-eqz v10, :cond_4

    .line 204
    invoke-virtual {v2}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getHttpuri()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "testHttpUri, testHttpUri, testHttpUri"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 202
    if-eqz v10, :cond_4

    .line 205
    invoke-virtual {v2}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getFileSize()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "1212.34"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 202
    if-eqz v10, :cond_4

    .line 207
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "REQUEST_START_ACTIVE_PROBE...OK"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :cond_4
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "REQUEST_START_ACTIVE_PROBE...FAIL"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    .end local v2    # "p":Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    :sswitch_5
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "REQUEST_POST_BQE_RESULTS received"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-static {v1}, Lcom/quicinc/cne/ProtoMsgParser;->parseBqePostParam([B)Lcom/quicinc/cne/Native$BqePostParamsMsg;

    move-result-object v3

    .line 218
    .local v3, "p":Lcom/quicinc/cne/Native$BqePostParamsMsg;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getBssid()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "AA:BB:CC:DD:EE:FF"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 219
    invoke-virtual {v3}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getUri()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "testUri, testUri, testUri"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 218
    if-eqz v10, :cond_5

    .line 220
    invoke-virtual {v3}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getTputKiloBitsPerSec()I

    move-result v10

    if-ne v10, v13, :cond_5

    .line 221
    invoke-virtual {v3}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getTimeStampSec()I

    move-result v10

    if-nez v10, :cond_5

    .line 223
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "REQUEST_POST_BQE_RESULTS...OK"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    :cond_5
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "REQUEST_POST_BQE_RESULTS...FAIL"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    .end local v3    # "p":Lcom/quicinc/cne/Native$BqePostParamsMsg;
    :sswitch_6
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "REQUEST_START_ICD received"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {v1}, Lcom/quicinc/cne/ProtoMsgParser;->parseIcdStartMsg([B)Lcom/quicinc/cne/Native$IcdStartMsg;

    move-result-object v4

    .line 234
    .local v4, "p":Lcom/quicinc/cne/Native$IcdStartMsg;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/quicinc/cne/Native$IcdStartMsg;->getBssid()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "AA:BB:CC:DD:EE:FF"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 235
    invoke-virtual {v4}, Lcom/quicinc/cne/Native$IcdStartMsg;->getUri()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "testUri, testUri, testUri"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 234
    if-eqz v10, :cond_6

    .line 236
    invoke-virtual {v4}, Lcom/quicinc/cne/Native$IcdStartMsg;->getHttpuri()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "testHttpUri, testHttpUri, testHttpUri"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 234
    if-eqz v10, :cond_6

    .line 237
    invoke-virtual {v4}, Lcom/quicinc/cne/Native$IcdStartMsg;->getTimeout()I

    move-result v10

    if-ne v10, v13, :cond_6

    .line 238
    invoke-virtual {v4}, Lcom/quicinc/cne/Native$IcdStartMsg;->getTid()I

    move-result v10

    const/16 v11, 0x270f

    if-ne v10, v11, :cond_6

    .line 240
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "REQUEST_START_ICD...OK"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 243
    :cond_6
    const-string/jumbo v10, "TEST"

    const-string/jumbo v11, "REQUEST_START_ICD...FAIL"

    invoke-static {v10, v11}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_2
        0x5 -> :sswitch_1
        0xa -> :sswitch_4
        0xc -> :sswitch_6
        0xe -> :sswitch_5
        0x11 -> :sswitch_3
    .end sparse-switch
.end method
