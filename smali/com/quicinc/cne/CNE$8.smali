.class Lcom/quicinc/cne/CNE$8;
.super Landroid/telephony/PhoneStateListener;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/quicinc/cne/CNE;->registerPhoneStateListener(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quicinc/cne/CNE;


# direct methods
.method constructor <init>(Lcom/quicinc/cne/CNE;ILandroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/quicinc/cne/CNE;
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # Landroid/os/Looper;

    .prologue
    .line 2454
    iput-object p1, p0, Lcom/quicinc/cne/CNE$8;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;Landroid/os/Looper;)V

    return-void
.end method

# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 7
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 2458
    iget-object v4, p0, Lcom/quicinc/cne/CNE$8;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4}, Lcom/quicinc/cne/CNE;->-get12(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 2459
    .local v0, "dataState":I
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 2460
    .local v1, "ddsId":I
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v3

    .line 2461
    .local v3, "phoneId":I
    iget-object v4, p0, Lcom/quicinc/cne/CNE$8;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4}, Lcom/quicinc/cne/CNE;->-get12(Lcom/quicinc/cne/CNE;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v2

    .line 2462
    .local v2, "enabled":Z
    iget-object v4, p0, Lcom/quicinc/cne/CNE$8;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4, v3}, Lcom/quicinc/cne/CNE;->-wrap2(Lcom/quicinc/cne/CNE;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2463
    iget-object v4, p0, Lcom/quicinc/cne/CNE$8;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4}, Lcom/quicinc/cne/CNE;->-get10(Lcom/quicinc/cne/CNE;)[Landroid/telephony/ServiceState;

    move-result-object v4

    aput-object p1, v4, v3

    .line 2467
    :goto_0
    const-string/jumbo v4, "CORE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onServiceStateChanged: dataState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " DDS:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Notify service state update"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->-wrap16(Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    iget-object v4, p0, Lcom/quicinc/cne/CNE$8;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4}, Lcom/quicinc/cne/CNE;->-wrap23(Lcom/quicinc/cne/CNE;)V

    .line 2469
    iget-object v4, p0, Lcom/quicinc/cne/CNE$8;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v4, v2}, Lcom/quicinc/cne/CNE;->-wrap4(Lcom/quicinc/cne/CNE;Z)Z

    .line 2457
    return-void

    .line 2465
    :cond_0
    const-string/jumbo v4, "CORE"

    const-string/jumbo v5, "Cannot update service state on invalid phone Id"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
