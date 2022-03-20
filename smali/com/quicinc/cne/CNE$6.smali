.class Lcom/quicinc/cne/CNE$6;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/quicinc/cne/CNE;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/quicinc/cne/CNE;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1668
    iput-object p1, p0, Lcom/quicinc/cne/CNE$6;->this$0:Lcom/quicinc/cne/CNE;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1671
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1672
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1684
    const-string/jumbo v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MainEventThread ignored message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    :cond_0
    :goto_0
    return-void

    .line 1674
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1675
    .local v0, "ddsId":I
    iget-object v1, p0, Lcom/quicinc/cne/CNE$6;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1, v0}, Lcom/quicinc/cne/CNE;->-wrap5(Lcom/quicinc/cne/CNE;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1676
    iget-object v1, p0, Lcom/quicinc/cne/CNE$6;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1, v0}, Lcom/quicinc/cne/CNE;->-set3(Lcom/quicinc/cne/CNE;I)I

    .line 1677
    const-string/jumbo v1, "CORE"

    const-string/jumbo v2, "Registered PhoneStateListener"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->-wrap16(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1681
    .end local v0    # "ddsId":I
    :pswitch_1
    iget-object v1, p0, Lcom/quicinc/cne/CNE$6;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v1}, Lcom/quicinc/cne/CNE;->-wrap26(Lcom/quicinc/cne/CNE;)V

    goto :goto_0

    .line 1672
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
