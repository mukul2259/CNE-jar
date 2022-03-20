.class Lcom/quicinc/cne/CNE$7;
.super Landroid/database/ContentObserver;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quicinc/cne/CNE;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quicinc/cne/CNE;


# direct methods
.method constructor <init>(Lcom/quicinc/cne/CNE;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/quicinc/cne/CNE;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1690
    iput-object p1, p0, Lcom/quicinc/cne/CNE$7;->this$0:Lcom/quicinc/cne/CNE;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 8
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 1693
    const-string/jumbo v4, "CORE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onChange for uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    iget-object v4, p0, Lcom/quicinc/cne/CNE$7;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4}, Lcom/quicinc/cne/CNE;->-get12(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    .line 1697
    .local v2, "phoneCount":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 1699
    const-string/jumbo v4, "mobile_data"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1698
    invoke-virtual {p2, v4}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1700
    iget-object v4, p0, Lcom/quicinc/cne/CNE$7;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v5, p0, Lcom/quicinc/cne/CNE$7;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v5}, Lcom/quicinc/cne/CNE;->-get12(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->-wrap4(Lcom/quicinc/cne/CNE;Z)Z

    .line 1703
    :cond_0
    const-string/jumbo v4, "data_roaming"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1702
    invoke-virtual {p2, v4}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v4

    if-nez v4, :cond_1

    .line 1704
    iget-object v4, p0, Lcom/quicinc/cne/CNE$7;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v5, p0, Lcom/quicinc/cne/CNE$7;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v5}, Lcom/quicinc/cne/CNE;->-get12(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->-wrap4(Lcom/quicinc/cne/CNE;Z)Z

    .line 1692
    :cond_1
    :goto_0
    return-void

    .line 1707
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 1708
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 1710
    .local v3, "subs":[I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mobile_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v3, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1709
    invoke-virtual {p2, v4}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v4

    if-nez v4, :cond_3

    .line 1711
    iget-object v4, p0, Lcom/quicinc/cne/CNE$7;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4, p2}, Lcom/quicinc/cne/CNE;->-wrap37(Lcom/quicinc/cne/CNE;Landroid/net/Uri;)V

    .line 1714
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "data_roaming"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v3, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1713
    invoke-virtual {p2, v4}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v4

    if-nez v4, :cond_4

    .line 1715
    iget-object v4, p0, Lcom/quicinc/cne/CNE$7;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v5, p0, Lcom/quicinc/cne/CNE$7;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v5}, Lcom/quicinc/cne/CNE;->-get12(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->-wrap4(Lcom/quicinc/cne/CNE;Z)Z

    .line 1707
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1720
    .end local v3    # "subs":[I
    :cond_5
    const-string/jumbo v4, "multi_sim_data_call"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1719
    invoke-virtual {p2, v4}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v4

    if-nez v4, :cond_1

    .line 1721
    const-string/jumbo v4, "CORE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DDS changed currDDSId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->-wrap16(Ljava/lang/String;Ljava/lang/String;)V

    .line 1722
    iget-object v4, p0, Lcom/quicinc/cne/CNE$7;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4}, Lcom/quicinc/cne/CNE;->-get12(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    .line 1723
    .local v0, "enabled":Z
    iget-object v4, p0, Lcom/quicinc/cne/CNE$7;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4, v0}, Lcom/quicinc/cne/CNE;->-wrap4(Lcom/quicinc/cne/CNE;Z)Z

    .line 1724
    iget-object v4, p0, Lcom/quicinc/cne/CNE$7;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4}, Lcom/quicinc/cne/CNE;->-wrap23(Lcom/quicinc/cne/CNE;)V

    goto/16 :goto_0
.end method
