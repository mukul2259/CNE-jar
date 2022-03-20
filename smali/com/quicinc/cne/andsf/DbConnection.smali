.class public Lcom/quicinc/cne/andsf/DbConnection;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;,
        Lcom/quicinc/cne/andsf/DbConnection$Table;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "andsf.db"

.field private static andsfStruct:Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;

.field private static dbAbsolutePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-string/jumbo v0, "andsf.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 37
    const-string/jumbo v0, "andsf.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 38
    new-instance v0, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;

    invoke-direct {v0, p0}, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;-><init>(Lcom/quicinc/cne/andsf/DbConnection;)V

    sput-object v0, Lcom/quicinc/cne/andsf/DbConnection;->andsfStruct:Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;

    .line 39
    const-string/jumbo v0, "andsf.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/quicinc/cne/andsf/DbConnection;->dbAbsolutePath:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private commitExt(Landroid/database/sqlite/SQLiteDatabase;Lcom/quicinc/cne/andsf/Extension;)V
    .locals 20
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "ext"    # Lcom/quicinc/cne/andsf/Extension;

    .prologue
    .line 154
    const-string/jumbo v18, "Committing WQE extension to db"

    invoke-static/range {v18 .. v18}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/quicinc/cne/andsf/Extension;->bqeApIds:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "cv$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    .line 156
    .local v10, "cv":Landroid/content/ContentValues;
    const-string/jumbo v18, "bqe_apids"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v10}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    goto :goto_0

    .line 158
    .end local v10    # "cv":Landroid/content/ContentValues;
    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/quicinc/cne/andsf/Extension;->authApps:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "appname$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 159
    .local v4, "appname":Landroid/content/ContentValues;
    const-string/jumbo v18, "auth_apps"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v4}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    goto :goto_1

    .line 161
    .end local v4    # "appname":Landroid/content/ContentValues;
    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/quicinc/cne/andsf/Extension;->bqeThresholds:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "bt$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;

    .line 162
    .local v6, "bt":Lcom/quicinc/cne/andsf/Extension$BqeThreshold;
    const-string/jumbo v18, "bqe_thresholds"

    iget-object v0, v6, Lcom/quicinc/cne/andsf/Extension$BqeThreshold;->data:Landroid/content/ContentValues;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    goto :goto_2

    .line 164
    .end local v6    # "bt":Lcom/quicinc/cne/andsf/Extension$BqeThreshold;
    :cond_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/quicinc/cne/andsf/Extension;->icdApIdSet:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "icdApId$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/ContentValues;

    .line 165
    .local v12, "icdApId":Landroid/content/ContentValues;
    const-string/jumbo v18, "icd_apids"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v12}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    goto :goto_3

    .line 167
    .end local v12    # "icdApId":Landroid/content/ContentValues;
    :cond_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/quicinc/cne/andsf/Extension;->icdConfigSet:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "icdConfig$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentValues;

    .line 168
    .local v14, "icdConfig":Landroid/content/ContentValues;
    const-string/jumbo v18, "icd_config_set"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v14}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    goto :goto_4

    .line 171
    .end local v14    # "icdConfig":Landroid/content/ContentValues;
    :cond_4
    const-string/jumbo v18, "wqe"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/quicinc/cne/andsf/Extension;->data:Landroid/content/ContentValues;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 173
    const-string/jumbo v18, "Committing CQE extension to db"

    invoke-static/range {v18 .. v18}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/quicinc/cne/andsf/Extension;->cqeThresholds:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "ct$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;

    .line 175
    .local v8, "ct":Lcom/quicinc/cne/andsf/Extension$CqeThreshold;
    const-string/jumbo v18, "cqe_thresholds"

    iget-object v0, v8, Lcom/quicinc/cne/andsf/Extension$CqeThreshold;->data:Landroid/content/ContentValues;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    goto :goto_5

    .line 178
    .end local v8    # "ct":Lcom/quicinc/cne/andsf/Extension$CqeThreshold;
    :cond_5
    const-string/jumbo v18, "Committing TQE extension to db"

    invoke-static/range {v18 .. v18}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/quicinc/cne/andsf/Extension;->tqeThresholds:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "tt$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;

    .line 180
    .local v16, "tt":Lcom/quicinc/cne/andsf/Extension$TqeThreshold;
    const-string/jumbo v18, "tqe_thresholds"

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/quicinc/cne/andsf/Extension$TqeThreshold;->data:Landroid/content/ContentValues;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    goto :goto_6

    .line 152
    .end local v16    # "tt":Lcom/quicinc/cne/andsf/Extension$TqeThreshold;
    :cond_6
    return-void
.end method

.method private commitRC(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;I)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "flowId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p2, "routingCriteria":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;>;"
    const-string/jumbo v3, "Committing RoutingCriteria to db"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 145
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rc$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;

    .line 146
    .local v0, "rc":Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;
    iget-object v3, v0, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;->data:Landroid/content/ContentValues;

    const-string/jumbo v4, "flow_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    const-string/jumbo v3, "routing_criteria"

    iget-object v4, v0, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;->data:Landroid/content/ContentValues;

    invoke-virtual {p0, p1, v3, v4}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v2

    .line 148
    .local v2, "rc_id":I
    iget-object v3, v0, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;->mTimeOfDay:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3, v2}, Lcom/quicinc/cne/andsf/DbConnection;->commitTod(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 142
    .end local v0    # "rc":Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria;
    .end local v2    # "rc_id":I
    :cond_0
    return-void
.end method

.method private commitRR(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;I)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "flowId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, "rRules":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;>;"
    const-string/jumbo v2, "Committing RoutingRule to db"

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 135
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "rr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;

    .line 136
    .local v0, "rr":Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;
    iget-object v2, v0, Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;->data:Landroid/content/ContentValues;

    const-string/jumbo v3, "flow_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    const-string/jumbo v2, "routing_rule"

    iget-object v3, v0, Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;->data:Landroid/content/ContentValues;

    invoke-virtual {p0, p1, v2, v3}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    goto :goto_0

    .line 132
    .end local v0    # "rr":Lcom/quicinc/cne/andsf/FlowBased$RoutingRule;
    :cond_0
    return-void
.end method

.method private commitTod(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;I)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p3, "rc_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "tods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;>;"
    const-string/jumbo v2, "Committing TODs to db"

    invoke-static {v2}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 109
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "tod$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;

    .line 110
    .local v0, "tod":Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;
    iget-object v2, v0, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;->data:Landroid/content/ContentValues;

    const-string/jumbo v3, "rc_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    const-string/jumbo v2, "time_of_day"

    iget-object v3, v0, Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;->data:Landroid/content/ContentValues;

    invoke-virtual {p0, p1, v2, v3}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    goto :goto_0

    .line 106
    .end local v0    # "tod":Lcom/quicinc/cne/andsf/FlowBased$RoutingCriteria$TimeOfDay;
    :cond_0
    return-void
.end method

.method private createTables(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 57
    new-instance v3, Ljava/util/ArrayList;

    .line 58
    sget-object v4, Lcom/quicinc/cne/andsf/DbConnection;->andsfStruct:Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;

    iget-object v4, v4, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 57
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 60
    .local v3, "tables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/quicinc/cne/andsf/DbConnection$Table;>;"
    :try_start_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "t$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/quicinc/cne/andsf/DbConnection$Table;

    .line 61
    .local v1, "t":Lcom/quicinc/cne/andsf/DbConnection$Table;
    invoke-virtual {v1}, Lcom/quicinc/cne/andsf/DbConnection$Table;->getCreateString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    .end local v1    # "t":Lcom/quicinc/cne/andsf/DbConnection$Table;
    .end local v2    # "t$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PLCY:ANDSF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Creating tables"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v4, 0x0

    return v4

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "t$iterator":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    const-string/jumbo v4, "Created tables"

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    const/4 v4, 0x1

    return v4
.end method

.method private dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 74
    const-string/jumbo v4, "PLCY:ANDSF"

    const-string/jumbo v5, "Dropping tables"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    .line 76
    sget-object v4, Lcom/quicinc/cne/andsf/DbConnection;->andsfStruct:Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;

    iget-object v4, v4, Lcom/quicinc/cne/andsf/DbConnection$AndsfDatabaseStructure;->tables:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 75
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    .local v1, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    .local v2, "s":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DROP TABLE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PLCY:ANDSF"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Didn\'t drop table "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public commitAndsf(Landroid/database/sqlite/SQLiteDatabase;Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "andsfData"    # Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;

    .prologue
    .line 186
    const-string/jumbo v5, "Committing ANDSF to db"

    invoke-static {v5}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 187
    iget-object v5, p2, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->isrps:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "isrpDetails$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/quicinc/cne/andsf/IsrpDetails;

    .line 188
    .local v2, "isrpDetails":Lcom/quicinc/cne/andsf/IsrpDetails;
    const-string/jumbo v5, "isrp"

    iget-object v6, v2, Lcom/quicinc/cne/andsf/IsrpDetails;->data:Landroid/content/ContentValues;

    invoke-virtual {p0, p1, v5, v6}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v4

    .line 190
    .local v4, "isrp_id":I
    iget-object v5, v2, Lcom/quicinc/cne/andsf/IsrpDetails;->flowBased:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ibt$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/andsf/FlowBased;

    .line 191
    .local v0, "ibt":Lcom/quicinc/cne/andsf/FlowBased;
    invoke-virtual {p0, p1, v0, v4}, Lcom/quicinc/cne/andsf/DbConnection;->commitFlow(Landroid/database/sqlite/SQLiteDatabase;Lcom/quicinc/cne/andsf/FlowBased;I)V

    goto :goto_0

    .line 194
    .end local v0    # "ibt":Lcom/quicinc/cne/andsf/FlowBased;
    .end local v1    # "ibt$iterator":Ljava/util/Iterator;
    .end local v2    # "isrpDetails":Lcom/quicinc/cne/andsf/IsrpDetails;
    .end local v4    # "isrp_id":I
    :cond_1
    iget-object v5, p2, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->extension:Lcom/quicinc/cne/andsf/Extension;

    if-eqz v5, :cond_2

    .line 195
    iget-object v5, p2, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->extension:Lcom/quicinc/cne/andsf/Extension;

    invoke-direct {p0, p1, v5}, Lcom/quicinc/cne/andsf/DbConnection;->commitExt(Landroid/database/sqlite/SQLiteDatabase;Lcom/quicinc/cne/andsf/Extension;)V

    .line 197
    :cond_2
    iget-object v5, p2, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->data:Landroid/content/ContentValues;

    if-eqz v5, :cond_3

    .line 198
    const-string/jumbo v5, "andsf_data"

    iget-object v6, p2, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->data:Landroid/content/ContentValues;

    invoke-virtual {p0, p1, v5, v6}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 200
    :cond_3
    const-string/jumbo v5, "PLCY:ANDSF"

    const-string/jumbo v6, "commited ANDSF"

    invoke-static {v5, v6}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public commitFlow(Landroid/database/sqlite/SQLiteDatabase;Lcom/quicinc/cne/andsf/FlowBased;I)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "flowBased"    # Lcom/quicinc/cne/andsf/FlowBased;
    .param p3, "isrp_id"    # I

    .prologue
    .line 117
    const-string/jumbo v3, "Committing FlowBased to db"

    invoke-static {v3}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 118
    iget-object v3, p2, Lcom/quicinc/cne/andsf/FlowBased;->data:Landroid/content/ContentValues;

    const-string/jumbo v4, "isrp_id"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 119
    const-string/jumbo v3, "flowbased"

    iget-object v4, p2, Lcom/quicinc/cne/andsf/FlowBased;->data:Landroid/content/ContentValues;

    invoke-virtual {p0, p1, v3, v4}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    .line 121
    .local v0, "flowId":I
    iget-object v3, p2, Lcom/quicinc/cne/andsf/FlowBased;->ipFlows:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ipF$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;

    .line 122
    .local v1, "ipF":Lcom/quicinc/cne/andsf/FlowBased$IpFlow;
    iget-object v3, v1, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->data:Landroid/content/ContentValues;

    const-string/jumbo v4, "flow_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 123
    const-string/jumbo v3, "ip_flows"

    iget-object v4, v1, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->data:Landroid/content/ContentValues;

    invoke-virtual {p0, p1, v3, v4}, Lcom/quicinc/cne/andsf/DbConnection;->commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    goto :goto_0

    .line 126
    .end local v1    # "ipF":Lcom/quicinc/cne/andsf/FlowBased$IpFlow;
    :cond_0
    iget-object v3, p2, Lcom/quicinc/cne/andsf/FlowBased;->routingCriterion:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3, v0}, Lcom/quicinc/cne/andsf/DbConnection;->commitRC(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;I)V

    .line 128
    iget-object v3, p2, Lcom/quicinc/cne/andsf/FlowBased;->routingRules:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3, v0}, Lcom/quicinc/cne/andsf/DbConnection;->commitRR(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;I)V

    .line 115
    return-void
.end method

.method public commitUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 97
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 98
    .local v0, "id":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 99
    const-string/jumbo v2, "PLCY:ANDSF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Commit "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    long-to-int v2, v0

    return v2
.end method

.method public copyDatabase(Ljava/lang/String;)V
    .locals 10
    .param p1, "dbPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 398
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "andsf.db"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 400
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 402
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 403
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 409
    .end local v3    # "f":Ljava/io/File;
    :goto_0
    :try_start_1
    new-instance v4, Ljava/io/FileInputStream;

    sget-object v7, Lcom/quicinc/cne/andsf/DbConnection;->dbAbsolutePath:Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 410
    .local v4, "in":Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 412
    .local v6, "out":Ljava/io/OutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 414
    .local v0, "buff":[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_0

    .line 415
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 423
    .end local v0    # "buff":[B
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v6    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v7, "PLCY:ANDSF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "File not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    throw v1

    .line 404
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 405
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v7, "PLCY:ANDSF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Creating file failure"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 417
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buff":[B
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v5    # "len":I
    .restart local v6    # "out":Ljava/io/OutputStream;
    :cond_0
    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 418
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 419
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 420
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Copied db to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 421
    sget-object v8, Lcom/quicinc/cne/andsf/DbConnection;->dbAbsolutePath:Ljava/lang/String;

    .line 420
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 396
    return-void

    .line 426
    .end local v0    # "buff":[B
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v6    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v2

    .line 427
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "PLCY:ANDSF"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Copy file failure"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    throw v2
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/quicinc/cne/andsf/DbConnection;->createTables(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0, p1}, Lcom/quicinc/cne/andsf/DbConnection;->dropAllTables(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/quicinc/cne/andsf/DbConnection;->createTables(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const-string/jumbo v0, "PLCY:ANDSF"

    .line 50
    const-string/jumbo v1, "Error creating tables, ANDSF parser failed"

    .line 49
    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/andsf/DbConnection;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 88
    return-void
.end method
