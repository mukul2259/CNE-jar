.class public Lcom/quicinc/cne/andsf/AndsfParser;
.super Ljava/lang/Object;
.source "AndsfParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;,
        Lcom/quicinc/cne/andsf/AndsfParser$Version;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final SUB_TYPE:Ljava/lang/String; = "PLCY:ANDSF"

.field private static final TAG_ANDSF:Ljava/lang/String; = "Andsf"

.field private static final TAG_ROOT:Ljava/lang/String; = "AndsfPolicy"

.field private static final TAG_VERSION:Ljava/lang/String; = "Version"


# instance fields
.field andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

.field andsfNode:Lorg/w3c/dom/Element;

.field mContext:Landroid/content/Context;

.field mDb:Lcom/quicinc/cne/andsf/DbConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v0, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    .line 89
    iput-object v0, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfNode:Lorg/w3c/dom/Element;

    .line 95
    iput-object p1, p0, Lcom/quicinc/cne/andsf/AndsfParser;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method public static dlogd(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 358
    const-string/jumbo v0, "PLCY:ANDSF"

    invoke-static {v0, p0}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 362
    const-string/jumbo v0, "PLCY:ANDSF"

    invoke-static {v0, p0}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method private parseAndsfConfig(Lorg/w3c/dom/Element;)I
    .locals 10
    .param p1, "elem"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x3

    .line 288
    iget-object v4, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    invoke-static {}, Lcom/quicinc/cne/andsf/AndsfParser$Version;->getString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->version:Ljava/lang/String;

    .line 289
    const-string/jumbo v4, "PLCY:ANDSF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "version= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    iget-object v6, v6, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->version:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v4, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->time:J

    .line 292
    const-string/jumbo v4, "PLCY:ANDSF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "time= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    iget-wide v6, v6, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->time:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v4, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    iget-object v4, v4, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->data:Landroid/content/ContentValues;

    const-string/jumbo v5, "Version"

    iget-object v6, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    iget-object v6, v6, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->version:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v4, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    iget-object v4, v4, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->data:Landroid/content/ContentValues;

    const-string/jumbo v5, "Timestamp"

    iget-object v6, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    iget-wide v6, v6, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->time:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 299
    const-string/jumbo v4, "ISRP"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 300
    .local v3, "isrpNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v4, v9, :cond_2

    .line 301
    const-string/jumbo v4, "PLCY:ANDSF"

    const-string/jumbo v5, "No IRSP nodes in ANDSF file"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    const-string/jumbo v4, "Ext"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 313
    .local v0, "extensionNodes":Lorg/w3c/dom/NodeList;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v4, v9, :cond_3

    .line 314
    :cond_1
    const-string/jumbo v4, "PLCY:ANDSF"

    const-string/jumbo v5, "No Ext node in ANDSF file"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return v8

    .line 304
    .end local v0    # "extensionNodes":Lorg/w3c/dom/NodeList;
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 305
    new-instance v2, Lcom/quicinc/cne/andsf/IsrpDetails;

    .line 306
    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    .line 305
    invoke-direct {v2, v4}, Lcom/quicinc/cne/andsf/IsrpDetails;-><init>(Lorg/w3c/dom/Element;)V

    .line 307
    .local v2, "isrpDetails":Lcom/quicinc/cne/andsf/IsrpDetails;
    iget-object v4, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    iget-object v4, v4, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->isrps:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    .end local v1    # "i":I
    .end local v2    # "isrpDetails":Lcom/quicinc/cne/andsf/IsrpDetails;
    .restart local v0    # "extensionNodes":Lorg/w3c/dom/NodeList;
    :cond_3
    iget-object v4, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    new-instance v5, Lcom/quicinc/cne/andsf/Extension;

    invoke-direct {v5}, Lcom/quicinc/cne/andsf/Extension;-><init>()V

    iput-object v5, v4, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->extension:Lcom/quicinc/cne/andsf/Extension;

    .line 319
    iget-object v4, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    iget-object v4, v4, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->extension:Lcom/quicinc/cne/andsf/Extension;

    if-nez v4, :cond_4

    .line 320
    const-string/jumbo v4, "PLCY:ANDSF"

    const-string/jumbo v5, "Failed to create Extension"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return v8

    .line 323
    :cond_4
    iget-object v4, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    iget-object v5, v4, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->extension:Lcom/quicinc/cne/andsf/Extension;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-virtual {v5, v4}, Lcom/quicinc/cne/andsf/Extension;->handleExtension(Lorg/w3c/dom/Element;)I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 325
    const-string/jumbo v4, "PLCY:ANDSF"

    .line 326
    const-string/jumbo v5, "Invalid args when parsing xml file Extension nodes."

    .line 325
    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return v8

    .line 334
    :cond_5
    const-string/jumbo v4, "PLCY:ANDSF"

    .line 335
    const-string/jumbo v5, "Not commiting to DB...deprecated"

    .line 334
    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/16 v4, 0x3e8

    return v4
.end method

.method private parseFile(Ljava/lang/String;)I
    .locals 14
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x1

    const/4 v12, -0x3

    .line 214
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    .line 215
    .local v2, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 216
    .local v1, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 218
    .local v3, "doc":Lorg/w3c/dom/Document;
    if-nez v3, :cond_0

    .line 219
    const-string/jumbo v9, "PLCY:ANDSF"

    const-string/jumbo v10, "Malformed ANDSF xml file"

    invoke-static {v9, v10}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return v12

    .line 224
    :cond_0
    invoke-direct {p0, v3}, Lcom/quicinc/cne/andsf/AndsfParser;->validatePolicyTree(Lorg/w3c/dom/Document;)I

    move-result v6

    .line 225
    .local v6, "ret":I
    const/16 v9, 0x3e8

    if-eq v9, v6, :cond_1

    .line 226
    return v6

    .line 229
    :cond_1
    const-string/jumbo v9, "Andsf"

    invoke-interface {v3, v9}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 230
    .local v0, "andsfNodes":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-lt v9, v13, :cond_5

    .line 232
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 234
    invoke-interface {v0, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    iput-object v9, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfNode:Lorg/w3c/dom/Element;

    .line 235
    iget-object v9, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfNode:Lorg/w3c/dom/Element;

    const-string/jumbo v10, "Version"

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 236
    .local v8, "versionNode":Lorg/w3c/dom/NodeList;
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ne v9, v13, :cond_3

    .line 239
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .line 244
    .local v7, "version":Ljava/lang/String;
    invoke-static {v7}, Lcom/quicinc/cne/andsf/AndsfParser$Version;->matchVersion(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 246
    const-string/jumbo v9, "PLCY:ANDSF"

    .line 247
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parsing Andsf node "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 248
    const-string/jumbo v11, ", version "

    .line 247
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 248
    invoke-static {}, Lcom/quicinc/cne/andsf/AndsfParser$Version;->getString()Ljava/lang/String;

    move-result-object v11

    .line 247
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 246
    invoke-static {v9, v10}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v9, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfNode:Lorg/w3c/dom/Element;

    invoke-direct {p0, v9}, Lcom/quicinc/cne/andsf/AndsfParser;->parseAndsfConfig(Lorg/w3c/dom/Element;)I

    move-result v9

    return v9

    .line 253
    :cond_2
    const-string/jumbo v9, "PLCY:ANDSF"

    .line 254
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 255
    const-string/jumbo v11, " from Andsf node "

    .line 254
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 256
    const-string/jumbo v11, " does not match software version "

    .line 254
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 257
    invoke-static {}, Lcom/quicinc/cne/andsf/AndsfParser$Version;->getString()Ljava/lang/String;

    move-result-object v11

    .line 254
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 253
    invoke-static {v9, v10}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .end local v7    # "version":Ljava/lang/String;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 262
    :cond_3
    const-string/jumbo v9, "PLCY:ANDSF"

    .line 263
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "No/Many version tag from Andsf node "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 262
    invoke-static {v9, v10}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 275
    .end local v0    # "andsfNodes":Lorg/w3c/dom/NodeList;
    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "i":I
    .end local v6    # "ret":I
    .end local v8    # "versionNode":Lorg/w3c/dom/NodeList;
    :catch_0
    move-exception v4

    .line 276
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "PLCY:ANDSF"

    const-string/jumbo v10, "ANDSF Parser failed"

    invoke-static {v9, v10}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 278
    return v12

    .line 266
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "andsfNodes":Lorg/w3c/dom/NodeList;
    .restart local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "i":I
    .restart local v6    # "ret":I
    :cond_4
    :try_start_1
    const-string/jumbo v9, "PLCY:ANDSF"

    .line 267
    const-string/jumbo v10, "No version match from any Andsf node. Configuration not parsed."

    .line 266
    invoke-static {v9, v10}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v9, -0x8

    return v9

    .line 272
    .end local v5    # "i":I
    :cond_5
    const-string/jumbo v9, "PLCY:ANDSF"

    const-string/jumbo v10, "No Andsf tag"

    invoke-static {v9, v10}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 273
    return v12
.end method

.method private updateAndsfDb()I
    .locals 5

    .prologue
    .line 342
    :try_start_0
    new-instance v2, Lcom/quicinc/cne/andsf/DbConnection;

    iget-object v3, p0, Lcom/quicinc/cne/andsf/AndsfParser;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/quicinc/cne/andsf/DbConnection;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/quicinc/cne/andsf/AndsfParser;->mDb:Lcom/quicinc/cne/andsf/DbConnection;

    .line 343
    iget-object v2, p0, Lcom/quicinc/cne/andsf/AndsfParser;->mDb:Lcom/quicinc/cne/andsf/DbConnection;

    invoke-virtual {v2}, Lcom/quicinc/cne/andsf/DbConnection;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 345
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v2, p0, Lcom/quicinc/cne/andsf/AndsfParser;->mDb:Lcom/quicinc/cne/andsf/DbConnection;

    iget-object v3, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    invoke-virtual {v2, v0, v3}, Lcom/quicinc/cne/andsf/DbConnection;->commitAndsf(Landroid/database/sqlite/SQLiteDatabase;Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;)V

    .line 346
    iget-object v2, p0, Lcom/quicinc/cne/andsf/AndsfParser;->mDb:Lcom/quicinc/cne/andsf/DbConnection;

    invoke-virtual {v2}, Lcom/quicinc/cne/andsf/DbConnection;->close()V

    .line 347
    iget-object v2, p0, Lcom/quicinc/cne/andsf/AndsfParser;->mDb:Lcom/quicinc/cne/andsf/DbConnection;

    const-string/jumbo v3, "/data/connectivity/"

    invoke-virtual {v2, v3}, Lcom/quicinc/cne/andsf/DbConnection;->copyDatabase(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    const/16 v2, 0x3e8

    return v2

    .line 348
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "PLCY:ANDSF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Update ANDSF db failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/4 v2, -0x1

    return v2
.end method

.method private updateDefaultConfigFile(Ljava/lang/String;)V
    .locals 17
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 123
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .line 124
    .local v3, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 125
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 126
    .local v2, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v14, Ljava/io/File;

    const-string/jumbo v15, "system/etc/cne/andsfCne.xml"

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 127
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v11

    .line 129
    .local v11, "root":Lorg/w3c/dom/Element;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfNode:Lorg/w3c/dom/Element;

    if-eqz v14, :cond_1

    .line 132
    :goto_0
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 133
    invoke-interface {v11}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v14

    invoke-interface {v11, v14}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 149
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v7

    .line 150
    .local v7, "e":Ljavax/xml/parsers/ParserConfigurationException;
    const-string/jumbo v14, "PLCY:ANDSF"

    const-string/jumbo v15, "ParserConfigurationException..."

    invoke-static {v14, v15}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 120
    .end local v7    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_1
    return-void

    .line 136
    .restart local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v11    # "root":Lorg/w3c/dom/Element;
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfNode:Lorg/w3c/dom/Element;

    const/4 v15, 0x1

    invoke-interface {v4, v14, v15}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 137
    .local v1, "copied":Lorg/w3c/dom/Node;
    invoke-interface {v11, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 139
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v13

    .line 140
    .local v13, "tf":Ljavax/xml/transform/Transformer;
    new-instance v5, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v5, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 141
    .local v5, "ds":Ljavax/xml/transform/dom/DOMSource;
    new-instance v12, Ljavax/xml/transform/stream/StreamResult;

    const-string/jumbo v14, "data/connectivity/profile-internet.xml"

    invoke-direct {v12, v14}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/lang/String;)V

    .line 142
    .local v12, "sr":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v13, v5, v12}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 143
    const-string/jumbo v14, "PLCY:ANDSF"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Restore "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "data/connectivity/profile-internet.xml"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 152
    .end local v1    # "copied":Lorg/w3c/dom/Node;
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v5    # "ds":Ljavax/xml/transform/dom/DOMSource;
    .end local v11    # "root":Lorg/w3c/dom/Element;
    .end local v12    # "sr":Ljavax/xml/transform/stream/StreamResult;
    .end local v13    # "tf":Ljavax/xml/transform/Transformer;
    :catch_1
    move-exception v10

    .line 153
    .local v10, "e":Lorg/xml/sax/SAXException;
    const-string/jumbo v14, "PLCY:ANDSF"

    const-string/jumbo v15, "SAXException..."

    invoke-static {v14, v15}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {v10}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 147
    .end local v10    # "e":Lorg/xml/sax/SAXException;
    .restart local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v11    # "root":Lorg/w3c/dom/Element;
    :cond_1
    :try_start_2
    const-string/jumbo v14, "PLCY:ANDSF"

    const-string/jumbo v15, "andsfNode is null. Not restoring default file"

    invoke-static {v14, v15}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 155
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "root":Lorg/w3c/dom/Element;
    :catch_2
    move-exception v8

    .line 156
    .local v8, "e":Ljavax/xml/transform/TransformerConfigurationException;
    const-string/jumbo v14, "PLCY:ANDSF"

    const-string/jumbo v15, "TransformerConfigurationException..."

    invoke-static {v14, v15}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v8}, Ljavax/xml/transform/TransformerConfigurationException;->printStackTrace()V

    goto :goto_1

    .line 161
    .end local v8    # "e":Ljavax/xml/transform/TransformerConfigurationException;
    :catch_3
    move-exception v6

    .line 162
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "PLCY:ANDSF"

    const-string/jumbo v15, "updateDefaultConfigFile failed"

    invoke-static {v14, v15}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 158
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v9

    .line 159
    .local v9, "e":Ljavax/xml/transform/TransformerException;
    const-string/jumbo v14, "PLCY:ANDSF"

    const-string/jumbo v15, "TransformerException..."

    invoke-static {v14, v15}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v9}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private validatePolicyTree(Lorg/w3c/dom/Document;)I
    .locals 6
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v5, -0x3

    .line 173
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 175
    .local v2, "root":Lorg/w3c/dom/Element;
    if-eqz v2, :cond_1

    const-string/jumbo v3, "AndsfPolicy"

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    const-string/jumbo v3, "Andsf"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 178
    .local v0, "andsf":Lorg/w3c/dom/Element;
    if-eqz v0, :cond_0

    .line 180
    const-string/jumbo v3, "Version"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 181
    .local v1, "list":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 182
    const-string/jumbo v3, "PLCY:ANDSF"

    const-string/jumbo v4, "There must be only one version node <Version> as a child of ANDSF node"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return v5

    .line 189
    .end local v1    # "list":Lorg/w3c/dom/NodeList;
    :cond_0
    const-string/jumbo v3, "PLCY:ANDSF"

    const-string/jumbo v4, "ANDSF node must be <Andsf> as a child of <AndsfPolicy>"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return v5

    .line 195
    .end local v0    # "andsf":Lorg/w3c/dom/Element;
    :cond_1
    const-string/jumbo v3, "PLCY:ANDSF"

    const-string/jumbo v4, "root node must be <AndsfPolicy>"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return v5

    .line 198
    .restart local v0    # "andsf":Lorg/w3c/dom/Element;
    .restart local v1    # "list":Lorg/w3c/dom/NodeList;
    :cond_2
    const/16 v3, 0x3e8

    return v3
.end method


# virtual methods
.method public updateAndsf(Ljava/lang/String;)I
    .locals 4
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string/jumbo v1, "PLCY:ANDSF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Starting ANDSF parser, version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 104
    invoke-static {}, Lcom/quicinc/cne/andsf/AndsfParser$Version;->getString()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const/4 v0, -0x1

    .line 106
    .local v0, "retVal":I
    new-instance v1, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    invoke-direct {v1, p0}, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;-><init>(Lcom/quicinc/cne/andsf/AndsfParser;)V

    iput-object v1, p0, Lcom/quicinc/cne/andsf/AndsfParser;->andsfData:Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    .line 107
    invoke-direct {p0, p1}, Lcom/quicinc/cne/andsf/AndsfParser;->parseFile(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 108
    const-string/jumbo v1, "PLCY:ANDSF"

    const-string/jumbo v2, "Finished parsing ANDSF file"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v1, "data/connectivity/profile-internet.xml"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-direct {p0, p1}, Lcom/quicinc/cne/andsf/AndsfParser;->updateDefaultConfigFile(Ljava/lang/String;)V

    .line 113
    :cond_0
    return v0
.end method
