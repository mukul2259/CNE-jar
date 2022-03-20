.class Lcom/quicinc/cne/andsf/Extension$CqeThreshold;
.super Ljava/lang/Object;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/andsf/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CqeThreshold"
.end annotation


# instance fields
.field private apid:Ljava/lang/String;

.field public data:Landroid/content/ContentValues;

.field private id:Ljava/lang/String;

.field private nodeName:Ljava/lang/String;

.field final synthetic this$0:Lcom/quicinc/cne/andsf/Extension;

.field private unit:Ljava/lang/String;

.field private valueStr:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Lcom/quicinc/cne/andsf/Extension$CqeThreshold;)I
    .locals 1

    invoke-direct {p0}, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->prontoParameterValidation()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/quicinc/cne/andsf/Extension$CqeThreshold;)I
    .locals 1

    invoke-direct {p0}, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->romeParameterValidation()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/quicinc/cne/andsf/Extension$CqeThreshold;)V
    .locals 0

    invoke-direct {p0}, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->addToDatabase()V

    return-void
.end method

.method constructor <init>(Lcom/quicinc/cne/andsf/Extension;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 4
    .param p1, "this$0"    # Lcom/quicinc/cne/andsf/Extension;
    .param p2, "thresholdTypeNode"    # Lorg/w3c/dom/Node;
    .param p3, "idNode"    # Lorg/w3c/dom/Node;
    .param p4, "apidNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v3, 0x0

    .line 740
    iput-object p1, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iput-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->data:Landroid/content/ContentValues;

    .line 741
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    .line 742
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    .line 743
    const-string/jumbo v2, "CqeThreshold: Putting attributes..."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 744
    check-cast p2, Lorg/w3c/dom/Element;

    .end local p2    # "thresholdTypeNode":Lorg/w3c/dom/Node;
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 745
    .local v0, "attrs":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v2, "units"

    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 746
    .local v1, "threshUnits":Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->unit:Ljava/lang/String;

    .line 747
    invoke-interface {p3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->id:Ljava/lang/String;

    .line 748
    if-nez p4, :cond_1

    :goto_1
    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->apid:Ljava/lang/String;

    .line 740
    return-void

    .line 746
    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 748
    :cond_1
    invoke-interface {p4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private addToDatabase()V
    .locals 3

    .prologue
    .line 1375
    const-string/jumbo v0, "CqeThreshold: adding CQE Thresholds to database."

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1376
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "Type"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "Value"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "Units"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "apid"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->apid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    const-string/jumbo v0, "CqeThreshold: finished"

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1374
    return-void
.end method

.method private prontoParameterValidation()I
    .locals 13

    .prologue
    const/16 v12, -0xa

    const/16 v11, -0x63

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x1

    const/4 v8, -0x3

    .line 752
    const-string/jumbo v5, "validating CQE Threshold for Pronto"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 760
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "RSSIAddThreshold"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 761
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RSSIAddThreshold"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 762
    const-string/jumbo v5, "Adding DUPLICATE RSSIAddThreshold."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 763
    return v8

    .line 765
    :cond_0
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RSSIAddThreshold"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    :try_start_0
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 772
    .local v0, "addValue":I
    if-lt v0, v11, :cond_1

    .line 773
    if-le v0, v12, :cond_f

    .line 774
    :cond_1
    const-string/jumbo v5, "RSSIAddThreshold value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 775
    return v8

    .line 768
    .end local v0    # "addValue":I
    :catch_0
    move-exception v2

    .line 769
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: RSSIAddThreshold Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 770
    return v8

    .line 778
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "RSSIDropThreshold"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 779
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RSSIDropThreshold"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 780
    const-string/jumbo v5, "Adding DUPLICATE RSSIDropThreshold."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 781
    return v8

    .line 783
    :cond_3
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RSSIDropThreshold"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    :try_start_1
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 790
    .local v1, "dropValue":I
    if-lt v1, v11, :cond_4

    .line 791
    if-le v1, v12, :cond_f

    .line 792
    :cond_4
    const-string/jumbo v5, "RSSIDropThreshold value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 793
    return v8

    .line 786
    .end local v1    # "dropValue":I
    :catch_1
    move-exception v2

    .line 787
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: RSSIDropThreshold Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 788
    return v8

    .line 796
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "RSSIModelThreshold"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 797
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RSSIModelThreshold"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 798
    const-string/jumbo v5, "Adding DUPLICATE RSSIModelThreshold."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 799
    return v8

    .line 801
    :cond_6
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RSSIModelThreshold"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    :try_start_2
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    .line 808
    .local v4, "value":I
    if-lt v4, v11, :cond_7

    .line 809
    if-le v4, v12, :cond_f

    .line 810
    :cond_7
    const-string/jumbo v5, "RSSIModelThreshold value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 811
    return v8

    .line 804
    .end local v4    # "value":I
    :catch_2
    move-exception v2

    .line 805
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: RSSIModelThreshold Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 806
    return v8

    .line 814
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "RSSIAveragingInterval"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 815
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RSSIAveragingInterval"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 816
    const-string/jumbo v5, "Adding DUPLICATE RSSIAveragingInterval."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 817
    return v8

    .line 819
    :cond_9
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RSSIAveragingInterval"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    :try_start_3
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    .line 826
    .restart local v4    # "value":I
    if-lt v4, v9, :cond_a

    .line 827
    const/16 v5, 0xe10

    if-le v4, v5, :cond_f

    .line 828
    :cond_a
    const-string/jumbo v5, "RSSIAveragingInterval value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 829
    return v8

    .line 822
    .end local v4    # "value":I
    :catch_3
    move-exception v2

    .line 823
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: RSSIAveragingInterval Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 824
    return v8

    .line 832
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "RSSIMacTimerThreshold"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 833
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RSSIMacTimerThreshold"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 834
    const-string/jumbo v5, "Adding DUPLICATE RSSIMacTimerThreshold."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 835
    return v8

    .line 837
    :cond_c
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RSSIMacTimerThreshold"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    :try_start_4
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v4

    .line 844
    .restart local v4    # "value":I
    if-lt v4, v11, :cond_d

    if-le v4, v12, :cond_e

    .line 846
    :cond_d
    const-string/jumbo v5, "RSSIMacTimerThreshold value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 847
    return v8

    .line 840
    .end local v4    # "value":I
    :catch_4
    move-exception v2

    .line 841
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: RSSIMacTimerThreshold Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 842
    return v8

    .line 845
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "value":I
    :cond_e
    if-lt v4, v11, :cond_d

    if-gt v4, v12, :cond_d

    .line 1052
    .end local v4    # "value":I
    :cond_f
    const/16 v5, 0x3e8

    return v5

    .line 850
    :cond_10
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "CQETimer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 851
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "CQETimer"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 852
    const-string/jumbo v5, "Adding DUPLICATE CQETimer."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 853
    return v8

    .line 855
    :cond_11
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "CQETimer"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    :try_start_5
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v4

    .line 862
    .restart local v4    # "value":I
    if-ltz v4, :cond_12

    .line 863
    const/16 v5, 0xe10

    if-le v4, v5, :cond_f

    .line 864
    :cond_12
    const-string/jumbo v5, "CQETimer value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 865
    return v8

    .line 858
    .end local v4    # "value":I
    :catch_5
    move-exception v2

    .line 859
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: CQETimer Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 860
    return v8

    .line 868
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_13
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "MACHysteresisTimer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 869
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "MACHysteresisTimer"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 870
    const-string/jumbo v5, "Adding DUPLICATE MACHysteresisTimer."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 871
    return v8

    .line 873
    :cond_14
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "MACHysteresisTimer"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    :try_start_6
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v4

    .line 880
    .restart local v4    # "value":I
    const/16 v5, 0xa

    if-lt v4, v5, :cond_15

    .line 881
    const/16 v5, 0xe10

    if-le v4, v5, :cond_f

    .line 882
    :cond_15
    const-string/jumbo v5, "MACHysteresisTimer value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 883
    return v8

    .line 876
    .end local v4    # "value":I
    :catch_6
    move-exception v2

    .line 877
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: MACHysteresisTimer Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 878
    return v8

    .line 886
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_16
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "MACStatsAveragingAlpha"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 887
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "MACStatsAveragingAlpha"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 888
    const-string/jumbo v5, "Adding DUPLICATE MACStatsAveragingAlpha."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 889
    return v8

    .line 891
    :cond_17
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "MACStatsAveragingAlpha"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 893
    :try_start_7
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v3

    .line 898
    .local v3, "floatValue":F
    const/4 v5, 0x0

    cmpg-float v5, v3, v5

    if-ltz v5, :cond_18

    .line 899
    cmpl-float v5, v3, v10

    if-lez v5, :cond_f

    .line 900
    :cond_18
    const-string/jumbo v5, "MACStatsAveragingAlpha value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 901
    return v8

    .line 894
    .end local v3    # "floatValue":F
    :catch_7
    move-exception v2

    .line 895
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: MACStatsAveragingAlpha Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 896
    return v8

    .line 904
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_19
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "FrameCntThreshold"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 905
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "FrameCntThreshold"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 906
    const-string/jumbo v5, "Adding DUPLICATE FrameCntThreshold."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 907
    return v8

    .line 909
    :cond_1a
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "FrameCntThreshold"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    :try_start_8
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v4

    .line 916
    .restart local v4    # "value":I
    if-ltz v4, :cond_1b

    .line 917
    const/16 v5, 0x3e8

    if-le v4, v5, :cond_f

    .line 918
    :cond_1b
    const-string/jumbo v5, "FrameCntThreshold value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 919
    return v8

    .line 912
    .end local v4    # "value":I
    :catch_8
    move-exception v2

    .line 913
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: FrameCntThreshold Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 914
    return v8

    .line 922
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1c
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "MACMibThreshold2a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 923
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "MACMibThreshold2a"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 924
    const-string/jumbo v5, "Adding DUPLICATE MACMibThreshold2a."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 925
    return v8

    .line 927
    :cond_1d
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "MACMibThreshold2a"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    :try_start_9
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9

    move-result v3

    .line 934
    .restart local v3    # "floatValue":F
    const/4 v5, 0x0

    cmpg-float v5, v3, v5

    if-ltz v5, :cond_1e

    .line 935
    const/high16 v5, 0x42c80000    # 100.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_f

    .line 936
    :cond_1e
    const-string/jumbo v5, "MACMibThreshold value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 937
    return v8

    .line 930
    .end local v3    # "floatValue":F
    :catch_9
    move-exception v2

    .line 931
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: MACMibThreshold Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 932
    return v8

    .line 940
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1f
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "MACMibThreshold2b"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 941
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "MACMibThreshold2b"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 942
    const-string/jumbo v5, "Adding DUPLICATE MACMibThreshold2b."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 943
    return v8

    .line 945
    :cond_20
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "MACMibThreshold2b"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    :try_start_a
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_a

    move-result v3

    .line 952
    .restart local v3    # "floatValue":F
    const/4 v5, 0x0

    cmpg-float v5, v3, v5

    if-ltz v5, :cond_21

    .line 953
    const/high16 v5, 0x42c80000    # 100.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_f

    .line 954
    :cond_21
    const-string/jumbo v5, "MACMibThreshold value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 955
    return v8

    .line 948
    .end local v3    # "floatValue":F
    :catch_a
    move-exception v2

    .line 949
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: MACMibThreshold Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 950
    return v8

    .line 958
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_22
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "ColdStartThreshold"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 959
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "ColdStartThreshold"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 960
    const-string/jumbo v5, "Adding DUPLICATE MACMibThreshold2b."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 961
    return v8

    .line 963
    :cond_23
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "ColdStartThreshold"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    :try_start_b
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_b

    move-result v4

    .line 970
    .restart local v4    # "value":I
    if-ltz v4, :cond_24

    const/16 v5, 0x3e8

    if-le v4, v5, :cond_f

    .line 971
    :cond_24
    const-string/jumbo v5, "ColdStartThreshold value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 972
    return v8

    .line 966
    .end local v4    # "value":I
    :catch_b
    move-exception v2

    .line 967
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: ColdStartThreshold Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 968
    return v8

    .line 976
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_25
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "RetryMetricWeight2a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 977
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RetryMetricWeight2a"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 978
    const-string/jumbo v5, "Adding DUPLICATE RetryMetricWeight2a."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 979
    return v8

    .line 981
    :cond_26
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RetryMetricWeight2a"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    :try_start_c
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_c

    move-result v3

    .line 988
    .restart local v3    # "floatValue":F
    const/high16 v5, -0x40800000    # -1.0f

    cmpg-float v5, v3, v5

    if-ltz v5, :cond_27

    .line 989
    cmpl-float v5, v3, v10

    if-lez v5, :cond_f

    .line 990
    :cond_27
    const-string/jumbo v5, "RetryMetricWeight value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 991
    return v8

    .line 984
    .end local v3    # "floatValue":F
    :catch_c
    move-exception v2

    .line 985
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: RetryMetricWeight Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 986
    return v8

    .line 994
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_28
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "RetryMetricWeight2b"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 995
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RetryMetricWeight2b"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 996
    const-string/jumbo v5, "Adding DUPLICATE RetryMetricWeight2b."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 997
    return v8

    .line 999
    :cond_29
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RetryMetricWeight2b"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    :try_start_d
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_d

    move-result v3

    .line 1006
    .restart local v3    # "floatValue":F
    const/high16 v5, -0x40800000    # -1.0f

    cmpg-float v5, v3, v5

    if-ltz v5, :cond_2a

    .line 1007
    cmpl-float v5, v3, v10

    if-lez v5, :cond_f

    .line 1008
    :cond_2a
    const-string/jumbo v5, "RetryMetricWeight value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1009
    return v8

    .line 1002
    .end local v3    # "floatValue":F
    :catch_d
    move-exception v2

    .line 1003
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: RetryMetricWeight Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1004
    return v8

    .line 1012
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2b
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "MultiRetryMetricWeight2a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1013
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "MultiRetryMetricWeight2a"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1014
    const-string/jumbo v5, "Adding DUPLICATE MultiRetryMetricWeight2a."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1015
    return v8

    .line 1017
    :cond_2c
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "MultiRetryMetricWeight2a"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    :try_start_e
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_e

    move-result v3

    .line 1024
    .restart local v3    # "floatValue":F
    const/high16 v5, -0x40800000    # -1.0f

    cmpg-float v5, v3, v5

    if-ltz v5, :cond_2d

    .line 1025
    cmpl-float v5, v3, v10

    if-lez v5, :cond_f

    .line 1026
    :cond_2d
    const-string/jumbo v5, "MultiRetryMetricWeight value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1027
    return v8

    .line 1020
    .end local v3    # "floatValue":F
    :catch_e
    move-exception v2

    .line 1021
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: MultiRetryMetricWeight Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1022
    return v8

    .line 1030
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2e
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "MultiRetryMetricWeight2b"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1031
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "MultiRetryMetricWeight2b"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1032
    const-string/jumbo v5, "Adding DUPLICATE MultiRetryMetricWeight2b."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1033
    return v8

    .line 1035
    :cond_2f
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "MultiRetryMetricWeight2b"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    :try_start_f
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_f

    move-result v3

    .line 1042
    .restart local v3    # "floatValue":F
    const/high16 v5, -0x40800000    # -1.0f

    cmpg-float v5, v3, v5

    if-ltz v5, :cond_30

    .line 1043
    cmpl-float v5, v3, v10

    if-lez v5, :cond_f

    .line 1044
    :cond_30
    const-string/jumbo v5, "MultiRetryMetricWeight value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1045
    return v8

    .line 1038
    .end local v3    # "floatValue":F
    :catch_f
    move-exception v2

    .line 1039
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: MultiRetryMetricWeight Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1040
    return v8

    .line 1049
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_31
    const-string/jumbo v5, "Unsupported CQE parameter."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1050
    return v8
.end method

.method private romeParameterValidation()I
    .locals 12

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x3

    .line 1056
    const-string/jumbo v5, "validating CQE Threshold for Rome"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1062
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "RSSIAddThreshold"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1063
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RSSIAddThreshold"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1064
    const-string/jumbo v5, "Adding DUPLICATE RSSIAddThreshold."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1065
    return v8

    .line 1067
    :cond_0
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RSSIAddThreshold"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    :try_start_0
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1074
    .local v0, "addValue":I
    const/16 v5, -0x63

    if-lt v0, v5, :cond_1

    .line 1075
    const/16 v5, -0xa

    if-le v0, v5, :cond_c

    .line 1076
    :cond_1
    const-string/jumbo v5, "RSSIAddThreshold value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1077
    return v8

    .line 1070
    .end local v0    # "addValue":I
    :catch_0
    move-exception v2

    .line 1071
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: RSSIAddThreshold Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1072
    return v8

    .line 1080
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "RSSIDropThreshold"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1081
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RSSIDropThreshold"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1082
    const-string/jumbo v5, "Adding DUPLICATE RSSIDropThreshold."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1083
    return v8

    .line 1085
    :cond_3
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RSSIDropThreshold"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1087
    :try_start_1
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 1092
    .local v1, "dropValue":I
    const/16 v5, -0x63

    if-lt v1, v5, :cond_4

    .line 1093
    const/16 v5, -0xa

    if-le v1, v5, :cond_c

    .line 1094
    :cond_4
    const-string/jumbo v5, "RSSIDropThreshold value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1095
    return v8

    .line 1088
    .end local v1    # "dropValue":I
    :catch_1
    move-exception v2

    .line 1089
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: RSSIDropThreshold Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1090
    return v8

    .line 1098
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "RSSIAveragingInterval"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1099
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RSSIAveragingInterval"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1100
    const-string/jumbo v5, "Adding DUPLICATE RSSIAveragingInterval."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1101
    return v8

    .line 1103
    :cond_6
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RSSIAveragingInterval"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1105
    :try_start_2
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    .line 1110
    .local v4, "value":I
    if-lt v4, v9, :cond_7

    .line 1111
    const/16 v5, 0xe10

    if-le v4, v5, :cond_c

    .line 1112
    :cond_7
    const-string/jumbo v5, "RSSIAveragingInterval value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1113
    return v8

    .line 1106
    .end local v4    # "value":I
    :catch_2
    move-exception v2

    .line 1107
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: RSSIAveragingInterval Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1108
    return v8

    .line 1116
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_8
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "RSSIMacTimerThreshold"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1117
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RSSIMacTimerThreshold"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1118
    const-string/jumbo v5, "Adding DUPLICATE RSSIMacTimerThreshold."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1119
    return v8

    .line 1121
    :cond_9
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RSSIMacTimerThreshold"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    :try_start_3
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    .line 1128
    .restart local v4    # "value":I
    const/16 v5, -0x63

    if-lt v4, v5, :cond_a

    const/16 v5, -0xa

    if-le v4, v5, :cond_b

    .line 1130
    :cond_a
    const-string/jumbo v5, "RSSIMacTimerThreshold value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1131
    return v8

    .line 1124
    .end local v4    # "value":I
    :catch_3
    move-exception v2

    .line 1125
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: RSSIMacTimerThreshold Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1126
    return v8

    .line 1059
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "value":I
    :cond_b
    const/16 v5, -0x63

    .line 1129
    if-lt v4, v5, :cond_a

    .line 1060
    const/16 v5, -0xa

    .line 1129
    if-gt v4, v5, :cond_a

    .line 1372
    .end local v4    # "value":I
    :cond_c
    const/16 v5, 0x3e8

    return v5

    .line 1134
    :cond_d
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "CQETimer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1135
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "CQETimer"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1136
    const-string/jumbo v5, "Adding DUPLICATE CQETimer."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1137
    return v8

    .line 1139
    :cond_e
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "CQETimer"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    :try_start_4
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v4

    .line 1146
    .restart local v4    # "value":I
    if-ltz v4, :cond_f

    .line 1147
    const/16 v5, 0xe10

    if-le v4, v5, :cond_c

    .line 1148
    :cond_f
    const-string/jumbo v5, "CQETimer value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1149
    return v8

    .line 1142
    .end local v4    # "value":I
    :catch_4
    move-exception v2

    .line 1143
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: CQETimer Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1144
    return v8

    .line 1152
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_10
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "MACHysteresisTimer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1153
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "MACHysteresisTimer"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1154
    const-string/jumbo v5, "Adding DUPLICATE MACHysteresisTimer."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1155
    return v8

    .line 1157
    :cond_11
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "MACHysteresisTimer"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    :try_start_5
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v4

    .line 1164
    .restart local v4    # "value":I
    const/16 v5, 0xa

    if-lt v4, v5, :cond_12

    .line 1165
    const/16 v5, 0xe10

    if-le v4, v5, :cond_c

    .line 1166
    :cond_12
    const-string/jumbo v5, "MACHysteresisTimer value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1167
    return v8

    .line 1160
    .end local v4    # "value":I
    :catch_5
    move-exception v2

    .line 1161
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: MACHysteresisTimer Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1162
    return v8

    .line 1170
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_13
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "MACStatsAveragingAlpha"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1171
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "MACStatsAveragingAlpha"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1172
    const-string/jumbo v5, "Adding DUPLICATE MACStatsAveragingAlpha."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1173
    return v8

    .line 1175
    :cond_14
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "MACStatsAveragingAlpha"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    :try_start_6
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v3

    .line 1182
    .local v3, "floatValue":F
    cmpg-float v5, v3, v10

    if-ltz v5, :cond_15

    .line 1183
    cmpl-float v5, v3, v11

    if-lez v5, :cond_c

    .line 1184
    :cond_15
    const-string/jumbo v5, "MACStatsAveragingAlpha value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1185
    return v8

    .line 1178
    .end local v3    # "floatValue":F
    :catch_6
    move-exception v2

    .line 1179
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: MACStatsAveragingAlpha Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1180
    return v8

    .line 1188
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_16
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "RMP_THR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1189
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RMP_THR"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1190
    const-string/jumbo v5, "Adding DUPLICATE RMP_THR."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1191
    return v8

    .line 1193
    :cond_17
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RMP_THR"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    :try_start_7
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v3

    .line 1200
    .restart local v3    # "floatValue":F
    cmpg-float v5, v3, v10

    if-ltz v5, :cond_18

    .line 1201
    cmpl-float v5, v3, v11

    if-lez v5, :cond_c

    .line 1202
    :cond_18
    const-string/jumbo v5, "RMP_THR value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1203
    return v8

    .line 1196
    .end local v3    # "floatValue":F
    :catch_7
    move-exception v2

    .line 1197
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: RMP_THR Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1198
    return v8

    .line 1206
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_19
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "RMP_CNT_THR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1207
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RMP_CNT_THR"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1208
    const-string/jumbo v5, "Adding DUPLICATE RMP_CNT_THR."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1209
    return v8

    .line 1211
    :cond_1a
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RMP_CNT_THR"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    :try_start_8
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v4

    .line 1218
    .restart local v4    # "value":I
    if-ltz v4, :cond_1b

    .line 1219
    const v5, 0xfde8

    if-le v4, v5, :cond_c

    .line 1220
    :cond_1b
    const-string/jumbo v5, "RMP_CNT_THR value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1221
    return v8

    .line 1214
    .end local v4    # "value":I
    :catch_8
    move-exception v2

    .line 1215
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: RMP_CNT_THR Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1216
    return v8

    .line 1224
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1c
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "RX_MCS_THR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1225
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RX_MCS_THR"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1226
    const-string/jumbo v5, "Adding DUPLICATE RX_MCS_THR."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1227
    return v8

    .line 1229
    :cond_1d
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RX_MCS_THR"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    :try_start_9
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1232
    .restart local v4    # "value":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RX_MCS_THR: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_9

    .line 1237
    if-ltz v4, :cond_1e

    .line 1238
    const/16 v5, 0xa

    if-le v4, v5, :cond_c

    .line 1239
    :cond_1e
    return v8

    .line 1233
    .end local v4    # "value":I
    :catch_9
    move-exception v2

    .line 1234
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: RX_MCS_THR Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1235
    return v8

    .line 1242
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1f
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "RX_BW_THR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1243
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RX_BW_THR"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1244
    const-string/jumbo v5, "Adding DUPLICATE RX_BW_THR."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1245
    return v8

    .line 1247
    :cond_20
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "RX_BW_THR"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    :try_start_a
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_a

    move-result v4

    .line 1254
    .restart local v4    # "value":I
    if-ltz v4, :cond_21

    .line 1255
    const/4 v5, 0x3

    if-le v4, v5, :cond_c

    .line 1256
    :cond_21
    const-string/jumbo v5, "RX_BW_THR value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1257
    return v8

    .line 1250
    .end local v4    # "value":I
    :catch_a
    move-exception v2

    .line 1251
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: RX_BW_THR Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1252
    return v8

    .line 1260
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_22
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "TMD_THR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1261
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "TMD_THR"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1262
    const-string/jumbo v5, "Adding DUPLICATE TMD_THR."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1263
    return v8

    .line 1265
    :cond_23
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "TMD_THR"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    :try_start_b
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_b

    move-result v3

    .line 1272
    .restart local v3    # "floatValue":F
    cmpg-float v5, v3, v10

    if-ltz v5, :cond_24

    .line 1273
    cmpl-float v5, v3, v11

    if-lez v5, :cond_c

    .line 1274
    :cond_24
    const-string/jumbo v5, "TMD_THR value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1275
    return v8

    .line 1268
    .end local v3    # "floatValue":F
    :catch_b
    move-exception v2

    .line 1269
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: TMD_THR Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1270
    return v8

    .line 1278
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_25
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "TMD_CNT_THR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 1279
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "TMD_CNT_THR"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1280
    const-string/jumbo v5, "Adding DUPLICATE TMD_CNT_THR."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1281
    return v8

    .line 1283
    :cond_26
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "TMD_CNT_THR"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    :try_start_c
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_c

    move-result v4

    .line 1290
    .restart local v4    # "value":I
    if-ltz v4, :cond_27

    .line 1291
    const v5, 0xfde8

    if-le v4, v5, :cond_c

    .line 1292
    :cond_27
    const-string/jumbo v5, "RetryMetricWeight value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1293
    return v8

    .line 1286
    .end local v4    # "value":I
    :catch_c
    move-exception v2

    .line 1287
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: TMD_CNT_THR Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1288
    return v8

    .line 1296
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_28
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "TMR_THR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 1297
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "TMR_THR"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1298
    const-string/jumbo v5, "Adding DUPLICATE TMR_THR."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1299
    return v8

    .line 1301
    :cond_29
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "TMR_THR"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    :try_start_d
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_d

    move-result v3

    .line 1308
    .restart local v3    # "floatValue":F
    cmpg-float v5, v3, v10

    if-ltz v5, :cond_2a

    .line 1309
    cmpl-float v5, v3, v11

    if-lez v5, :cond_c

    .line 1310
    :cond_2a
    const-string/jumbo v5, "TMR_THR value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1311
    return v8

    .line 1304
    .end local v3    # "floatValue":F
    :catch_d
    move-exception v2

    .line 1305
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: TMR_THR Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1306
    return v8

    .line 1314
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2b
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "TMR_CNT_THR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1315
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "TMR_CNT_THR"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1316
    const-string/jumbo v5, "Adding DUPLICATE TMR_CNT_THR."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1317
    return v8

    .line 1319
    :cond_2c
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "TMR_CNT_THR"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1321
    :try_start_e
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_e

    move-result v4

    .line 1326
    .restart local v4    # "value":I
    if-ltz v4, :cond_2d

    .line 1327
    const v5, 0xfde8

    if-le v4, v5, :cond_c

    .line 1328
    :cond_2d
    const-string/jumbo v5, "TMR_CNT_THR value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1329
    return v8

    .line 1322
    .end local v4    # "value":I
    :catch_e
    move-exception v2

    .line 1323
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: TMR_CNT_THR Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1324
    return v8

    .line 1332
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2e
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "TX_MCS_THR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1333
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "TX_MCS_THR"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 1334
    const-string/jumbo v5, "Adding DUPLICATE TX_MCS_THR."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1335
    return v8

    .line 1337
    :cond_2f
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "TX_MCS_THR"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    :try_start_f
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_f

    move-result v4

    .line 1344
    .restart local v4    # "value":I
    if-ltz v4, :cond_30

    .line 1345
    const/16 v5, 0xa

    if-le v4, v5, :cond_c

    .line 1346
    :cond_30
    const-string/jumbo v5, "TX_MCS_THR value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1347
    return v8

    .line 1340
    .end local v4    # "value":I
    :catch_f
    move-exception v2

    .line 1341
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: TX_MCS_THR Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1342
    return v8

    .line 1350
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_31
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v6, "TX_BW_THR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1351
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "TX_BW_THR"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1352
    const-string/jumbo v5, "Adding DUPLICATE TX_BW_THR."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1353
    return v8

    .line 1355
    :cond_32
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    iget-object v5, v5, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    const-string/jumbo v6, "TX_BW_THR"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1357
    :try_start_10
    iget-object v5, p0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_10

    move-result v4

    .line 1362
    .restart local v4    # "value":I
    if-ltz v4, :cond_33

    .line 1363
    const/4 v5, 0x3

    if-le v4, v5, :cond_c

    .line 1364
    :cond_33
    const-string/jumbo v5, "TX_BW_THR value out of range"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1365
    return v8

    .line 1358
    .end local v4    # "value":I
    :catch_10
    move-exception v2

    .line 1359
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "CQE parameter: TX_BW_THR Number Format Exception"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1360
    return v8

    .line 1369
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_34
    const-string/jumbo v5, "Unsupported CQE parameter."

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1370
    return v8
.end method
