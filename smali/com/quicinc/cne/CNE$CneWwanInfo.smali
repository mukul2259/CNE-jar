.class Lcom/quicinc/cne/CNE$CneWwanInfo;
.super Lcom/quicinc/cne/CNE$CneRatInfo;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CneWwanInfo"
.end annotation


# instance fields
.field mccMnc:Ljava/lang/String;

.field roaming:I

.field signalStrength:I

.field final synthetic this$0:Lcom/quicinc/cne/CNE;


# direct methods
.method static synthetic -wrap0(Lcom/quicinc/cne/CNE$CneWwanInfo;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE$CneWwanInfo;->setWwanInfo(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(Lcom/quicinc/cne/CNE;)V
    .locals 2
    .param p1, "this$0"    # Lcom/quicinc/cne/CNE;

    .prologue
    const/4 v1, 0x0

    .line 823
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    .line 824
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE$CneRatInfo;-><init>(Lcom/quicinc/cne/CNE;)V

    .line 825
    iput v1, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->signalStrength:I

    .line 826
    iput v1, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->roaming:I

    .line 827
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->mccMnc:Ljava/lang/String;

    .line 828
    iput v1, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->networkType:I

    .line 823
    return-void
.end method

.method private final getSubType(II)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 838
    iget-object v1, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1}, Lcom/quicinc/cne/CNE;->-get12(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-nez v1, :cond_0

    return v2

    .line 840
    :cond_0
    iget-object v1, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1}, Lcom/quicinc/cne/CNE;->-get12(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    .line 841
    .local v0, "subType":I
    if-nez v0, :cond_1

    .line 842
    iget-object v1, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1, p2}, Lcom/quicinc/cne/CNE;->-wrap2(Lcom/quicinc/cne/CNE;I)Z

    move-result v1

    .line 841
    if-eqz v1, :cond_1

    .line 843
    iget-object v1, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1, p1}, Lcom/quicinc/cne/CNE;->-wrap1(Lcom/quicinc/cne/CNE;I)Z

    move-result v1

    .line 841
    if-eqz v1, :cond_1

    .line 844
    iget-object v1, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1}, Lcom/quicinc/cne/CNE;->-get10(Lcom/quicinc/cne/CNE;)[Landroid/telephony/ServiceState;

    move-result-object v1

    aget-object v1, v1, p2

    if-eqz v1, :cond_1

    .line 845
    iget-object v1, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1}, Lcom/quicinc/cne/CNE;->-get10(Lcom/quicinc/cne/CNE;)[Landroid/telephony/ServiceState;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_1

    .line 848
    iget-object v1, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1}, Lcom/quicinc/cne/CNE;->-get12(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v0

    .line 850
    :cond_1
    return v0
.end method

.method private resetWwanInfo()V
    .locals 1

    .prologue
    .line 832
    invoke-super {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->resetRatInfo()V

    .line 833
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->signalStrength:I

    .line 834
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneWwanInfo;->mccMnc:Ljava/lang/String;

    .line 831
    return-void
.end method

.method private setWwanInfo(Landroid/content/Intent;)V
    .locals 20
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 854
    if-nez p1, :cond_0

    .line 855
    return-void

    .line 858
    :cond_0
    :try_start_0
    const-string/jumbo v17, "state"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 859
    .local v15, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/quicinc/cne/CNE;->-wrap9(Lcom/quicinc/cne/CNE;Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/quicinc/cne/CNE$CneWwanInfo;->networkState:I

    .line 860
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v16

    .line 861
    .local v16, "subId":I
    invoke-static/range {v16 .. v16}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v11

    .line 863
    .local v11, "phoneId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/quicinc/cne/CNE$CneWwanInfo;->networkState:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v18, v0

    const-string/jumbo v19, "DISCONNECTED"

    invoke-static/range {v18 .. v19}, Lcom/quicinc/cne/CNE;->-wrap9(Lcom/quicinc/cne/CNE;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 864
    move-object/from16 v0, p0

    iget v0, v0, Lcom/quicinc/cne/CNE$CneWwanInfo;->networkState:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v18, v0

    const-string/jumbo v19, "UNKNOWN"

    invoke-static/range {v18 .. v19}, Lcom/quicinc/cne/CNE;->-wrap9(Lcom/quicinc/cne/CNE;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 866
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/quicinc/cne/CNE$CneWwanInfo;->resetWwanInfo()V

    .line 868
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getSubType(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/quicinc/cne/CNE$CneWwanInfo;->subType:I

    .line 869
    return-void

    .line 872
    :cond_2
    const-string/jumbo v17, "linkProperties"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/LinkProperties;

    .line 873
    .local v9, "lp":Landroid/net/LinkProperties;
    if-eqz v9, :cond_b

    .line 874
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v8

    .line 875
    .local v8, "linkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "linkAddress$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    .line 876
    .local v6, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 877
    .local v2, "addr":Ljava/net/InetAddress;
    instance-of v0, v2, Ljava/net/Inet4Address;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 878
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v17

    if-nez v17, :cond_3

    .line 879
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/CNE$CneWwanInfo;->ifNameV4:Ljava/lang/String;

    .line 880
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/CNE$CneWwanInfo;->ipAddrV4:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 919
    .end local v2    # "addr":Ljava/net/InetAddress;
    .end local v6    # "linkAddress":Landroid/net/LinkAddress;
    .end local v7    # "linkAddress$iterator":Ljava/util/Iterator;
    .end local v8    # "linkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .end local v9    # "lp":Landroid/net/LinkProperties;
    .end local v11    # "phoneId":I
    .end local v15    # "state":Ljava/lang/String;
    .end local v16    # "subId":I
    :catch_0
    move-exception v10

    .line 920
    .local v10, "nexp":Ljava/lang/NullPointerException;
    const-string/jumbo v17, "CORE"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "setWwanInfo(): Null Pointer Exception"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    .end local v10    # "nexp":Ljava/lang/NullPointerException;
    :cond_4
    :goto_1
    return-void

    .line 883
    .restart local v2    # "addr":Ljava/net/InetAddress;
    .restart local v6    # "linkAddress":Landroid/net/LinkAddress;
    .restart local v7    # "linkAddress$iterator":Ljava/util/Iterator;
    .restart local v8    # "linkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    .restart local v9    # "lp":Landroid/net/LinkProperties;
    .restart local v11    # "phoneId":I
    .restart local v15    # "state":Ljava/lang/String;
    .restart local v16    # "subId":I
    :cond_5
    :try_start_1
    instance-of v0, v2, Ljava/net/Inet6Address;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 884
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v17

    if-nez v17, :cond_6

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 888
    :cond_6
    :goto_2
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "link$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkProperties;

    .line 889
    .local v4, "link":Landroid/net/LinkProperties;
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "clat4"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 891
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v14

    .line 892
    .local v14, "stackedLinkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "stackedLinkAddress$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/LinkAddress;

    .line 893
    .local v12, "stackedLinkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v12}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    .line 894
    .local v3, "address":Ljava/net/InetAddress;
    instance-of v0, v3, Ljava/net/Inet4Address;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 895
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v17

    if-nez v17, :cond_8

    .line 896
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v17

    if-nez v17, :cond_8

    .line 897
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/CNE$CneWwanInfo;->ifNameV4:Ljava/lang/String;

    .line 898
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/CNE$CneWwanInfo;->ipAddrV4:Ljava/lang/String;

    goto :goto_4

    .line 885
    .end local v3    # "address":Ljava/net/InetAddress;
    .end local v4    # "link":Landroid/net/LinkProperties;
    .end local v5    # "link$iterator":Ljava/util/Iterator;
    .end local v12    # "stackedLinkAddress":Landroid/net/LinkAddress;
    .end local v13    # "stackedLinkAddress$iterator":Ljava/util/Iterator;
    .end local v14    # "stackedLinkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :cond_9
    invoke-virtual {v9}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/CNE$CneWwanInfo;->ifNameV6:Ljava/lang/String;

    .line 886
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/CNE$CneWwanInfo;->ipAddrV6:Ljava/lang/String;

    goto :goto_2

    .line 905
    .restart local v4    # "link":Landroid/net/LinkProperties;
    .restart local v5    # "link$iterator":Ljava/util/Iterator;
    :cond_a
    const-string/jumbo v17, "CORE"

    const-string/jumbo v18, "no clat4 interface present for ipv6 address"

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CNE;->-wrap20(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 913
    .end local v2    # "addr":Ljava/net/InetAddress;
    .end local v4    # "link":Landroid/net/LinkProperties;
    .end local v5    # "link$iterator":Ljava/util/Iterator;
    .end local v6    # "linkAddress":Landroid/net/LinkAddress;
    .end local v7    # "linkAddress$iterator":Ljava/util/Iterator;
    .end local v8    # "linkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/quicinc/cne/CNE;->-get12(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/quicinc/cne/CNE;->-get12(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v17

    if-eqz v17, :cond_c

    const/16 v17, 0x1

    :goto_5
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/quicinc/cne/CNE$CneWwanInfo;->roaming:I

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/quicinc/cne/CNE$CneWwanInfo;->networkType:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CNE;->-wrap12(Lcom/quicinc/cne/CNE;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/quicinc/cne/CNE$CneWwanInfo;->signalStrength:I

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CneWwanInfo;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/quicinc/cne/CNE;->-get12(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/CNE$CneWwanInfo;->mccMnc:Ljava/lang/String;

    .line 917
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lcom/quicinc/cne/CNE$CneWwanInfo;->getSubType(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/quicinc/cne/CNE$CneWwanInfo;->subType:I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 914
    :cond_c
    const/16 v17, 0x0

    goto :goto_5
.end method
