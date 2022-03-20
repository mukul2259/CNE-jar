.class public Lcom/quicinc/cne/andsf/Extension;
.super Lcom/quicinc/cne/andsf/AndsfNodeSet;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quicinc/cne/andsf/Extension$BqeThreshold;,
        Lcom/quicinc/cne/andsf/Extension$CqeThreshold;,
        Lcom/quicinc/cne/andsf/Extension$TqeThreshold;
    }
.end annotation


# static fields
.field static final DEFAULT_RAT_WLAN_CHIPSET_OEM:Ljava/lang/String; = "WCN"

.field static final MAX_NUMBER_APIDS:I = 0x80

.field static final MAX_NUMBER_BQE_THRESHOLDS:I = 0x2

.field static final MAX_NUMBER_ICD_CONFIG_SET:I = 0x1


# instance fields
.field authApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field bqeApIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field bqeThresholds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/quicinc/cne/andsf/Extension$BqeThreshold;",
            ">;"
        }
    .end annotation
.end field

.field cqeThresholdTags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field cqeThresholds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/quicinc/cne/andsf/Extension$CqeThreshold;",
            ">;"
        }
    .end annotation
.end field

.field icdApIdSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field icdConfigSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field productId:Ljava/lang/String;

.field tqeThresholds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/quicinc/cne/andsf/Extension$TqeThreshold;",
            ">;"
        }
    .end annotation
.end field

.field wlanChipsetMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 47
    invoke-direct {p0}, Lcom/quicinc/cne/andsf/AndsfNodeSet;-><init>()V

    .line 26
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->bqeThresholds:Ljava/util/ArrayList;

    .line 27
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->bqeApIds:Ljava/util/ArrayList;

    .line 29
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->icdConfigSet:Ljava/util/ArrayList;

    .line 30
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->icdApIdSet:Ljava/util/ArrayList;

    .line 32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->cqeThresholds:Ljava/util/ArrayList;

    .line 33
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->tqeThresholds:Ljava/util/ArrayList;

    .line 34
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->authApps:Ljava/util/ArrayList;

    .line 41
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->wlanChipsetMap:Ljava/util/HashMap;

    .line 43
    iput-object v6, p0, Lcom/quicinc/cne/andsf/Extension;->productId:Ljava/lang/String;

    .line 48
    const-string/jumbo v3, "ro.board.platform"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "productName":Ljava/lang/String;
    iget-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->wlanChipsetMap:Ljava/util/HashMap;

    const-string/jumbo v4, "apq8084"

    const-string/jumbo v5, "Rome"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->wlanChipsetMap:Ljava/util/HashMap;

    const-string/jumbo v4, "msm8994"

    const-string/jumbo v5, "Rome"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->wlanChipsetMap:Ljava/util/HashMap;

    const-string/jumbo v4, "msm8992"

    const-string/jumbo v5, "Rome"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->wlanChipsetMap:Ljava/util/HashMap;

    const-string/jumbo v4, "msm8996"

    const-string/jumbo v5, "Rome"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->wlanChipsetMap:Ljava/util/HashMap;

    const-string/jumbo v4, "msmcobalt"

    const-string/jumbo v5, "Rome"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v3, "persist.cne.rat.wlan.chip.oem"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "wlanChipOem":Ljava/lang/String;
    const/4 v0, 0x0

    .line 57
    .local v0, "isWlanChipsetNonQc":Z
    if-eqz v2, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 61
    :cond_0
    if-eqz v0, :cond_2

    .line 62
    const-string/jumbo v3, "Pronto"

    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->productId:Ljava/lang/String;

    .line 70
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->productId:Ljava/lang/String;

    const-string/jumbo v4, "Rome"

    if-eq v3, v4, :cond_3

    .line 71
    const-string/jumbo v3, "Pronto"

    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->productId:Ljava/lang/String;

    .line 72
    new-instance v3, Ljava/util/HashMap;

    .line 73
    const/16 v4, 0x10

    .line 72
    invoke-direct {v3, v4, v7}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    .line 47
    :goto_1
    return-void

    .line 65
    :cond_2
    if-eqz v1, :cond_1

    .line 66
    iget-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->wlanChipsetMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->productId:Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    .line 77
    const/16 v4, 0x11

    .line 76
    invoke-direct {v3, v4, v7}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    goto :goto_1
.end method

.method private handleBQEExtension(Lorg/w3c/dom/Element;)I
    .locals 26
    .param p1, "baseNode"    # Lorg/w3c/dom/Element;

    .prologue
    .line 96
    const-string/jumbo v24, "BQEExtension: Handling InterfacManager "

    invoke-static/range {v24 .. v24}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 98
    const-string/jumbo v24, "InterfaceManager"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 100
    .local v23, "wqe":Lorg/w3c/dom/NodeList;
    const-string/jumbo v24, "BQE_Disabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 101
    .local v8, "bqeDisabled":Lorg/w3c/dom/Node;
    const-string/jumbo v24, "ICD_Disabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 102
    .local v12, "icdDisabled":Lorg/w3c/dom/Node;
    const-string/jumbo v24, "BQEExtension: checking BQE_Disabled ICD_Disabled tags"

    invoke-static/range {v24 .. v24}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 104
    if-eqz v8, :cond_0

    if-nez v12, :cond_1

    .line 105
    :cond_0
    const-string/jumbo v24, "BQEExtension: No BQE_Disabled or ICD_Disabled tag found."

    invoke-static/range {v24 .. v24}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 106
    const/16 v24, -0x3

    return v24

    .line 109
    :cond_1
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v21

    .line 111
    .local v21, "valBqe":Ljava/lang/String;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    .line 113
    .local v22, "valIcd":Ljava/lang/String;
    if-eqz v21, :cond_2

    if-nez v22, :cond_3

    .line 114
    :cond_2
    const-string/jumbo v24, "BQEExtension: missing BQE_Disabled or ICD_Disabled value"

    invoke-static/range {v24 .. v24}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 115
    const/16 v24, -0x3

    return v24

    .line 118
    :cond_3
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "BQEExtension: BQE_Disabled "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " ICD_Disabled "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v24, "true"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_4

    const-string/jumbo v24, "false"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 121
    :cond_4
    const-string/jumbo v24, "true"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    const-string/jumbo v24, "false"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    .line 120
    if-eqz v24, :cond_6

    .line 123
    :cond_5
    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/andsf/Extension;->inspectChildren(Lorg/w3c/dom/Node;)V

    .line 131
    const-string/jumbo v24, "BQEExtension: Handling Authentication"

    invoke-static/range {v24 .. v24}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 132
    const-string/jumbo v24, "Authentication"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v23

    .line 133
    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/andsf/Extension;->inspectChildren(Lorg/w3c/dom/Node;)V

    .line 135
    const-string/jumbo v24, "BQEExtension: Handling BQE_Thresholds"

    invoke-static/range {v24 .. v24}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v24, "BQE_Thresholds"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 137
    .local v19, "thresholds":Lorg/w3c/dom/NodeList;
    const/4 v15, 0x0

    .line 138
    .local v15, "isDefaultSet":Z
    if-nez v19, :cond_7

    .line 139
    const-string/jumbo v24, "BQEExtension: missing BQE_Thresholds tag"

    invoke-static/range {v24 .. v24}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 140
    const/16 v24, -0x3

    return v24

    .line 126
    .end local v15    # "isDefaultSet":Z
    .end local v19    # "thresholds":Lorg/w3c/dom/NodeList;
    :cond_6
    const-string/jumbo v24, "BQEExtension: BQE_Disabled or ICD_Disabled value is not true or false"

    invoke-static/range {v24 .. v24}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 128
    const/16 v24, -0x3

    return v24

    .line 142
    .restart local v15    # "isDefaultSet":Z
    .restart local v19    # "thresholds":Lorg/w3c/dom/NodeList;
    :cond_7
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_8

    .line 143
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "BQEExtension: Num bqe threshold: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 144
    const-string/jumbo v25, " exceeds max, using only first "

    .line 143
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 144
    const/16 v25, 0x2

    .line 143
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 148
    :cond_8
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    const/16 v25, 0x2

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_14

    .line 149
    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/Element;

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    .line 150
    .local v5, "attrs":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v24, "Id"

    move-object/from16 v0, v24

    invoke-interface {v5, v0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v13

    .line 151
    .local v13, "id":Lorg/w3c/dom/Node;
    const-string/jumbo v14, "0"

    .line 152
    .local v14, "idVal":Ljava/lang/String;
    if-eqz v13, :cond_a

    .line 153
    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 162
    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/Element;

    .line 163
    const-string/jumbo v25, "apIds"

    .line 162
    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 164
    .local v4, "apIds":Lorg/w3c/dom/NodeList;
    const/4 v3, 0x0

    .line 167
    .local v3, "apIdValue":Ljava/lang/String;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    if-lez v24, :cond_e

    .line 168
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/Element;

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v24

    .line 169
    const-string/jumbo v25, "Type"

    .line 168
    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v20

    .line 170
    .local v20, "type":Ljava/lang/String;
    if-eqz v20, :cond_c

    const-string/jumbo v24, "SSID"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 178
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/Element;

    .line 179
    const-string/jumbo v25, "apId"

    .line 178
    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 180
    .local v2, "apIdNodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    const/16 v25, 0x80

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_9

    .line 181
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "BQEExtension: Num apIds: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 182
    const-string/jumbo v25, " exceeds max, using only first "

    .line 181
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 182
    const/16 v25, 0x80

    .line 181
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 184
    :cond_9
    const/16 v16, 0x0

    .end local v3    # "apIdValue":Ljava/lang/String;
    .local v16, "j":I
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    const/16 v25, 0x80

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v24

    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_f

    .line 185
    move/from16 v0, v16

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v24

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 186
    .local v3, "apIdValue":Ljava/lang/String;
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_d

    .line 187
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 188
    .local v10, "data":Landroid/content/ContentValues;
    const-string/jumbo v24, "Id"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string/jumbo v24, "apId"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/Extension;->bqeApIds:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v10    # "data":Landroid/content/ContentValues;
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 156
    .end local v2    # "apIdNodeList":Lorg/w3c/dom/NodeList;
    .end local v3    # "apIdValue":Ljava/lang/String;
    .end local v4    # "apIds":Lorg/w3c/dom/NodeList;
    .end local v16    # "j":I
    .end local v20    # "type":Ljava/lang/String;
    :cond_a
    const-string/jumbo v24, "BQEExtension: Attribute Id in BQE_Thresholds not defined ignoring this Node"

    invoke-static/range {v24 .. v24}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 148
    :cond_b
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 171
    .local v3, "apIdValue":Ljava/lang/String;
    .restart local v4    # "apIds":Lorg/w3c/dom/NodeList;
    .restart local v20    # "type":Ljava/lang/String;
    :cond_c
    const-string/jumbo v24, "BQEExtension: Attribute Type in apIds is null or not SSID ignoring this Node"

    invoke-static/range {v24 .. v24}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    goto :goto_3

    .line 192
    .restart local v2    # "apIdNodeList":Lorg/w3c/dom/NodeList;
    .local v3, "apIdValue":Ljava/lang/String;
    .restart local v16    # "j":I
    :cond_d
    const-string/jumbo v24, "BQEExtension: ignoring this node apIdVal is null or empty"

    invoke-static/range {v24 .. v24}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    goto :goto_2

    .line 197
    .end local v2    # "apIdNodeList":Lorg/w3c/dom/NodeList;
    .end local v16    # "j":I
    .end local v20    # "type":Ljava/lang/String;
    .local v3, "apIdValue":Ljava/lang/String;
    :cond_e
    if-nez v15, :cond_10

    .line 198
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 199
    .restart local v10    # "data":Landroid/content/ContentValues;
    const-string/jumbo v24, "Id"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/Extension;->bqeApIds:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    const/4 v15, 0x1

    .line 211
    .end local v3    # "apIdValue":Ljava/lang/String;
    .end local v10    # "data":Landroid/content/ContentValues;
    :cond_f
    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/Element;

    .line 212
    const-string/jumbo v25, "RadioTechnology"

    .line 211
    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 213
    .local v18, "subRats":Lorg/w3c/dom/NodeList;
    if-nez v18, :cond_11

    .line 214
    const-string/jumbo v24, "BQEExtension: missing RadioTechnology tags."

    invoke-static/range {v24 .. v24}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 215
    const/16 v24, -0x3

    return v24

    .line 203
    .end local v18    # "subRats":Lorg/w3c/dom/NodeList;
    .restart local v3    # "apIdValue":Ljava/lang/String;
    :cond_10
    const-string/jumbo v24, "BQEExtension: Multiple default nodes not allowed ignoring this Node"

    invoke-static/range {v24 .. v24}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    goto :goto_3

    .line 217
    .end local v3    # "apIdValue":Ljava/lang/String;
    .restart local v18    # "subRats":Lorg/w3c/dom/NodeList;
    :cond_11
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "BQEExtension: RadioTechnology getLength ="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 218
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    const/16 v25, 0xc

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_12

    .line 219
    const-string/jumbo v24, "BQE Extension: Total number of radio technology mismatches."

    invoke-static/range {v24 .. v24}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 220
    const/16 v24, -0x3

    return v24

    .line 222
    :cond_12
    const/16 v17, 0x0

    .local v17, "k":I
    :goto_4
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    move/from16 v0, v17

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    .line 224
    new-instance v9, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;-><init>(Lcom/quicinc/cne/andsf/Extension;)V

    .line 225
    .local v9, "bt":Lcom/quicinc/cne/andsf/Extension$BqeThreshold;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/Extension;->bqeThresholds:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v9, v0}, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->-wrap0(Lcom/quicinc/cne/andsf/Extension$BqeThreshold;Lorg/w3c/dom/Node;)I

    move-result v24

    const/16 v25, -0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_13

    .line 227
    const-string/jumbo v24, "BQEExtension: BQE parameter validation failed."

    invoke-static/range {v24 .. v24}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 228
    const/16 v24, -0x3

    return v24

    .line 230
    :cond_13
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-static {v9, v0, v14}, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->-wrap1(Lcom/quicinc/cne/andsf/Extension$BqeThreshold;Lorg/w3c/dom/Node;Ljava/lang/String;)V

    .line 222
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 236
    .end local v4    # "apIds":Lorg/w3c/dom/NodeList;
    .end local v5    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v9    # "bt":Lcom/quicinc/cne/andsf/Extension$BqeThreshold;
    .end local v13    # "id":Lorg/w3c/dom/Node;
    .end local v14    # "idVal":Ljava/lang/String;
    .end local v17    # "k":I
    .end local v18    # "subRats":Lorg/w3c/dom/NodeList;
    :cond_14
    const-string/jumbo v24, "AuthApps"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 237
    .local v6, "authAppNode":Lorg/w3c/dom/NodeList;
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v6, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    check-cast v24, Lorg/w3c/dom/Element;

    .line 238
    const-string/jumbo v25, "Appname"

    .line 237
    invoke-interface/range {v24 .. v25}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 239
    .local v7, "authAppNodeList":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    :goto_5
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_15

    .line 240
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 241
    .restart local v10    # "data":Landroid/content/ContentValues;
    const-string/jumbo v24, "Appname"

    .line 242
    invoke-interface {v7, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v25

    .line 241
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/Extension;->authApps:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 246
    .end local v10    # "data":Landroid/content/ContentValues;
    :cond_15
    const/16 v24, 0x3e8

    return v24
.end method

.method private handleCQEExtension(Lorg/w3c/dom/Element;)I
    .locals 14
    .param p1, "baseNode"    # Lorg/w3c/dom/Element;

    .prologue
    .line 537
    const-string/jumbo v12, "CQEExtension: Handling CQE extension"

    invoke-static {v12}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 538
    const-string/jumbo v12, "CQE"

    invoke-interface {p1, v12}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 539
    .local v3, "cqeTag":Lorg/w3c/dom/NodeList;
    if-nez v3, :cond_0

    .line 540
    const-string/jumbo v12, "CQEExtension: missing CQE tag"

    invoke-static {v12}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 541
    const/4 v12, -0x3

    return v12

    .line 543
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "CQEExtension: CQE tag entries "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 545
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v6, v12, :cond_4

    .line 546
    invoke-interface {v3, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    if-nez v12, :cond_2

    .line 547
    const-string/jumbo v12, "CQEExtension: missing items under current CQE tag."

    invoke-static {v12}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 545
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 550
    :cond_2
    invoke-interface {v3, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    invoke-interface {v12}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 551
    .local v2, "attrs":Lorg/w3c/dom/NamedNodeMap;
    if-nez v2, :cond_3

    .line 552
    const-string/jumbo v12, "CQEExtension: no attributes found for current CQE tag"

    invoke-static {v12}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    goto :goto_1

    .line 555
    :cond_3
    const-string/jumbo v12, "prodId"

    invoke-interface {v2, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 556
    .local v8, "prodId":Lorg/w3c/dom/Node;
    if-eqz v8, :cond_1

    .line 559
    iget-object v12, p0, Lcom/quicinc/cne/andsf/Extension;->productId:Ljava/lang/String;

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 563
    .end local v2    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "prodId":Lorg/w3c/dom/Node;
    :cond_4
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ne v6, v12, :cond_5

    .line 564
    const-string/jumbo v12, "CQEExtension: No matching CQE tag found"

    invoke-static {v12}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 565
    const/4 v12, -0x3

    return v12

    .line 567
    :cond_5
    invoke-interface {v3, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    const-string/jumbo v13, "CQE_Thresholds"

    invoke-interface {v12, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 568
    .local v9, "thresholds":Lorg/w3c/dom/NodeList;
    if-nez v9, :cond_6

    .line 569
    const-string/jumbo v12, "CQEExtension: missing CQE_Thresholds tag, using default."

    invoke-static {v12}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 570
    const/4 v12, -0x3

    return v12

    .line 572
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "CQEExtension: thresholds length "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 573
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    const/4 v13, 0x2

    if-le v12, v13, :cond_7

    .line 574
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "CQEExtension: Number of CQE_Thresholds elements "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 575
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    .line 574
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 575
    const-string/jumbo v13, " is greater than 2"

    .line 574
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 576
    const/4 v12, -0x3

    return v12

    .line 578
    :cond_7
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-ge v4, v12, :cond_12

    .line 582
    iget-object v12, p0, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 584
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "CQEExtension: Processing threshold item "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 585
    invoke-interface {v9, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    if-nez v12, :cond_8

    .line 586
    const-string/jumbo v12, "CQEExtension: missing items under CQE_Thresholds tag."

    invoke-static {v12}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 587
    const/4 v12, -0x3

    return v12

    .line 589
    :cond_8
    invoke-interface {v9, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    invoke-interface {v12}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 590
    .restart local v2    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v12, "Id"

    invoke-interface {v2, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 591
    .local v5, "id":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/16 v13, 0x80

    if-le v12, v13, :cond_a

    .line 592
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "CQEExtension:  Id value "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 593
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 592
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 593
    const-string/jumbo v13, " is greater than 128"

    .line 592
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 578
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 596
    :cond_a
    invoke-interface {v9, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    const-string/jumbo v13, "apIds"

    invoke-interface {v12, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 597
    .local v1, "apids":Lorg/w3c/dom/NodeList;
    if-nez v1, :cond_b

    .line 598
    const-string/jumbo v12, "CQEExtension: missing tag apIds under CQE_Thresholds"

    invoke-static {v12}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 599
    const/4 v12, -0x3

    return v12

    .line 601
    :cond_b
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    if-nez v12, :cond_c

    .line 602
    const-string/jumbo v12, "CQEExtension: Handling cqe thresholds for default apid"

    invoke-static {v12}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 603
    invoke-interface {v9, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {p0, v12, v5, v13}, Lcom/quicinc/cne/andsf/Extension;->handleCqeThresholds(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v12

    const/4 v13, -0x3

    if-ne v12, v13, :cond_10

    .line 604
    const/4 v12, -0x3

    return v12

    .line 609
    :cond_c
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    invoke-interface {v12}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v12

    const-string/jumbo v13, "Type"

    invoke-interface {v12, v13}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 610
    .local v11, "type":Ljava/lang/String;
    const-string/jumbo v12, "SSID"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 612
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    const-string/jumbo v13, "apId"

    invoke-interface {v12, v13}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 613
    .local v0, "apid":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    const/16 v13, 0x80

    if-le v12, v13, :cond_d

    .line 615
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "CQEExtension: Apid length "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 616
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    .line 615
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 616
    const-string/jumbo v13, " exceeds max, handling first "

    .line 615
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 616
    const/16 v13, 0x80

    .line 615
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 618
    :cond_d
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_3
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    const/16 v13, 0x80

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    if-ge v7, v12, :cond_10

    .line 619
    iget-object v12, p0, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V

    .line 620
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "CQEExtension: Handling cqe thresholds for apid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 621
    invoke-interface {v0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    .line 620
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 622
    invoke-interface {v9, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-direct {p0, v12, v5, v13}, Lcom/quicinc/cne/andsf/Extension;->handleCqeThresholds(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v12

    .line 623
    const/4 v13, -0x3

    .line 622
    if-ne v12, v13, :cond_e

    .line 624
    const/4 v12, -0x3

    return v12

    .line 618
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 630
    .end local v0    # "apid":Lorg/w3c/dom/NodeList;
    .end local v7    # "j":I
    :cond_f
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "CQEExtension: Apid type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " is not supported"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 634
    .end local v11    # "type":Ljava/lang/String;
    :cond_10
    const/4 v10, 0x0

    .line 635
    .local v10, "totalTags":I
    const-string/jumbo v12, "Rome"

    iget-object v13, p0, Lcom/quicinc/cne/andsf/Extension;->productId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 636
    const/16 v10, 0x11

    .line 641
    :goto_4
    iget-object v12, p0, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v12

    if-eq v12, v10, :cond_9

    .line 642
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Missing at least one CQE parameter tag. count: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 643
    iget-object v13, p0, Lcom/quicinc/cne/andsf/Extension;->cqeThresholdTags:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    .line 642
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 644
    const/4 v12, -0x3

    return v12

    .line 639
    :cond_11
    const/16 v10, 0x10

    goto :goto_4

    .line 647
    .end local v1    # "apids":Lorg/w3c/dom/NodeList;
    .end local v2    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v5    # "id":Lorg/w3c/dom/Node;
    .end local v10    # "totalTags":I
    :cond_12
    const/16 v12, 0x3e8

    return v12
.end method

.method private handleCqeThresholds(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I
    .locals 7
    .param p1, "thresholdNode"    # Lorg/w3c/dom/Node;
    .param p2, "idNode"    # Lorg/w3c/dom/Node;
    .param p3, "apidNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v6, -0x3

    .line 652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleCqeThresholds: thresholdNode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 653
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 652
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 653
    const-string/jumbo v5, " Id "

    .line 652
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 653
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 652
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 654
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 655
    .local v1, "details":Lorg/w3c/dom/NodeList;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CQE Thresholds details length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 656
    iget-object v4, p0, Lcom/quicinc/cne/andsf/Extension;->productId:Ljava/lang/String;

    const-string/jumbo v5, "Pronto"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 657
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 658
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 659
    .local v3, "thresholdTypeNode":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RSSIAddThreshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 660
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RSSIDropThreshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 659
    if-nez v4, :cond_0

    .line 661
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RSSIModelThreshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 659
    if-nez v4, :cond_0

    .line 662
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RSSIAveragingInterval"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 659
    if-nez v4, :cond_0

    .line 663
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RSSIMacTimerThreshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 659
    if-nez v4, :cond_0

    .line 664
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "CQETimer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 659
    if-nez v4, :cond_0

    .line 665
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "MACHysteresisTimer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 659
    if-nez v4, :cond_0

    .line 666
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "MACStatsAveragingAlpha"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 659
    if-nez v4, :cond_0

    .line 667
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "FrameCntThreshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 659
    if-nez v4, :cond_0

    .line 668
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ColdStartThreshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 659
    if-nez v4, :cond_0

    .line 669
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "MACMibThreshold2a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 659
    if-nez v4, :cond_0

    .line 670
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "MACMibThreshold2b"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 659
    if-nez v4, :cond_0

    .line 671
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RetryMetricWeight2a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 659
    if-nez v4, :cond_0

    .line 672
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RetryMetricWeight2b"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 659
    if-nez v4, :cond_0

    .line 673
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "MultiRetryMetricWeight2a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 659
    if-nez v4, :cond_0

    .line 674
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "MultiRetryMetricWeight2b"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 659
    if-eqz v4, :cond_2

    .line 677
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adding new CqeThreshold item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 678
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 677
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 680
    new-instance v0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;

    invoke-direct {v0, p0, v3, p2, p3}, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;-><init>(Lcom/quicinc/cne/andsf/Extension;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 681
    .local v0, "ct":Lcom/quicinc/cne/andsf/Extension$CqeThreshold;
    iget-object v4, p0, Lcom/quicinc/cne/andsf/Extension;->cqeThresholds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-static {v0}, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->-wrap0(Lcom/quicinc/cne/andsf/Extension$CqeThreshold;)I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 683
    const-string/jumbo v4, "CQE parameter validation failed."

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 684
    return v6

    .line 686
    :cond_1
    invoke-static {v0}, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->-wrap2(Lcom/quicinc/cne/andsf/Extension$CqeThreshold;)V

    .line 657
    .end local v0    # "ct":Lcom/quicinc/cne/andsf/Extension$CqeThreshold;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 690
    .end local v2    # "i":I
    .end local v3    # "thresholdTypeNode":Lorg/w3c/dom/Node;
    :cond_3
    iget-object v4, p0, Lcom/quicinc/cne/andsf/Extension;->productId:Ljava/lang/String;

    const-string/jumbo v5, "Rome"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 691
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 692
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 693
    .restart local v3    # "thresholdTypeNode":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RSSIAddThreshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 694
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RSSIDropThreshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 693
    if-nez v4, :cond_4

    .line 695
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RSSIAveragingInterval"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 693
    if-nez v4, :cond_4

    .line 696
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RSSIMacTimerThreshold"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 693
    if-nez v4, :cond_4

    .line 697
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "CQETimer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 693
    if-nez v4, :cond_4

    .line 698
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "MACHysteresisTimer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 693
    if-nez v4, :cond_4

    .line 699
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "MACStatsAveragingAlpha"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 693
    if-nez v4, :cond_4

    .line 700
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RMP_THR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 693
    if-nez v4, :cond_4

    .line 701
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RMP_CNT_THR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 693
    if-nez v4, :cond_4

    .line 702
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RX_MCS_THR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 693
    if-nez v4, :cond_4

    .line 703
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RX_BW_THR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 693
    if-nez v4, :cond_4

    .line 704
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "TMD_THR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 693
    if-nez v4, :cond_4

    .line 705
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "TMD_CNT_THR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 693
    if-nez v4, :cond_4

    .line 706
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "TMR_THR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 693
    if-nez v4, :cond_4

    .line 707
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "TMR_CNT_THR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 693
    if-nez v4, :cond_4

    .line 708
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "TX_MCS_THR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 693
    if-nez v4, :cond_4

    .line 709
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "TX_BW_THR"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 693
    if-eqz v4, :cond_6

    .line 712
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adding new CqeThreshold item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 713
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    .line 712
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 714
    new-instance v0, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;

    invoke-direct {v0, p0, v3, p2, p3}, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;-><init>(Lcom/quicinc/cne/andsf/Extension;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 715
    .restart local v0    # "ct":Lcom/quicinc/cne/andsf/Extension$CqeThreshold;
    iget-object v4, p0, Lcom/quicinc/cne/andsf/Extension;->cqeThresholds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    invoke-static {v0}, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->-wrap1(Lcom/quicinc/cne/andsf/Extension$CqeThreshold;)I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 717
    const-string/jumbo v4, "CQE parameter validation failed."

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 718
    return v6

    .line 720
    :cond_5
    invoke-static {v0}, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->-wrap2(Lcom/quicinc/cne/andsf/Extension$CqeThreshold;)V

    .line 691
    .end local v0    # "ct":Lcom/quicinc/cne/andsf/Extension$CqeThreshold;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 725
    .end local v2    # "i":I
    .end local v3    # "thresholdTypeNode":Lorg/w3c/dom/Node;
    :cond_7
    const-string/jumbo v4, "Unknown productId"

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 726
    return v6

    .line 729
    .restart local v2    # "i":I
    :cond_8
    const/16 v4, 0x3e8

    return v4
.end method

.method private handleICDExtension(Lorg/w3c/dom/Element;)I
    .locals 16
    .param p1, "baseNode"    # Lorg/w3c/dom/Element;

    .prologue
    .line 455
    const-string/jumbo v14, "Handling ICD"

    invoke-static {v14}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 456
    const/4 v12, 0x0

    .line 457
    .local v12, "isIcdDefaultSet":Z
    const/4 v3, 0x0

    .line 458
    .local v3, "configTypeVal":Ljava/lang/String;
    const-string/jumbo v14, "ICD"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 459
    .local v7, "icd":Lorg/w3c/dom/NodeList;
    if-nez v7, :cond_0

    .line 460
    const-string/jumbo v14, "missing icd tag. using default."

    invoke-static {v14}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 461
    const/4 v14, -0x3

    return v14

    .line 463
    :cond_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_1

    .line 464
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Num icd tags: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 465
    const-string/jumbo v15, " exceeds max ICD tags allowed"

    .line 464
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 466
    const/4 v14, -0x3

    return v14

    .line 468
    :cond_1
    const/4 v6, 0x0

    .end local v3    # "configTypeVal":Ljava/lang/String;
    .local v6, "i":I
    :goto_0
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    const/4 v15, 0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    if-ge v6, v14, :cond_c

    .line 469
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    if-nez v14, :cond_2

    .line 470
    const-string/jumbo v14, "missing items under icd tag."

    invoke-static {v14}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 471
    const/4 v14, -0x3

    return v14

    .line 473
    :cond_2
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    invoke-interface {v14}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 474
    .local v1, "attrs":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v14, "config-type"

    invoke-interface {v1, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 475
    .local v2, "configType":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_6

    .line 476
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, "configTypeVal":Ljava/lang/String;
    const-string/jumbo v14, "disabled"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string/jumbo v14, "enabled"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 487
    :cond_3
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 488
    const-string/jumbo v15, "apIds"

    .line 487
    invoke-interface {v14, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 489
    .local v10, "icdApIds":Lorg/w3c/dom/NodeList;
    const/4 v9, 0x0

    .line 490
    .local v9, "icdApIdValue":Ljava/lang/String;
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    if-lez v14, :cond_9

    .line 491
    const/4 v14, 0x0

    invoke-interface {v10, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    invoke-interface {v14}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    .line 492
    const-string/jumbo v15, "Type"

    .line 491
    invoke-interface {v14, v15}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    .line 493
    .local v11, "icdApiType":Ljava/lang/String;
    if-eqz v11, :cond_7

    const-string/jumbo v14, "SSID"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 499
    const/4 v14, 0x0

    invoke-interface {v10, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/w3c/dom/Element;

    .line 500
    const-string/jumbo v15, "apId"

    .line 499
    invoke-interface {v14, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 501
    .local v8, "icdApIdNodeList":Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    const/16 v15, 0x80

    if-le v14, v15, :cond_4

    .line 502
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Num apIds: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 503
    const-string/jumbo v15, " exceeds max, using only first "

    .line 502
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 504
    const/16 v15, 0x80

    .line 502
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 506
    :cond_4
    const/4 v13, 0x0

    .end local v9    # "icdApIdValue":Ljava/lang/String;
    .local v13, "j":I
    :goto_1
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    const/16 v15, 0x80

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    if-ge v13, v14, :cond_a

    .line 507
    invoke-interface {v8, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 508
    .local v9, "icdApIdValue":Ljava/lang/String;
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_8

    .line 509
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 510
    .local v5, "data":Landroid/content/ContentValues;
    const-string/jumbo v14, "apId"

    invoke-virtual {v5, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/quicinc/cne/andsf/Extension;->icdApIdSet:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    .end local v5    # "data":Landroid/content/ContentValues;
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 478
    .end local v8    # "icdApIdNodeList":Lorg/w3c/dom/NodeList;
    .end local v9    # "icdApIdValue":Ljava/lang/String;
    .end local v10    # "icdApIds":Lorg/w3c/dom/NodeList;
    .end local v11    # "icdApiType":Ljava/lang/String;
    .end local v13    # "j":I
    :cond_5
    const-string/jumbo v14, "Value for attribute config-type in ICD is not correct, setting to default"

    invoke-static {v14}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 480
    const/4 v14, -0x3

    return v14

    .line 484
    .end local v3    # "configTypeVal":Ljava/lang/String;
    :cond_6
    const-string/jumbo v14, "Attribute config-type in ICD not defined, setting to default"

    invoke-static {v14}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 485
    const/4 v14, -0x3

    return v14

    .line 494
    .restart local v3    # "configTypeVal":Ljava/lang/String;
    .local v9, "icdApIdValue":Ljava/lang/String;
    .restart local v10    # "icdApIds":Lorg/w3c/dom/NodeList;
    .restart local v11    # "icdApiType":Ljava/lang/String;
    :cond_7
    const-string/jumbo v14, "Attribute Type in ICD apIds is null or not SSID, reverting to default"

    invoke-static {v14}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 496
    const/4 v14, -0x3

    return v14

    .line 513
    .restart local v8    # "icdApIdNodeList":Lorg/w3c/dom/NodeList;
    .local v9, "icdApIdValue":Ljava/lang/String;
    .restart local v13    # "j":I
    :cond_8
    const-string/jumbo v14, "ignoring this node apIdVal is null or empty"

    invoke-static {v14}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    goto :goto_2

    .line 518
    .end local v8    # "icdApIdNodeList":Lorg/w3c/dom/NodeList;
    .end local v11    # "icdApiType":Ljava/lang/String;
    .end local v13    # "j":I
    .local v9, "icdApIdValue":Ljava/lang/String;
    :cond_9
    if-nez v12, :cond_b

    .line 519
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 520
    .restart local v5    # "data":Landroid/content/ContentValues;
    const-string/jumbo v14, "apId"

    invoke-virtual {v5, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/quicinc/cne/andsf/Extension;->icdApIdSet:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    const/4 v12, 0x1

    .line 468
    .end local v5    # "data":Landroid/content/ContentValues;
    .end local v9    # "icdApIdValue":Ljava/lang/String;
    :cond_a
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 524
    .restart local v9    # "icdApIdValue":Ljava/lang/String;
    :cond_b
    const-string/jumbo v14, "Multiple default nodes not allowed  ignoring this Node"

    invoke-static {v14}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    goto :goto_3

    .line 530
    .end local v1    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v2    # "configType":Lorg/w3c/dom/Node;
    .end local v3    # "configTypeVal":Ljava/lang/String;
    .end local v9    # "icdApIdValue":Ljava/lang/String;
    .end local v10    # "icdApIds":Lorg/w3c/dom/NodeList;
    :cond_c
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 531
    .local v4, "config_set":Landroid/content/ContentValues;
    const-string/jumbo v14, "config_type"

    invoke-virtual {v4, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/quicinc/cne/andsf/Extension;->icdConfigSet:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    const/16 v14, 0x3e8

    return v14
.end method

.method private handleTQEExtension(Lorg/w3c/dom/Element;)I
    .locals 14
    .param p1, "baseNode"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/16 v11, 0x80

    const/4 v10, -0x3

    .line 1390
    const-string/jumbo v8, "TQEExtension: Handling TQE extension"

    invoke-static {v8}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1391
    const-string/jumbo v8, "TQE_Thresholds"

    invoke-interface {p1, v8}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 1392
    .local v6, "thresholds":Lorg/w3c/dom/NodeList;
    if-nez v6, :cond_0

    .line 1393
    const-string/jumbo v8, "TQEExtension: missing TQE_Thresholds tag, using default."

    invoke-static {v8}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1394
    return v10

    .line 1396
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "TQEExtension: thresholds length "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1397
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    const/4 v9, 0x2

    if-le v8, v9, :cond_1

    .line 1398
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "TQEExtension: Number of TQE_Thresholds elements "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1399
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 1398
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1399
    const-string/jumbo v9, " is greater than 2"

    .line 1398
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1400
    return v10

    .line 1402
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v3, v8, :cond_a

    .line 1403
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "TQEExtension: Processing threshold item "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1404
    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    if-nez v8, :cond_2

    .line 1405
    const-string/jumbo v8, "TQEExtension: missing items under TQE_Thresholds tag."

    invoke-static {v8}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1406
    return v10

    .line 1408
    :cond_2
    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 1409
    .local v2, "attrs":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v8, "Id"

    invoke-interface {v2, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 1410
    .local v4, "id":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-le v8, v11, :cond_4

    .line 1411
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "TQEExtension:  Id value "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1412
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1411
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1412
    const-string/jumbo v9, " is greater than 128"

    .line 1411
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1402
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1415
    :cond_4
    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    const-string/jumbo v9, "apIds"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 1416
    .local v1, "apids":Lorg/w3c/dom/NodeList;
    if-nez v1, :cond_5

    .line 1417
    const-string/jumbo v8, "TQEExtension: missing tag apIds under TQE_Thresholds"

    invoke-static {v8}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1418
    return v10

    .line 1420
    :cond_5
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-nez v8, :cond_6

    .line 1421
    const-string/jumbo v8, "TQEExtension: Handling tqe thresholds for default apid"

    invoke-static {v8}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1422
    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-direct {p0, v8, v4, v12}, Lcom/quicinc/cne/andsf/Extension;->handleTqeThresholds(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v8

    if-ne v8, v10, :cond_3

    .line 1423
    return v10

    .line 1428
    :cond_6
    invoke-interface {v1, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    const-string/jumbo v9, "Type"

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 1429
    .local v7, "type":Ljava/lang/String;
    const-string/jumbo v8, "SSID"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1431
    invoke-interface {v1, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    const-string/jumbo v9, "apId"

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 1432
    .local v0, "apid":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-le v8, v11, :cond_7

    .line 1434
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "TQEExtension: Apid length "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1435
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 1434
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1435
    const-string/jumbo v9, " exceeds max, handling first "

    .line 1434
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1437
    :cond_7
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    invoke-static {v8, v11}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ge v5, v8, :cond_3

    .line 1438
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "TQEExtension: Handling tqe thresholds for apid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1439
    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .line 1438
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1440
    invoke-interface {v6, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-direct {p0, v8, v4, v9}, Lcom/quicinc/cne/andsf/Extension;->handleTqeThresholds(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v8

    if-ne v8, v10, :cond_8

    .line 1442
    return v10

    .line 1437
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1448
    .end local v0    # "apid":Lorg/w3c/dom/NodeList;
    .end local v5    # "j":I
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "TQEExtension: Apid type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is not supported"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1452
    .end local v1    # "apids":Lorg/w3c/dom/NodeList;
    .end local v2    # "attrs":Lorg/w3c/dom/NamedNodeMap;
    .end local v4    # "id":Lorg/w3c/dom/Node;
    .end local v7    # "type":Ljava/lang/String;
    :cond_a
    const/16 v8, 0x3e8

    return v8
.end method

.method private handleTqeThresholds(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I
    .locals 7
    .param p1, "thresholdNode"    # Lorg/w3c/dom/Node;
    .param p2, "idNode"    # Lorg/w3c/dom/Node;
    .param p3, "apidNode"    # Lorg/w3c/dom/Node;

    .prologue
    const/4 v6, -0x3

    .line 1457
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleTqeThresholds: thresholdNode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1458
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 1459
    .local v1, "details":Lorg/w3c/dom/NodeList;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "details length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1460
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1461
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 1462
    .local v3, "thresholdTypeNode":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "BBD_Disabled"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1463
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "DBD_Disabled"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1462
    if-nez v4, :cond_0

    .line 1464
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "DGIMThresh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1462
    if-nez v4, :cond_0

    .line 1465
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "DBDTputThresh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1462
    if-nez v4, :cond_0

    .line 1466
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "TQETimeWindow"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1462
    if-nez v4, :cond_0

    .line 1467
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "RatioThresh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1462
    if-eqz v4, :cond_2

    .line 1470
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adding new TqeThreshold item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1472
    new-instance v0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;

    invoke-direct {v0, p0, v3, p2, p3}, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;-><init>(Lcom/quicinc/cne/andsf/Extension;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    .line 1473
    .local v0, "ct":Lcom/quicinc/cne/andsf/Extension$TqeThreshold;
    iget-object v4, p0, Lcom/quicinc/cne/andsf/Extension;->tqeThresholds:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1474
    invoke-static {v0}, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->-wrap0(Lcom/quicinc/cne/andsf/Extension$TqeThreshold;)I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 1475
    const-string/jumbo v4, "TQE parameter validation failed."

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1476
    return v6

    .line 1478
    :cond_1
    invoke-static {v0}, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->-wrap1(Lcom/quicinc/cne/andsf/Extension$TqeThreshold;)V

    .line 1460
    .end local v0    # "ct":Lcom/quicinc/cne/andsf/Extension$TqeThreshold;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1481
    .end local v3    # "thresholdTypeNode":Lorg/w3c/dom/Node;
    :cond_3
    const/16 v4, 0x3e8

    return v4
.end method


# virtual methods
.method public assignValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1585
    const-string/jumbo v0, "BQE_Disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1586
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "BQE_Disabled"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    :cond_0
    :goto_0
    return-void

    .line 1588
    :cond_1
    const-string/jumbo v0, "ICD_Disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1589
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "ICD_Disabled"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1591
    :cond_2
    const-string/jumbo v0, "MaxAuthTime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1592
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "MaxAuthTime"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1594
    :cond_3
    const-string/jumbo v0, "IcdBanRetest"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1595
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "IcdBanRetest"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleExtension(Lorg/w3c/dom/Element;)I
    .locals 2
    .param p1, "baseNode"    # Lorg/w3c/dom/Element;

    .prologue
    const/16 v1, 0x3e8

    .line 82
    invoke-direct {p0, p1}, Lcom/quicinc/cne/andsf/Extension;->handleBQEExtension(Lorg/w3c/dom/Element;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 83
    invoke-direct {p0, p1}, Lcom/quicinc/cne/andsf/Extension;->handleCQEExtension(Lorg/w3c/dom/Element;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 84
    invoke-direct {p0, p1}, Lcom/quicinc/cne/andsf/Extension;->handleTQEExtension(Lorg/w3c/dom/Element;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 85
    invoke-direct {p0, p1}, Lcom/quicinc/cne/andsf/Extension;->handleICDExtension(Lorg/w3c/dom/Element;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 86
    const-string/jumbo v0, "Extension: successfully handle Extension node."

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 87
    return v1

    .line 90
    :cond_0
    const-string/jumbo v0, "Extension: error in handle Extension node."

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 91
    const/4 v0, -0x3

    return v0
.end method
