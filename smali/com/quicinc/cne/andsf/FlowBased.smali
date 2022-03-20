.class public Lcom/quicinc/cne/andsf/FlowBased;
.super Lcom/quicinc/cne/andsf/AndsfNodeSet;
.source "FlowBased.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quicinc/cne/andsf/FlowBased$IpFlow;,
        Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;,
        Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;
    }
.end annotation


# instance fields
.field ipFlows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/quicinc/cne/andsf/FlowBased$IpFlow;",
            ">;"
        }
    .end annotation
.end field

.field routingCriterion:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;",
            ">;"
        }
    .end annotation
.end field

.field routingRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 8
    .param p1, "baseNode"    # Lorg/w3c/dom/Element;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/quicinc/cne/andsf/AndsfNodeSet;-><init>()V

    .line 19
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/quicinc/cne/andsf/FlowBased;->ipFlows:Ljava/util/ArrayList;

    .line 20
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/quicinc/cne/andsf/FlowBased;->routingCriterion:Ljava/util/ArrayList;

    .line 21
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/quicinc/cne/andsf/FlowBased;->routingRules:Ljava/util/ArrayList;

    .line 27
    const-string/jumbo v7, "Handling new FlowBased node"

    invoke-static {v7}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 29
    const-string/jumbo v7, "IPFlow"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 30
    .local v2, "flowNodes":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 31
    new-instance v1, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-direct {v1, p0, v7}, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;-><init>(Lcom/quicinc/cne/andsf/FlowBased;Lorg/w3c/dom/Node;)V

    .line 32
    .local v1, "flow":Lcom/quicinc/cne/andsf/FlowBased$IpFlow;
    iget-object v7, p0, Lcom/quicinc/cne/andsf/FlowBased;->ipFlows:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 37
    .end local v1    # "flow":Lcom/quicinc/cne/andsf/FlowBased$IpFlow;
    :cond_0
    const-string/jumbo v7, "RoutingCriteria"

    .line 36
    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 38
    .local v0, "criteraNodes":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 39
    new-instance v4, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;

    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-direct {v4, p0, v7}, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;-><init>(Lcom/quicinc/cne/andsf/FlowBased;Lorg/w3c/dom/Node;)V

    .line 40
    .local v4, "rC":Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;
    iget-object v7, p0, Lcom/quicinc/cne/andsf/FlowBased;->routingCriterion:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 44
    .end local v4    # "rC":Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;
    :cond_1
    const-string/jumbo v7, "RoutingRule"

    invoke-interface {p1, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 45
    .local v6, "rulesNodes":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 46
    new-instance v5, Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;

    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-direct {v5, p0, v7}, Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;-><init>(Lcom/quicinc/cne/andsf/FlowBased;Lorg/w3c/dom/Node;)V

    .line 47
    .local v5, "rR":Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;
    iget-object v7, p0, Lcom/quicinc/cne/andsf/FlowBased;->routingRules:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 50
    .end local v5    # "rR":Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/andsf/FlowBased;->inspectChildren(Lorg/w3c/dom/Node;)V

    .line 26
    return-void
.end method


# virtual methods
.method public assignValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 56
    const-string/jumbo v0, "RulePriority"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/quicinc/cne/andsf/FlowBased;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "RulePriority"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_0
    return-void
.end method
