.class Lcom/quicinc/cne/CNE$CNEReceiver;
.super Ljava/lang/Object;
.source "CNE.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CNEReceiver"
.end annotation


# static fields
.field private static final SUB_TYPE:Ljava/lang/String; = "CORE:COM:RCVR"


# instance fields
.field buffer:[B

.field final synthetic this$0:Lcom/quicinc/cne/CNE;


# direct methods
.method constructor <init>(Lcom/quicinc/cne/CNE;)V
    .locals 1
    .param p1, "this$0"    # Lcom/quicinc/cne/CNE;

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1371
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CNEReceiver;->buffer:[B

    .line 1370
    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 1375
    const/4 v11, 0x0

    .line 1379
    .local v11, "retryCount":I
    :goto_0
    const/4 v13, 0x0

    .line 1383
    .local v13, "s":Landroid/net/LocalSocket;
    :try_start_0
    const-string/jumbo v17, "CORE:COM:RCVR"

    const-string/jumbo v18, "CNE creating socket"

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CNE;->-wrap28(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    new-instance v14, Landroid/net/LocalSocket;

    invoke-direct {v14}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 1385
    .local v14, "s":Landroid/net/LocalSocket;
    :try_start_1
    new-instance v9, Landroid/net/LocalSocketAddress;

    .end local v13    # "s":Landroid/net/LocalSocket;
    const-string/jumbo v17, "cnd"

    .line 1386
    sget-object v18, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 1385
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v9, v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 1387
    .local v9, "l":Landroid/net/LocalSocketAddress;
    invoke-virtual {v14, v9}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    .line 1415
    const/4 v11, 0x0

    .line 1416
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v14, v0, Lcom/quicinc/cne/CNE;->mSocket:Landroid/net/LocalSocket;

    .line 1417
    const-string/jumbo v17, "CORE:COM:RCVR"

    const-string/jumbo v18, "Connected to \'cnd\' socket"

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CNE;->-wrap28(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    const/16 v17, 0x1

    sput-boolean v17, Lcom/quicinc/cne/CNE;->isCndUp:Z

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/quicinc/cne/CNE;->-wrap6(Lcom/quicinc/cne/CNE;)Z

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/quicinc/cne/CNE;->mSender:Lcom/quicinc/cne/CNE$CNESender;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x3e8

    const/16 v20, 0x3

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/quicinc/cne/CNE$CNESender;->sendEmptyMessageDelayed(IJ)Z

    .line 1422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/quicinc/cne/CNE;->-wrap27(Lcom/quicinc/cne/CNE;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5

    .line 1424
    const/4 v10, 0x0

    .line 1426
    .local v10, "length":I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/quicinc/cne/CNE;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 1429
    .local v8, "is":Ljava/io/InputStream;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CNEReceiver;->buffer:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v8, v0}, Lcom/quicinc/cne/CNE;->-wrap13(Ljava/io/InputStream;[B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_6

    move-result v10

    .line 1431
    if-gez v10, :cond_3

    .line 1449
    .end local v8    # "is":Ljava/io/InputStream;
    :goto_2
    :try_start_4
    const-string/jumbo v17, "CORE:COM:RCVR"

    const-string/jumbo v18, "Disconnected from \'cnd\' socket"

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CNE;->-wrap28(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    const/16 v17, 0x0

    sput-boolean v17, Lcom/quicinc/cne/CNE;->isCndUp:Z

    .line 1451
    const/16 v17, 0x1

    sput-boolean v17, Lcom/quicinc/cne/CNE;->isCndDisconnected:Z

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CNE;->-set2(Lcom/quicinc/cne/CNE;Z)Z

    .line 1453
    const/16 v17, 0x0

    sput-boolean v17, Lcom/quicinc/cne/CNE;->isDispatched:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5

    .line 1456
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/quicinc/cne/CNE;->mSocket:Landroid/net/LocalSocket;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 1460
    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/quicinc/cne/CNE;->mSocket:Landroid/net/LocalSocket;

    .line 1461
    invoke-static {}, Lcom/quicinc/cne/CNERequest;->resetSerial()V

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/quicinc/cne/CNE;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    .line 1465
    const/4 v7, 0x0

    .local v7, "i":I
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/quicinc/cne/CNE;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, "sz":I
    :goto_4
    if-ge v7, v15, :cond_4

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/quicinc/cne/CNE;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/quicinc/cne/CNERequest;

    .line 1468
    .local v12, "rr":Lcom/quicinc/cne/CNERequest;
    invoke-virtual {v12}, Lcom/quicinc/cne/CNERequest;->release()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1465
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1388
    .end local v7    # "i":I
    .end local v9    # "l":Landroid/net/LocalSocketAddress;
    .end local v10    # "length":I
    .end local v12    # "rr":Lcom/quicinc/cne/CNERequest;
    .end local v14    # "s":Landroid/net/LocalSocket;
    .end local v15    # "sz":I
    .restart local v13    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v5

    .line 1390
    .end local v13    # "s":Landroid/net/LocalSocket;
    .local v5, "ex":Ljava/io/IOException;
    :goto_5
    if-eqz v13, :cond_0

    .line 1391
    :try_start_8
    invoke-virtual {v13}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 1399
    :cond_0
    :goto_6
    const/16 v17, 0x8

    move/from16 v0, v17

    if-ne v11, v0, :cond_2

    .line 1400
    :try_start_9
    const-string/jumbo v17, "CORE:COM:RCVR"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Couldn\'t find \'cnd\' socket after "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1401
    const-string/jumbo v19, " times, continuing to retry silently"

    .line 1400
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2

    .line 1408
    :cond_1
    :goto_7
    const-wide/16 v18, 0xfa0

    :try_start_a
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    .line 1412
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1393
    :catch_1
    move-exception v6

    .local v6, "ex2":Ljava/io/IOException;
    goto :goto_6

    .line 1402
    .end local v6    # "ex2":Ljava/io/IOException;
    :cond_2
    if-lez v11, :cond_1

    const/16 v17, 0x8

    move/from16 v0, v17

    if-ge v11, v0, :cond_1

    .line 1403
    :try_start_b
    const-string/jumbo v17, "CORE:COM:RCVR"

    const-string/jumbo v18, "Couldn\'t find \'cnd\' socket; retrying after timeout"

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_7

    .line 1474
    .end local v5    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v16

    .line 1475
    .local v16, "tr":Ljava/lang/Throwable;
    :goto_9
    const-string/jumbo v17, "CORE:COM:RCVR"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Uncaught exception "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    return-void

    .line 1409
    .end local v16    # "tr":Ljava/lang/Throwable;
    .restart local v5    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 1410
    .local v4, "er":Ljava/lang/InterruptedException;
    :try_start_c
    const-string/jumbo v17, "CORE:COM:RCVR"

    const-string/jumbo v18, "cnd socket open retry timer was interrupted"

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_8

    .line 1437
    .end local v4    # "er":Ljava/lang/InterruptedException;
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "l":Landroid/net/LocalSocketAddress;
    .restart local v10    # "length":I
    .restart local v14    # "s":Landroid/net/LocalSocket;
    :cond_3
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CNEReceiver;->buffer:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Lcom/quicinc/cne/CNE;->-wrap25(Lcom/quicinc/cne/CNE;[BI)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_1

    .line 1443
    .end local v8    # "is":Ljava/io/InputStream;
    :catch_4
    move-exception v5

    .line 1444
    .restart local v5    # "ex":Ljava/io/IOException;
    :try_start_e
    const-string/jumbo v17, "CORE:COM:RCVR"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "\'cnd\' socket closed"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CNE;->-wrap28(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1474
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v9    # "l":Landroid/net/LocalSocketAddress;
    .end local v10    # "length":I
    :catch_5
    move-exception v16

    .restart local v16    # "tr":Ljava/lang/Throwable;
    move-object v13, v14

    .end local v14    # "s":Landroid/net/LocalSocket;
    .local v13, "s":Landroid/net/LocalSocket;
    goto :goto_9

    .line 1445
    .end local v13    # "s":Landroid/net/LocalSocket;
    .end local v16    # "tr":Ljava/lang/Throwable;
    .restart local v9    # "l":Landroid/net/LocalSocketAddress;
    .restart local v10    # "length":I
    .restart local v14    # "s":Landroid/net/LocalSocket;
    :catch_6
    move-exception v16

    .line 1446
    .restart local v16    # "tr":Ljava/lang/Throwable;
    const-string/jumbo v17, "CORE:COM:RCVR"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Uncaught exception read length="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "Exception:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 1447
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1446
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_2

    .line 1471
    .end local v16    # "tr":Ljava/lang/Throwable;
    .restart local v7    # "i":I
    .restart local v15    # "sz":I
    :cond_4
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/CNE$CNEReceiver;->this$0:Lcom/quicinc/cne/CNE;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/quicinc/cne/CNE;->mRequestsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    monitor-exit v18

    move-object v13, v14

    .end local v14    # "s":Landroid/net/LocalSocket;
    .restart local v13    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_0

    .line 1464
    .end local v13    # "s":Landroid/net/LocalSocket;
    .end local v15    # "sz":I
    .restart local v14    # "s":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5

    .line 1457
    .end local v7    # "i":I
    :catch_7
    move-exception v5

    .restart local v5    # "ex":Ljava/io/IOException;
    goto/16 :goto_3

    .line 1388
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v9    # "l":Landroid/net/LocalSocketAddress;
    .end local v10    # "length":I
    :catch_8
    move-exception v5

    .restart local v5    # "ex":Ljava/io/IOException;
    move-object v13, v14

    .end local v14    # "s":Landroid/net/LocalSocket;
    .restart local v13    # "s":Landroid/net/LocalSocket;
    goto/16 :goto_5
.end method
