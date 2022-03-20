.class Lcom/quicinc/cne/CNE$1;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quicinc/cne/CNE;


# direct methods
.method constructor <init>(Lcom/quicinc/cne/CNE;)V
    .locals 0
    .param p1, "this$0"    # Lcom/quicinc/cne/CNE;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 5

    .prologue
    .line 334
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 336
    .local v0, "ddsId":I
    const-string/jumbo v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "On sub change currDDSId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v3}, Lcom/quicinc/cne/CNE;->-get4(Lcom/quicinc/cne/CNE;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " new DDS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->-wrap16(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1}, Lcom/quicinc/cne/CNE;->-get4(Lcom/quicinc/cne/CNE;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 339
    iget-object v1, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1}, Lcom/quicinc/cne/CNE;->-get7(Lcom/quicinc/cne/CNE;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->isActiveSubId(I)Z

    move-result v1

    .line 338
    if-eqz v1, :cond_0

    .line 340
    iget-object v1, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1}, Lcom/quicinc/cne/CNE;->-get8(Lcom/quicinc/cne/CNE;)Landroid/os/Handler;

    move-result-object v1

    .line 341
    iget-object v2, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v2}, Lcom/quicinc/cne/CNE;->-get8(Lcom/quicinc/cne/CNE;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    .line 343
    const/4 v4, -0x1

    .line 341
    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 340
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 344
    iget-object v1, p0, Lcom/quicinc/cne/CNE$1;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1, v0}, Lcom/quicinc/cne/CNE;->-set3(Lcom/quicinc/cne/CNE;I)I

    .line 333
    :cond_0
    return-void
.end method
