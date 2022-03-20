.class Lcom/quicinc/cne/andsf/Extension$TqeThreshold;
.super Ljava/lang/Object;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/andsf/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TqeThreshold"
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
.method static synthetic -wrap0(Lcom/quicinc/cne/andsf/Extension$TqeThreshold;)I
    .locals 1

    invoke-direct {p0}, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->parameterValidation()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/quicinc/cne/andsf/Extension$TqeThreshold;)V
    .locals 0

    invoke-direct {p0}, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->addToDatabase()V

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

    .line 1492
    iput-object p1, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->this$0:Lcom/quicinc/cne/andsf/Extension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1491
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    iput-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->data:Landroid/content/ContentValues;

    .line 1493
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->nodeName:Ljava/lang/String;

    .line 1494
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->valueStr:Ljava/lang/String;

    .line 1495
    const-string/jumbo v2, "TqeThreshold: Putting attributes..."

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1496
    check-cast p2, Lorg/w3c/dom/Element;

    .end local p2    # "thresholdTypeNode":Lorg/w3c/dom/Node;
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 1497
    .local v0, "attrs":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v2, "units"

    invoke-interface {v0, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1498
    .local v1, "threshUnits":Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->unit:Ljava/lang/String;

    .line 1499
    invoke-interface {p3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->id:Ljava/lang/String;

    .line 1500
    if-nez p4, :cond_1

    :goto_1
    iput-object v3, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->apid:Ljava/lang/String;

    .line 1492
    return-void

    .line 1498
    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1500
    :cond_1
    invoke-interface {p4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private addToDatabase()V
    .locals 3

    .prologue
    .line 1569
    const-string/jumbo v0, "TqeThreshold: adding TQE Thresholds to database."

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1570
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "Type"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1572
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "Value"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->valueStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1574
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "Units"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->unit:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    iget-object v0, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "apid"

    iget-object v2, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->apid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    const-string/jumbo v0, "TqeThreshold: finished"

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1568
    return-void
.end method

.method private parameterValidation()I
    .locals 8

    .prologue
    const v7, 0xffff

    const/4 v6, -0x3

    .line 1504
    const-string/jumbo v4, "validating TQE Threshold"

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 1508
    const/16 v1, -0x63

    .line 1509
    .local v1, "dropValue":I
    const/16 v0, -0xa

    .line 1512
    .local v0, "addValue":I
    iget-object v4, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v5, "DGIMThresh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1514
    :try_start_0
    iget-object v4, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1519
    if-ltz v0, :cond_0

    .line 1520
    if-le v0, v7, :cond_7

    .line 1521
    :cond_0
    const-string/jumbo v4, "DGIMThresh value out of range"

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1522
    return v6

    .line 1515
    :catch_0
    move-exception v2

    .line 1516
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "TQE parameter: DGIMThresh Number Format Exception"

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1517
    return v6

    .line 1525
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    iget-object v4, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v5, "DBDTputThresh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1527
    :try_start_1
    iget-object v4, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1532
    const v4, 0x186a0

    if-lt v0, v4, :cond_2

    .line 1533
    const v4, 0x5f5e100

    if-le v0, v4, :cond_7

    .line 1534
    :cond_2
    const-string/jumbo v4, "DBDTputThresh value out of range"

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1535
    return v6

    .line 1528
    :catch_1
    move-exception v2

    .line 1529
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "TQE parameter: DBDTputThresh Number Format Exception"

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1530
    return v6

    .line 1538
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    iget-object v4, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v5, "TQETimeWindow"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1540
    :try_start_2
    iget-object v4, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 1545
    if-ltz v0, :cond_4

    .line 1546
    if-le v0, v7, :cond_7

    .line 1547
    :cond_4
    const-string/jumbo v4, "TQETimeWindow value out of range"

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1548
    return v6

    .line 1541
    :catch_2
    move-exception v2

    .line 1542
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "TQE parameter: TQETimeWindow Number Format Exception"

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1543
    return v6

    .line 1551
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    iget-object v4, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->nodeName:Ljava/lang/String;

    const-string/jumbo v5, "RatioThresh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1553
    :try_start_3
    iget-object v4, p0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->valueStr:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v3

    .line 1558
    .local v3, "floatValue":F
    const/4 v4, 0x0

    cmpg-float v4, v3, v4

    if-lez v4, :cond_6

    .line 1559
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_7

    .line 1560
    :cond_6
    const-string/jumbo v4, "RatioThresh value out of range"

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1561
    return v6

    .line 1554
    .end local v3    # "floatValue":F
    :catch_3
    move-exception v2

    .line 1555
    .restart local v2    # "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v4, "TQE parameter: RatioThresh Number Format Exception"

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    .line 1556
    return v6

    .line 1565
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const/16 v4, 0x3e8

    return v4
.end method
