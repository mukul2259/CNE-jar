.class Lcom/quicinc/cne/CNE$CneRatInfo;
.super Ljava/lang/Object;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CneRatInfo"
.end annotation


# instance fields
.field errorCause:I

.field ifNameV4:Ljava/lang/String;

.field ifNameV6:Ljava/lang/String;

.field ipAddrV4:Ljava/lang/String;

.field ipAddrV6:Ljava/lang/String;

.field isAndroidValidated:Z

.field netHdl:J

.field networkState:I

.field networkType:I

.field slotIdx:I

.field subType:I

.field final synthetic this$0:Lcom/quicinc/cne/CNE;

.field timeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/CNE;)V
    .locals 3
    .param p1, "this$0"    # Lcom/quicinc/cne/CNE;

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 458
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->this$0:Lcom/quicinc/cne/CNE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ipAddrV4:Ljava/lang/String;

    .line 460
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ipAddrV6:Ljava/lang/String;

    .line 461
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ifNameV4:Ljava/lang/String;

    .line 462
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ifNameV6:Ljava/lang/String;

    .line 463
    iput v1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->networkType:I

    .line 464
    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-static {p1, v0}, Lcom/quicinc/cne/CNE;->-wrap10(Lcom/quicinc/cne/CNE;Landroid/net/NetworkInfo$State;)I

    move-result v0

    iput v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->networkState:I

    .line 465
    iput v1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->subType:I

    .line 466
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->timeStamp:Ljava/lang/String;

    .line 467
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->netHdl:J

    .line 468
    iput-boolean v2, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->isAndroidValidated:Z

    .line 469
    iput v2, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->slotIdx:I

    .line 470
    iput v2, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->errorCause:I

    .line 458
    return-void
.end method


# virtual methods
.method public getAndroidValidated()Z
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->isAndroidValidated:Z

    return v0
.end method

.method public getErrorCause()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->errorCause:I

    return v0
.end method

.method public getIPv4Address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ipAddrV4:Ljava/lang/String;

    return-object v0
.end method

.method public getIPv4Iface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ifNameV4:Ljava/lang/String;

    return-object v0
.end method

.method public getIPv6Address()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ipAddrV6:Ljava/lang/String;

    return-object v0
.end method

.method public getIPv6Iface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ifNameV6:Ljava/lang/String;

    return-object v0
.end method

.method public getNetHandle()J
    .locals 2

    .prologue
    .line 499
    iget-wide v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->netHdl:J

    return-wide v0
.end method

.method public getNetworkState()I
    .locals 1

    .prologue
    .line 507
    iget v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->networkState:I

    return v0
.end method

.method public getNetworkType()I
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->networkType:I

    return v0
.end method

.method public getSlotIdx()I
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->slotIdx:I

    return v0
.end method

.method public getSubType()I
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->subType:I

    return v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->timeStamp:Ljava/lang/String;

    return-object v0
.end method

.method public resetRatInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 474
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ipAddrV4:Ljava/lang/String;

    .line 475
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ipAddrV6:Ljava/lang/String;

    .line 476
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ifNameV4:Ljava/lang/String;

    .line 477
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ifNameV6:Ljava/lang/String;

    .line 478
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->netHdl:J

    .line 479
    iput-boolean v2, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->isAndroidValidated:Z

    .line 480
    iput v2, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->slotIdx:I

    .line 481
    iput v2, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->errorCause:I

    .line 473
    return-void
.end method

.method public setAndroidValidated(Z)V
    .locals 0
    .param p1, "isValidated"    # Z

    .prologue
    .line 567
    iput-boolean p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->isAndroidValidated:Z

    .line 566
    return-void
.end method

.method public setErrorCause(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 583
    iput p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->errorCause:I

    .line 582
    return-void
.end method

.method public setIPv4Address(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipV4Addr"    # Ljava/lang/String;

    .prologue
    .line 527
    if-eqz p1, :cond_0

    .line 528
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ipAddrV4:Ljava/lang/String;

    .line 526
    :cond_0
    return-void
.end method

.method public setIPv4Iface(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipV4Iface"    # Ljava/lang/String;

    .prologue
    .line 547
    if-eqz p1, :cond_0

    .line 548
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ifNameV4:Ljava/lang/String;

    .line 546
    :cond_0
    return-void
.end method

.method public setIPv6Address(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipV6Addr"    # Ljava/lang/String;

    .prologue
    .line 537
    if-eqz p1, :cond_0

    .line 538
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ipAddrV6:Ljava/lang/String;

    .line 536
    :cond_0
    return-void
.end method

.method public setIPv6Iface(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipV6Iface"    # Ljava/lang/String;

    .prologue
    .line 557
    if-eqz p1, :cond_0

    .line 558
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->ifNameV6:Ljava/lang/String;

    .line 556
    :cond_0
    return-void
.end method

.method public setNetHandle(J)V
    .locals 1
    .param p1, "netHdl"    # J

    .prologue
    .line 495
    iput-wide p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->netHdl:J

    .line 494
    return-void
.end method

.method public setNetworkState(I)V
    .locals 0
    .param p1, "netState"    # I

    .prologue
    .line 503
    iput p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->networkState:I

    .line 502
    return-void
.end method

.method public setNetworkType(I)V
    .locals 0
    .param p1, "netType"    # I

    .prologue
    .line 519
    iput p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->networkType:I

    .line 518
    return-void
.end method

.method public setSlotIdx(I)V
    .locals 0
    .param p1, "slot"    # I

    .prologue
    .line 575
    iput p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->slotIdx:I

    .line 574
    return-void
.end method

.method public setSubType(I)V
    .locals 0
    .param p1, "subType"    # I

    .prologue
    .line 511
    iput p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->subType:I

    .line 510
    return-void
.end method

.method public setTimeStamp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ts"    # Ljava/lang/String;

    .prologue
    .line 485
    if-eqz p1, :cond_0

    .line 486
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CneRatInfo;->timeStamp:Ljava/lang/String;

    .line 484
    :cond_0
    return-void
.end method
