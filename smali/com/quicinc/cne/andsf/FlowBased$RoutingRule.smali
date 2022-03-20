.class Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;
.super Lcom/quicinc/cne/andsf/AndsfNodeSet;
.source "FlowBased.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/andsf/FlowBased;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoutingRule"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quicinc/cne/andsf/FlowBased;


# direct methods
.method constructor <init>(Lcom/quicinc/cne/andsf/FlowBased;Lorg/w3c/dom/Node;)V
    .locals 1
    .param p1, "this$0"    # Lcom/quicinc/cne/andsf/FlowBased;
    .param p2, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;->this$0:Lcom/quicinc/cne/andsf/FlowBased;

    invoke-direct {p0}, Lcom/quicinc/cne/andsf/AndsfNodeSet;-><init>()V

    .line 63
    const-string/jumbo v0, "Handling new Routing Rule"

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p2}, Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;->inspectChildren(Lorg/w3c/dom/Node;)V

    .line 62
    return-void
.end method


# virtual methods
.method public assignValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string/jumbo v0, "AccessTechnology"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "AccessTechnology"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string/jumbo v0, "AccessId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "AccessId"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    const-string/jumbo v0, "SecondaryAccessId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "SecondaryAccessId"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_3
    const-string/jumbo v0, "AccessNetworkPriority"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "AccessNetworkPriority"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
