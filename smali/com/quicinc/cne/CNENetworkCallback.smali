.class public final Lcom/quicinc/cne/CNENetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CNENetworkCallback.java"


# static fields
.field private static final SUB_TYPE:Ljava/lang/String; = "CORE"


# instance fields
.field private currLp:Landroid/net/LinkProperties;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mCne:Lcom/quicinc/cne/CNE;

.field private mContext:Landroid/content/Context;

.field private mNetRequest:Landroid/net/NetworkRequest;

.field private mNetType:I

.field private mSlotIdx:I

.field private mSubId:I

.field private ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/CNE;Landroid/content/Context;II)V
    .locals 2
    .param p1, "cne"    # Lcom/quicinc/cne/CNE;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subid"    # I
    .param p4, "slotidx"    # I

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/quicinc/cne/CNENetworkCallback;->mCne:Lcom/quicinc/cne/CNE;

    .line 42
    iput-object p2, p0, Lcom/quicinc/cne/CNENetworkCallback;->mContext:Landroid/content/Context;

    .line 43
    iput p3, p0, Lcom/quicinc/cne/CNENetworkCallback;->mSubId:I

    .line 44
    iput p4, p0, Lcom/quicinc/cne/CNENetworkCallback;->mSlotIdx:I

    .line 45
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->mCm:Landroid/net/ConnectivityManager;

    .line 46
    new-instance v0, Lcom/quicinc/cne/CNE$CneRatInfo;

    iget-object v1, p0, Lcom/quicinc/cne/CNENetworkCallback;->mCne:Lcom/quicinc/cne/CNE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/quicinc/cne/CNE$CneRatInfo;-><init>(Lcom/quicinc/cne/CNE;)V

    iput-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    .line 47
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    if-nez v0, :cond_0

    .line 48
    const-string/jumbo v0, "CORE"

    const-string/jumbo v1, "Unable to allocate memory for CneRatInfo"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method

.method private updateRatInfo(Landroid/net/LinkProperties;)V
    .locals 8
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 218
    iget-object v4, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    new-instance v5, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/sql/Timestamp;-><init>(J)V

    invoke-virtual {v5}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/quicinc/cne/CNE$CneRatInfo;->setTimeStamp(Ljava/lang/String;)V

    .line 219
    if-eqz p1, :cond_2

    .line 220
    iget-object v4, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/quicinc/cne/CNE$CneRatInfo;->setIPv4Iface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    .line 222
    .local v3, "linkAddrs":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "linkAddress$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 223
    .local v1, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 224
    .local v0, "addr":Ljava/net/InetAddress;
    if-eqz v0, :cond_1

    instance-of v4, v0, Ljava/net/Inet4Address;

    if-eqz v4, :cond_1

    .line 225
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_0

    .line 226
    iget-object v4, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    if-eqz v4, :cond_0

    .line 227
    iget-object v4, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/quicinc/cne/CNE$CneRatInfo;->setIPv4Address(Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_1
    if-eqz v0, :cond_0

    instance-of v4, v0, Ljava/net/Inet6Address;

    if-eqz v4, :cond_0

    .line 232
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_0

    .line 233
    iget-object v4, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    if-eqz v4, :cond_0

    .line 234
    iget-object v4, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/quicinc/cne/CNE$CneRatInfo;->setIPv6Address(Ljava/lang/String;)V

    goto :goto_0

    .line 240
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "linkAddress":Landroid/net/LinkAddress;
    .end local v2    # "linkAddress$iterator":Ljava/util/Iterator;
    .end local v3    # "linkAddrs":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    :cond_2
    iget-object v4, p0, Lcom/quicinc/cne/CNENetworkCallback;->mCne:Lcom/quicinc/cne/CNE;

    iget-object v5, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    iget v6, p0, Lcom/quicinc/cne/CNENetworkCallback;->mNetType:I

    invoke-virtual {v4, v5, v6}, Lcom/quicinc/cne/CNE;->sendRatInfo(Lcom/quicinc/cne/CNE$CneRatInfo;I)V

    .line 217
    return-void
.end method


# virtual methods
.method public createNetworkRequest(I)V
    .locals 4
    .param p1, "netType"    # I

    .prologue
    .line 186
    iput p1, p0, Lcom/quicinc/cne/CNENetworkCallback;->mNetType:I

    .line 187
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/CNENetworkCallback;->getNetworkCapability(I)I

    move-result v0

    .line 188
    .local v0, "capability":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 189
    const-string/jumbo v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bring up network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/quicinc/cne/CNENetworkCallback;->mNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 192
    const/4 v2, 0x0

    .line 190
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/quicinc/cne/CNENetworkCallback;->mNetRequest:Landroid/net/NetworkRequest;

    .line 194
    iget-object v1, p0, Lcom/quicinc/cne/CNENetworkCallback;->mCm:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->mNetRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v1, v2, p0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 185
    :cond_0
    return-void
.end method

.method public createNetworkRequest(II)V
    .locals 4
    .param p1, "netType"    # I
    .param p2, "subId"    # I

    .prologue
    .line 199
    iput p1, p0, Lcom/quicinc/cne/CNENetworkCallback;->mNetType:I

    .line 200
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/CNENetworkCallback;->getNetworkCapability(I)I

    move-result v0

    .line 201
    .local v0, "capability":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 202
    const-string/jumbo v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Bring up network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/quicinc/cne/CNENetworkCallback;->mNetType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "subId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 205
    const/4 v2, 0x0

    .line 203
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 206
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/quicinc/cne/CNENetworkCallback;->mNetRequest:Landroid/net/NetworkRequest;

    .line 208
    iget-object v1, p0, Lcom/quicinc/cne/CNENetworkCallback;->mCm:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->mNetRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v1, v2, p0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 198
    :cond_0
    return-void
.end method

.method public destroyNetworkRequest()V
    .locals 3

    .prologue
    .line 213
    const-string/jumbo v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tear down network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->mNetType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 212
    return-void
.end method

.method public getNetworkCapability(I)I
    .locals 4
    .param p1, "netType"    # I

    .prologue
    .line 155
    const/4 v0, -0x1

    .line 156
    .local v0, "capability":I
    packed-switch p1, :pswitch_data_0

    .line 179
    :pswitch_0
    const-string/jumbo v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown network capability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :goto_0
    return v0

    .line 158
    :pswitch_1
    const/16 v0, 0xc

    .line 159
    goto :goto_0

    .line 161
    :pswitch_2
    const/4 v0, 0x0

    .line 162
    goto :goto_0

    .line 164
    :pswitch_3
    const/4 v0, 0x1

    .line 165
    goto :goto_0

    .line 167
    :pswitch_4
    const/4 v0, 0x4

    .line 168
    goto :goto_0

    .line 170
    :pswitch_5
    const/16 v0, 0x8

    .line 171
    goto :goto_0

    .line 173
    :pswitch_6
    const/16 v0, 0xa

    .line 174
    goto :goto_0

    .line 176
    :pswitch_7
    const-string/jumbo v1, "CORE"

    const-string/jumbo v2, "WWAN_EMERGENCY not supported yet"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getRatInfo()Lcom/quicinc/cne/CNE$CneRatInfo;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    return-object v0
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 7
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v6, 0x0

    .line 54
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 55
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    const-string/jumbo v2, "CORE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " net handle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 56
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v4

    .line 55
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 56
    const-string/jumbo v4, " mSubId: "

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 56
    iget v4, p0, Lcom/quicinc/cne/CNENetworkCallback;->mSubId:I

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->mSlotIdx:I

    if-nez v2, :cond_1

    .line 59
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    iget v3, p0, Lcom/quicinc/cne/CNENetworkCallback;->mSlotIdx:I

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/CNE$CneRatInfo;->setSlotIdx(I)V

    .line 78
    :goto_0
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v2

    iput-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->currLp:Landroid/net/LinkProperties;

    .line 79
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/quicinc/cne/CNE$CneRatInfo;->setNetHandle(J)V

    .line 81
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/CNE$CneRatInfo;->setNetworkState(I)V

    .line 82
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    invoke-virtual {v2, v6}, Lcom/quicinc/cne/CNE$CneRatInfo;->setErrorCause(I)V

    .line 83
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->currLp:Landroid/net/LinkProperties;

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->currLp:Landroid/net/LinkProperties;

    invoke-direct {p0, v2}, Lcom/quicinc/cne/CNENetworkCallback;->updateRatInfo(Landroid/net/LinkProperties;)V

    .line 53
    :cond_0
    return-void

    .line 61
    :cond_1
    if-eqz v0, :cond_4

    .line 62
    const-string/jumbo v2, "CORE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "network specifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "specifier":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    :cond_2
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/CNE$CneRatInfo;->setSlotIdx(I)V

    goto :goto_0

    .line 69
    :cond_3
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/CNE$CneRatInfo;->setSlotIdx(I)V

    goto :goto_0

    .line 73
    .end local v1    # "specifier":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/CNE$CneRatInfo;->setSlotIdx(I)V

    goto/16 :goto_0
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 125
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 126
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    const-string/jumbo v2, "CORE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onLinkPropertiesChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mSubId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/quicinc/cne/CNENetworkCallback;->mSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->mSlotIdx:I

    if-nez v2, :cond_1

    .line 129
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    iget v3, p0, Lcom/quicinc/cne/CNENetworkCallback;->mSlotIdx:I

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/CNE$CneRatInfo;->setSlotIdx(I)V

    .line 148
    :goto_0
    iput-object p2, p0, Lcom/quicinc/cne/CNENetworkCallback;->currLp:Landroid/net/LinkProperties;

    .line 149
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->currLp:Landroid/net/LinkProperties;

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->currLp:Landroid/net/LinkProperties;

    invoke-direct {p0, v2}, Lcom/quicinc/cne/CNENetworkCallback;->updateRatInfo(Landroid/net/LinkProperties;)V

    .line 124
    :cond_0
    return-void

    .line 131
    :cond_1
    if-eqz v0, :cond_4

    .line 132
    const-string/jumbo v2, "CORE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "network specifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "specifier":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    :cond_2
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/CNE$CneRatInfo;->setSlotIdx(I)V

    goto :goto_0

    .line 139
    :cond_3
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/CNE$CneRatInfo;->setSlotIdx(I)V

    goto :goto_0

    .line 143
    .end local v1    # "specifier":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/CNE$CneRatInfo;->setSlotIdx(I)V

    goto :goto_0
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 7
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    const/4 v6, 0x0

    .line 91
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 92
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    const-string/jumbo v2, "CORE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onLost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mSubId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/quicinc/cne/CNENetworkCallback;->mSubId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->mSlotIdx:I

    if-nez v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    iget v3, p0, Lcom/quicinc/cne/CNENetworkCallback;->mSlotIdx:I

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/CNE$CneRatInfo;->setSlotIdx(I)V

    .line 114
    :goto_0
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v2

    iput-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->currLp:Landroid/net/LinkProperties;

    .line 115
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/quicinc/cne/CNE$CneRatInfo;->setNetHandle(J)V

    .line 117
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/CNE$CneRatInfo;->setNetworkState(I)V

    .line 118
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    invoke-virtual {v2, v6}, Lcom/quicinc/cne/CNE$CneRatInfo;->setErrorCause(I)V

    .line 119
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->currLp:Landroid/net/LinkProperties;

    invoke-direct {p0, v2}, Lcom/quicinc/cne/CNENetworkCallback;->updateRatInfo(Landroid/net/LinkProperties;)V

    .line 90
    :cond_0
    return-void

    .line 97
    :cond_1
    if-eqz v0, :cond_4

    .line 98
    const-string/jumbo v2, "CORE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "network specifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->rlog(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "specifier":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 102
    :cond_2
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/CNE$CneRatInfo;->setSlotIdx(I)V

    goto :goto_0

    .line 105
    :cond_3
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/CNE$CneRatInfo;->setSlotIdx(I)V

    goto :goto_0

    .line 109
    .end local v1    # "specifier":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/quicinc/cne/CNENetworkCallback;->ratInfo:Lcom/quicinc/cne/CNE$CneRatInfo;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/CNE$CneRatInfo;->setSlotIdx(I)V

    goto/16 :goto_0
.end method
