.class public Lcom/quicinc/cne/ProtoMsgParser;
.super Ljava/lang/Object;
.source "ProtoMsgParser.java"


# static fields
.field private static final SUB_TYPE:Ljava/lang/String; = "PB_MSG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static NetworkTypetoCneRatType(I)I
    .locals 1
    .param p0, "x"    # I

    .prologue
    .line 636
    packed-switch p0, :pswitch_data_0

    .line 644
    const/16 v0, 0xff

    return v0

    .line 638
    :pswitch_0
    const/16 v0, 0xfe

    return v0

    .line 640
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 642
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 636
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static createInitRequest()Lcom/quicinc/cne/CNERequest;
    .locals 1

    .prologue
    .line 549
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    return-object v0
.end method

.method public static createNatKaRequest(I)Lcom/quicinc/cne/CNERequest;
    .locals 5
    .param p0, "result"    # I

    .prologue
    .line 554
    new-instance v1, Lcom/quicinc/cne/Native$NatKeepAliveResult;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$NatKeepAliveResult;-><init>()V

    .line 555
    .local v1, "natKeepAliveResult":Lcom/quicinc/cne/Native$NatKeepAliveResult;
    invoke-virtual {v1, p0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->setRetcode(I)Lcom/quicinc/cne/Native$NatKeepAliveResult;

    .line 556
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "****encoding**** --> natKeepAliveResultcode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 557
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->getRetcode()I

    move-result v4

    .line 556
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->toByteArray()[B

    move-result-object v0

    .line 559
    .local v0, "data":[B
    const/16 v2, 0x8

    invoke-static {v2, v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequest(IIII)Lcom/quicinc/cne/CNERequest;
    .locals 5
    .param p0, "result"    # I
    .param p1, "rtt"    # I
    .param p2, "tSec"    # I
    .param p3, "tMs"    # I

    .prologue
    .line 514
    new-instance v1, Lcom/quicinc/cne/Native$JrttResult;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$JrttResult;-><init>()V

    .line 515
    .local v1, "jrttResult":Lcom/quicinc/cne/Native$JrttResult;
    invoke-virtual {v1, p0}, Lcom/quicinc/cne/Native$JrttResult;->setResult(I)Lcom/quicinc/cne/Native$JrttResult;

    .line 516
    invoke-virtual {v1, p1}, Lcom/quicinc/cne/Native$JrttResult;->setJrttMillis(I)Lcom/quicinc/cne/Native$JrttResult;

    .line 517
    invoke-virtual {v1, p2}, Lcom/quicinc/cne/Native$JrttResult;->setGetTsSeconds(I)Lcom/quicinc/cne/Native$JrttResult;

    .line 518
    invoke-virtual {v1, p3}, Lcom/quicinc/cne/Native$JrttResult;->setGetTsMillis(I)Lcom/quicinc/cne/Native$JrttResult;

    .line 519
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "****encoding**** --> notifyJRTTResult result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 520
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$JrttResult;->getResult()I

    move-result v4

    .line 519
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 521
    const-string/jumbo v4, " BQE params "

    .line 519
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 521
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$JrttResult;->getJrttMillis()I

    move-result v4

    .line 519
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 522
    const-string/jumbo v4, " "

    .line 519
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 522
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$JrttResult;->getGetTsSeconds()I

    move-result v4

    .line 519
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 522
    const-string/jumbo v4, " "

    .line 519
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 523
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$JrttResult;->getGetTsMillis()I

    move-result v4

    .line 519
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$JrttResult;->toByteArray()[B

    move-result-object v0

    .line 525
    .local v0, "data":[B
    const/16 v2, 0x10

    invoke-static {v2, v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequest(IILjava/lang/String;Ljava/lang/String;)Lcom/quicinc/cne/CNERequest;
    .locals 5
    .param p0, "type"    # I
    .param p1, "status"    # I
    .param p2, "ipV4Addr"    # Ljava/lang/String;
    .param p3, "ipV6Addr"    # Ljava/lang/String;

    .prologue
    .line 308
    new-instance v1, Lcom/quicinc/cne/Native$RatStatus;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$RatStatus;-><init>()V

    .line 309
    .local v1, "ratStatus":Lcom/quicinc/cne/Native$RatStatus;
    invoke-virtual {v1, p0}, Lcom/quicinc/cne/Native$RatStatus;->setRat(I)Lcom/quicinc/cne/Native$RatStatus;

    .line 310
    invoke-virtual {v1, p1}, Lcom/quicinc/cne/Native$RatStatus;->setRatStatus(I)Lcom/quicinc/cne/Native$RatStatus;

    .line 311
    invoke-virtual {v1, p2}, Lcom/quicinc/cne/Native$RatStatus;->setIpAddr(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatStatus;

    .line 312
    invoke-virtual {v1, p3}, Lcom/quicinc/cne/Native$RatStatus;->setIpAddrV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatStatus;

    .line 313
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "****encoding**** --> notifyRatConnectStatus ratType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 314
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RatStatus;->getRat()I

    move-result v4

    .line 313
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 315
    const-string/jumbo v4, " status="

    .line 313
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 315
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RatStatus;->getRatStatus()I

    move-result v4

    .line 313
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 316
    const-string/jumbo v4, " ipV4Addr="

    .line 313
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 316
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RatStatus;->getIpAddr()Ljava/lang/String;

    move-result-object v4

    .line 313
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 317
    const-string/jumbo v4, " ipV6Addr="

    .line 313
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 317
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RatStatus;->getIpAddrV6()Ljava/lang/String;

    move-result-object v4

    .line 313
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RatStatus;->toByteArray()[B

    move-result-object v0

    .line 319
    .local v0, "data":[B
    const/4 v2, 0x4

    invoke-static {v2, v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequest(ILjava/lang/String;II)Lcom/quicinc/cne/CNERequest;
    .locals 5
    .param p0, "result"    # I
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "tid"    # I
    .param p3, "family"    # I

    .prologue
    .line 466
    new-instance v1, Lcom/quicinc/cne/Native$IcdHttpResult;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$IcdHttpResult;-><init>()V

    .line 467
    .local v1, "icdHttpResult":Lcom/quicinc/cne/Native$IcdHttpResult;
    invoke-virtual {v1, p1}, Lcom/quicinc/cne/Native$IcdHttpResult;->setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdHttpResult;

    .line 468
    invoke-virtual {v1, p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->setResult(I)Lcom/quicinc/cne/Native$IcdHttpResult;

    .line 469
    invoke-virtual {v1, p2}, Lcom/quicinc/cne/Native$IcdHttpResult;->setTid(I)Lcom/quicinc/cne/Native$IcdHttpResult;

    .line 470
    invoke-virtual {v1, p3}, Lcom/quicinc/cne/Native$IcdHttpResult;->setFamily(I)Lcom/quicinc/cne/Native$IcdHttpResult;

    .line 471
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "****encoding**** --> notifyIcdHttpResult bssid= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 473
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdHttpResult;->getBssid()Ljava/lang/String;

    move-result-object v4

    .line 471
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 474
    const-string/jumbo v4, "result= "

    .line 471
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 474
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdHttpResult;->getResult()I

    move-result v4

    .line 471
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 475
    const-string/jumbo v4, "tid= "

    .line 471
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 475
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdHttpResult;->getTid()I

    move-result v4

    .line 471
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 476
    const-string/jumbo v4, "family= "

    .line 471
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 476
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdHttpResult;->getFamily()I

    move-result v4

    .line 471
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdHttpResult;->toByteArray()[B

    move-result-object v0

    .line 478
    .local v0, "data":[B
    const/16 v2, 0x12

    invoke-static {v2, v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequest(ILjava/lang/String;IIIIIIIII)Lcom/quicinc/cne/CNERequest;
    .locals 5
    .param p0, "result"    # I
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "tid"    # I
    .param p4, "icdQuota"    # I
    .param p5, "icdProb"    # I
    .param p6, "bqeQuota"    # I
    .param p7, "bqeProb"    # I
    .param p8, "mbw"    # I
    .param p9, "dl"    # I
    .param p10, "sdev"    # I

    .prologue
    .line 484
    new-instance v1, Lcom/quicinc/cne/Native$IcdResult;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$IcdResult;-><init>()V

    .line 485
    .local v1, "icdResult":Lcom/quicinc/cne/Native$IcdResult;
    invoke-virtual {v1, p1}, Lcom/quicinc/cne/Native$IcdResult;->setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdResult;

    .line 486
    invoke-virtual {v1, p0}, Lcom/quicinc/cne/Native$IcdResult;->setResult(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 487
    invoke-virtual {v1, p2}, Lcom/quicinc/cne/Native$IcdResult;->setFlags(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 488
    invoke-virtual {v1, p3}, Lcom/quicinc/cne/Native$IcdResult;->setTid(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 489
    invoke-virtual {v1, p4}, Lcom/quicinc/cne/Native$IcdResult;->setIcdQuota(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 490
    invoke-virtual {v1, p5}, Lcom/quicinc/cne/Native$IcdResult;->setIcdProb(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 491
    invoke-virtual {v1, p6}, Lcom/quicinc/cne/Native$IcdResult;->setBqeQuota(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 492
    invoke-virtual {v1, p7}, Lcom/quicinc/cne/Native$IcdResult;->setBqeProb(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 493
    invoke-virtual {v1, p8}, Lcom/quicinc/cne/Native$IcdResult;->setMbw(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 494
    invoke-virtual {v1, p9}, Lcom/quicinc/cne/Native$IcdResult;->setTputDl(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 495
    invoke-virtual {v1, p10}, Lcom/quicinc/cne/Native$IcdResult;->setTputSdev(I)Lcom/quicinc/cne/Native$IcdResult;

    .line 496
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "****encoding**** --> notifyICDResult bssid= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 498
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdResult;->getBssid()Ljava/lang/String;

    move-result-object v4

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 499
    const-string/jumbo v4, "result= "

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 499
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdResult;->getResult()I

    move-result v4

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 500
    const-string/jumbo v4, "flags= "

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 500
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdResult;->getFlags()I

    move-result v4

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 501
    const-string/jumbo v4, "tid= "

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 501
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdResult;->getTid()I

    move-result v4

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 502
    const-string/jumbo v4, "icdQuota= "

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 502
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdResult;->getIcdQuota()I

    move-result v4

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 503
    const-string/jumbo v4, "icdprob= "

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 503
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdResult;->getIcdProb()I

    move-result v4

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 504
    const-string/jumbo v4, "bqeQuota= "

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 504
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdResult;->getBqeQuota()I

    move-result v4

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 505
    const-string/jumbo v4, "bqeProb= "

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 505
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdResult;->getBqeProb()I

    move-result v4

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 506
    const-string/jumbo v4, "mbw= "

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 506
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdResult;->getMbw()I

    move-result v4

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 507
    const-string/jumbo v4, "tputdl= "

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 507
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdResult;->getTputDl()I

    move-result v4

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 508
    const-string/jumbo v4, "tputSdev= "

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 508
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdResult;->getTputSdev()I

    move-result v4

    .line 496
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdResult;->toByteArray()[B

    move-result-object v0

    .line 510
    .local v0, "data":[B
    const/16 v2, 0xf

    invoke-static {v2, v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequest(IZ)Lcom/quicinc/cne/CNERequest;
    .locals 5
    .param p0, "familyType"    # I
    .param p1, "isAndroidValidated"    # Z

    .prologue
    .line 332
    new-instance v1, Lcom/quicinc/cne/Native$WlanFamType;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$WlanFamType;-><init>()V

    .line 333
    .local v1, "wlanFam":Lcom/quicinc/cne/Native$WlanFamType;
    invoke-virtual {v1, p0}, Lcom/quicinc/cne/Native$WlanFamType;->setFamily(I)Lcom/quicinc/cne/Native$WlanFamType;

    .line 334
    invoke-virtual {v1, p1}, Lcom/quicinc/cne/Native$WlanFamType;->setIsAndroidValidated(Z)Lcom/quicinc/cne/Native$WlanFamType;

    .line 335
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "****encoding**** --> notifyWlanConnectivityUp familyType =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 336
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WlanFamType;->getFamily()I

    move-result v4

    .line 335
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 337
    const-string/jumbo v4, " , isAndroidValidated = "

    .line 335
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 337
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WlanFamType;->getIsAndroidValidated()Z

    move-result v4

    .line 335
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WlanFamType;->toByteArray()[B

    move-result-object v0

    .line 339
    .local v0, "data":[B
    const/16 v2, 0xc

    invoke-static {v2, v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequest(Lcom/quicinc/cne/CNE$CneRatInfo;I)Lcom/quicinc/cne/CNERequest;
    .locals 6
    .param p0, "info"    # Lcom/quicinc/cne/CNE$CneRatInfo;
    .param p1, "netType"    # I

    .prologue
    .line 563
    new-instance v2, Lcom/quicinc/cne/Native$RatInfo;

    invoke-direct {v2}, Lcom/quicinc/cne/Native$RatInfo;-><init>()V

    .line 564
    .local v2, "ratInfo":Lcom/quicinc/cne/Native$RatInfo;
    invoke-virtual {v2, p1}, Lcom/quicinc/cne/Native$RatInfo;->setNetType(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 565
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->getSubType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/Native$RatInfo;->setSubType(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 566
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->getNetworkState()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/Native$RatInfo;->setNetworkState(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 567
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->getIPv4Address()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/Native$RatInfo;->setIpAddr(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 568
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->getIPv6Address()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/Native$RatInfo;->setIpAddrV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 569
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->getIPv4Iface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/Native$RatInfo;->setIface(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 570
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->getIPv6Iface()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/Native$RatInfo;->setIfaceV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 571
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/Native$RatInfo;->setTimeStamp(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 572
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->getAndroidValidated()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/Native$RatInfo;->setIsAndroidValidated(Z)Lcom/quicinc/cne/Native$RatInfo;

    .line 573
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->getNetHandle()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/quicinc/cne/Native$RatInfo;->setNetHdl(J)Lcom/quicinc/cne/Native$RatInfo;

    .line 574
    invoke-virtual {v2}, Lcom/quicinc/cne/Native$RatInfo;->getNetHdl()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "nhdlstr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->getSlotIdx()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/Native$RatInfo;->setSlot(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 576
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->getErrorCause()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/Native$RatInfo;->setErrorCause(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 577
    const-string/jumbo v3, "PB_MSG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "****encoding**** -->  netType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 578
    invoke-virtual {v2}, Lcom/quicinc/cne/Native$RatInfo;->getNetType()I

    move-result v5

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 579
    const-string/jumbo v5, " subtype="

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 579
    invoke-virtual {v2}, Lcom/quicinc/cne/Native$RatInfo;->getSubType()I

    move-result v5

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 580
    const-string/jumbo v5, " state="

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 580
    invoke-virtual {v2}, Lcom/quicinc/cne/Native$RatInfo;->getNetworkState()I

    move-result v5

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 581
    const-string/jumbo v5, " ipV4Addr="

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 581
    invoke-virtual {v2}, Lcom/quicinc/cne/Native$RatInfo;->getIpAddr()Ljava/lang/String;

    move-result-object v5

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 582
    const-string/jumbo v5, " ifNameV4="

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 582
    invoke-virtual {v2}, Lcom/quicinc/cne/Native$RatInfo;->getIface()Ljava/lang/String;

    move-result-object v5

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 583
    const-string/jumbo v5, " ipV6Addr="

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 583
    invoke-virtual {v2}, Lcom/quicinc/cne/Native$RatInfo;->getIpAddrV6()Ljava/lang/String;

    move-result-object v5

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 584
    const-string/jumbo v5, " ifNameV6="

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 584
    invoke-virtual {v2}, Lcom/quicinc/cne/Native$RatInfo;->getIfaceV6()Ljava/lang/String;

    move-result-object v5

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 585
    const-string/jumbo v5, " timeStamp="

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 585
    invoke-virtual {v2}, Lcom/quicinc/cne/Native$RatInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object v5

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 586
    const-string/jumbo v5, " isandroidvalidated="

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 586
    invoke-virtual {v2}, Lcom/quicinc/cne/Native$RatInfo;->getIsAndroidValidated()Z

    move-result v5

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 587
    const-string/jumbo v5, " net handle="

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 588
    const-string/jumbo v5, " slot="

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 588
    invoke-virtual {v2}, Lcom/quicinc/cne/Native$RatInfo;->getSlot()I

    move-result v5

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 589
    const-string/jumbo v5, " errorCause="

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 589
    invoke-virtual {v2}, Lcom/quicinc/cne/Native$RatInfo;->getErrorCause()I

    move-result v5

    .line 577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {v2}, Lcom/quicinc/cne/Native$RatInfo;->toByteArray()[B

    move-result-object v0

    .line 591
    .local v0, "data":[B
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v3

    return-object v3
.end method

.method public static createRequest(Lcom/quicinc/cne/CNE$CneWifiInfo;)Lcom/quicinc/cne/CNERequest;
    .locals 12
    .param p0, "_cneWifiInfo"    # Lcom/quicinc/cne/CNE$CneWifiInfo;

    .prologue
    .line 363
    new-instance v8, Lcom/quicinc/cne/Native$RatInfo;

    invoke-direct {v8}, Lcom/quicinc/cne/Native$RatInfo;-><init>()V

    .line 365
    .local v8, "ratInfo":Lcom/quicinc/cne/Native$RatInfo;
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getNetworkType()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/quicinc/cne/Native$RatInfo;->setNetType(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 366
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getSubType()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/quicinc/cne/Native$RatInfo;->setSubType(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 367
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getNetworkState()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/quicinc/cne/Native$RatInfo;->setNetworkState(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 368
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getIPv4Address()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/quicinc/cne/Native$RatInfo;->setIpAddr(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 369
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getIPv6Address()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/quicinc/cne/Native$RatInfo;->setIpAddrV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 370
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getIPv4Iface()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/quicinc/cne/Native$RatInfo;->setIface(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 371
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getIPv6Iface()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/quicinc/cne/Native$RatInfo;->setIfaceV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 372
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/quicinc/cne/Native$RatInfo;->setTimeStamp(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 373
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getAndroidValidated()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/quicinc/cne/Native$RatInfo;->setIsAndroidValidated(Z)Lcom/quicinc/cne/Native$RatInfo;

    .line 374
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->getNetHandle()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/quicinc/cne/Native$RatInfo;->setNetHdl(J)Lcom/quicinc/cne/Native$RatInfo;

    .line 376
    new-instance v0, Lcom/quicinc/cne/Native$WlanInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WlanInfo;-><init>()V

    .line 377
    .local v0, "cneWlanInfo":Lcom/quicinc/cne/Native$WlanInfo;
    invoke-virtual {v0, v8}, Lcom/quicinc/cne/Native$WlanInfo;->setRatInfo(Lcom/quicinc/cne/Native$RatInfo;)Lcom/quicinc/cne/Native$WlanInfo;

    .line 378
    iget v9, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->wifiState:I

    invoke-virtual {v0, v9}, Lcom/quicinc/cne/Native$WlanInfo;->setWifiState(I)Lcom/quicinc/cne/Native$WlanInfo;

    .line 379
    iget v9, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->rssi:I

    invoke-virtual {v0, v9}, Lcom/quicinc/cne/Native$WlanInfo;->setRssi(I)Lcom/quicinc/cne/Native$WlanInfo;

    .line 380
    iget-object v9, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->freqBand:Lcom/quicinc/cne/CNE$FreqBand;

    invoke-virtual {v9}, Lcom/quicinc/cne/CNE$FreqBand;->ordinal()I

    move-result v9

    invoke-virtual {v0, v9}, Lcom/quicinc/cne/Native$WlanInfo;->setFreqBand(I)Lcom/quicinc/cne/Native$WlanInfo;

    .line 381
    iget-object v9, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/quicinc/cne/Native$WlanInfo;->setSsid(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanInfo;

    .line 382
    iget-object v9, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lcom/quicinc/cne/Native$WlanInfo;->setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanInfo;

    .line 383
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v9, 0x4

    if-ge v6, v9, :cond_0

    .line 384
    iget-object v9, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->dnsInfo:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v0, v9}, Lcom/quicinc/cne/Native$WlanInfo;->addDnsInfo(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanInfo;

    .line 383
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WlanInfo;->getDnsInfoList()Ljava/util/List;

    move-result-object v3

    .line 389
    .local v3, "dnsInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v9, " "

    invoke-direct {v2, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 390
    .local v2, "dnsAddrs":Ljava/lang/String;
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "dnsStr$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 391
    .local v4, "dnsStr":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 394
    .end local v4    # "dnsStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/quicinc/cne/Native$RatInfo;->getNetHdl()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 396
    .local v7, "nhdlstr":Ljava/lang/String;
    const-string/jumbo v9, "PB_MSG"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sendWifiStatus - subType: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 397
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/quicinc/cne/Native$RatInfo;->getSubType()I

    move-result v11

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 398
    const-string/jumbo v11, " networkState: "

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 398
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/quicinc/cne/Native$RatInfo;->getNetworkState()I

    move-result v11

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 399
    const-string/jumbo v11, " wifiState: "

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 399
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WlanInfo;->getWifiState()I

    move-result v11

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 400
    const-string/jumbo v11, " rssi="

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 400
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WlanInfo;->getRssi()I

    move-result v11

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 401
    const-string/jumbo v11, " freqBand = "

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 401
    iget-object v11, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->freqBand:Lcom/quicinc/cne/CNE$FreqBand;

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 402
    const-string/jumbo v11, " ssid="

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 402
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WlanInfo;->getSsid()Ljava/lang/String;

    move-result-object v11

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 403
    const-string/jumbo v11, " bssid="

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 403
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WlanInfo;->getBssid()Ljava/lang/String;

    move-result-object v11

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 404
    const-string/jumbo v11, " ipV4Addr="

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 404
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/quicinc/cne/Native$RatInfo;->getIpAddr()Ljava/lang/String;

    move-result-object v11

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 405
    const-string/jumbo v11, " ifNameV4="

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 405
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/quicinc/cne/Native$RatInfo;->getIface()Ljava/lang/String;

    move-result-object v11

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 406
    const-string/jumbo v11, " ipAddrV6="

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 406
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/quicinc/cne/Native$RatInfo;->getIpAddrV6()Ljava/lang/String;

    move-result-object v11

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 407
    const-string/jumbo v11, " ifNameV6="

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 407
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/quicinc/cne/Native$RatInfo;->getIfaceV6()Ljava/lang/String;

    move-result-object v11

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 408
    const-string/jumbo v11, " timeStamp:"

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 408
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/quicinc/cne/Native$RatInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object v11

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 409
    const-string/jumbo v11, " net handle="

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 410
    const-string/jumbo v11, " isAndroidValidated = "

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 410
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/quicinc/cne/Native$RatInfo;->getIsAndroidValidated()Z

    move-result v11

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 411
    const-string/jumbo v11, " DNS addrs="

    .line 396
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WlanInfo;->toByteArray()[B

    move-result-object v1

    .line 413
    .local v1, "data":[B
    const/4 v9, 0x2

    invoke-static {v9, v1}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v9

    return-object v9
.end method

.method public static createRequest(Lcom/quicinc/cne/CNE$CneWwanInfo;)Lcom/quicinc/cne/CNERequest;
    .locals 7
    .param p0, "_cneWwanInfo"    # Lcom/quicinc/cne/CNE$CneWwanInfo;

    .prologue
    .line 417
    new-instance v3, Lcom/quicinc/cne/Native$RatInfo;

    invoke-direct {v3}, Lcom/quicinc/cne/Native$RatInfo;-><init>()V

    .line 418
    .local v3, "ratInfo":Lcom/quicinc/cne/Native$RatInfo;
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getNetworkType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/quicinc/cne/Native$RatInfo;->setNetType(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 419
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getSubType()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/quicinc/cne/Native$RatInfo;->setSubType(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 420
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getNetworkState()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/quicinc/cne/Native$RatInfo;->setNetworkState(I)Lcom/quicinc/cne/Native$RatInfo;

    .line 421
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getIPv4Address()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/quicinc/cne/Native$RatInfo;->setIpAddr(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 422
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getIPv6Address()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/quicinc/cne/Native$RatInfo;->setIpAddrV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 423
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getIPv4Iface()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/quicinc/cne/Native$RatInfo;->setIface(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 424
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getIPv6Iface()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/quicinc/cne/Native$RatInfo;->setIfaceV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 425
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getTimestamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/quicinc/cne/Native$RatInfo;->setTimeStamp(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    .line 426
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getAndroidValidated()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/quicinc/cne/Native$RatInfo;->setIsAndroidValidated(Z)Lcom/quicinc/cne/Native$RatInfo;

    .line 427
    invoke-virtual {p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getNetHandle()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/quicinc/cne/Native$RatInfo;->setNetHdl(J)Lcom/quicinc/cne/Native$RatInfo;

    .line 429
    new-instance v0, Lcom/quicinc/cne/Native$WwanInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WwanInfo;-><init>()V

    .line 430
    .local v0, "cneWwanInfo":Lcom/quicinc/cne/Native$WwanInfo;
    invoke-virtual {v0, v3}, Lcom/quicinc/cne/Native$WwanInfo;->setRatInfo(Lcom/quicinc/cne/Native$RatInfo;)Lcom/quicinc/cne/Native$WwanInfo;

    .line 431
    iget v4, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->signalStrength:I

    invoke-virtual {v0, v4}, Lcom/quicinc/cne/Native$WwanInfo;->setSignalStrength(I)Lcom/quicinc/cne/Native$WwanInfo;

    .line 432
    iget v4, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->roaming:I

    invoke-virtual {v0, v4}, Lcom/quicinc/cne/Native$WwanInfo;->setRoaming(I)Lcom/quicinc/cne/Native$WwanInfo;

    .line 433
    iget-object v4, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->mccMnc:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/quicinc/cne/Native$WwanInfo;->setMccMnc(Ljava/lang/String;)Lcom/quicinc/cne/Native$WwanInfo;

    .line 435
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WwanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/quicinc/cne/Native$RatInfo;->getNetHdl()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "nhdlstr":Ljava/lang/String;
    const-string/jumbo v4, "PB_MSG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendWwanStatus type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WwanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/quicinc/cne/Native$RatInfo;->getSubType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 437
    const-string/jumbo v6, " state="

    .line 436
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 437
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WwanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/quicinc/cne/Native$RatInfo;->getNetworkState()I

    move-result v6

    .line 436
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 438
    const-string/jumbo v6, " strength="

    .line 436
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 438
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WwanInfo;->getSignalStrength()I

    move-result v6

    .line 436
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 439
    const-string/jumbo v6, " roaming="

    .line 436
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 439
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WwanInfo;->getRoaming()I

    move-result v6

    .line 436
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 440
    const-string/jumbo v6, " ipV4Addr="

    .line 436
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 440
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WwanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/quicinc/cne/Native$RatInfo;->getIpAddr()Ljava/lang/String;

    move-result-object v6

    .line 436
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 441
    const-string/jumbo v6, " ifNameV4="

    .line 436
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 441
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WwanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/quicinc/cne/Native$RatInfo;->getIface()Ljava/lang/String;

    move-result-object v6

    .line 436
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 442
    const-string/jumbo v6, " ipV6Addr="

    .line 436
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 442
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WwanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/quicinc/cne/Native$RatInfo;->getIpAddrV6()Ljava/lang/String;

    move-result-object v6

    .line 436
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 443
    const-string/jumbo v6, " ifNameV6="

    .line 436
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 443
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WwanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/quicinc/cne/Native$RatInfo;->getIfaceV6()Ljava/lang/String;

    move-result-object v6

    .line 436
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 444
    const-string/jumbo v6, " timeStamp="

    .line 436
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 444
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WwanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/quicinc/cne/Native$RatInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object v6

    .line 436
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 445
    const-string/jumbo v6, " mccMnc="

    .line 436
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 445
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WwanInfo;->getMccMnc()Ljava/lang/String;

    move-result-object v6

    .line 436
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 446
    const-string/jumbo v6, " net handle="

    .line 436
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$WwanInfo;->toByteArray()[B

    move-result-object v1

    .line 448
    .local v1, "data":[B
    const/4 v4, 0x3

    invoke-static {v4, v1}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v4

    return-object v4
.end method

.method public static createRequest(Ljava/lang/String;II)Lcom/quicinc/cne/CNERequest;
    .locals 5
    .param p0, "profile"    # Ljava/lang/String;
    .param p1, "status"    # I
    .param p2, "reasonCode"    # I

    .prologue
    .line 453
    new-instance v1, Lcom/quicinc/cne/Native$ProfileWlanStatus;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$ProfileWlanStatus;-><init>()V

    .line 454
    .local v1, "profileWlanStatus":Lcom/quicinc/cne/Native$ProfileWlanStatus;
    invoke-virtual {v1, p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->setProfile(Ljava/lang/String;)Lcom/quicinc/cne/Native$ProfileWlanStatus;

    .line 455
    invoke-virtual {v1, p1}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->setConnectionStatus(I)Lcom/quicinc/cne/Native$ProfileWlanStatus;

    .line 456
    invoke-virtual {v1, p2}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->setReason(I)Lcom/quicinc/cne/Native$ProfileWlanStatus;

    .line 457
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "****encoding**** --> profile= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 458
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->getProfile()Ljava/lang/String;

    move-result-object v4

    .line 457
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 459
    const-string/jumbo v4, "connectionstatus= "

    .line 457
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 459
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->getConnectionStatus()I

    move-result v4

    .line 457
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 460
    const-string/jumbo v4, "reasoncode = "

    .line 457
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 460
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->getReason()I

    move-result v4

    .line 457
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->toByteArray()[B

    move-result-object v0

    .line 462
    .local v0, "data":[B
    const/4 v2, 0x7

    invoke-static {v2, v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequestAndsf()Lcom/quicinc/cne/CNERequest;
    .locals 1

    .prologue
    .line 294
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    return-object v0
.end method

.method public static createRequestDfNw(I)Lcom/quicinc/cne/CNERequest;
    .locals 5
    .param p0, "defNw"    # I

    .prologue
    .line 298
    new-instance v1, Lcom/quicinc/cne/Native$DefaultNetwork;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$DefaultNetwork;-><init>()V

    .line 299
    .local v1, "defaultNetwork":Lcom/quicinc/cne/Native$DefaultNetwork;
    invoke-static {p0}, Lcom/quicinc/cne/ProtoMsgParser;->NetworkTypetoCneRatType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/quicinc/cne/Native$DefaultNetwork;->setNetwork(I)Lcom/quicinc/cne/Native$DefaultNetwork;

    .line 300
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "****encoding**** --> sendDefaultNwMsg: default = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 301
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$DefaultNetwork;->getNetwork()I

    move-result v4

    .line 300
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$DefaultNetwork;->toByteArray()[B

    move-result-object v0

    .line 303
    .local v0, "data":[B
    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequestFeature(II)Lcom/quicinc/cne/CNERequest;
    .locals 5
    .param p0, "featureId"    # I
    .param p1, "newValue"    # I

    .prologue
    .line 272
    new-instance v1, Lcom/quicinc/cne/Native$FeatureInfo;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$FeatureInfo;-><init>()V

    .line 273
    .local v1, "featureInfo":Lcom/quicinc/cne/Native$FeatureInfo;
    invoke-virtual {v1, p0}, Lcom/quicinc/cne/Native$FeatureInfo;->setFeatureId(I)Lcom/quicinc/cne/Native$FeatureInfo;

    .line 274
    invoke-virtual {v1, p1}, Lcom/quicinc/cne/Native$FeatureInfo;->setFeatureStatus(I)Lcom/quicinc/cne/Native$FeatureInfo;

    .line 275
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "****encoding**** --> requestFeatureSettingsChange: feature id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 277
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureInfo;->getFeatureId()I

    move-result v4

    .line 275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 278
    const-string/jumbo v4, " new value: "

    .line 275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 278
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureInfo;->getFeatureStatus()I

    move-result v4

    .line 275
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureInfo;->toByteArray()[B

    move-result-object v0

    .line 280
    .local v0, "data":[B
    const/16 v2, 0xe

    invoke-static {v2, v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequestFeatureSettings(I)Lcom/quicinc/cne/CNERequest;
    .locals 5
    .param p0, "featureId"    # I

    .prologue
    .line 284
    new-instance v1, Lcom/quicinc/cne/Native$FeatureInfo;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$FeatureInfo;-><init>()V

    .line 285
    .local v1, "featureInfo":Lcom/quicinc/cne/Native$FeatureInfo;
    invoke-virtual {v1, p0}, Lcom/quicinc/cne/Native$FeatureInfo;->setFeatureId(I)Lcom/quicinc/cne/Native$FeatureInfo;

    .line 286
    const v2, 0xffff

    invoke-virtual {v1, v2}, Lcom/quicinc/cne/Native$FeatureInfo;->setFeatureStatus(I)Lcom/quicinc/cne/Native$FeatureInfo;

    .line 287
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "****encoding**** --> requestFeatureSettings: featureId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 288
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureInfo;->getFeatureId()I

    move-result v4

    .line 287
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureInfo;->toByteArray()[B

    move-result-object v0

    .line 290
    .local v0, "data":[B
    const/16 v2, 0xd

    invoke-static {v2, v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequestMobileData(Z)Lcom/quicinc/cne/CNERequest;
    .locals 5
    .param p0, "enabled"    # Z

    .prologue
    .line 323
    new-instance v1, Lcom/quicinc/cne/Native$PbMobileDataState;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$PbMobileDataState;-><init>()V

    .line 324
    .local v1, "mobileDataState":Lcom/quicinc/cne/Native$PbMobileDataState;
    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/quicinc/cne/Native$PbMobileDataState;->setIsEnabled(I)Lcom/quicinc/cne/Native$PbMobileDataState;

    .line 325
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "****encoding**** --> notifyMobileDataEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 326
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$PbMobileDataState;->getIsEnabled()I

    move-result v4

    .line 325
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$PbMobileDataState;->toByteArray()[B

    move-result-object v0

    .line 328
    .local v0, "data":[B
    const/16 v2, 0xa

    invoke-static {v2, v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2

    .line 324
    .end local v0    # "data":[B
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createRequestProfileOverride(I)Lcom/quicinc/cne/CNERequest;
    .locals 5
    .param p0, "isOverrideSet"    # I

    .prologue
    .line 595
    new-instance v1, Lcom/quicinc/cne/Native$ProfileOverride;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$ProfileOverride;-><init>()V

    .line 596
    .local v1, "po":Lcom/quicinc/cne/Native$ProfileOverride;
    invoke-virtual {v1, p0}, Lcom/quicinc/cne/Native$ProfileOverride;->setIsOverrideSet(I)Lcom/quicinc/cne/Native$ProfileOverride;

    .line 597
    const-string/jumbo v3, "PB_MSG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "****encoding**** --> IMS profile override is set to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 598
    if-nez p0, :cond_0

    const-string/jumbo v2, "false"

    .line 597
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$ProfileOverride;->toByteArray()[B

    move-result-object v0

    .line 600
    .local v0, "data":[B
    const/16 v2, 0x18

    invoke-static {v2, v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2

    .line 598
    .end local v0    # "data":[B
    :cond_0
    const-string/jumbo v2, "true"

    goto :goto_0
.end method

.method public static createRequestQuotaInfo(Z)Lcom/quicinc/cne/CNERequest;
    .locals 6
    .param p0, "isReached"    # Z

    .prologue
    .line 261
    if-eqz p0, :cond_0

    const/4 v2, 0x1

    .line 262
    .local v2, "res":I
    :goto_0
    new-instance v1, Lcom/quicinc/cne/Native$QuotaInfo;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$QuotaInfo;-><init>()V

    .line 263
    .local v1, "quotaInfo":Lcom/quicinc/cne/Native$QuotaInfo;
    invoke-virtual {v1, v2}, Lcom/quicinc/cne/Native$QuotaInfo;->setIsQuotaReached(I)Lcom/quicinc/cne/Native$QuotaInfo;

    .line 264
    const-string/jumbo v3, "PB_MSG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "****encoding**** --> isQuotaReached: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 265
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$QuotaInfo;->getIsQuotaReached()I

    move-result v5

    .line 264
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 266
    const-string/jumbo v5, " (1 reached, 0 not reached) "

    .line 264
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$QuotaInfo;->toByteArray()[B

    move-result-object v0

    .line 268
    .local v0, "data":[B
    const/16 v3, 0x15

    invoke-static {v3, v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v3

    return-object v3

    .line 261
    .end local v0    # "data":[B
    .end local v1    # "quotaInfo":Lcom/quicinc/cne/Native$QuotaInfo;
    .end local v2    # "res":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "res":I
    goto :goto_0
.end method

.method public static createRequestWifiAp(II)Lcom/quicinc/cne/CNERequest;
    .locals 5
    .param p0, "currState"    # I
    .param p1, "prevState"    # I

    .prologue
    .line 343
    new-instance v1, Lcom/quicinc/cne/Native$WifiApInfo;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$WifiApInfo;-><init>()V

    .line 344
    .local v1, "wifiApInfo":Lcom/quicinc/cne/Native$WifiApInfo;
    invoke-virtual {v1, p0}, Lcom/quicinc/cne/Native$WifiApInfo;->setCurrState(I)Lcom/quicinc/cne/Native$WifiApInfo;

    .line 345
    invoke-virtual {v1, p1}, Lcom/quicinc/cne/Native$WifiApInfo;->setPrevState(I)Lcom/quicinc/cne/Native$WifiApInfo;

    .line 346
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "****encoding**** --> sendWifiApInfo- curstate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 347
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WifiApInfo;->getCurrState()I

    move-result v4

    .line 346
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 348
    const-string/jumbo v4, "prevState "

    .line 346
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 348
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WifiApInfo;->getPrevState()I

    move-result v4

    .line 346
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WifiApInfo;->toByteArray()[B

    move-result-object v0

    .line 350
    .local v0, "data":[B
    const/16 v2, 0x16

    invoke-static {v2, v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createRequestWifiP2p(I)Lcom/quicinc/cne/CNERequest;
    .locals 5
    .param p0, "currState"    # I

    .prologue
    .line 354
    new-instance v1, Lcom/quicinc/cne/Native$WifiP2pInfo;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$WifiP2pInfo;-><init>()V

    .line 355
    .local v1, "wifiP2pInfo":Lcom/quicinc/cne/Native$WifiP2pInfo;
    invoke-virtual {v1, p0}, Lcom/quicinc/cne/Native$WifiP2pInfo;->setCurrState(I)Lcom/quicinc/cne/Native$WifiP2pInfo;

    .line 356
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WifiP2pInfo;->toByteArray()[B

    move-result-object v0

    .line 357
    .local v0, "data":[B
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "****encoding**** --> sendWifiP2pInfo - currstate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 358
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WifiP2pInfo;->getCurrState()I

    move-result v4

    .line 357
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/16 v2, 0x17

    invoke-static {v2, v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createScreenRequest(Z)Lcom/quicinc/cne/CNERequest;
    .locals 5
    .param p0, "state"    # Z

    .prologue
    const/4 v2, 0x1

    .line 529
    new-instance v0, Lcom/quicinc/cne/Native$CneState;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$CneState;-><init>()V

    .line 530
    .local v0, "cneState":Lcom/quicinc/cne/Native$CneState;
    invoke-virtual {v0, v2}, Lcom/quicinc/cne/Native$CneState;->setType(I)Lcom/quicinc/cne/Native$CneState;

    .line 531
    if-eqz p0, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/quicinc/cne/Native$CneState;->setState(I)Lcom/quicinc/cne/Native$CneState;

    .line 532
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "****encoding**** --> sendScreenState: state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 533
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$CneState;->getState()I

    move-result v4

    .line 532
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$CneState;->toByteArray()[B

    move-result-object v1

    .line 535
    .local v1, "data":[B
    const/16 v2, 0x14

    invoke-static {v2, v1}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2

    .line 531
    .end local v1    # "data":[B
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createSubRatRequest(I)Lcom/quicinc/cne/CNERequest;
    .locals 5
    .param p0, "subRat"    # I

    .prologue
    .line 252
    new-instance v1, Lcom/quicinc/cne/Native$WwanSubtypeInfo;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;-><init>()V

    .line 253
    .local v1, "wwanSubtypeInfo":Lcom/quicinc/cne/Native$WwanSubtypeInfo;
    invoke-virtual {v1, p0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->setSubtype(I)Lcom/quicinc/cne/Native$WwanSubtypeInfo;

    .line 254
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "****encoding**** --> Subtype: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 255
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->getSubtype()I

    move-result v4

    .line 254
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->toByteArray()[B

    move-result-object v0

    .line 257
    .local v0, "data":[B
    const/16 v2, 0x9

    invoke-static {v2, v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2
.end method

.method public static createUserActiveRequest(Z)Lcom/quicinc/cne/CNERequest;
    .locals 5
    .param p0, "state"    # Z

    .prologue
    .line 539
    new-instance v0, Lcom/quicinc/cne/Native$CneState;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$CneState;-><init>()V

    .line 540
    .local v0, "cneState":Lcom/quicinc/cne/Native$CneState;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/quicinc/cne/Native$CneState;->setType(I)Lcom/quicinc/cne/Native$CneState;

    .line 541
    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/quicinc/cne/Native$CneState;->setState(I)Lcom/quicinc/cne/Native$CneState;

    .line 542
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "****encoding**** --> sendUserActive: state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 543
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$CneState;->getState()I

    move-result v4

    .line 542
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual {v0}, Lcom/quicinc/cne/Native$CneState;->toByteArray()[B

    move-result-object v1

    .line 545
    .local v1, "data":[B
    const/16 v2, 0x19

    invoke-static {v2, v1}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v2

    return-object v2

    .line 541
    .end local v1    # "data":[B
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static encodeData(I)Lcom/quicinc/cne/CNERequest;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 604
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/quicinc/cne/ProtoMsgParser;->encodeData(I[B)Lcom/quicinc/cne/CNERequest;

    move-result-object v0

    return-object v0
.end method

.method private static encodeData(I[B)Lcom/quicinc/cne/CNERequest;
    .locals 10
    .param p0, "type"    # I
    .param p1, "data"    # [B

    .prologue
    const/4 v9, 0x0

    .line 608
    invoke-static {p0}, Lcom/quicinc/cne/CNERequest;->obtain(I)Lcom/quicinc/cne/CNERequest;

    move-result-object v5

    .line 609
    .local v5, "rr":Lcom/quicinc/cne/CNERequest;
    if-nez v5, :cond_0

    .line 610
    const-string/jumbo v6, "PB_MSG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cannot create CNERequest type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    return-object v9

    .line 613
    :cond_0
    new-instance v3, Lcom/quicinc/cne/Native$CneCommands;

    invoke-direct {v3}, Lcom/quicinc/cne/Native$CneCommands;-><init>()V

    .line 614
    .local v3, "msg":Lcom/quicinc/cne/Native$CneCommands;
    iget v6, v5, Lcom/quicinc/cne/CNERequest;->mRequest:I

    invoke-virtual {v3, v6}, Lcom/quicinc/cne/Native$CneCommands;->setCmd(I)Lcom/quicinc/cne/Native$CneCommands;

    .line 615
    iget v6, v5, Lcom/quicinc/cne/CNERequest;->mSerial:I

    invoke-virtual {v3, v6}, Lcom/quicinc/cne/Native$CneCommands;->setSerial(I)Lcom/quicinc/cne/Native$CneCommands;

    .line 617
    if-eqz p1, :cond_1

    .line 618
    invoke-static {p1}, Lcom/google/protobuf/micro/ByteStringMicro;->copyFrom([B)Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/quicinc/cne/Native$CneCommands;->setPayload(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/quicinc/cne/Native$CneCommands;

    .line 620
    :cond_1
    invoke-virtual {v3}, Lcom/quicinc/cne/Native$CneCommands;->getSerializedSize()I

    move-result v4

    .line 622
    .local v4, "msgLength":I
    new-array v6, v4, [B

    iput-object v6, v5, Lcom/quicinc/cne/CNERequest;->mData:[B

    .line 624
    :try_start_0
    invoke-virtual {v3}, Lcom/quicinc/cne/Native$CneCommands;->toByteArray()[B

    move-result-object v6

    iget-object v7, v5, Lcom/quicinc/cne/CNERequest;->mData:[B

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v8, v7, v9, v4}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_0
    return-object v5

    .line 629
    :catch_0
    move-exception v2

    .line 630
    .local v2, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "PB_MSG"

    const-string/jumbo v7, "NullPointerException while encoding data"

    invoke-static {v6, v7}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 627
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 628
    .local v0, "ex":Ljava/lang/ArrayStoreException;
    const-string/jumbo v6, "PB_MSG"

    const-string/jumbo v7, "ArrayStoreException while encoding data"

    invoke-static {v6, v7}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 625
    .end local v0    # "ex":Ljava/lang/ArrayStoreException;
    :catch_2
    move-exception v1

    .line 626
    .local v1, "ex":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v6, "PB_MSG"

    const-string/jumbo v7, "IndexOutOfBoundsException while encoding data"

    invoke-static {v6, v7}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static parseBqeActiveProbe([B)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 58
    if-nez p0, :cond_0

    return-object v4

    .line 61
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->parseFrom([B)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 67
    .local v1, "p":Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasBssid()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasUri()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasHttpuri()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasFileSize()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BqeActiveProbeMsg:  bssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 73
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getBssid()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 74
    const-string/jumbo v4, " uri = "

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 74
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getUri()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 75
    const-string/jumbo v4, " httpuri = "

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 75
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getHttpuri()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 76
    const-string/jumbo v4, " fileSize = "

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 76
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getFileSize()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-object v1

    .line 62
    .end local v1    # "p":Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    array-length v2, p0

    const-string/jumbo v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 65
    return-object v4

    .line 69
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .restart local v1    # "p":Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    :cond_1
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-object v4
.end method

.method public static parseBqePostParam([B)Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 122
    if-nez p0, :cond_0

    return-object v4

    .line 125
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->parseFrom([B)Lcom/quicinc/cne/Native$BqePostParamsMsg;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 131
    .local v1, "p":Lcom/quicinc/cne/Native$BqePostParamsMsg;
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasBssid()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasUri()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTputKiloBitsPerSec()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTimeStampSec()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "BqePostParamsMsg:  bssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 137
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getBssid()Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 138
    const-string/jumbo v4, " uri = "

    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 138
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getUri()Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 139
    const-string/jumbo v4, " tputKiloBitsPerSec = "

    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 139
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getTputKiloBitsPerSec()I

    move-result v4

    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 140
    const-string/jumbo v4, " timeStampSec = "

    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 140
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getTimeStampSec()I

    move-result v4

    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-object v1

    .line 126
    .end local v1    # "p":Lcom/quicinc/cne/Native$BqePostParamsMsg;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    array-length v2, p0

    const-string/jumbo v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 129
    return-object v4

    .line 133
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .restart local v1    # "p":Lcom/quicinc/cne/Native$BqePostParamsMsg;
    :cond_1
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-object v4
.end method

.method public static parseDefaultRoute([B)Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 81
    if-nez p0, :cond_0

    return-object v4

    .line 84
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->parseFrom([B)Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 90
    .local v1, "p":Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->hasRattype()Z

    move-result v2

    if-nez v2, :cond_1

    .line 91
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-object v4

    .line 85
    .end local v1    # "p":Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    array-length v2, p0

    const-string/jumbo v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 88
    return-object v4

    .line 94
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .restart local v1    # "p":Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    :cond_1
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SetDefaultRouteMsg: rat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->getRattype()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-object v1
.end method

.method public static parseDisallowedAP([B)Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 37
    if-nez p0, :cond_0

    return-object v4

    .line 40
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->parseFrom([B)Lcom/quicinc/cne/Native$DisallowedAP;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 46
    .local v1, "p":Lcom/quicinc/cne/Native$DisallowedAP;
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$DisallowedAP;->hasDisallowed()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$DisallowedAP;->hasReason()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$DisallowedAP;->hasBssid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DisallowedAP: disallowed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 51
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$DisallowedAP;->getDisallowed()I

    move-result v4

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 52
    const-string/jumbo v4, " reason = "

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 52
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$DisallowedAP;->getReason()I

    move-result v4

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 53
    const-string/jumbo v4, " bssid = "

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 53
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$DisallowedAP;->getBssid()Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-object v1

    .line 41
    .end local v1    # "p":Lcom/quicinc/cne/Native$DisallowedAP;
    :catch_0
    move-exception v0

    .line 42
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    array-length v2, p0

    const-string/jumbo v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 44
    return-object v4

    .line 47
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .restart local v1    # "p":Lcom/quicinc/cne/Native$DisallowedAP;
    :cond_1
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-object v4
.end method

.method public static parseFeatureInfo([B)Lcom/quicinc/cne/Native$FeatureInfo;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 145
    if-nez p0, :cond_0

    return-object v4

    .line 148
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->parseFrom([B)Lcom/quicinc/cne/Native$FeatureInfo;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 154
    .local v1, "p":Lcom/quicinc/cne/Native$FeatureInfo;
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureId()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FeatureInfo:  featureId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 159
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureInfo;->getFeatureId()I

    move-result v4

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 160
    const-string/jumbo v4, " featureStatus = "

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 160
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureInfo;->getFeatureStatus()I

    move-result v4

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-object v1

    .line 149
    .end local v1    # "p":Lcom/quicinc/cne/Native$FeatureInfo;
    :catch_0
    move-exception v0

    .line 150
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    array-length v2, p0

    const-string/jumbo v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 152
    return-object v4

    .line 155
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .restart local v1    # "p":Lcom/quicinc/cne/Native$FeatureInfo;
    :cond_1
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-object v4
.end method

.method public static parseFeatureResp([B)Lcom/quicinc/cne/Native$FeatureRespMsg;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 165
    if-nez p0, :cond_0

    return-object v4

    .line 168
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$FeatureRespMsg;->parseFrom([B)Lcom/quicinc/cne/Native$FeatureRespMsg;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 174
    .local v1, "p":Lcom/quicinc/cne/Native$FeatureRespMsg;
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureRespMsg;->hasFeatureType()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureRespMsg;->hasFeatureStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureRespMsg;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FeatureRespMsg:  featureId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 179
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureRespMsg;->getFeatureType()I

    move-result v4

    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 180
    const-string/jumbo v4, " featureStatus = "

    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 180
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureRespMsg;->getFeatureStatus()I

    move-result v4

    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 181
    const-string/jumbo v4, " result = "

    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 181
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$FeatureRespMsg;->getResult()I

    move-result v4

    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-object v1

    .line 169
    .end local v1    # "p":Lcom/quicinc/cne/Native$FeatureRespMsg;
    :catch_0
    move-exception v0

    .line 170
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    array-length v2, p0

    const-string/jumbo v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 172
    return-object v4

    .line 175
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .restart local v1    # "p":Lcom/quicinc/cne/Native$FeatureRespMsg;
    :cond_1
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-object v4
.end method

.method public static parseIcdStartMsg([B)Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 99
    if-nez p0, :cond_0

    return-object v4

    .line 102
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->parseFrom([B)Lcom/quicinc/cne/Native$IcdStartMsg;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 108
    .local v1, "p":Lcom/quicinc/cne/Native$IcdStartMsg;
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasUri()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasHttpuri()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasBssid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTimeout()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IcdStartMsg: uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 114
    const-string/jumbo v4, " httpuri = "

    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 114
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->getHttpuri()Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 115
    const-string/jumbo v4, " bssid = "

    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 115
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->getBssid()Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 116
    const-string/jumbo v4, " timeout = "

    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 116
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->getTimeout()I

    move-result v4

    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 117
    const-string/jumbo v4, " tid = "

    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 117
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->getTid()I

    move-result v4

    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-object v1

    .line 103
    .end local v1    # "p":Lcom/quicinc/cne/Native$IcdStartMsg;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    array-length v2, p0

    const-string/jumbo v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 106
    return-object v4

    .line 110
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .restart local v1    # "p":Lcom/quicinc/cne/Native$IcdStartMsg;
    :cond_1
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-object v4
.end method

.method public static parseNatKA([B)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 206
    if-nez p0, :cond_0

    return-object v4

    .line 209
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->parseFrom([B)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 215
    .local v1, "p":Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasTimer()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasSrcPort()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestPort()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestIp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NatKeepAliveRequestMsg:  timer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 221
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getTimer()I

    move-result v4

    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 222
    const-string/jumbo v4, " srcPort = "

    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 222
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getSrcPort()I

    move-result v4

    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 223
    const-string/jumbo v4, " destPort = "

    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 223
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getDestPort()I

    move-result v4

    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 224
    const-string/jumbo v4, " destIp = "

    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 224
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getDestIp()Ljava/lang/String;

    move-result-object v4

    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-object v1

    .line 210
    .end local v1    # "p":Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    array-length v2, p0

    const-string/jumbo v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 213
    return-object v4

    .line 217
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .restart local v1    # "p":Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    :cond_1
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-object v4
.end method

.method public static parseNetRequest([B)Lcom/quicinc/cne/Native$NetRequest;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 17
    if-nez p0, :cond_0

    return-object v4

    .line 20
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$NetRequest;->parseFrom([B)Lcom/quicinc/cne/Native$NetRequest;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 26
    .local v1, "p":Lcom/quicinc/cne/Native$NetRequest;
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NetRequest;->hasRattype()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NetRequest;->hasSlottype()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NetRequest: rat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 31
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NetRequest;->getRattype()I

    move-result v4

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 32
    const-string/jumbo v4, " slot = "

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 32
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$NetRequest;->getSlottype()I

    move-result v4

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-object v1

    .line 21
    .end local v1    # "p":Lcom/quicinc/cne/Native$NetRequest;
    :catch_0
    move-exception v0

    .line 22
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    array-length v2, p0

    const-string/jumbo v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 24
    return-object v4

    .line 27
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .restart local v1    # "p":Lcom/quicinc/cne/Native$NetRequest;
    :cond_1
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-object v4
.end method

.method public static parsePolicyUpdateResp([B)Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 186
    if-nez p0, :cond_0

    return-object v4

    .line 189
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->parseFrom([B)Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 195
    .local v1, "p":Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->hasPolicy()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PolicyUpdateRespMsg:  policy = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 200
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->getPolicy()I

    move-result v4

    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 201
    const-string/jumbo v4, " result = "

    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 201
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->getResult()I

    move-result v4

    .line 199
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-object v1

    .line 190
    .end local v1    # "p":Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    array-length v2, p0

    const-string/jumbo v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 193
    return-object v4

    .line 196
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .restart local v1    # "p":Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;
    :cond_1
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-object v4
.end method

.method public static parseRssiOffload([B)Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 5
    .param p0, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 229
    if-nez p0, :cond_0

    return-object v4

    .line 232
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->parseFrom([B)Lcom/quicinc/cne/Native$RssiOffloadMsg;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 238
    .local v1, "p":Lcom/quicinc/cne/Native$RssiOffloadMsg;
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasProfileName()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasOperatorName()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiHigh()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiLow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    const-string/jumbo v2, "PB_MSG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "RssiOffloadMsg:  profileName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 244
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getProfileName()Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 245
    const-string/jumbo v4, " operatorName = "

    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 245
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 246
    const-string/jumbo v4, " rssiHigh = "

    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 246
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getRssiHigh()I

    move-result v4

    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 247
    const-string/jumbo v4, " rssiLow = "

    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 247
    invoke-virtual {v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getRssiLow()I

    move-result v4

    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-object v1

    .line 233
    .end local v1    # "p":Lcom/quicinc/cne/Native$RssiOffloadMsg;
    :catch_0
    move-exception v0

    .line 234
    .local v0, "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "parsing protobuf msg exception"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    array-length v2, p0

    const-string/jumbo v3, "RECV"

    invoke-static {p0, v2, v3}, Lcom/quicinc/cne/CneMsg;->logData([BILjava/lang/String;)V

    .line 236
    return-object v4

    .line 240
    .end local v0    # "ex":Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .restart local v1    # "p":Lcom/quicinc/cne/Native$RssiOffloadMsg;
    :cond_1
    const-string/jumbo v2, "PB_MSG"

    const-string/jumbo v3, "protobuf: missing at least one field."

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-object v4
.end method
