.class public Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;
.super Ljava/lang/Object;
.source "DbConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/andsf/DbConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AndsfDatabaseStructure"
.end annotation


# instance fields
.field IsrpProperties:Lcom/quicinc/cne/andsf/DbConnection$Table;

.field cBool:Ljava/lang/String;

.field cInt:Ljava/lang/String;

.field cKey:Ljava/lang/String;

.field cText:Ljava/lang/String;

.field cUInt:Ljava/lang/String;

.field public tableNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/quicinc/cne/andsf/DbConnection$Table;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/quicinc/cne/andsf/DbConnection;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/andsf/DbConnection;)V
    .locals 20
    .param p1, "this$0"    # Lcom/quicinc/cne/andsf/DbConnection;

    .prologue
    .line 262
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->this$0:Lcom/quicinc/cne/andsf/DbConnection;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 256
    const-string/jumbo v18, "INTEGER PRIMARY KEY AUTOINCREMENT"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cKey:Ljava/lang/String;

    .line 257
    const-string/jumbo v18, "INTEGER"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    .line 258
    const-string/jumbo v18, "UNSIGNED INTEGER"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cUInt:Ljava/lang/String;

    .line 259
    const-string/jumbo v18, "TEXT"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    .line 260
    const-string/jumbo v18, "BOOL"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cBool:Ljava/lang/String;

    .line 263
    const-string/jumbo v18, "Creating Database structure"

    invoke-static/range {v18 .. v18}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 264
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    .line 265
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    .line 267
    new-instance v3, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string/jumbo v18, "andsf_data"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 268
    .local v3, "andsfData":Lcom/quicinc/cne/andsf/DbConnection$Table;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Version"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Timestamp"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v3, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    iget-object v0, v3, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance v12, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string/jumbo v18, "isrp"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v12, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 274
    .local v12, "isrpProps":Lcom/quicinc/cne/andsf/DbConnection$Table;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cKey:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "isrp_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Roaming"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "PLMN"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "UpdatePolicy"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v12, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    iget-object v0, v12, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    new-instance v8, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string/jumbo v18, "flowbased"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 282
    .local v8, "flowbasedProps":Lcom/quicinc/cne/andsf/DbConnection$Table;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cKey:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "flow_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "isrp_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "RulePriority"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v8, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    iget-object v0, v8, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    new-instance v11, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string/jumbo v18, "ip_flows"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v11, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 289
    .local v11, "ipFlows":Lcom/quicinc/cne/andsf/DbConnection$Table;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cKey:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "ip_flows_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "flow_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "AddressType"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cUInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "StartSourceIPAddress"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cUInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "EndSourceIPAddress"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cUInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "StartDestIPAddress"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cUInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "EndDestIPAddress"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "ProtocolType"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "StartSourcePortNumber"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "EndSourcePortNumber"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "StartDestPortNumber"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "EndDestPortNumber"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "AppName"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "SecondaryAccessId"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Direction"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "QoS"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v11, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    iget-object v0, v11, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    new-instance v13, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string/jumbo v18, "routing_criteria"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 310
    .local v13, "routingCriteria":Lcom/quicinc/cne/andsf/DbConnection$Table;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cKey:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "rc_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "flow_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v13, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    iget-object v0, v13, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v15, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string/jumbo v18, "time_of_day"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 316
    .local v15, "timeOfDay":Lcom/quicinc/cne/andsf/DbConnection$Table;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cKey:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "tod_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "rc_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "TimeStart"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "TimeStop"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "DateStart"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "DateStop"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance v14, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string/jumbo v18, "routing_rule"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v14, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 326
    .local v14, "routingRule":Lcom/quicinc/cne/andsf/DbConnection$Table;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cKey:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "rr_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "flow_id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cInt:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "AccessTechnology"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "AccessId"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "SecondaryAccessId"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "AccessNetworkPriority"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v14, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    iget-object v0, v14, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v17, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string/jumbo v18, "wqe"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 336
    .local v17, "wqeDetails":Lcom/quicinc/cne/andsf/DbConnection$Table;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cBool:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "BQE_Disabled"

    invoke-virtual/range {v17 .. v19}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cBool:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "ICD_Disabled"

    invoke-virtual/range {v17 .. v19}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cBool:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "MaxAuthTime"

    invoke-virtual/range {v17 .. v19}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cBool:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "IcdBanRetest"

    invoke-virtual/range {v17 .. v19}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v5, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string/jumbo v18, "bqe_apids"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 344
    .local v5, "bqeApIds":Lcom/quicinc/cne/andsf/DbConnection$Table;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "apId"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v5, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    iget-object v0, v5, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    new-instance v6, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string/jumbo v18, "bqe_thresholds"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 350
    .local v6, "bqeThresholds":Lcom/quicinc/cne/andsf/DbConnection$Table;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "SubRAT_Type"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Threshold"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Threshold_Units"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v6, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    iget-object v0, v6, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v7, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string/jumbo v18, "cqe_thresholds"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v7, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 358
    .local v7, "cqeThresholds":Lcom/quicinc/cne/andsf/DbConnection$Table;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Type"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Value"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Units"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "id"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "apid"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v7, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    iget-object v0, v7, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    new-instance v16, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string/jumbo v18, "tqe_thresholds"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 367
    .local v16, "tqeThresholds":Lcom/quicinc/cne/andsf/DbConnection$Table;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Type"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Value"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Units"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "id"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "apid"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v4, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string/jumbo v18, "auth_apps"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 376
    .local v4, "authApps":Lcom/quicinc/cne/andsf/DbConnection$Table;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Appname"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v4, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    iget-object v0, v4, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance v10, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string/jumbo v18, "icd_config_set"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v10, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 381
    .local v10, "icdConfigSet":Lcom/quicinc/cne/andsf/DbConnection$Table;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "config_type"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v10, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    iget-object v0, v10, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    new-instance v9, Lcom/quicinc/cne/andsf/DbConnection$Table;

    const-string/jumbo v18, "icd_apids"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;-><init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V

    .line 386
    .local v9, "icdApIds":Lcom/quicinc/cne/andsf/DbConnection$Table;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->cText:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "apId"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v9, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tableNames:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    iget-object v0, v9, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    return-void
.end method
