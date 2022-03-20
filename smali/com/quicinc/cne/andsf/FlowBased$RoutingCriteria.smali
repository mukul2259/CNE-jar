.class Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;
.super Lcom/quicinc/cne/andsf/AndsfNodeSet;
.source "FlowBased.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/andsf/FlowBased;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RoutingCriteria"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;
    }
.end annotation


# instance fields
.field public mTimeOfDay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/quicinc/cne/andsf/FlowBased;


# direct methods
.method constructor <init>(Lcom/quicinc/cne/andsf/FlowBased;Lorg/w3c/dom/Node;)V
    .locals 5
    .param p1, "this$0"    # Lcom/quicinc/cne/andsf/FlowBased;
    .param p2, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;->this$0:Lcom/quicinc/cne/andsf/FlowBased;

    invoke-direct {p0}, Lcom/quicinc/cne/andsf/AndsfNodeSet;-><init>()V

    .line 86
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;->mTimeOfDay:Ljava/util/ArrayList;

    .line 89
    const-string/jumbo v4, "Handling new RoutingCriteria"

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    move-object v0, p2

    .line 90
    check-cast v0, Lorg/w3c/dom/Element;

    .line 92
    .local v0, "baseNode":Lorg/w3c/dom/Element;
    const-string/jumbo v4, "TimeOfDay"

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 93
    .local v2, "timesOfDay":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 94
    new-instance v3, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;

    invoke-interface {v2, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;-><init>(Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;Lorg/w3c/dom/Node;)V

    .line 95
    .local v3, "tod":Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;
    iget-object v4, p0, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;->mTimeOfDay:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v3    # "tod":Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;
    :cond_0
    return-void
.end method


# virtual methods
.method public assignValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 125
    return-void
.end method
