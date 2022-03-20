.class public Lcom/quicinc/cne/BQEClient;
.super Ljava/lang/Object;
.source "BQEClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quicinc/cne/BQEClient$BqeResult;
    }
.end annotation


# static fields
.field private static final SUB_TYPE:Ljava/lang/String; = "WQE:BQE"

.field private static inProgress:Ljava/lang/Boolean;


# instance fields
.field private baseUrlString:Ljava/lang/String;

.field private bssid:Ljava/lang/String;

.field private bssidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private bssidPassed:Ljava/lang/String;

.field private bssidURL:Ljava/net/URL;

.field private cneHandle:Lcom/quicinc/cne/CNE;

.field private conn:Ljava/net/HttpURLConnection;

.field private currentBSSID:Ljava/lang/String;

.field private filesize:Ljava/lang/String;

.field private getRequestUrl:Ljava/lang/String;

.field private ipAddr:I

.field private postMsg:Ljava/lang/String;

.field private postingThread:Ljava/lang/Boolean;

.field private result:Lcom/quicinc/cne/BQEClient$BqeResult;

.field private rspLock:Ljava/util/concurrent/locks/Lock;

.field private rtt:I

.field private rttEnd:J

.field private rttStart:J

.field private sconn:Ljavax/net/ssl/HttpsURLConnection;

.field private sentRsp:Ljava/lang/Boolean;

.field private serverInetAddr:Ljava/net/InetAddress;

.field private tMs:I

.field private tSec:I

.field private tput:I

.field private ts:I

.field private url:Ljava/net/URL;

.field private wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/CNE;Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "handle"    # Lcom/quicinc/cne/CNE;
    .param p2, "wifi"    # Landroid/net/wifi/WifiManager;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "bssidPassed"    # Ljava/lang/String;
    .param p5, "filesize"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/quicinc/cne/BQEClient;->conn:Ljava/net/HttpURLConnection;

    .line 44
    iput-object v2, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    .line 88
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/BQEClient;->rspLock:Ljava/util/concurrent/locks/Lock;

    .line 89
    iput-object v2, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 90
    iput-object v2, p0, Lcom/quicinc/cne/BQEClient;->getRequestUrl:Ljava/lang/String;

    .line 91
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/BQEClient;->sentRsp:Ljava/lang/Boolean;

    .line 92
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/quicinc/cne/BQEClient;->inProgress:Ljava/lang/Boolean;

    .line 93
    iput v1, p0, Lcom/quicinc/cne/BQEClient;->rtt:I

    .line 94
    iput-wide v4, p0, Lcom/quicinc/cne/BQEClient;->rttStart:J

    .line 95
    iput-wide v4, p0, Lcom/quicinc/cne/BQEClient;->rttEnd:J

    .line 96
    iput v1, p0, Lcom/quicinc/cne/BQEClient;->tSec:I

    .line 97
    iput v1, p0, Lcom/quicinc/cne/BQEClient;->tMs:I

    .line 98
    iput-object p2, p0, Lcom/quicinc/cne/BQEClient;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 99
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/BQEClient;->postingThread:Ljava/lang/Boolean;

    .line 100
    iput-object p3, p0, Lcom/quicinc/cne/BQEClient;->baseUrlString:Ljava/lang/String;

    .line 101
    iput-object p4, p0, Lcom/quicinc/cne/BQEClient;->bssidPassed:Ljava/lang/String;

    .line 102
    iput-object p5, p0, Lcom/quicinc/cne/BQEClient;->filesize:Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->setBssid()V

    .line 104
    iput-object p1, p0, Lcom/quicinc/cne/BQEClient;->cneHandle:Lcom/quicinc/cne/CNE;

    .line 105
    const-string/jumbo v0, "WQE:BQE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BQEClient() constructor created with GET URI ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/quicinc/cne/BQEClient;->baseUrlString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and bssidPassed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/quicinc/cne/CNE;Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "handle"    # Lcom/quicinc/cne/CNE;
    .param p2, "wifi"    # Landroid/net/wifi/WifiManager;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "getRequestUrl"    # Ljava/lang/String;
    .param p5, "bssidPassed"    # Ljava/lang/String;
    .param p6, "tput"    # Ljava/lang/String;
    .param p7, "ts"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/quicinc/cne/BQEClient;->conn:Ljava/net/HttpURLConnection;

    .line 44
    iput-object v1, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    .line 112
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/BQEClient;->rspLock:Ljava/util/concurrent/locks/Lock;

    .line 113
    iput-object p4, p0, Lcom/quicinc/cne/BQEClient;->getRequestUrl:Ljava/lang/String;

    .line 114
    iput-object v1, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 115
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/BQEClient;->sentRsp:Ljava/lang/Boolean;

    .line 116
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/quicinc/cne/BQEClient;->ts:I

    .line 117
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/quicinc/cne/BQEClient;->tput:I

    .line 118
    iput-object p2, p0, Lcom/quicinc/cne/BQEClient;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 119
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/BQEClient;->postingThread:Ljava/lang/Boolean;

    .line 120
    iput-object p3, p0, Lcom/quicinc/cne/BQEClient;->baseUrlString:Ljava/lang/String;

    .line 121
    iput-object p5, p0, Lcom/quicinc/cne/BQEClient;->bssidPassed:Ljava/lang/String;

    .line 122
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->setBssid()V

    .line 123
    iput-object p1, p0, Lcom/quicinc/cne/BQEClient;->cneHandle:Lcom/quicinc/cne/CNE;

    .line 124
    const-string/jumbo v0, "WQE:BQE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BQEClient() constructor created with POST URI ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/quicinc/cne/BQEClient;->baseUrlString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and bssidPassed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method private consumeBQERspData()V
    .locals 9

    .prologue
    .line 383
    const-string/jumbo v7, "WQE:BQE"

    const-string/jumbo v8, "consumeBQERspData()"

    invoke-static {v7, v8}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .local v4, "jsonSB":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 388
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    iget-object v7, p0, Lcom/quicinc/cne/BQEClient;->postingThread:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 389
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    iget-object v8, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v8}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v3, "in":Ljava/io/BufferedReader;
    move-object v2, v3

    .line 393
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    :goto_0
    const/4 v6, 0x0

    .line 395
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 396
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 399
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 400
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    if-eqz v2, :cond_0

    .line 405
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 412
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_0
    :goto_2
    const/4 v5, 0x0

    .line 413
    .local v5, "jsonString":Ljava/lang/String;
    const-string/jumbo v7, "WQE:BQE"

    const-string/jumbo v8, "Done Consuming the BQE data"

    invoke-static {v7, v8}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    sput-object v7, Lcom/quicinc/cne/BQEClient;->inProgress:Ljava/lang/Boolean;

    .line 415
    invoke-static {}, Lcom/quicinc/cne/BQEClient;->stop()V

    .line 416
    return-void

    .line 391
    .end local v5    # "jsonString":Ljava/lang/String;
    .local v2, "in":Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    iget-object v8, p0, Lcom/quicinc/cne/BQEClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v3    # "in":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v2, "in":Ljava/io/BufferedReader;
    goto :goto_0

    .line 404
    .restart local v6    # "line":Ljava/lang/String;
    :cond_2
    if-eqz v2, :cond_0

    .line 405
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 407
    :catch_1
    move-exception v0

    .line 408
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 407
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v6    # "line":Ljava/lang/String;
    .restart local v1    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 408
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 402
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 404
    if-eqz v2, :cond_3

    .line 405
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 402
    :cond_3
    :goto_3
    throw v7

    .line 407
    :catch_3
    move-exception v0

    .line 408
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private parseBQEClientRsp()V
    .locals 8

    .prologue
    .line 423
    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->rspLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 424
    const-string/jumbo v3, "WQE:BQE"

    const-string/jumbo v4, "parseBQEClientRsp() Locked"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->sentRsp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    const-string/jumbo v3, "WQE:BQE"

    const-string/jumbo v4, "Response sent already, doing nothing"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :goto_0
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/quicinc/cne/BQEClient;->sentRsp:Ljava/lang/Boolean;

    .line 536
    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->rspLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 537
    const-string/jumbo v3, "WQE:BQE"

    const-string/jumbo v4, "parseBQEClientRsp() UnLocked"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-void

    .line 431
    :cond_0
    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    if-eqz v3, :cond_1

    .line 433
    const-string/jumbo v3, "WQE:BQE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BQERequest failure.Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    invoke-virtual {v5}, Lcom/quicinc/cne/BQEClient$BqeResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto :goto_0

    .line 438
    :cond_1
    const/4 v2, 0x0

    .line 439
    .local v2, "statusCode":I
    const/4 v1, 0x0

    .line 441
    .local v1, "reasonPhrase":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->postingThread:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 442
    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 443
    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->conn:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "reasonPhrase":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/quicinc/cne/BQEClient;->rttEnd:J

    .line 446
    new-instance v3, Ljava/lang/Long;

    iget-wide v4, p0, Lcom/quicinc/cne/BQEClient;->rttEnd:J

    iget-wide v6, p0, Lcom/quicinc/cne/BQEClient;->rttStart:J

    sub-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    iput v3, p0, Lcom/quicinc/cne/BQEClient;->rtt:I

    .line 447
    new-instance v3, Ljava/lang/Long;

    iget-wide v4, p0, Lcom/quicinc/cne/BQEClient;->rttEnd:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    iput v3, p0, Lcom/quicinc/cne/BQEClient;->tSec:I

    .line 448
    new-instance v3, Ljava/lang/Long;

    iget-wide v4, p0, Lcom/quicinc/cne/BQEClient;->rttEnd:J

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    iput v3, p0, Lcom/quicinc/cne/BQEClient;->tMs:I

    .line 449
    const-string/jumbo v3, "WQE:BQE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rttStart="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/quicinc/cne/BQEClient;->rttStart:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " rttEnd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/quicinc/cne/BQEClient;->rttEnd:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " tSec="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/quicinc/cne/BQEClient;->tSec:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " tMs="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/quicinc/cne/BQEClient;->tMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v1    # "reasonPhrase":Ljava/lang/String;
    :goto_1
    const-string/jumbo v3, "WQE:BQE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BQEResponse http Status code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3

    .line 462
    const-string/jumbo v3, "WQE:BQE"

    const-string/jumbo v4, "BQERequest successful"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    sget-object v3, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_CONTINUE:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v3, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 464
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    .line 465
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->consumeBQERspData()V

    goto/16 :goto_0

    .line 451
    .local v1, "reasonPhrase":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    .line 452
    iget-object v3, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .local v1, "reasonPhrase":Ljava/lang/String;
    goto :goto_1

    .line 454
    .end local v1    # "reasonPhrase":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 456
    const/4 v2, -0x1

    goto :goto_1

    .line 467
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    const/16 v3, 0x12e

    if-ne v2, v3, :cond_4

    .line 469
    sget-object v3, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_FAILURE:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v3, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 470
    const-string/jumbo v3, "WQE:BQE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BQERequest failure.Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    invoke-virtual {v5}, Lcom/quicinc/cne/BQEClient$BqeResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto/16 :goto_0

    .line 473
    :cond_4
    const/16 v3, 0x190

    if-ne v2, v3, :cond_5

    .line 475
    sget-object v3, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_SUCCESS:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v3, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 476
    const-string/jumbo v3, "WQE:BQE"

    const-string/jumbo v4, "Assuming BQERequest successful, as Origin servers sent error"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto/16 :goto_0

    .line 479
    :cond_5
    const/16 v3, 0x194

    if-ne v2, v3, :cond_6

    .line 481
    sget-object v3, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_SUCCESS:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v3, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 482
    const-string/jumbo v3, "WQE:BQE"

    const-string/jumbo v4, "Assuming BQERequest successful, as Origin servers sent error"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto/16 :goto_0

    .line 485
    :cond_6
    const/16 v3, 0x195

    if-ne v2, v3, :cond_7

    .line 487
    sget-object v3, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_SUCCESS:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v3, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 488
    const-string/jumbo v3, "WQE:BQE"

    const-string/jumbo v4, "Assuming BQERequest successful, as Origin servers sent error"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto/16 :goto_0

    .line 491
    :cond_7
    const/16 v3, 0x196

    if-ne v2, v3, :cond_8

    .line 493
    sget-object v3, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_SUCCESS:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v3, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 494
    const-string/jumbo v3, "WQE:BQE"

    const-string/jumbo v4, "Assuming BQERequest successful, as Origin servers sent error"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto/16 :goto_0

    .line 497
    :cond_8
    const/16 v3, 0x1f4

    if-ne v2, v3, :cond_9

    .line 499
    sget-object v3, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_SUCCESS:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v3, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 500
    const-string/jumbo v3, "WQE:BQE"

    const-string/jumbo v4, "Assuming BQERequest successful, as Origin servers sent error"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto/16 :goto_0

    .line 503
    :cond_9
    const/16 v3, 0x1f5

    if-ne v2, v3, :cond_a

    .line 505
    sget-object v3, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_SUCCESS:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v3, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 506
    const-string/jumbo v3, "WQE:BQE"

    const-string/jumbo v4, "Assuming BQERequest successful, as Origin servers sent error"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto/16 :goto_0

    .line 509
    :cond_a
    const/16 v3, 0x1f7

    if-ne v2, v3, :cond_b

    .line 511
    sget-object v3, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_SUCCESS:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v3, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 512
    const-string/jumbo v3, "WQE:BQE"

    const-string/jumbo v4, "Assuming BQERequest successful, as Origin servers sent error"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto/16 :goto_0

    .line 515
    :cond_b
    const/16 v3, 0x1f9

    if-ne v2, v3, :cond_c

    .line 517
    sget-object v3, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_SUCCESS:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v3, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 518
    const-string/jumbo v3, "WQE:BQE"

    const-string/jumbo v4, "Assuming BQERequest successful, as Origin servers sent error"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto/16 :goto_0

    .line 521
    :cond_c
    const/16 v3, 0x64

    if-ge v2, v3, :cond_d

    if-ltz v2, :cond_d

    .line 523
    sget-object v3, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_SUCCESS:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v3, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 524
    const-string/jumbo v3, "WQE:BQE"

    const-string/jumbo v4, "Assuming BQERequest successful, as Origin servers sent error"

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto/16 :goto_0

    .line 529
    :cond_d
    sget-object v3, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_FAILURE:Lcom/quicinc/cne/BQEClient$BqeResult;

    iput-object v3, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 530
    const-string/jumbo v3, "WQE:BQE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "BQERequest failure.Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    invoke-virtual {v5}, Lcom/quicinc/cne/BQEClient$BqeResult;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEResponse()V

    goto/16 :goto_0
.end method

.method private sendBQEClientReq()Ljava/lang/Boolean;
    .locals 6

    .prologue
    .line 348
    const-string/jumbo v4, "WQE:BQE"

    const-string/jumbo v5, "sendBQEClientReq()"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v4, p0, Lcom/quicinc/cne/BQEClient;->postingThread:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 352
    :try_start_0
    iget-object v4, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_0
    const/4 v2, 0x0

    .line 360
    .local v2, "os":Ljava/io/OutputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v4}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    .end local v2    # "os":Ljava/io/OutputStream;
    .local v3, "os":Ljava/io/OutputStream;
    :try_start_2
    iget-object v4, p0, Lcom/quicinc/cne/BQEClient;->postMsg:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 362
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 370
    if-eqz v3, :cond_0

    .line 371
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 379
    .end local v3    # "os":Ljava/io/OutputStream;
    :cond_0
    :goto_1
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 373
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v3    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    .line 374
    .restart local v0    # "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 366
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    .line 367
    .end local v2    # "os":Ljava/io/OutputStream;
    .local v1, "ex":Ljava/lang/NullPointerException;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 370
    if-eqz v2, :cond_0

    .line 371
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 373
    :catch_3
    move-exception v0

    .line 374
    .restart local v0    # "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 363
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    .restart local v2    # "os":Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    .line 364
    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v0    # "ex":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 370
    if-eqz v2, :cond_0

    .line 371
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    .line 373
    :catch_5
    move-exception v0

    .line 374
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 368
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 370
    :goto_4
    if-eqz v2, :cond_1

    .line 371
    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 368
    :cond_1
    :goto_5
    throw v4

    .line 373
    :catch_6
    move-exception v0

    .line 374
    .restart local v0    # "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 368
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v3    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "os":Ljava/io/OutputStream;
    .local v2, "os":Ljava/io/OutputStream;
    goto :goto_4

    .line 363
    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    :catch_7
    move-exception v0

    .restart local v0    # "ex":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    goto :goto_3

    .line 366
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v2    # "os":Ljava/io/OutputStream;
    .restart local v3    # "os":Ljava/io/OutputStream;
    :catch_8
    move-exception v1

    .restart local v1    # "ex":Ljava/lang/NullPointerException;
    move-object v2, v3

    .end local v3    # "os":Ljava/io/OutputStream;
    .restart local v2    # "os":Ljava/io/OutputStream;
    goto :goto_2
.end method

.method private sendBQEResponse()V
    .locals 5

    .prologue
    .line 419
    iget-object v0, p0, Lcom/quicinc/cne/BQEClient;->postingThread:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/quicinc/cne/BQEClient;->cneHandle:Lcom/quicinc/cne/CNE;

    iget-object v1, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    invoke-virtual {v1}, Lcom/quicinc/cne/BQEClient$BqeResult;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/quicinc/cne/CNE;->sendBQEResponse(I)V

    .line 418
    :goto_0
    return-void

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/BQEClient;->cneHandle:Lcom/quicinc/cne/CNE;

    iget-object v1, p0, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    invoke-virtual {v1}, Lcom/quicinc/cne/BQEClient$BqeResult;->ordinal()I

    move-result v1

    iget v2, p0, Lcom/quicinc/cne/BQEClient;->rtt:I

    iget v3, p0, Lcom/quicinc/cne/BQEClient;->tSec:I

    iget v4, p0, Lcom/quicinc/cne/BQEClient;->tMs:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/quicinc/cne/CNE;->sendBQEResponse(IIII)V

    goto :goto_0
.end method

.method private setBQEClientReq()Ljava/lang/Boolean;
    .locals 26

    .prologue
    .line 166
    const-string/jumbo v23, "WQE:BQE"

    const-string/jumbo v24, "setBQEClientReq()"

    invoke-static/range {v23 .. v24}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->bssid:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->currentBSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    .line 170
    :cond_0
    const-string/jumbo v23, "WQE:BQE"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Failure :Bssid="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->bssid:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " currentBSSID="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->currentBSSID:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " passed BSSID="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->bssidPassed:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v23, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_FAILURE:Lcom/quicinc/cne/BQEClient$BqeResult;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 172
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    return-object v23

    .line 168
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->bssidPassed:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->baseUrlString:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 176
    const-string/jumbo v23, "WQE:BQE"

    const-string/jumbo v24, "Failure :base url==NULL"

    invoke-static/range {v23 .. v24}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v23, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_FAILURE:Lcom/quicinc/cne/BQEClient$BqeResult;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 178
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    return-object v23

    .line 180
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->currentBSSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->bssidPassed:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 182
    const-string/jumbo v23, "WQE:BQE"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Failure :currentBSSID="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->currentBSSID:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " passed BSSID="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->bssidPassed:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget-object v23, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_FAILURE:Lcom/quicinc/cne/BQEClient$BqeResult;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/BQEClient;->result:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 184
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    return-object v23

    .line 186
    :cond_3
    const/4 v13, 0x0

    .line 187
    .local v13, "np":Ljava/lang/String;
    const/16 v22, 0x0

    .line 189
    .local v22, "xp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->postingThread:Ljava/lang/Boolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-nez v23, :cond_b

    .line 191
    const-string/jumbo v23, "WQE:BQE"

    const-string/jumbo v24, "Set non-Posting Request"

    invoke-static/range {v23 .. v24}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v14, 0x0

    .line 193
    .local v14, "numBssidAdded":I
    new-instance v20, Ljava/lang/StringBuilder;

    const/16 v23, 0x80

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 194
    .local v20, "tmp1":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 195
    .local v11, "len":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->bssidList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .end local v13    # "np":Ljava/lang/String;
    .local v19, "str$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 196
    .local v18, "str":Ljava/lang/String;
    const-string/jumbo v23, "WQE:BQE"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "@@@currentbssid:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->bssid:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ",nbssid:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->bssid:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 201
    const/16 v23, 0x1

    move/from16 v0, v23

    if-lt v14, v0, :cond_6

    const/16 v23, 0x4

    move/from16 v0, v23

    if-ge v14, v0, :cond_6

    .line 202
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v23

    add-int v11, v11, v23

    .line 203
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const/16 v23, 0x3

    move/from16 v0, v23

    if-eq v14, v0, :cond_5

    .line 205
    const-string/jumbo v23, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    add-int/lit8 v11, v11, 0x1

    .line 208
    :cond_5
    add-int/lit8 v14, v14, 0x1

    .line 211
    :cond_6
    if-nez v14, :cond_4

    .line 212
    move-object/from16 v13, v18

    .line 213
    .local v13, "np":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 218
    .end local v13    # "np":Ljava/lang/String;
    .end local v18    # "str":Ljava/lang/String;
    :cond_7
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 221
    .local v22, "xp":Ljava/lang/String;
    :try_start_0
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->baseUrlString:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "?bssid="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->bssid:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v25, "UTF-8"

    invoke-static/range {v24 .. v25}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 222
    .local v4, "UrlString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->filesize:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "&size="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->filesize:Ljava/lang/String;

    move-object/from16 v24, v0

    const-string/jumbo v25, "UTF-8"

    invoke-static/range {v24 .. v25}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 223
    :cond_8
    if-eqz v13, :cond_9

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "&np="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "UTF-8"

    move-object/from16 v0, v24

    invoke-static {v13, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 224
    :cond_9
    if-eqz v22, :cond_a

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "&xp="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "UTF-8"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 225
    :cond_a
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/BQEClient;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v4    # "UrlString":Ljava/lang/String;
    .end local v11    # "len":I
    .end local v14    # "numBssidAdded":I
    .end local v19    # "str$iterator":Ljava/util/Iterator;
    .end local v20    # "tmp1":Ljava/lang/StringBuilder;
    .end local v22    # "xp":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->postingThread:Ljava/lang/Boolean;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v23

    if-eqz v23, :cond_e

    .line 238
    const-string/jumbo v23, "WQE:BQE"

    const-string/jumbo v24, "Set Posting Request"

    invoke-static/range {v23 .. v24}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v10, 0x0

    .line 243
    .local v10, "getServerIP":Ljava/lang/String;
    :try_start_1
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 244
    .local v17, "rspitems":Lorg/json/JSONObject;
    const-string/jumbo v23, "bssid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->bssid:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string/jumbo v23, "tput"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/quicinc/cne/BQEClient;->tput:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 246
    const-string/jumbo v23, "ts"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/quicinc/cne/BQEClient;->ts:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 251
    new-instance v12, Lorg/json/JSONArray;

    invoke-direct {v12}, Lorg/json/JSONArray;-><init>()V

    .line 252
    .local v12, "ngbhs":Lorg/json/JSONArray;
    const/4 v14, 0x1

    .line 253
    .restart local v14    # "numBssidAdded":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->bssidList:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "str$iterator":Ljava/util/Iterator;
    :cond_c
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 254
    .restart local v18    # "str":Ljava/lang/String;
    const-string/jumbo v23, "WQE:BQE"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PostFindings-currentbssid:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->bssid:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ",nbssid:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->bssid:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_c

    .line 259
    const/16 v23, 0x1

    move/from16 v0, v23

    if-lt v14, v0, :cond_c

    const/16 v23, 0x4

    move/from16 v0, v23

    if-ge v14, v0, :cond_c

    .line 260
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 261
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 229
    .end local v10    # "getServerIP":Ljava/lang/String;
    .end local v12    # "ngbhs":Lorg/json/JSONArray;
    .end local v17    # "rspitems":Lorg/json/JSONObject;
    .end local v18    # "str":Ljava/lang/String;
    .restart local v11    # "len":I
    .restart local v20    # "tmp1":Ljava/lang/StringBuilder;
    .restart local v22    # "xp":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 230
    .local v8, "ex":Ljava/net/MalformedURLException;
    invoke-virtual {v8}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 231
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    return-object v23

    .line 226
    .end local v8    # "ex":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v6

    .line 227
    .local v6, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v6}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 228
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    return-object v23

    .line 264
    .end local v6    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v11    # "len":I
    .end local v20    # "tmp1":Ljava/lang/StringBuilder;
    .end local v22    # "xp":Ljava/lang/String;
    .restart local v10    # "getServerIP":Ljava/lang/String;
    .restart local v12    # "ngbhs":Lorg/json/JSONArray;
    .restart local v17    # "rspitems":Lorg/json/JSONObject;
    :cond_d
    :try_start_2
    const-string/jumbo v23, "ngbh.bssids"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    new-instance v16, Lorg/json/JSONArray;

    invoke-direct/range {v16 .. v16}, Lorg/json/JSONArray;-><init>()V

    .line 267
    .local v16, "rsparray":Lorg/json/JSONArray;
    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 270
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 271
    .local v15, "rsp":Lorg/json/JSONObject;
    const-string/jumbo v23, "acs"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/BQEClient;->postMsg:Ljava/lang/String;

    .line 274
    const-string/jumbo v23, "WQE:BQE"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "PostFinding="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->postMsg:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 283
    .end local v12    # "ngbhs":Lorg/json/JSONArray;
    .end local v14    # "numBssidAdded":I
    .end local v15    # "rsp":Lorg/json/JSONObject;
    .end local v16    # "rsparray":Lorg/json/JSONArray;
    .end local v17    # "rspitems":Lorg/json/JSONObject;
    .end local v19    # "str$iterator":Ljava/util/Iterator;
    :goto_2
    :try_start_3
    new-instance v23, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->baseUrlString:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-direct/range {v23 .. v24}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/BQEClient;->url:Ljava/net/URL;
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 294
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->url:Ljava/net/URL;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v23

    check-cast v23, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_5

    .line 304
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v23, v0

    const-string/jumbo v24, "POST"

    invoke-virtual/range {v23 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_7

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v23, v0

    const/16 v24, 0x1388

    invoke-virtual/range {v23 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v23, v0

    const/16 v24, 0x1388

    invoke-virtual/range {v23 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->postMsg:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljavax/net/ssl/HttpsURLConnection;->setFixedLengthStreamingMode(I)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v23, v0

    const-string/jumbo v24, "Accept-Encoding"

    const-string/jumbo v25, "gzip;q=0,deflate;q=0"

    invoke-virtual/range {v23 .. v25}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v23, v0

    const-string/jumbo v24, "Cache-Control"

    const-string/jumbo v25, "no-cache"

    invoke-virtual/range {v23 .. v25}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v23, v0

    const-string/jumbo v24, "Content-Type"

    const-string/jumbo v25, "application/json;charset=utf-8"

    invoke-virtual/range {v23 .. v25}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v23, v0

    const-string/jumbo v24, "X-Requested-With"

    const-string/jumbo v25, "XMLHttpRequest"

    invoke-virtual/range {v23 .. v25}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .end local v10    # "getServerIP":Ljava/lang/String;
    :goto_3
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    return-object v23

    .line 278
    .restart local v10    # "getServerIP":Ljava/lang/String;
    :catch_2
    move-exception v21

    .line 279
    .local v21, "ue":Lorg/json/JSONException;
    invoke-virtual/range {v21 .. v21}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 288
    .end local v21    # "ue":Lorg/json/JSONException;
    :catch_3
    move-exception v8

    .line 289
    .restart local v8    # "ex":Ljava/net/MalformedURLException;
    invoke-virtual {v8}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 290
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    return-object v23

    .line 284
    .end local v8    # "ex":Ljava/net/MalformedURLException;
    :catch_4
    move-exception v7

    .line 285
    .local v7, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 286
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    return-object v23

    .line 298
    .end local v7    # "ex":Ljava/lang/NullPointerException;
    :catch_5
    move-exception v7

    .line 299
    .restart local v7    # "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v23, "WQE:BQE"

    const-string/jumbo v24, "Cannot open connection on NULL url, skipping post"

    invoke-static/range {v23 .. v24}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    return-object v23

    .line 295
    .end local v7    # "ex":Ljava/lang/NullPointerException;
    :catch_6
    move-exception v5

    .line 296
    .local v5, "ex":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 297
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    return-object v23

    .line 305
    .end local v5    # "ex":Ljava/io/IOException;
    :catch_7
    move-exception v9

    .line 306
    .local v9, "ex":Ljava/net/ProtocolException;
    invoke-virtual {v9}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 307
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    return-object v23

    .line 326
    .end local v9    # "ex":Ljava/net/ProtocolException;
    .end local v10    # "getServerIP":Ljava/lang/String;
    :cond_e
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/quicinc/cne/BQEClient;->rttStart:J

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->url:Ljava/net/URL;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v23

    check-cast v23, Ljava/net/HttpURLConnection;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/BQEClient;->conn:Ljava/net/HttpURLConnection;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 334
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v23, v0

    const-string/jumbo v24, "GET"

    invoke-virtual/range {v23 .. v24}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_9

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v23, v0

    const-string/jumbo v24, "Accept-Encoding"

    const-string/jumbo v25, "gzip;q=0,deflate;q=0"

    invoke-virtual/range {v23 .. v25}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/BQEClient;->conn:Ljava/net/HttpURLConnection;

    move-object/from16 v23, v0

    const-string/jumbo v24, "Cache-Control"

    const-string/jumbo v25, "no-cache"

    invoke-virtual/range {v23 .. v25}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 328
    :catch_8
    move-exception v5

    .line 329
    .restart local v5    # "ex":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 330
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    return-object v23

    .line 335
    .end local v5    # "ex":Ljava/io/IOException;
    :catch_9
    move-exception v9

    .line 336
    .restart local v9    # "ex":Ljava/net/ProtocolException;
    invoke-virtual {v9}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 337
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    return-object v23
.end method

.method private setBssid()V
    .locals 8

    .prologue
    .line 137
    const-string/jumbo v4, "WQE:BQE"

    const-string/jumbo v5, "setBssid()"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v4, p0, Lcom/quicinc/cne/BQEClient;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 139
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_1

    .line 141
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ":"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/quicinc/cne/BQEClient;->bssid:Ljava/lang/String;

    .line 142
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/quicinc/cne/BQEClient;->currentBSSID:Ljava/lang/String;

    .line 143
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    iput v4, p0, Lcom/quicinc/cne/BQEClient;->ipAddr:I

    .line 144
    const-string/jumbo v4, "WQE:BQE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bssid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/quicinc/cne/BQEClient;->bssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " currentBSSID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/quicinc/cne/BQEClient;->currentBSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string/jumbo v4, "WQE:BQE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Passed BSSID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/quicinc/cne/BQEClient;->bssidPassed:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " and IPAddr ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/quicinc/cne/BQEClient;->ipAddr:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_0
    iget-object v4, p0, Lcom/quicinc/cne/BQEClient;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    .line 153
    .local v3, "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/quicinc/cne/BQEClient;->bssidList:Ljava/util/ArrayList;

    .line 155
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "result$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 156
    .local v0, "result":Landroid/net/wifi/ScanResult;
    if-eqz v0, :cond_0

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v4, :cond_2

    .line 157
    :cond_0
    const-string/jumbo v4, "WQE:BQE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "@@@Received invalid scan result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    .end local v0    # "result":Landroid/net/wifi/ScanResult;
    .end local v1    # "result$iterator":Ljava/util/Iterator;
    .end local v3    # "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_1
    const-string/jumbo v4, "WQE:BQE"

    const-string/jumbo v5, "wifiMgr RemoteException returned NULL"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    .restart local v0    # "result":Landroid/net/wifi/ScanResult;
    .restart local v1    # "result$iterator":Ljava/util/Iterator;
    .restart local v3    # "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_2
    iget-object v4, p0, Lcom/quicinc/cne/BQEClient;->bssidList:Ljava/util/ArrayList;

    iget-object v5, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string/jumbo v6, ":"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 162
    .end local v0    # "result":Landroid/net/wifi/ScanResult;
    :cond_3
    iget-object v4, p0, Lcom/quicinc/cne/BQEClient;->bssidList:Ljava/util/ArrayList;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 136
    return-void
.end method

.method public static stop()V
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/quicinc/cne/BQEClient;->inProgress:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :goto_0
    const-string/jumbo v0, "WQE:BQE"

    const-string/jumbo v1, "BQE active probing is now stopped"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void

    .line 131
    :cond_0
    const-string/jumbo v0, "WQE:BQE"

    const-string/jumbo v1, "BQE active probing is already stopped"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 543
    const-string/jumbo v0, "WQE:BQE"

    const-string/jumbo v1, "BQEClient thread started"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->setBQEClientReq()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->sendBQEClientReq()Ljava/lang/Boolean;

    .line 547
    invoke-direct {p0}, Lcom/quicinc/cne/BQEClient;->parseBQEClientRsp()V

    .line 542
    :cond_0
    return-void
.end method
