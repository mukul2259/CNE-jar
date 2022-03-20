.class public Lcom/quicinc/cne/CNE$CNESender;
.super Landroid/os/Handler;
.source "CNE.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CNESender"
.end annotation


# static fields
.field private static final SUB_TYPE:Ljava/lang/String; = "CORE:COM:SNDR"


# instance fields
.field dataLength:[B

.field final synthetic this$0:Lcom/quicinc/cne/CNE;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/CNE;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/quicinc/cne/CNE;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    .line 1206
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1210
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CNESender;->dataLength:[B

    .line 1205
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1219
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/quicinc/cne/CNERequest;

    .line 1220
    .local v6, "rr":Lcom/quicinc/cne/CNERequest;
    const/4 v5, 0x0

    .line 1222
    .local v5, "req":Lcom/quicinc/cne/CNERequest;
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 1218
    .end local v5    # "req":Lcom/quicinc/cne/CNERequest;
    :cond_0
    :goto_0
    return-void

    .line 1230
    .restart local v5    # "req":Lcom/quicinc/cne/CNERequest;
    :pswitch_0
    const/4 v0, 0x0

    .line 1233
    .local v0, "alreadySubtracted":Z
    :try_start_0
    iget-object v8, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v7, v8, Lcom/quicinc/cne/CNE;->mSocket:Landroid/net/LocalSocket;

    .line 1234
    .local v7, "s":Landroid/net/LocalSocket;
    if-nez v7, :cond_1

    .line 1235
    invoke-virtual {v6}, Lcom/quicinc/cne/CNERequest;->release()V

    .line 1236
    iget-object v8, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    iget v9, v8, Lcom/quicinc/cne/CNE;->mRequestMessagesPending:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/quicinc/cne/CNE;->mRequestMessagesPending:I

    .line 1237
    const/4 v0, 0x1

    .line 1238
    return-void

    .line 1240
    :cond_1
    iget-object v8, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v9, v8, Lcom/quicinc/cne/CNE;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1241
    :try_start_1
    iget-object v8, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    iget-object v8, v8, Lcom/quicinc/cne/CNE;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v9

    .line 1243
    iget-object v8, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    iget v9, v8, Lcom/quicinc/cne/CNE;->mRequestMessagesPending:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/quicinc/cne/CNE;->mRequestMessagesPending:I

    .line 1244
    const/4 v0, 0x1

    .line 1246
    iget-object v1, v6, Lcom/quicinc/cne/CNERequest;->mData:[B

    .line 1248
    .local v1, "data":[B
    array-length v8, v1

    const/16 v9, 0x2000

    if-le v8, v9, :cond_4

    .line 1249
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Parcel larger than max bytes allowed! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1250
    array-length v10, v1

    .line 1249
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1265
    .end local v1    # "data":[B
    .end local v7    # "s":Landroid/net/LocalSocket;
    :catch_0
    move-exception v2

    .line 1266
    .local v2, "ex":Ljava/io/IOException;
    const-string/jumbo v8, "CORE:COM:SNDR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IOException "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    iget-object v8, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    iget v9, v6, Lcom/quicinc/cne/CNERequest;->mSerial:I

    invoke-static {v8, v9}, Lcom/quicinc/cne/CNE;->-wrap8(Lcom/quicinc/cne/CNE;I)Lcom/quicinc/cne/CNERequest;

    move-result-object v5

    .line 1270
    .local v5, "req":Lcom/quicinc/cne/CNERequest;
    if-nez v5, :cond_5

    if-eqz v0, :cond_5

    .line 1286
    .end local v2    # "ex":Ljava/io/IOException;
    .end local v5    # "req":Lcom/quicinc/cne/CNERequest;
    :cond_2
    :goto_1
    if-nez v0, :cond_0

    .line 1287
    iget-object v8, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    iget v9, v8, Lcom/quicinc/cne/CNE;->mRequestMessagesPending:I

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lcom/quicinc/cne/CNE;->mRequestMessagesPending:I

    goto :goto_0

    .line 1240
    .local v5, "req":Lcom/quicinc/cne/CNERequest;
    .restart local v7    # "s":Landroid/net/LocalSocket;
    :catchall_0
    move-exception v8

    :try_start_3
    monitor-exit v9

    throw v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1273
    .end local v7    # "s":Landroid/net/LocalSocket;
    :catch_1
    move-exception v4

    .line 1274
    .local v4, "exc":Ljava/lang/RuntimeException;
    const-string/jumbo v8, "CORE:COM:SNDR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Uncaught exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    iget-object v8, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    iget v9, v6, Lcom/quicinc/cne/CNERequest;->mSerial:I

    invoke-static {v8, v9}, Lcom/quicinc/cne/CNE;->-wrap8(Lcom/quicinc/cne/CNE;I)Lcom/quicinc/cne/CNERequest;

    move-result-object v5

    .line 1278
    .local v5, "req":Lcom/quicinc/cne/CNERequest;
    if-nez v5, :cond_3

    if-nez v0, :cond_2

    .line 1280
    :cond_3
    invoke-virtual {v6}, Lcom/quicinc/cne/CNERequest;->release()V

    goto :goto_1

    .line 1254
    .end local v4    # "exc":Ljava/lang/RuntimeException;
    .restart local v1    # "data":[B
    .local v5, "req":Lcom/quicinc/cne/CNERequest;
    .restart local v7    # "s":Landroid/net/LocalSocket;
    :cond_4
    :try_start_4
    iget-object v8, p0, Lcom/quicinc/cne/CNE$CNESender;->dataLength:[B

    iget-object v9, p0, Lcom/quicinc/cne/CNE$CNESender;->dataLength:[B

    const/4 v10, 0x0

    const/4 v11, 0x1

    aput-byte v10, v9, v11

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-byte v9, v8, v10

    .line 1255
    iget-object v8, p0, Lcom/quicinc/cne/CNE$CNESender;->dataLength:[B

    array-length v9, v1

    shr-int/lit8 v9, v9, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    const/4 v10, 0x2

    aput-byte v9, v8, v10

    .line 1256
    iget-object v8, p0, Lcom/quicinc/cne/CNE$CNESender;->dataLength:[B

    array-length v9, v1

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    const/4 v10, 0x3

    aput-byte v9, v8, v10

    .line 1260
    invoke-virtual {v7}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    iget-object v9, p0, Lcom/quicinc/cne/CNE$CNESender;->dataLength:[B

    invoke-virtual {v8, v9}, Ljava/io/OutputStream;->write([B)V

    .line 1261
    invoke-virtual {v7}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/io/OutputStream;->write([B)V

    .line 1263
    iget-object v8, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    iget v9, v6, Lcom/quicinc/cne/CNERequest;->mSerial:I

    invoke-static {v8, v9}, Lcom/quicinc/cne/CNE;->-wrap8(Lcom/quicinc/cne/CNE;I)Lcom/quicinc/cne/CNERequest;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1283
    .end local v1    # "data":[B
    .end local v7    # "s":Landroid/net/LocalSocket;
    :catch_2
    move-exception v3

    .line 1284
    .local v3, "ex":Ljava/lang/Exception;
    const-string/jumbo v8, "CORE:COM:SNDR"

    const-string/jumbo v9, "unknown exception caught."

    invoke-static {v8, v9}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1271
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v2    # "ex":Ljava/io/IOException;
    .local v5, "req":Lcom/quicinc/cne/CNERequest;
    :cond_5
    invoke-virtual {v6}, Lcom/quicinc/cne/CNERequest;->release()V

    goto :goto_1

    .line 1291
    .end local v0    # "alreadySubtracted":Z
    .end local v2    # "ex":Ljava/io/IOException;
    .local v5, "req":Lcom/quicinc/cne/CNERequest;
    :pswitch_1
    const-string/jumbo v8, "CORE:COM:SNDR"

    const-string/jumbo v9, "event_toggle_wifi ...reassociating"

    invoke-static {v8, v9}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    iget-object v8, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v8}, Lcom/quicinc/cne/CNE;->-get13(Lcom/quicinc/cne/CNE;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 1293
    iget-object v8, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v8}, Lcom/quicinc/cne/CNE;->-get13(Lcom/quicinc/cne/CNE;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->reassociate()Z

    goto/16 :goto_0

    .line 1296
    :pswitch_2
    iget-object v8, p0, Lcom/quicinc/cne/CNE$CNESender;->this$0:Lcom/quicinc/cne/CNE;

    invoke-static {v8}, Lcom/quicinc/cne/CNE;->-wrap24(Lcom/quicinc/cne/CNE;)V

    goto/16 :goto_0

    .line 1222
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 1213
    return-void
.end method
