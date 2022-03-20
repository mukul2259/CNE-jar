.class Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;
.super Lcom/quicinc/cne/andsf/AndsfNodeSet;
.source "FlowBased.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TimeOfDay"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;Lorg/w3c/dom/Node;)V
    .locals 1
    .param p1, "this$1"    # Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;
    .param p2, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;->this$1:Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;

    invoke-direct {p0}, Lcom/quicinc/cne/andsf/AndsfNodeSet;-><init>()V

    .line 102
    const-string/jumbo v0, "Handling new TimeOfDay"

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0, p2}, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;->inspectChildren(Lorg/w3c/dom/Node;)V

    .line 101
    return-void
.end method


# virtual methods
.method public assignValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string/jumbo v0, "TimeStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "TimeStart"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const-string/jumbo v0, "TimeStop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    iget-object v0, p0, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "TimeStop"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    const-string/jumbo v0, "DateStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    iget-object v0, p0, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "DateStart"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_3
    const-string/jumbo v0, "DateStop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "DateStop"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
