.class public final Lcom/quicinc/cne/Native$WlanNetConfigInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WlanNetConfigInfo"
.end annotation


# static fields
.field public static final BSSID_FIELD_NUMBER:I = 0x3

.field public static final IP4DNS_FIELD_NUMBER:I = 0x5

.field public static final IP6DNS_FIELD_NUMBER:I = 0x6

.field public static final NC_FIELD_NUMBER:I = 0x2

.field public static final PROFILE_FIELD_NUMBER:I = 0x1

.field public static final SSID_FIELD_NUMBER:I = 0x4

.field public static final STATE_FIELD_NUMBER:I = 0x7

.field public static final WQERESULT_FIELD_NUMBER:I = 0x8


# instance fields
.field private bssid_:Ljava/lang/String;

.field private cachedSize:I

.field private hasBssid:Z

.field private hasNc:Z

.field private hasProfile:Z

.field private hasSsid:Z

.field private hasState:Z

.field private hasWqeresult:Z

.field private ip4Dns_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ip6Dns_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nc_:Lcom/quicinc/cne/Native$CnoNetcfgInfo;

.field private profile_:Ljava/lang/String;

.field private ssid_:Ljava/lang/String;

.field private state_:I

.field private wqeresult_:Lcom/quicinc/cne/Native$WqeResultInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6422
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6427
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->profile_:Ljava/lang/String;

    .line 6444
    iput-object v1, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->nc_:Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    .line 6464
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->bssid_:Ljava/lang/String;

    .line 6481
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ssid_:Ljava/lang/String;

    .line 6498
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 6497
    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ip4Dns_:Ljava/util/List;

    .line 6531
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 6530
    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ip6Dns_:Ljava/util/List;

    .line 6564
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->state_:I

    .line 6581
    iput-object v1, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->wqeresult_:Lcom/quicinc/cne/Native$WqeResultInfo;

    .line 6644
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->cachedSize:I

    .line 6422
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6766
    new-instance v0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WlanNetConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 6760
    new-instance v0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;

    return-object v0
.end method


# virtual methods
.method public addIp4Dns(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6514
    if-nez p1, :cond_0

    .line 6515
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6517
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ip4Dns_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ip4Dns_:Ljava/util/List;

    .line 6520
    :cond_1
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ip4Dns_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6521
    return-object p0
.end method

.method public addIp6Dns(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6547
    if-nez p1, :cond_0

    .line 6548
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6550
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ip6Dns_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ip6Dns_:Ljava/util/List;

    .line 6553
    :cond_1
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ip6Dns_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6554
    return-object p0
.end method

.method public final clear()Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 1

    .prologue
    .line 6599
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->clearProfile()Lcom/quicinc/cne/Native$WlanNetConfigInfo;

    .line 6600
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->clearNc()Lcom/quicinc/cne/Native$WlanNetConfigInfo;

    .line 6601
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->clearBssid()Lcom/quicinc/cne/Native$WlanNetConfigInfo;

    .line 6602
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->clearSsid()Lcom/quicinc/cne/Native$WlanNetConfigInfo;

    .line 6603
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->clearIp4Dns()Lcom/quicinc/cne/Native$WlanNetConfigInfo;

    .line 6604
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->clearIp6Dns()Lcom/quicinc/cne/Native$WlanNetConfigInfo;

    .line 6605
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->clearState()Lcom/quicinc/cne/Native$WlanNetConfigInfo;

    .line 6606
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->clearWqeresult()Lcom/quicinc/cne/Native$WlanNetConfigInfo;

    .line 6607
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->cachedSize:I

    .line 6608
    return-object p0
.end method

.method public clearBssid()Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 1

    .prologue
    .line 6473
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasBssid:Z

    .line 6474
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->bssid_:Ljava/lang/String;

    .line 6475
    return-object p0
.end method

.method public clearIp4Dns()Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 1

    .prologue
    .line 6524
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ip4Dns_:Ljava/util/List;

    .line 6525
    return-object p0
.end method

.method public clearIp6Dns()Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 1

    .prologue
    .line 6557
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ip6Dns_:Ljava/util/List;

    .line 6558
    return-object p0
.end method

.method public clearNc()Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 1

    .prologue
    .line 6456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasNc:Z

    .line 6457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->nc_:Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    .line 6458
    return-object p0
.end method

.method public clearProfile()Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 1

    .prologue
    .line 6436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasProfile:Z

    .line 6437
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->profile_:Ljava/lang/String;

    .line 6438
    return-object p0
.end method

.method public clearSsid()Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 1

    .prologue
    .line 6490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasSsid:Z

    .line 6491
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ssid_:Ljava/lang/String;

    .line 6492
    return-object p0
.end method

.method public clearState()Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6573
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasState:Z

    .line 6574
    iput v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->state_:I

    .line 6575
    return-object p0
.end method

.method public clearWqeresult()Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 1

    .prologue
    .line 6593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasWqeresult:Z

    .line 6594
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->wqeresult_:Lcom/quicinc/cne/Native$WqeResultInfo;

    .line 6595
    return-object p0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6465
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->bssid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6647
    iget v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 6649
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->getSerializedSize()I

    .line 6651
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->cachedSize:I

    return v0
.end method

.method public getIp4Dns(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6504
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ip4Dns_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIp4DnsCount()I
    .locals 1

    .prologue
    .line 6502
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ip4Dns_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIp4DnsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6500
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ip4Dns_:Ljava/util/List;

    return-object v0
.end method

.method public getIp6Dns(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6537
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ip6Dns_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIp6DnsCount()I
    .locals 1

    .prologue
    .line 6535
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ip6Dns_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getIp6DnsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6533
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ip6Dns_:Ljava/util/List;

    return-object v0
.end method

.method public getNc()Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 1

    .prologue
    .line 6446
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->nc_:Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    return-object v0
.end method

.method public getProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6428
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->profile_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 6656
    const/4 v3, 0x0

    .line 6657
    .local v3, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6659
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->getProfile()Ljava/lang/String;

    move-result-object v4

    .line 6658
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/lit8 v3, v4, 0x0

    .line 6661
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasNc()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6663
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->getNc()Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    move-result-object v4

    const/4 v5, 0x2

    .line 6662
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 6665
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasBssid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 6667
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->getBssid()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    .line 6666
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 6669
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasSsid()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6671
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->getSsid()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    .line 6670
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 6674
    :cond_3
    const/4 v0, 0x0

    .line 6675
    .local v0, "dataSize":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->getIp4DnsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6676
    .local v1, "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 6679
    .end local v1    # "element":Ljava/lang/String;
    :cond_4
    add-int/2addr v3, v0

    .line 6680
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->getIp4DnsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 6683
    const/4 v0, 0x0

    .line 6684
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->getIp6DnsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6685
    .restart local v1    # "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 6688
    .end local v1    # "element":Ljava/lang/String;
    :cond_5
    add-int/2addr v3, v0

    .line 6689
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->getIp6DnsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 6691
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasState()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 6693
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->getState()I

    move-result v4

    const/4 v5, 0x7

    .line 6692
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 6695
    :cond_6
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasWqeresult()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 6697
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->getWqeresult()Lcom/quicinc/cne/Native$WqeResultInfo;

    move-result-object v4

    const/16 v5, 0x8

    .line 6696
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 6699
    :cond_7
    iput v3, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->cachedSize:I

    .line 6700
    return v3
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6482
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ssid_:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 6565
    iget v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->state_:I

    return v0
.end method

.method public getWqeresult()Lcom/quicinc/cne/Native$WqeResultInfo;
    .locals 1

    .prologue
    .line 6583
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->wqeresult_:Lcom/quicinc/cne/Native$WqeResultInfo;

    return-object v0
.end method

.method public hasBssid()Z
    .locals 1

    .prologue
    .line 6466
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasBssid:Z

    return v0
.end method

.method public hasNc()Z
    .locals 1

    .prologue
    .line 6445
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasNc:Z

    return v0
.end method

.method public hasProfile()Z
    .locals 1

    .prologue
    .line 6429
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasProfile:Z

    return v0
.end method

.method public hasSsid()Z
    .locals 1

    .prologue
    .line 6483
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasSsid:Z

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 6566
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasState:Z

    return v0
.end method

.method public hasWqeresult()Z
    .locals 1

    .prologue
    .line 6582
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasWqeresult:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6612
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
    .line 6704
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WlanNetConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6708
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6709
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6713
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6714
    return-object p0

    .line 6711
    :sswitch_0
    return-object p0

    .line 6719
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->setProfile(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanNetConfigInfo;

    goto :goto_0

    .line 6723
    :sswitch_2
    new-instance v1, Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;-><init>()V

    .line 6724
    .local v1, "value":Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6725
    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->setNc(Lcom/quicinc/cne/Native$CnoNetcfgInfo;)Lcom/quicinc/cne/Native$WlanNetConfigInfo;

    goto :goto_0

    .line 6729
    .end local v1    # "value":Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanNetConfigInfo;

    goto :goto_0

    .line 6733
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->setSsid(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanNetConfigInfo;

    goto :goto_0

    .line 6737
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->addIp4Dns(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanNetConfigInfo;

    goto :goto_0

    .line 6741
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->addIp6Dns(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanNetConfigInfo;

    goto :goto_0

    .line 6745
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->setState(I)Lcom/quicinc/cne/Native$WlanNetConfigInfo;

    goto :goto_0

    .line 6749
    :sswitch_8
    new-instance v2, Lcom/quicinc/cne/Native$WqeResultInfo;

    invoke-direct {v2}, Lcom/quicinc/cne/Native$WqeResultInfo;-><init>()V

    .line 6750
    .local v2, "value":Lcom/quicinc/cne/Native$WqeResultInfo;
    invoke-virtual {p1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6751
    invoke-virtual {p0, v2}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->setWqeresult(Lcom/quicinc/cne/Native$WqeResultInfo;)Lcom/quicinc/cne/Native$WlanNetConfigInfo;

    goto :goto_0

    .line 6709
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasBssid:Z

    .line 6469
    iput-object p1, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->bssid_:Ljava/lang/String;

    .line 6470
    return-object p0
.end method

.method public setIp4Dns(ILjava/lang/String;)Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 6507
    if-nez p2, :cond_0

    .line 6508
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6510
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ip4Dns_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6511
    return-object p0
.end method

.method public setIp6Dns(ILjava/lang/String;)Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 6540
    if-nez p2, :cond_0

    .line 6541
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6543
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ip6Dns_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 6544
    return-object p0
.end method

.method public setNc(Lcom/quicinc/cne/Native$CnoNetcfgInfo;)Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 1
    .param p1, "value"    # Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    .prologue
    .line 6448
    if-nez p1, :cond_0

    .line 6449
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6451
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasNc:Z

    .line 6452
    iput-object p1, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->nc_:Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    .line 6453
    return-object p0
.end method

.method public setProfile(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasProfile:Z

    .line 6432
    iput-object p1, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->profile_:Ljava/lang/String;

    .line 6433
    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6485
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasSsid:Z

    .line 6486
    iput-object p1, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->ssid_:Ljava/lang/String;

    .line 6487
    return-object p0
.end method

.method public setState(I)Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasState:Z

    .line 6569
    iput p1, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->state_:I

    .line 6570
    return-object p0
.end method

.method public setWqeresult(Lcom/quicinc/cne/Native$WqeResultInfo;)Lcom/quicinc/cne/Native$WlanNetConfigInfo;
    .locals 1
    .param p1, "value"    # Lcom/quicinc/cne/Native$WqeResultInfo;

    .prologue
    .line 6585
    if-nez p1, :cond_0

    .line 6586
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6588
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasWqeresult:Z

    .line 6589
    iput-object p1, p0, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->wqeresult_:Lcom/quicinc/cne/Native$WqeResultInfo;

    .line 6590
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6618
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasProfile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6619
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->getProfile()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6621
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasNc()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6622
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->getNc()Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 6624
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasBssid()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6625
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->getBssid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6627
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasSsid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6628
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->getSsid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6630
    :cond_3
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->getIp4DnsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6631
    .local v0, "element":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 6633
    .end local v0    # "element":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->getIp6DnsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6634
    .restart local v0    # "element":Ljava/lang/String;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_1

    .line 6636
    .end local v0    # "element":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasState()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6637
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->getState()I

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6639
    :cond_6
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->hasWqeresult()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 6640
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanNetConfigInfo;->getWqeresult()Lcom/quicinc/cne/Native$WqeResultInfo;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 6617
    :cond_7
    return-void
.end method
