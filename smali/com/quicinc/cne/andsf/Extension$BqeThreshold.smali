.class Lcom/quicinc/cne/andsf/Extension$BqeThreshold;
.super Ljava/lang/Object;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/andsf/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BqeThreshold"
.end annotation


# instance fields
.field public data:Landroid/content/ContentValues;

.field private radioTech:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/quicinc/cne/andsf/Extension;


# direct methods
.method static synthetic -wrap0(Lcom/quicinc/cne/andsf/Extension$BqeThreshold;Lorg/w3c/dom/Node;)I
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    invoke-direct {p0, p1}, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->parameterValidation(Lorg/w3c/dom/Node;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/quicinc/cne/andsf/Extension$BqeThreshold;Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 0
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->addToDatabase(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/quicinc/cne/andsf/Extension;)V
    .locals 2
    .param p1, "this$0"    # Lcom/quicinc/cne/andsf/Extension;

    .prologue
    .line 253
    iput-object p1, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->data:Landroid/content/ContentValues;

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    .line 254
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string/jumbo v1, "CDMA2000"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string/jumbo v1, "EVDO_0"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string/jumbo v1, "EVDO_A"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string/jumbo v1, "EVDO_B"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string/jumbo v1, "EDGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string/jumbo v1, "UMTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string/jumbo v1, "HSPA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string/jumbo v1, "HSDPA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string/jumbo v1, "GPRS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string/jumbo v1, "LTE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string/jumbo v1, "EHRPD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    const-string/jumbo v1, "HSPAP"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method private addToDatabase(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 11
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 429
    const-string/jumbo v8, "putting BQE paramters into database"

    invoke-static {v8}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 430
    iget-object v8, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->data:Landroid/content/ContentValues;

    const-string/jumbo v9, "Id"

    invoke-virtual {v8, v9, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, p1

    .line 431
    check-cast v8, Lorg/w3c/dom/Element;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 432
    .local v0, "attrs":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v8, "Type"

    invoke-interface {v0, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 433
    .local v3, "subRatType":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 434
    .local v5, "typeName":Ljava/lang/String;
    iget-object v8, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->data:Landroid/content/ContentValues;

    const-string/jumbo v9, "SubRAT_Type"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 439
    .local v1, "details":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 440
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    .line 441
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "Threshold"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 442
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 443
    .local v7, "vals":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 444
    .local v6, "val":Ljava/lang/String;
    iget-object v8, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->data:Landroid/content/ContentValues;

    const-string/jumbo v9, "Threshold"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, p1

    .line 445
    check-cast v8, Lorg/w3c/dom/Element;

    invoke-interface {v8}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 446
    const-string/jumbo v8, "units"

    invoke-interface {v0, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 447
    .local v4, "threshUnits":Lorg/w3c/dom/Node;
    iget-object v8, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->data:Landroid/content/ContentValues;

    const-string/jumbo v9, "Threshold_Units"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .end local v4    # "threshUnits":Lorg/w3c/dom/Node;
    .end local v6    # "val":Ljava/lang/String;
    .end local v7    # "vals":Lorg/w3c/dom/NodeList;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    :cond_1
    return-void
.end method

.method private parameterValidation(Lorg/w3c/dom/Node;)I
    .locals 13
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 269
    const-string/jumbo v11, "validating BQE Thresholds"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    move-object v11, p1

    .line 271
    check-cast v11, Lorg/w3c/dom/Element;

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 272
    .local v0, "attrs":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v11, "Type"

    invoke-interface {v0, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 273
    .local v5, "subRatType":Lorg/w3c/dom/Node;
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 275
    .local v6, "typeName":Ljava/lang/String;
    if-eqz v6, :cond_0

    iget-object v11, p0, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->radioTech:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 283
    const/4 v3, 0x0

    .line 284
    .local v3, "findThreshold":Z
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 285
    .local v1, "details":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v4, v11, :cond_17

    .line 287
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    .line 290
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Threshold"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 291
    const/4 v3, 0x1

    move-object v11, p1

    .line 292
    check-cast v11, Lorg/w3c/dom/Element;

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    const-string/jumbo v12, "units"

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    .line 293
    .local v7, "unit":Lorg/w3c/dom/Node;
    if-nez v7, :cond_1

    .line 294
    const-string/jumbo v11, "BQE parameter: Missing unit tag."

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 295
    const/4 v11, -0x3

    return v11

    .line 276
    .end local v1    # "details":Lorg/w3c/dom/NodeList;
    .end local v3    # "findThreshold":Z
    .end local v4    # "i":I
    .end local v7    # "unit":Lorg/w3c/dom/Node;
    :cond_0
    const-string/jumbo v11, "invalid radio technology name."

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 277
    const/4 v11, -0x3

    return v11

    .line 297
    .restart local v1    # "details":Lorg/w3c/dom/NodeList;
    .restart local v3    # "findThreshold":Z
    .restart local v4    # "i":I
    .restart local v7    # "unit":Lorg/w3c/dom/Node;
    :cond_1
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 298
    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "bps"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 303
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 304
    .local v8, "vals":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    invoke-interface {v8, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    .line 305
    .local v10, "valueStr":Ljava/lang/String;
    const-string/jumbo v11, "CDMA2000"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, "EVDO_0"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 306
    const-string/jumbo v11, "EVDO_A"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 305
    if-nez v11, :cond_2

    .line 306
    const-string/jumbo v11, "EVDO_B"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 305
    if-eqz v11, :cond_5

    .line 308
    :cond_2
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 313
    .local v9, "value":I
    if-ltz v9, :cond_3

    const v11, 0x989680

    if-le v9, v11, :cond_16

    .line 314
    :cond_3
    const-string/jumbo v11, "CDMA/EVDO value out of range"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 315
    const/4 v11, -0x3

    return v11

    .line 299
    .end local v8    # "vals":Lorg/w3c/dom/NodeList;
    .end local v9    # "value":I
    .end local v10    # "valueStr":Ljava/lang/String;
    :cond_4
    const-string/jumbo v11, "BQE parameter: missing units value or not bps."

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 300
    const/4 v11, -0x3

    return v11

    .line 309
    .restart local v8    # "vals":Lorg/w3c/dom/NodeList;
    .restart local v10    # "valueStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 310
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v11, "BQE parameter: CDMA/EVDO Number Format Exception"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 311
    const/4 v11, -0x3

    return v11

    .line 319
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    const-string/jumbo v11, "EDGE"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 321
    :try_start_1
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .line 326
    .restart local v9    # "value":I
    if-ltz v9, :cond_6

    const v11, 0x989680

    if-le v9, v11, :cond_16

    .line 327
    :cond_6
    const-string/jumbo v11, "EDGE value out of range"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 328
    const/4 v11, -0x3

    return v11

    .line 322
    .end local v9    # "value":I
    :catch_1
    move-exception v2

    .line 323
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v11, "BQE parameter: EDGE Number Format Exception"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 324
    const/4 v11, -0x3

    return v11

    .line 331
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const-string/jumbo v11, "UMTS"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 333
    :try_start_2
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v9

    .line 338
    .restart local v9    # "value":I
    if-ltz v9, :cond_8

    const v11, 0x2faf080

    if-le v9, v11, :cond_16

    .line 339
    :cond_8
    const-string/jumbo v11, "UMTS value out of range"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 340
    const/4 v11, -0x3

    return v11

    .line 334
    .end local v9    # "value":I
    :catch_2
    move-exception v2

    .line 335
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v11, "BQE parameter: UMTS Number Format Exception"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 336
    const/4 v11, -0x3

    return v11

    .line 343
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_9
    const-string/jumbo v11, "HSPA"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 345
    :try_start_3
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v9

    .line 350
    .restart local v9    # "value":I
    if-ltz v9, :cond_a

    const v11, 0x2faf080

    if-le v9, v11, :cond_16

    .line 351
    :cond_a
    const-string/jumbo v11, "HSPA value out of range"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 352
    const/4 v11, -0x3

    return v11

    .line 346
    .end local v9    # "value":I
    :catch_3
    move-exception v2

    .line 347
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v11, "BQE parameter: HSPA Number Format Exception"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 348
    const/4 v11, -0x3

    return v11

    .line 355
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_b
    const-string/jumbo v11, "HSDPA"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 357
    :try_start_4
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v9

    .line 362
    .restart local v9    # "value":I
    if-ltz v9, :cond_c

    const v11, 0x2faf080

    if-le v9, v11, :cond_16

    .line 363
    :cond_c
    const-string/jumbo v11, "HSDPA value out of range"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 364
    const/4 v11, -0x3

    return v11

    .line 358
    .end local v9    # "value":I
    :catch_4
    move-exception v2

    .line 359
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v11, "BQE parameter: HSDPA Number Format Exception"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 360
    const/4 v11, -0x3

    return v11

    .line 367
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_d
    const-string/jumbo v11, "GPRS"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 369
    :try_start_5
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v9

    .line 374
    .restart local v9    # "value":I
    if-ltz v9, :cond_e

    const v11, 0x29bf8

    if-le v9, v11, :cond_16

    .line 375
    :cond_e
    const-string/jumbo v11, "GPRS value out of range"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 376
    const/4 v11, -0x3

    return v11

    .line 370
    .end local v9    # "value":I
    :catch_5
    move-exception v2

    .line 371
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v11, "BQE parameter: GPRS Number Format Exception"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 372
    const/4 v11, -0x3

    return v11

    .line 379
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_f
    const-string/jumbo v11, "LTE"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 381
    :try_start_6
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    move-result v9

    .line 386
    .restart local v9    # "value":I
    if-ltz v9, :cond_10

    const v11, 0x5f5e100

    if-le v9, v11, :cond_16

    .line 387
    :cond_10
    const-string/jumbo v11, "LTE value out of range"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 388
    const/4 v11, -0x3

    return v11

    .line 382
    .end local v9    # "value":I
    :catch_6
    move-exception v2

    .line 383
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v11, "BQE parameter: LTE Number Format Exception"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 384
    const/4 v11, -0x3

    return v11

    .line 391
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_11
    const-string/jumbo v11, "EHRPD"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    .line 393
    :try_start_7
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    move-result v9

    .line 398
    .restart local v9    # "value":I
    if-ltz v9, :cond_12

    const v11, 0x2f4d60

    if-le v9, v11, :cond_16

    .line 399
    :cond_12
    const-string/jumbo v11, "EHRPD value out of range"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 400
    const/4 v11, -0x3

    return v11

    .line 394
    .end local v9    # "value":I
    :catch_7
    move-exception v2

    .line 395
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v11, "BQE parameter: EHRPD Number Format Exception"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 396
    const/4 v11, -0x3

    return v11

    .line 403
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_13
    const-string/jumbo v11, "HSPAP"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 405
    :try_start_8
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_8

    move-result v9

    .line 410
    .restart local v9    # "value":I
    if-ltz v9, :cond_14

    const v11, 0xa037a00

    if-le v9, v11, :cond_16

    .line 411
    :cond_14
    const-string/jumbo v11, "HSPAP value out of range"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 412
    const/4 v11, -0x3

    return v11

    .line 406
    .end local v9    # "value":I
    :catch_8
    move-exception v2

    .line 407
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v11, "BQE parameter: HSPAP Number Format Exception"

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 408
    const/4 v11, -0x3

    return v11

    .line 416
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_15
    const-string/jumbo v11, "BQE parameter: unsupported bqe radiotechnology."

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 417
    const/4 v11, -0x3

    return v11

    .line 285
    .end local v7    # "unit":Lorg/w3c/dom/Node;
    .end local v8    # "vals":Lorg/w3c/dom/NodeList;
    .end local v10    # "valueStr":Ljava/lang/String;
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 422
    :cond_17
    if-nez v3, :cond_18

    .line 423
    const-string/jumbo v11, "BQE parameters: missing Threshold tag under RadioTechnology."

    invoke-static {v11}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 424
    const/4 v11, -0x3

    return v11

    .line 426
    :cond_18
    const/16 v11, 0x3e8

    return v11
.end method
