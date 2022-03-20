.class public final Lcom/quicinc/cne/Native$RatInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RatInfo"
.end annotation


# static fields
.field public static final ERRORCAUSE_FIELD_NUMBER:I = 0xc

.field public static final IFACEV6_FIELD_NUMBER:I = 0x7

.field public static final IFACE_FIELD_NUMBER:I = 0x6

.field public static final IPADDRV6_FIELD_NUMBER:I = 0x5

.field public static final IPADDR_FIELD_NUMBER:I = 0x4

.field public static final ISANDROIDVALIDATED_FIELD_NUMBER:I = 0x9

.field public static final NETHDL_FIELD_NUMBER:I = 0xa

.field public static final NETTYPE_FIELD_NUMBER:I = 0x1

.field public static final NETWORKSTATE_FIELD_NUMBER:I = 0x3

.field public static final SLOT_FIELD_NUMBER:I = 0xb

.field public static final SUBTYPE_FIELD_NUMBER:I = 0x2

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x8


# instance fields
.field private cachedSize:I

.field private errorCause_:I

.field private hasErrorCause:Z

.field private hasIface:Z

.field private hasIfaceV6:Z

.field private hasIpAddr:Z

.field private hasIpAddrV6:Z

.field private hasIsAndroidValidated:Z

.field private hasNetHdl:Z

.field private hasNetType:Z

.field private hasNetworkState:Z

.field private hasSlot:Z

.field private hasSubType:Z

.field private hasTimeStamp:Z

.field private ifaceV6_:Ljava/lang/String;

.field private iface_:Ljava/lang/String;

.field private ipAddrV6_:Ljava/lang/String;

.field private ipAddr_:Ljava/lang/String;

.field private isAndroidValidated_:Z

.field private netHdl_:J

.field private netType_:I

.field private networkState_:I

.field private slot_:I

.field private subType_:I

.field private timeStamp_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1408
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1413
    iput v2, p0, Lcom/quicinc/cne/Native$RatInfo;->netType_:I

    .line 1430
    iput v2, p0, Lcom/quicinc/cne/Native$RatInfo;->subType_:I

    .line 1447
    iput v2, p0, Lcom/quicinc/cne/Native$RatInfo;->networkState_:I

    .line 1464
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->ipAddr_:Ljava/lang/String;

    .line 1481
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->ipAddrV6_:Ljava/lang/String;

    .line 1498
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->iface_:Ljava/lang/String;

    .line 1515
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->ifaceV6_:Ljava/lang/String;

    .line 1532
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->timeStamp_:Ljava/lang/String;

    .line 1549
    iput-boolean v2, p0, Lcom/quicinc/cne/Native$RatInfo;->isAndroidValidated_:Z

    .line 1566
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/quicinc/cne/Native$RatInfo;->netHdl_:J

    .line 1583
    iput v2, p0, Lcom/quicinc/cne/Native$RatInfo;->slot_:I

    .line 1600
    iput v2, p0, Lcom/quicinc/cne/Native$RatInfo;->errorCause_:I

    .line 1676
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$RatInfo;->cachedSize:I

    .line 1408
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1816
    new-instance v0, Lcom/quicinc/cne/Native$RatInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$RatInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$RatInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1810
    new-instance v0, Lcom/quicinc/cne/Native$RatInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$RatInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$RatInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$RatInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .prologue
    .line 1615
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearNetType()Lcom/quicinc/cne/Native$RatInfo;

    .line 1616
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearSubType()Lcom/quicinc/cne/Native$RatInfo;

    .line 1617
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearNetworkState()Lcom/quicinc/cne/Native$RatInfo;

    .line 1618
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearIpAddr()Lcom/quicinc/cne/Native$RatInfo;

    .line 1619
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearIpAddrV6()Lcom/quicinc/cne/Native$RatInfo;

    .line 1620
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearIface()Lcom/quicinc/cne/Native$RatInfo;

    .line 1621
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearIfaceV6()Lcom/quicinc/cne/Native$RatInfo;

    .line 1622
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearTimeStamp()Lcom/quicinc/cne/Native$RatInfo;

    .line 1623
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearIsAndroidValidated()Lcom/quicinc/cne/Native$RatInfo;

    .line 1624
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearNetHdl()Lcom/quicinc/cne/Native$RatInfo;

    .line 1625
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearSlot()Lcom/quicinc/cne/Native$RatInfo;

    .line 1626
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->clearErrorCause()Lcom/quicinc/cne/Native$RatInfo;

    .line 1627
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$RatInfo;->cachedSize:I

    .line 1628
    return-object p0
.end method

.method public clearErrorCause()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1609
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasErrorCause:Z

    .line 1610
    iput v0, p0, Lcom/quicinc/cne/Native$RatInfo;->errorCause_:I

    .line 1611
    return-object p0
.end method

.method public clearIface()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .prologue
    .line 1507
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIface:Z

    .line 1508
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->iface_:Ljava/lang/String;

    .line 1509
    return-object p0
.end method

.method public clearIfaceV6()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .prologue
    .line 1524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIfaceV6:Z

    .line 1525
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->ifaceV6_:Ljava/lang/String;

    .line 1526
    return-object p0
.end method

.method public clearIpAddr()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .prologue
    .line 1473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIpAddr:Z

    .line 1474
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->ipAddr_:Ljava/lang/String;

    .line 1475
    return-object p0
.end method

.method public clearIpAddrV6()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .prologue
    .line 1490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIpAddrV6:Z

    .line 1491
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->ipAddrV6_:Ljava/lang/String;

    .line 1492
    return-object p0
.end method

.method public clearIsAndroidValidated()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1558
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIsAndroidValidated:Z

    .line 1559
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->isAndroidValidated_:Z

    .line 1560
    return-object p0
.end method

.method public clearNetHdl()Lcom/quicinc/cne/Native$RatInfo;
    .locals 2

    .prologue
    .line 1575
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasNetHdl:Z

    .line 1576
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/quicinc/cne/Native$RatInfo;->netHdl_:J

    .line 1577
    return-object p0
.end method

.method public clearNetType()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1422
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasNetType:Z

    .line 1423
    iput v0, p0, Lcom/quicinc/cne/Native$RatInfo;->netType_:I

    .line 1424
    return-object p0
.end method

.method public clearNetworkState()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1456
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasNetworkState:Z

    .line 1457
    iput v0, p0, Lcom/quicinc/cne/Native$RatInfo;->networkState_:I

    .line 1458
    return-object p0
.end method

.method public clearSlot()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1592
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasSlot:Z

    .line 1593
    iput v0, p0, Lcom/quicinc/cne/Native$RatInfo;->slot_:I

    .line 1594
    return-object p0
.end method

.method public clearSubType()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1439
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasSubType:Z

    .line 1440
    iput v0, p0, Lcom/quicinc/cne/Native$RatInfo;->subType_:I

    .line 1441
    return-object p0
.end method

.method public clearTimeStamp()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .prologue
    .line 1541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasTimeStamp:Z

    .line 1542
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->timeStamp_:Ljava/lang/String;

    .line 1543
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1679
    iget v0, p0, Lcom/quicinc/cne/Native$RatInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 1681
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getSerializedSize()I

    .line 1683
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$RatInfo;->cachedSize:I

    return v0
.end method

.method public getErrorCause()I
    .locals 1

    .prologue
    .line 1601
    iget v0, p0, Lcom/quicinc/cne/Native$RatInfo;->errorCause_:I

    return v0
.end method

.method public getIface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->iface_:Ljava/lang/String;

    return-object v0
.end method

.method public getIfaceV6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1516
    iget-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->ifaceV6_:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->ipAddr_:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddrV6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->ipAddrV6_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsAndroidValidated()Z
    .locals 1

    .prologue
    .line 1550
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->isAndroidValidated_:Z

    return v0
.end method

.method public getNetHdl()J
    .locals 2

    .prologue
    .line 1567
    iget-wide v0, p0, Lcom/quicinc/cne/Native$RatInfo;->netHdl_:J

    return-wide v0
.end method

.method public getNetType()I
    .locals 1

    .prologue
    .line 1414
    iget v0, p0, Lcom/quicinc/cne/Native$RatInfo;->netType_:I

    return v0
.end method

.method public getNetworkState()I
    .locals 1

    .prologue
    .line 1448
    iget v0, p0, Lcom/quicinc/cne/Native$RatInfo;->networkState_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1688
    const/4 v0, 0x0

    .line 1689
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasNetType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1691
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getNetType()I

    move-result v1

    const/4 v2, 0x1

    .line 1690
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 1693
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasSubType()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1695
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getSubType()I

    move-result v1

    const/4 v2, 0x2

    .line 1694
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1697
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasNetworkState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1699
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getNetworkState()I

    move-result v1

    const/4 v2, 0x3

    .line 1698
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1701
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasIpAddr()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1703
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getIpAddr()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 1702
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1705
    :cond_3
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasIpAddrV6()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1707
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getIpAddrV6()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 1706
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1709
    :cond_4
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasIface()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1711
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getIface()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    .line 1710
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1713
    :cond_5
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasIfaceV6()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1715
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getIfaceV6()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    .line 1714
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1717
    :cond_6
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasTimeStamp()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1719
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    .line 1718
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1721
    :cond_7
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasIsAndroidValidated()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1723
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getIsAndroidValidated()Z

    move-result v1

    const/16 v2, 0x9

    .line 1722
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1725
    :cond_8
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasNetHdl()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1727
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getNetHdl()J

    move-result-wide v2

    const/16 v1, 0xa

    .line 1726
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1729
    :cond_9
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasSlot()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1731
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getSlot()I

    move-result v1

    const/16 v2, 0xb

    .line 1730
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1733
    :cond_a
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasErrorCause()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1735
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getErrorCause()I

    move-result v1

    const/16 v2, 0xc

    .line 1734
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1737
    :cond_b
    iput v0, p0, Lcom/quicinc/cne/Native$RatInfo;->cachedSize:I

    .line 1738
    return v0
.end method

.method public getSlot()I
    .locals 1

    .prologue
    .line 1584
    iget v0, p0, Lcom/quicinc/cne/Native$RatInfo;->slot_:I

    return v0
.end method

.method public getSubType()I
    .locals 1

    .prologue
    .line 1431
    iget v0, p0, Lcom/quicinc/cne/Native$RatInfo;->subType_:I

    return v0
.end method

.method public getTimeStamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/quicinc/cne/Native$RatInfo;->timeStamp_:Ljava/lang/String;

    return-object v0
.end method

.method public hasErrorCause()Z
    .locals 1

    .prologue
    .line 1602
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasErrorCause:Z

    return v0
.end method

.method public hasIface()Z
    .locals 1

    .prologue
    .line 1500
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIface:Z

    return v0
.end method

.method public hasIfaceV6()Z
    .locals 1

    .prologue
    .line 1517
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIfaceV6:Z

    return v0
.end method

.method public hasIpAddr()Z
    .locals 1

    .prologue
    .line 1466
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIpAddr:Z

    return v0
.end method

.method public hasIpAddrV6()Z
    .locals 1

    .prologue
    .line 1483
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIpAddrV6:Z

    return v0
.end method

.method public hasIsAndroidValidated()Z
    .locals 1

    .prologue
    .line 1551
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIsAndroidValidated:Z

    return v0
.end method

.method public hasNetHdl()Z
    .locals 1

    .prologue
    .line 1568
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasNetHdl:Z

    return v0
.end method

.method public hasNetType()Z
    .locals 1

    .prologue
    .line 1415
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasNetType:Z

    return v0
.end method

.method public hasNetworkState()Z
    .locals 1

    .prologue
    .line 1449
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasNetworkState:Z

    return v0
.end method

.method public hasSlot()Z
    .locals 1

    .prologue
    .line 1585
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasSlot:Z

    return v0
.end method

.method public hasSubType()Z
    .locals 1

    .prologue
    .line 1432
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasSubType:Z

    return v0
.end method

.method public hasTimeStamp()Z
    .locals 1

    .prologue
    .line 1534
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasTimeStamp:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1632
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1742
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$RatInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RatInfo;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1746
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1747
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1751
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$RatInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1752
    return-object p0

    .line 1749
    :sswitch_0
    return-object p0

    .line 1757
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setNetType(I)Lcom/quicinc/cne/Native$RatInfo;

    goto :goto_0

    .line 1761
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setSubType(I)Lcom/quicinc/cne/Native$RatInfo;

    goto :goto_0

    .line 1765
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setNetworkState(I)Lcom/quicinc/cne/Native$RatInfo;

    goto :goto_0

    .line 1769
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIpAddr(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    goto :goto_0

    .line 1773
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIpAddrV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    goto :goto_0

    .line 1777
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIface(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    goto :goto_0

    .line 1781
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIfaceV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    goto :goto_0

    .line 1785
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setTimeStamp(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;

    goto :goto_0

    .line 1789
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setIsAndroidValidated(Z)Lcom/quicinc/cne/Native$RatInfo;

    goto :goto_0

    .line 1793
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/quicinc/cne/Native$RatInfo;->setNetHdl(J)Lcom/quicinc/cne/Native$RatInfo;

    goto :goto_0

    .line 1797
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setSlot(I)Lcom/quicinc/cne/Native$RatInfo;

    goto :goto_0

    .line 1801
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatInfo;->setErrorCause(I)Lcom/quicinc/cne/Native$RatInfo;

    goto :goto_0

    .line 1747
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
    .end sparse-switch
.end method

.method public setErrorCause(I)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasErrorCause:Z

    .line 1605
    iput p1, p0, Lcom/quicinc/cne/Native$RatInfo;->errorCause_:I

    .line 1606
    return-object p0
.end method

.method public setIface(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIface:Z

    .line 1503
    iput-object p1, p0, Lcom/quicinc/cne/Native$RatInfo;->iface_:Ljava/lang/String;

    .line 1504
    return-object p0
.end method

.method public setIfaceV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIfaceV6:Z

    .line 1520
    iput-object p1, p0, Lcom/quicinc/cne/Native$RatInfo;->ifaceV6_:Ljava/lang/String;

    .line 1521
    return-object p0
.end method

.method public setIpAddr(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIpAddr:Z

    .line 1469
    iput-object p1, p0, Lcom/quicinc/cne/Native$RatInfo;->ipAddr_:Ljava/lang/String;

    .line 1470
    return-object p0
.end method

.method public setIpAddrV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIpAddrV6:Z

    .line 1486
    iput-object p1, p0, Lcom/quicinc/cne/Native$RatInfo;->ipAddrV6_:Ljava/lang/String;

    .line 1487
    return-object p0
.end method

.method public setIsAndroidValidated(Z)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasIsAndroidValidated:Z

    .line 1554
    iput-boolean p1, p0, Lcom/quicinc/cne/Native$RatInfo;->isAndroidValidated_:Z

    .line 1555
    return-object p0
.end method

.method public setNetHdl(J)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 1570
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasNetHdl:Z

    .line 1571
    iput-wide p1, p0, Lcom/quicinc/cne/Native$RatInfo;->netHdl_:J

    .line 1572
    return-object p0
.end method

.method public setNetType(I)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1417
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasNetType:Z

    .line 1418
    iput p1, p0, Lcom/quicinc/cne/Native$RatInfo;->netType_:I

    .line 1419
    return-object p0
.end method

.method public setNetworkState(I)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasNetworkState:Z

    .line 1452
    iput p1, p0, Lcom/quicinc/cne/Native$RatInfo;->networkState_:I

    .line 1453
    return-object p0
.end method

.method public setSlot(I)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasSlot:Z

    .line 1588
    iput p1, p0, Lcom/quicinc/cne/Native$RatInfo;->slot_:I

    .line 1589
    return-object p0
.end method

.method public setSubType(I)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasSubType:Z

    .line 1435
    iput p1, p0, Lcom/quicinc/cne/Native$RatInfo;->subType_:I

    .line 1436
    return-object p0
.end method

.method public setTimeStamp(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1536
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatInfo;->hasTimeStamp:Z

    .line 1537
    iput-object p1, p0, Lcom/quicinc/cne/Native$RatInfo;->timeStamp_:Ljava/lang/String;

    .line 1538
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1638
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasNetType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1639
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getNetType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1641
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasSubType()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1642
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getSubType()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1644
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasNetworkState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1645
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getNetworkState()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1647
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasIpAddr()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1648
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getIpAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1650
    :cond_3
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasIpAddrV6()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1651
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getIpAddrV6()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1653
    :cond_4
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasIface()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1654
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getIface()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1656
    :cond_5
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasIfaceV6()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1657
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getIfaceV6()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1659
    :cond_6
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasTimeStamp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1660
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getTimeStamp()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1662
    :cond_7
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasIsAndroidValidated()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1663
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getIsAndroidValidated()Z

    move-result v0

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1665
    :cond_8
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasNetHdl()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1666
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getNetHdl()J

    move-result-wide v0

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 1668
    :cond_9
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasSlot()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1669
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getSlot()I

    move-result v0

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1671
    :cond_a
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->hasErrorCause()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1672
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatInfo;->getErrorCause()I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1637
    :cond_b
    return-void
.end method
