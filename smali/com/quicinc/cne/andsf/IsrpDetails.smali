.class public Lcom/quicinc/cne/andsf/IsrpDetails;
.super Lcom/quicinc/cne/andsf/AndsfNodeSet;
.source "IsrpDetails.java"


# instance fields
.field flowBased:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/quicinc/cne/andsf/FlowBased;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 4
    .param p1, "baseNode"    # Lorg/w3c/dom/Element;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/quicinc/cne/andsf/AndsfNodeSet;-><init>()V

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/quicinc/cne/andsf/IsrpDetails;->flowBased:Ljava/util/ArrayList;

    .line 21
    const-string/jumbo v3, "Handling new ISRP"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 22
    const-string/jumbo v3, "ForFlowBased"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 24
    .local v0, "flowBasedNodes":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 25
    new-instance v1, Lcom/quicinc/cne/andsf/FlowBased;

    .line 26
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 25
    invoke-direct {v1, v3}, Lcom/quicinc/cne/andsf/FlowBased;-><init>(Lorg/w3c/dom/Element;)V

    .line 27
    .local v1, "flowDetails":Lcom/quicinc/cne/andsf/FlowBased;
    iget-object v3, p0, Lcom/quicinc/cne/andsf/IsrpDetails;->flowBased:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 30
    .end local v1    # "flowDetails":Lcom/quicinc/cne/andsf/FlowBased;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/andsf/IsrpDetails;->inspectChildren(Lorg/w3c/dom/Node;)V

    .line 17
    return-void
.end method


# virtual methods
.method public assignValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 36
    const-string/jumbo v0, "Roaming"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/quicinc/cne/andsf/IsrpDetails;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "Roaming"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    const-string/jumbo v0, "UpdatePolicy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/quicinc/cne/andsf/IsrpDetails;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "UpdatePolicy"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_2
    const-string/jumbo v0, "PLMN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/quicinc/cne/andsf/IsrpDetails;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "PLMN"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
