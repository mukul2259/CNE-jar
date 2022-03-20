.class public Lcom/quicinc/cne/ICDClient$icdHttp;
.super Ljava/lang/Object;
.source "ICDClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/ICDClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "icdHttp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quicinc/cne/ICDClient$icdHttp$ICDTimerTask;
    }
.end annotation


# instance fields
.field private hostName:Ljava/lang/String;

.field private httpURL:Ljava/lang/String;

.field private httpUriAddress:Ljava/lang/String;

.field private httpuri:Ljava/lang/String;

.field final synthetic this$0:Lcom/quicinc/cne/ICDClient;


# direct methods
.method static synthetic -wrap0(Lcom/quicinc/cne/ICDClient$icdHttp;)V
    .locals 0

    invoke-direct {p0}, Lcom/quicinc/cne/ICDClient$icdHttp;->parseIcdHttpClientRsp()V

    return-void
.end method

.method public constructor <init>(Lcom/quicinc/cne/ICDClient;Ljava/lang/String;)V
    .locals 4
    .param p1, "this$0"    # Lcom/quicinc/cne/ICDClient;
    .param p2, "uri"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    const-string/jumbo v0, "WQE:ICD"

    const-string/jumbo v1, "icdHttp - constructor"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iput-object p2, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->httpuri:Ljava/lang/String;

    .line 146
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/quicinc/cne/ICDClient;->-set4(Lcom/quicinc/cne/ICDClient;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 147
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    invoke-static {p1, v0}, Lcom/quicinc/cne/ICDClient;->-set5(Lcom/quicinc/cne/ICDClient;Ljava/util/Timer;)Ljava/util/Timer;

    .line 148
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->httpuri:Ljava/lang/String;

    iput-object v0, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->httpURL:Ljava/lang/String;

    .line 149
    invoke-static {p1}, Lcom/quicinc/cne/ICDClient;->-get13(Lcom/quicinc/cne/ICDClient;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/quicinc/cne/ICDClient$icdHttp$ICDTimerTask;

    invoke-direct {v1, p0}, Lcom/quicinc/cne/ICDClient$icdHttp$ICDTimerTask;-><init>(Lcom/quicinc/cne/ICDClient$icdHttp;)V

    invoke-static {p1}, Lcom/quicinc/cne/ICDClient;->-get9(Lcom/quicinc/cne/ICDClient;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 143
    return-void
.end method

.method private getHostFromURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, "startPos":I
    const-string/jumbo v2, "http://"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    const-string/jumbo v2, "WQE:ICD"

    const-string/jumbo v3, "The URL doesn\'t start with http. Returning null"

    invoke-static {v2, v3}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v2, 0x0

    return-object v2

    .line 169
    :cond_0
    const/4 v1, 0x7

    .line 170
    const-string/jumbo v2, "/"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 171
    .local v0, "endPos":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 172
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 174
    :cond_1
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private parseIcdHttpClientRsp()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 241
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "parseIcdHttpClientRsp()"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get8(Lcom/quicinc/cne/ICDClient;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 243
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "parseIcdHttpClientRsp() Locked"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get10(Lcom/quicinc/cne/ICDClient;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    :goto_0
    return-void

    .line 247
    :cond_0
    :try_start_0
    const-string/jumbo v4, "WQE:ICD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sent GET to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->-get6(Lcom/quicinc/cne/ICDClient;)Ljava/net/URL;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get3(Lcom/quicinc/cne/ICDClient;)Ljava/net/HttpURLConnection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 249
    .local v2, "resp":I
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get3(Lcom/quicinc/cne/ICDClient;)Ljava/net/HttpURLConnection;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "responseMessage":Ljava/lang/String;
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get12(Lcom/quicinc/cne/ICDClient;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v5, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_TIMEOUT:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v4, v5}, Lcom/quicinc/cne/ICDClient;->-set2(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 254
    const-string/jumbo v4, "WQE:ICD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Http ICDRequest failure.Reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->-get7(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/quicinc/cne/ICDClient$IcdResult;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get2(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/CNE;

    move-result-object v4

    .line 256
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get7(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/ICDClient$IcdResult;->ordinal()I

    move-result v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->-get1(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->-get11(Lcom/quicinc/cne/ICDClient;)I

    move-result v7

    iget-object v8, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v8}, Lcom/quicinc/cne/ICDClient;->-get5(Lcom/quicinc/cne/ICDClient;)I

    move-result v8

    .line 255
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/quicinc/cne/CNE;->sendIcdHttpResponse(ILjava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    :goto_1
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Cancelling the ICD timer thread"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get13(Lcom/quicinc/cne/ICDClient;)Ljava/util/Timer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 380
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/ICDClient;->-set3(Lcom/quicinc/cne/ICDClient;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 381
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get8(Lcom/quicinc/cne/ICDClient;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 382
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "parseIcdHttpClientRsp() UnLocked"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 260
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get7(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 262
    const-string/jumbo v4, "WQE:ICD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ICD Http Request failure.Reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->-get7(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/quicinc/cne/ICDClient$IcdResult;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get2(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/CNE;

    move-result-object v4

    .line 264
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get7(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/ICDClient$IcdResult;->ordinal()I

    move-result v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->-get1(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->-get11(Lcom/quicinc/cne/ICDClient;)I

    move-result v7

    iget-object v8, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v8}, Lcom/quicinc/cne/ICDClient;->-get5(Lcom/quicinc/cne/ICDClient;)I

    move-result v8

    .line 263
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/quicinc/cne/CNE;->sendIcdHttpResponse(ILjava/lang/String;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 369
    .end local v2    # "resp":I
    .end local v3    # "responseMessage":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 370
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get13(Lcom/quicinc/cne/ICDClient;)Ljava/util/Timer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 371
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 378
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Cancelling the ICD timer thread"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get13(Lcom/quicinc/cne/ICDClient;)Ljava/util/Timer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 380
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/ICDClient;->-set3(Lcom/quicinc/cne/ICDClient;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 381
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get8(Lcom/quicinc/cne/ICDClient;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 382
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "parseIcdHttpClientRsp() UnLocked"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local v2    # "resp":I
    .restart local v3    # "responseMessage":Ljava/lang/String;
    :cond_2
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_4

    .line 270
    :try_start_3
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "ICD Http Request successful"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v5, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_SUCCESS:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v4, v5}, Lcom/quicinc/cne/ICDClient;->-set2(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 272
    invoke-direct {p0}, Lcom/quicinc/cne/ICDClient$icdHttp;->parseIcdHttpJsonRsp()V

    .line 273
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get7(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v4

    sget-object v5, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_SUCCESS:Lcom/quicinc/cne/ICDClient$IcdResult;

    if-eq v4, v5, :cond_3

    .line 275
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "ICD Http Json Parsing not successful"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_3
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get2(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/CNE;

    move-result-object v4

    .line 278
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get7(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/ICDClient$IcdResult;->ordinal()I

    move-result v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->-get1(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->-get11(Lcom/quicinc/cne/ICDClient;)I

    move-result v7

    iget-object v8, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v8}, Lcom/quicinc/cne/ICDClient;->-get5(Lcom/quicinc/cne/ICDClient;)I

    move-result v8

    .line 277
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/quicinc/cne/CNE;->sendIcdHttpResponse(ILjava/lang/String;II)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 372
    .end local v2    # "resp":I
    .end local v3    # "responseMessage":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 373
    .local v1, "ex":Ljava/lang/NullPointerException;
    :try_start_4
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get13(Lcom/quicinc/cne/ICDClient;)Ljava/util/Timer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 374
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 378
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Cancelling the ICD timer thread"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get13(Lcom/quicinc/cne/ICDClient;)Ljava/util/Timer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 380
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/ICDClient;->-set3(Lcom/quicinc/cne/ICDClient;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 381
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get8(Lcom/quicinc/cne/ICDClient;)Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 382
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "parseIcdHttpClientRsp() UnLocked"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 280
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    .restart local v2    # "resp":I
    .restart local v3    # "responseMessage":Ljava/lang/String;
    :cond_4
    const/16 v4, 0x12e

    if-ne v2, v4, :cond_5

    .line 282
    :try_start_5
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Interpreting as ICD FAILURE"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v5, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_FAILURE:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v4, v5}, Lcom/quicinc/cne/ICDClient;->-set2(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 284
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get2(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/CNE;

    move-result-object v4

    .line 285
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get7(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/ICDClient$IcdResult;->ordinal()I

    move-result v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->-get1(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->-get11(Lcom/quicinc/cne/ICDClient;)I

    move-result v7

    iget-object v8, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v8}, Lcom/quicinc/cne/ICDClient;->-get5(Lcom/quicinc/cne/ICDClient;)I

    move-result v8

    .line 284
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/quicinc/cne/CNE;->sendIcdHttpResponse(ILjava/lang/String;II)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 376
    .end local v2    # "resp":I
    .end local v3    # "responseMessage":Ljava/lang/String;
    :catchall_0
    move-exception v4

    .line 378
    const-string/jumbo v5, "WQE:ICD"

    const-string/jumbo v6, "Cancelling the ICD timer thread"

    invoke-static {v5, v6}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get13(Lcom/quicinc/cne/ICDClient;)Ljava/util/Timer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Timer;->cancel()V

    .line 380
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/quicinc/cne/ICDClient;->-set3(Lcom/quicinc/cne/ICDClient;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 381
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get8(Lcom/quicinc/cne/ICDClient;)Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 382
    const-string/jumbo v5, "WQE:ICD"

    const-string/jumbo v6, "parseIcdHttpClientRsp() UnLocked"

    invoke-static {v5, v6}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    throw v4

    .line 287
    .restart local v2    # "resp":I
    .restart local v3    # "responseMessage":Ljava/lang/String;
    :cond_5
    const/16 v4, 0x190

    if-ne v2, v4, :cond_6

    .line 289
    :try_start_6
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Assuming ICDRequest successful, as Origin servers sent error"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Interpreting as ICD_RESULT_PASS_NOT_STORE"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v5, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_PASS_NOT_STORE:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v4, v5}, Lcom/quicinc/cne/ICDClient;->-set2(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 292
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get2(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/CNE;

    move-result-object v4

    .line 293
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get7(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/ICDClient$IcdResult;->ordinal()I

    move-result v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->-get1(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->-get11(Lcom/quicinc/cne/ICDClient;)I

    move-result v7

    iget-object v8, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v8}, Lcom/quicinc/cne/ICDClient;->-get5(Lcom/quicinc/cne/ICDClient;)I

    move-result v8

    .line 292
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/quicinc/cne/CNE;->sendIcdHttpResponse(ILjava/lang/String;II)V

    goto/16 :goto_1

    .line 295
    :cond_6
    const/16 v4, 0x194

    if-ne v2, v4, :cond_7

    .line 297
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Assuming ICDRequest successful, as Origin servers sent error"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Interpreting as ICD_RESULT_PASS_NOT_STORE"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v5, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_PASS_NOT_STORE:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v4, v5}, Lcom/quicinc/cne/ICDClient;->-set2(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 300
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get2(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/CNE;

    move-result-object v4

    .line 301
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get7(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/ICDClient$IcdResult;->ordinal()I

    move-result v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->-get1(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->-get11(Lcom/quicinc/cne/ICDClient;)I

    move-result v7

    iget-object v8, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v8}, Lcom/quicinc/cne/ICDClient;->-get5(Lcom/quicinc/cne/ICDClient;)I

    move-result v8

    .line 300
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/quicinc/cne/CNE;->sendIcdHttpResponse(ILjava/lang/String;II)V

    goto/16 :goto_1

    .line 303
    :cond_7
    const/16 v4, 0x195

    if-ne v2, v4, :cond_8

    .line 305
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Assuming ICDRequest successful, as Origin servers sent error"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Interpreting as ICD_RESULT_PASS_NOT_STORE"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v5, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_PASS_NOT_STORE:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v4, v5}, Lcom/quicinc/cne/ICDClient;->-set2(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 308
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get2(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/CNE;

    move-result-object v4

    .line 309
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get7(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/ICDClient$IcdResult;->ordinal()I

    move-result v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->-get1(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->-get11(Lcom/quicinc/cne/ICDClient;)I

    move-result v7

    iget-object v8, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v8}, Lcom/quicinc/cne/ICDClient;->-get5(Lcom/quicinc/cne/ICDClient;)I

    move-result v8

    .line 308
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/quicinc/cne/CNE;->sendIcdHttpResponse(ILjava/lang/String;II)V

    goto/16 :goto_1

    .line 311
    :cond_8
    const/16 v4, 0x196

    if-ne v2, v4, :cond_9

    .line 313
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Assuming ICDRequest successful, as Origin servers sent error"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Interpreting as ICD_RESULT_PASS_NOT_STORE"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v5, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_PASS_NOT_STORE:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v4, v5}, Lcom/quicinc/cne/ICDClient;->-set2(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 316
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get2(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/CNE;

    move-result-object v4

    .line 317
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get7(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/ICDClient$IcdResult;->ordinal()I

    move-result v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->-get1(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->-get11(Lcom/quicinc/cne/ICDClient;)I

    move-result v7

    iget-object v8, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v8}, Lcom/quicinc/cne/ICDClient;->-get5(Lcom/quicinc/cne/ICDClient;)I

    move-result v8

    .line 316
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/quicinc/cne/CNE;->sendIcdHttpResponse(ILjava/lang/String;II)V

    goto/16 :goto_1

    .line 319
    :cond_9
    const/16 v4, 0x1f4

    if-ne v2, v4, :cond_a

    .line 321
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Assuming ICDRequest successful, as Origin servers sent error"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Interpreting as ICD_RESULT_PASS_NOT_STORE"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v5, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_PASS_NOT_STORE:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v4, v5}, Lcom/quicinc/cne/ICDClient;->-set2(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 324
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get2(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/CNE;

    move-result-object v4

    .line 325
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get7(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/ICDClient$IcdResult;->ordinal()I

    move-result v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->-get1(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->-get11(Lcom/quicinc/cne/ICDClient;)I

    move-result v7

    iget-object v8, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v8}, Lcom/quicinc/cne/ICDClient;->-get5(Lcom/quicinc/cne/ICDClient;)I

    move-result v8

    .line 324
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/quicinc/cne/CNE;->sendIcdHttpResponse(ILjava/lang/String;II)V

    goto/16 :goto_1

    .line 327
    :cond_a
    const/16 v4, 0x1f5

    if-ne v2, v4, :cond_b

    .line 329
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Assuming ICDRequest successful, as Origin servers sent error"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Interpreting as ICD_RESULT_PASS_NOT_STORE"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v5, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_PASS_NOT_STORE:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v4, v5}, Lcom/quicinc/cne/ICDClient;->-set2(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 332
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get2(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/CNE;

    move-result-object v4

    .line 333
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get7(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/ICDClient$IcdResult;->ordinal()I

    move-result v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->-get1(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->-get11(Lcom/quicinc/cne/ICDClient;)I

    move-result v7

    iget-object v8, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v8}, Lcom/quicinc/cne/ICDClient;->-get5(Lcom/quicinc/cne/ICDClient;)I

    move-result v8

    .line 332
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/quicinc/cne/CNE;->sendIcdHttpResponse(ILjava/lang/String;II)V

    goto/16 :goto_1

    .line 335
    :cond_b
    const/16 v4, 0x1f7

    if-ne v2, v4, :cond_c

    .line 337
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Assuming ICDRequest successful, as Origin servers sent error"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Interpreting as ICD_RESULT_PASS_NOT_STORE"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v5, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_PASS_NOT_STORE:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v4, v5}, Lcom/quicinc/cne/ICDClient;->-set2(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 340
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get2(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/CNE;

    move-result-object v4

    .line 341
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get7(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/ICDClient$IcdResult;->ordinal()I

    move-result v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->-get1(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->-get11(Lcom/quicinc/cne/ICDClient;)I

    move-result v7

    iget-object v8, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v8}, Lcom/quicinc/cne/ICDClient;->-get5(Lcom/quicinc/cne/ICDClient;)I

    move-result v8

    .line 340
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/quicinc/cne/CNE;->sendIcdHttpResponse(ILjava/lang/String;II)V

    goto/16 :goto_1

    .line 343
    :cond_c
    const/16 v4, 0x1f9

    if-ne v2, v4, :cond_d

    .line 345
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Assuming ICDRequest successful, as Origin servers sent error"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Interpreting as ICD_RESULT_PASS_NOT_STORE"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v5, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_PASS_NOT_STORE:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v4, v5}, Lcom/quicinc/cne/ICDClient;->-set2(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 348
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get2(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/CNE;

    move-result-object v4

    .line 349
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get7(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/ICDClient$IcdResult;->ordinal()I

    move-result v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->-get1(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->-get11(Lcom/quicinc/cne/ICDClient;)I

    move-result v7

    iget-object v8, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v8}, Lcom/quicinc/cne/ICDClient;->-get5(Lcom/quicinc/cne/ICDClient;)I

    move-result v8

    .line 348
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/quicinc/cne/CNE;->sendIcdHttpResponse(ILjava/lang/String;II)V

    goto/16 :goto_1

    .line 351
    :cond_d
    const/16 v4, 0x64

    if-ge v2, v4, :cond_e

    if-ltz v2, :cond_e

    .line 353
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Assuming ICDRequest successful, as Origin servers sent error"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "Interpreting as ICD_RESULT_PASS_NOT_STORE"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v5, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_PASS_NOT_STORE:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v4, v5}, Lcom/quicinc/cne/ICDClient;->-set2(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 356
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get2(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/CNE;

    move-result-object v4

    .line 357
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get7(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/ICDClient$IcdResult;->ordinal()I

    move-result v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->-get1(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->-get11(Lcom/quicinc/cne/ICDClient;)I

    move-result v7

    iget-object v8, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v8}, Lcom/quicinc/cne/ICDClient;->-get5(Lcom/quicinc/cne/ICDClient;)I

    move-result v8

    .line 356
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/quicinc/cne/CNE;->sendIcdHttpResponse(ILjava/lang/String;II)V

    goto/16 :goto_1

    .line 361
    :cond_e
    const-string/jumbo v4, "WQE:ICD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Interpreting as ICD FAILURE - statusCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v5, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_FAILURE:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v4, v5}, Lcom/quicinc/cne/ICDClient;->-set2(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 363
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v4}, Lcom/quicinc/cne/ICDClient;->-get2(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/CNE;

    move-result-object v4

    .line 364
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get7(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v5

    invoke-virtual {v5}, Lcom/quicinc/cne/ICDClient$IcdResult;->ordinal()I

    move-result v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->-get1(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->-get11(Lcom/quicinc/cne/ICDClient;)I

    move-result v7

    iget-object v8, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v8}, Lcom/quicinc/cne/ICDClient;->-get5(Lcom/quicinc/cne/ICDClient;)I

    move-result v8

    .line 363
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/quicinc/cne/CNE;->sendIcdHttpResponse(ILjava/lang/String;II)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

.method private parseIcdHttpJsonRsp()V
    .locals 15

    .prologue
    .line 388
    const-string/jumbo v12, "WQE:ICD"

    const-string/jumbo v13, "parseIcdHttpJsonRsp()"

    invoke-static {v12, v13}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const/4 v10, 0x0

    .line 390
    .local v10, "jsonString":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .local v9, "jsonSB":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 394
    .local v5, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    iget-object v13, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v13}, Lcom/quicinc/cne/ICDClient;->-get3(Lcom/quicinc/cne/ICDClient;)Ljava/net/HttpURLConnection;

    move-result-object v13

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    .end local v5    # "in":Ljava/io/BufferedReader;
    .local v6, "in":Ljava/io/BufferedReader;
    const/4 v11, 0x0

    .line 397
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .local v11, "line":Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 398
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 400
    .end local v11    # "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "ex":Ljava/io/IOException;
    move-object v5, v6

    .line 401
    .end local v6    # "in":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 404
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 412
    .end local v4    # "ex":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 413
    .local v10, "jsonString":Ljava/lang/String;
    const-string/jumbo v12, "WQE:ICD"

    invoke-static {v12, v10}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/net/ParseException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 414
    const/4 v7, 0x0

    .line 417
    .local v7, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Landroid/net/ParseException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 418
    .local v8, "jsonObject":Lorg/json/JSONObject;
    :try_start_6
    iget-object v12, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    invoke-static {v12}, Lcom/quicinc/cne/ICDClient;->-get0(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v13, "bssid"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 420
    const-string/jumbo v12, "WQE:ICD"

    const-string/jumbo v13, "Bssids match, Http ICD PASS"

    invoke-static {v12, v13}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v12, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v13, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_SUCCESS:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v12, v13}, Lcom/quicinc/cne/ICDClient;->-set2(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/net/ParseException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 387
    return-void

    .line 404
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    .local v10, "jsonString":Ljava/lang/String;
    .restart local v11    # "line":Ljava/lang/String;
    :cond_0
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :goto_3
    move-object v5, v6

    .end local v6    # "in":Ljava/io/BufferedReader;
    .local v5, "in":Ljava/io/BufferedReader;
    goto :goto_2

    .line 405
    .end local v5    # "in":Ljava/io/BufferedReader;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 406
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 405
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "in":Ljava/io/BufferedReader;
    .end local v11    # "line":Ljava/lang/String;
    .restart local v4    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 406
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 402
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 404
    :goto_4
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 402
    :goto_5
    throw v12

    .line 405
    :catch_3
    move-exception v1

    .line 406
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 425
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v8    # "jsonObject":Lorg/json/JSONObject;
    .local v10, "jsonString":Ljava/lang/String;
    :cond_1
    :try_start_9
    const-string/jumbo v12, "WQE:ICD"

    const-string/jumbo v13, "Received a mismatched bssid from the server in JSON response."

    invoke-static {v12, v13}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string/jumbo v12, "WQE:ICD"

    const-string/jumbo v13, "Interpreting as ICD FAILURE"

    invoke-static {v12, v13}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v12, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v13, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_FAILURE:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v12, v13}, Lcom/quicinc/cne/ICDClient;->-set2(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 428
    new-instance v12, Ljava/lang/Exception;

    invoke-direct {v12}, Ljava/lang/Exception;-><init>()V

    throw v12
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Landroid/net/ParseException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 432
    :catch_4
    move-exception v3

    .local v3, "e":Lorg/json/JSONException;
    move-object v7, v8

    .line 433
    .end local v8    # "jsonObject":Lorg/json/JSONObject;
    :goto_6
    :try_start_a
    const-string/jumbo v12, "WQE:ICD"

    const-string/jumbo v13, "Didn\'t receive a JSON Object/bssid not present, possible captive portal"

    invoke-static {v12, v13}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string/jumbo v12, "WQE:ICD"

    const-string/jumbo v13, "Interpreting as ICD FAILURE"

    invoke-static {v12, v13}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v12, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v13, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_FAILURE:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v12, v13}, Lcom/quicinc/cne/ICDClient;->-set2(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 436
    new-instance v12, Ljava/lang/Exception;

    invoke-direct {v12}, Ljava/lang/Exception;-><init>()V

    throw v12
    :try_end_a
    .catch Landroid/net/ParseException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 440
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v10    # "jsonString":Ljava/lang/String;
    :catch_5
    move-exception v0

    .line 441
    .local v0, "e":Landroid/net/ParseException;
    const-string/jumbo v12, "WQE:ICD"

    const-string/jumbo v13, "Ignoring Parse  Exception"

    invoke-static {v12, v13}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0}, Landroid/net/ParseException;->printStackTrace()V

    .line 443
    return-void

    .line 460
    .end local v0    # "e":Landroid/net/ParseException;
    :catch_6
    move-exception v2

    .line 461
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "WQE:ICD"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Ignoring Generic Exception"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    return-void

    .line 454
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v3

    .line 455
    .restart local v3    # "e":Lorg/json/JSONException;
    const-string/jumbo v12, "WQE:ICD"

    const-string/jumbo v13, "Ignoring JSON Exception"

    invoke-static {v12, v13}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 457
    return-void

    .line 446
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_8
    move-exception v1

    .line 447
    .restart local v1    # "e":Ljava/io/IOException;
    const-string/jumbo v12, "WQE:ICD"

    const-string/jumbo v13, "IO Exception"

    invoke-static {v12, v13}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 449
    const-string/jumbo v12, "WQE:ICD"

    const-string/jumbo v13, "Interpreting as ICD TIMEOUT"

    invoke-static {v12, v13}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v12, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v13, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_TIMEOUT:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v12, v13}, Lcom/quicinc/cne/ICDClient;->-set2(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 451
    return-void

    .line 432
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    .restart local v10    # "jsonString":Ljava/lang/String;
    :catch_9
    move-exception v3

    .restart local v3    # "e":Lorg/json/JSONException;
    goto :goto_6

    .line 402
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "in":Ljava/io/BufferedReader;
    .local v10, "jsonString":Ljava/lang/String;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "in":Ljava/io/BufferedReader;
    .restart local v5    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 400
    .local v5, "in":Ljava/io/BufferedReader;
    :catch_a
    move-exception v4

    .restart local v4    # "ex":Ljava/io/IOException;
    goto/16 :goto_1
.end method

.method private sendIcdHttpClientReq()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 235
    const-string/jumbo v0, "WQE:ICD"

    const-string/jumbo v1, "sendIcdHttpClientReq()"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private setIcdHttpClientReq()Ljava/lang/Boolean;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 178
    const-string/jumbo v5, "WQE:ICD"

    const-string/jumbo v6, "setIcdHttpClientReq()"

    invoke-static {v5, v6}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->httpuri:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/quicinc/cne/ICDClient$icdHttp;->getHostFromURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->hostName:Ljava/lang/String;

    .line 181
    const-string/jumbo v5, "WQE:ICD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "HostName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->hostName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get0(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get4(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 185
    :cond_0
    const-string/jumbo v5, "WQE:ICD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failure :Bssid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->-get0(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " currentBSSID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->-get4(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " passed BSSID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->-get1(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string/jumbo v5, "WQE:ICD"

    const-string/jumbo v6, "Interpreting as ICD_RESULT_PASS_NOT_STORE"

    invoke-static {v5, v6}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v6, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_PASS_NOT_STORE:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v5, v6}, Lcom/quicinc/cne/ICDClient;->-set2(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 188
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .line 183
    :cond_1
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get1(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 191
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get4(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v6}, Lcom/quicinc/cne/ICDClient;->-get1(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 193
    const-string/jumbo v5, "WQE:ICD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failure :currentBSSID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->-get4(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " passed BSSID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->-get1(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string/jumbo v5, "WQE:ICD"

    const-string/jumbo v6, "Interpreting as ICD_RESULT_PASS_NOT_STORE"

    invoke-static {v5, v6}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    sget-object v6, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_PASS_NOT_STORE:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v5, v6}, Lcom/quicinc/cne/ICDClient;->-set2(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 196
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .line 200
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    new-instance v6, Ljava/net/URL;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->httpuri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "?bssid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v8}, Lcom/quicinc/cne/ICDClient;->-get0(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/quicinc/cne/ICDClient;->-set1(Lcom/quicinc/cne/ICDClient;Ljava/net/URL;)Ljava/net/URL;

    .line 201
    const-string/jumbo v5, "WQE:ICD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "created url object with url = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v7}, Lcom/quicinc/cne/ICDClient;->-get6(Lcom/quicinc/cne/ICDClient;)Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :try_start_1
    iget-object v6, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get6(Lcom/quicinc/cne/ICDClient;)Ljava/net/URL;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    invoke-static {v6, v5}, Lcom/quicinc/cne/ICDClient;->-set0(Lcom/quicinc/cne/ICDClient;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 221
    :try_start_2
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get3(Lcom/quicinc/cne/ICDClient;)Ljava/net/HttpURLConnection;

    move-result-object v5

    const-string/jumbo v6, "GET"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 222
    const-string/jumbo v5, "WQE:ICD"

    const-string/jumbo v6, "set request GET"

    invoke-static {v5, v6}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_4

    .line 228
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get3(Lcom/quicinc/cne/ICDClient;)Ljava/net/HttpURLConnection;

    move-result-object v5

    const-string/jumbo v6, "Accept-Encoding"

    const-string/jumbo v7, "gzip;q=0,deflate;q=0"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v5, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v5}, Lcom/quicinc/cne/ICDClient;->-get3(Lcom/quicinc/cne/ICDClient;)Ljava/net/HttpURLConnection;

    move-result-object v5

    const-string/jumbo v6, "Cache-Control"

    const-string/jumbo v7, "no-cache"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string/jumbo v5, "WQE:ICD"

    const-string/jumbo v6, "done"

    invoke-static {v5, v6}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .line 205
    :catch_0
    move-exception v3

    .line 206
    .local v3, "ex":Ljava/net/MalformedURLException;
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 207
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .line 202
    .end local v3    # "ex":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 203
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 204
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .line 215
    .end local v1    # "ex":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v2

    .line 216
    .local v2, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 217
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .line 212
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v0

    .line 213
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 214
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .line 223
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_4
    move-exception v4

    .line 224
    .local v4, "ex":Ljava/net/ProtocolException;
    invoke-virtual {v4}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 225
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 466
    const-string/jumbo v0, "WQE:ICD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "icdHttp - start:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/quicinc/cne/ICDClient$icdHttp;->this$0:Lcom/quicinc/cne/ICDClient;

    invoke-static {v2}, Lcom/quicinc/cne/ICDClient;->-get7(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-direct {p0}, Lcom/quicinc/cne/ICDClient$icdHttp;->setIcdHttpClientReq()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    invoke-direct {p0}, Lcom/quicinc/cne/ICDClient$icdHttp;->sendIcdHttpClientReq()Ljava/lang/Boolean;

    .line 471
    :cond_0
    invoke-direct {p0}, Lcom/quicinc/cne/ICDClient$icdHttp;->parseIcdHttpClientRsp()V

    .line 465
    return-void
.end method
