.class public Lcom/quicinc/cne/ICDClient;
.super Ljava/lang/Object;
.source "ICDClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quicinc/cne/ICDClient$IcdResult;,
        Lcom/quicinc/cne/ICDClient$icdHttp;
    }
.end annotation


# static fields
.field public static final FLAG_BQE_PROB_PRESENT:I = 0x8

.field public static final FLAG_BQE_QUOTA_PRESENT:I = 0x4

.field public static final FLAG_ICD_PROB_PRESENT:I = 0x2

.field public static final FLAG_ICD_QUOTA_PRESENT:I = 0x1

.field public static final FLAG_MBW_PRESENT:I = 0x10

.field public static final FLAG_TPUT_DL_PRESENT:I = 0x20

.field public static final FLAG_TPUT_SDEV_PRESENT:I = 0x40

.field static final ICD_REQ:I = 0x0

.field static final PARAMETER_REQ:I = 0x1

.field private static final SUB_TYPE:Ljava/lang/String; = "WQE:ICD"


# instance fields
.field private bqeProb:I

.field private bqeQuota:I

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

.field private cneHandle:Lcom/quicinc/cne/CNE;

.field private conn:Ljava/net/HttpURLConnection;

.field private currentBSSID:Ljava/lang/String;

.field private dl:I

.field private family:I

.field private flags:I

.field private httpUrl:Ljava/net/URL;

.field private httpsUrl:Ljava/net/URL;

.field private icdHttpReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

.field private icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

.field private icdProb:I

.field private icdQuota:I

.field private ipAddr:I

.field private mbw:I

.field private postingProb:I

.field private rspLock:Ljava/util/concurrent/locks/Lock;

.field private sconn:Ljavax/net/ssl/HttpsURLConnection;

.field private sdev:I

.field private seconds:I

.field private sentHttpRsp:Ljava/lang/Boolean;

.field private sentParamRsp:Ljava/lang/Boolean;

.field private tid:I

.field private timeout:Ljava/lang/Boolean;

.field private timer:Ljava/util/Timer;

.field private uri:Ljava/lang/String;

.field private wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->bssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->bssidPassed:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/quicinc/cne/ICDClient;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->sentHttpRsp:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get11(Lcom/quicinc/cne/ICDClient;)I
    .locals 1

    iget v0, p0, Lcom/quicinc/cne/ICDClient;->tid:I

    return v0
.end method

.method static synthetic -get12(Lcom/quicinc/cne/ICDClient;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->timeout:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get13(Lcom/quicinc/cne/ICDClient;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic -get2(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/CNE;
    .locals 1

    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->cneHandle:Lcom/quicinc/cne/CNE;

    return-object v0
.end method

.method static synthetic -get3(Lcom/quicinc/cne/ICDClient;)Ljava/net/HttpURLConnection;
    .locals 1

    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->conn:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method static synthetic -get4(Lcom/quicinc/cne/ICDClient;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->currentBSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/quicinc/cne/ICDClient;)I
    .locals 1

    iget v0, p0, Lcom/quicinc/cne/ICDClient;->family:I

    return v0
.end method

.method static synthetic -get6(Lcom/quicinc/cne/ICDClient;)Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->httpUrl:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic -get7(Lcom/quicinc/cne/ICDClient;)Lcom/quicinc/cne/ICDClient$IcdResult;
    .locals 1

    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->icdHttpReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    return-object v0
.end method

.method static synthetic -get8(Lcom/quicinc/cne/ICDClient;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->rspLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic -get9(Lcom/quicinc/cne/ICDClient;)I
    .locals 1

    iget v0, p0, Lcom/quicinc/cne/ICDClient;->seconds:I

    return v0
.end method

.method static synthetic -set0(Lcom/quicinc/cne/ICDClient;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0

    iput-object p1, p0, Lcom/quicinc/cne/ICDClient;->conn:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method static synthetic -set1(Lcom/quicinc/cne/ICDClient;Ljava/net/URL;)Ljava/net/URL;
    .locals 0

    iput-object p1, p0, Lcom/quicinc/cne/ICDClient;->httpUrl:Ljava/net/URL;

    return-object p1
.end method

.method static synthetic -set2(Lcom/quicinc/cne/ICDClient;Lcom/quicinc/cne/ICDClient$IcdResult;)Lcom/quicinc/cne/ICDClient$IcdResult;
    .locals 0

    iput-object p1, p0, Lcom/quicinc/cne/ICDClient;->icdHttpReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    return-object p1
.end method

.method static synthetic -set3(Lcom/quicinc/cne/ICDClient;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/quicinc/cne/ICDClient;->sentHttpRsp:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set4(Lcom/quicinc/cne/ICDClient;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/quicinc/cne/ICDClient;->timeout:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic -set5(Lcom/quicinc/cne/ICDClient;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/quicinc/cne/ICDClient;->timer:Ljava/util/Timer;

    return-object p1
.end method

.method public constructor <init>(Lcom/quicinc/cne/CNE;Landroid/net/wifi/WifiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .param p1, "handle"    # Lcom/quicinc/cne/CNE;
    .param p2, "wifi"    # Landroid/net/wifi/WifiManager;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "httpuri"    # Ljava/lang/String;
    .param p5, "bssidPassed"    # Ljava/lang/String;
    .param p6, "seconds"    # I
    .param p7, "tid"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v2, p0, Lcom/quicinc/cne/ICDClient;->conn:Ljava/net/HttpURLConnection;

    .line 60
    iput-object v2, p0, Lcom/quicinc/cne/ICDClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    .line 73
    iput v1, p0, Lcom/quicinc/cne/ICDClient;->icdQuota:I

    .line 74
    iput v1, p0, Lcom/quicinc/cne/ICDClient;->icdProb:I

    .line 75
    iput v1, p0, Lcom/quicinc/cne/ICDClient;->bqeQuota:I

    .line 76
    iput v1, p0, Lcom/quicinc/cne/ICDClient;->bqeProb:I

    .line 77
    iput v1, p0, Lcom/quicinc/cne/ICDClient;->mbw:I

    .line 78
    iput v1, p0, Lcom/quicinc/cne/ICDClient;->postingProb:I

    .line 79
    iput v1, p0, Lcom/quicinc/cne/ICDClient;->dl:I

    .line 80
    iput v1, p0, Lcom/quicinc/cne/ICDClient;->sdev:I

    .line 81
    iput v1, p0, Lcom/quicinc/cne/ICDClient;->family:I

    .line 112
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/ICDClient;->rspLock:Ljava/util/concurrent/locks/Lock;

    .line 113
    iput-object v2, p0, Lcom/quicinc/cne/ICDClient;->icdHttpReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 114
    iput-object v2, p0, Lcom/quicinc/cne/ICDClient;->icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 115
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/ICDClient;->sentParamRsp:Ljava/lang/Boolean;

    .line 116
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/ICDClient;->sentHttpRsp:Ljava/lang/Boolean;

    .line 117
    iput v1, p0, Lcom/quicinc/cne/ICDClient;->flags:I

    .line 118
    iput v1, p0, Lcom/quicinc/cne/ICDClient;->family:I

    .line 119
    iput p6, p0, Lcom/quicinc/cne/ICDClient;->seconds:I

    .line 120
    iput p7, p0, Lcom/quicinc/cne/ICDClient;->tid:I

    .line 121
    iput-object p2, p0, Lcom/quicinc/cne/ICDClient;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 122
    iput-object p3, p0, Lcom/quicinc/cne/ICDClient;->uri:Ljava/lang/String;

    .line 123
    iput-object p5, p0, Lcom/quicinc/cne/ICDClient;->bssidPassed:Ljava/lang/String;

    .line 124
    invoke-direct {p0}, Lcom/quicinc/cne/ICDClient;->setBssid()V

    .line 125
    iput-object p1, p0, Lcom/quicinc/cne/ICDClient;->cneHandle:Lcom/quicinc/cne/CNE;

    .line 127
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/quicinc/cne/ICDClient$icdHttp;

    invoke-direct {v1, p0, p4}, Lcom/quicinc/cne/ICDClient$icdHttp;-><init>(Lcom/quicinc/cne/ICDClient;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 129
    const-string/jumbo v0, "WQE:ICD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ICDClient() constructor created with URI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 130
    invoke-virtual {p3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    const-string/jumbo v2, " httpURI = "

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    invoke-virtual {p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    const-string/jumbo v2, " bssidPassed = "

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 133
    const-string/jumbo v2, " tid = "

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method private parseIcdParamClientRsp()V
    .locals 15

    .prologue
    .line 699
    const-string/jumbo v0, "WQE:ICD"

    const-string/jumbo v1, "parseIcdParamClientRsp()"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->rspLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 701
    const-string/jumbo v0, "WQE:ICD"

    const-string/jumbo v1, "parseIcdParamClientRsp() Locked"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->sentParamRsp:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    const-string/jumbo v0, "WQE:ICD"

    const-string/jumbo v1, "ICD Parameter Response sent already, doing nothing"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    :goto_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/ICDClient;->sentParamRsp:Ljava/lang/Boolean;

    .line 743
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->rspLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 744
    const-string/jumbo v0, "WQE:ICD"

    const-string/jumbo v1, "parseIcdParamClientRsp() UnLocked"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    return-void

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    if-eqz v0, :cond_1

    .line 711
    const-string/jumbo v0, "WQE:ICD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ICDRequest failure.Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/quicinc/cne/ICDClient;->icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-virtual {v2}, Lcom/quicinc/cne/ICDClient$IcdResult;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 715
    :cond_1
    const/4 v13, 0x0

    .line 716
    .local v13, "resp":I
    const/4 v14, 0x0

    .line 718
    .local v14, "responseMessage":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v13

    .line 719
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 724
    .end local v14    # "responseMessage":Ljava/lang/String;
    :goto_1
    const-string/jumbo v0, "WQE:ICD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ICDResponse http Status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const/16 v0, 0xc8

    if-ne v13, v0, :cond_2

    .line 728
    const-string/jumbo v0, "WQE:ICD"

    const-string/jumbo v1, "ICD Parameter Request successful"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    sget-object v0, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_SUCCESS:Lcom/quicinc/cne/ICDClient$IcdResult;

    iput-object v0, p0, Lcom/quicinc/cne/ICDClient;->icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 730
    invoke-direct {p0}, Lcom/quicinc/cne/ICDClient;->parseIcdParamJsonRsp()V

    .line 731
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient;->cneHandle:Lcom/quicinc/cne/CNE;

    iget-object v1, p0, Lcom/quicinc/cne/ICDClient;->icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-virtual {v1}, Lcom/quicinc/cne/ICDClient$IcdResult;->ordinal()I

    move-result v1

    .line 732
    iget-object v2, p0, Lcom/quicinc/cne/ICDClient;->bssidPassed:Ljava/lang/String;

    iget v3, p0, Lcom/quicinc/cne/ICDClient;->flags:I

    iget v4, p0, Lcom/quicinc/cne/ICDClient;->tid:I

    .line 733
    iget v5, p0, Lcom/quicinc/cne/ICDClient;->icdQuota:I

    iget v6, p0, Lcom/quicinc/cne/ICDClient;->icdProb:I

    iget v7, p0, Lcom/quicinc/cne/ICDClient;->bqeQuota:I

    .line 734
    iget v8, p0, Lcom/quicinc/cne/ICDClient;->bqeProb:I

    iget v9, p0, Lcom/quicinc/cne/ICDClient;->mbw:I

    iget v10, p0, Lcom/quicinc/cne/ICDClient;->dl:I

    iget v11, p0, Lcom/quicinc/cne/ICDClient;->sdev:I

    .line 731
    invoke-virtual/range {v0 .. v11}, Lcom/quicinc/cne/CNE;->sendICDResponse(ILjava/lang/String;IIIIIIIII)V

    goto/16 :goto_0

    .line 720
    .restart local v14    # "responseMessage":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 721
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 738
    .end local v12    # "e":Ljava/io/IOException;
    .end local v14    # "responseMessage":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "WQE:ICD"

    const-string/jumbo v1, "ICD Parameter Request failed"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private parseIcdParamJsonRsp()V
    .locals 19

    .prologue
    .line 593
    const-string/jumbo v17, "WQE:ICD"

    const-string/jumbo v18, "parseIcdParamJsonRsp()"

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const/4 v12, 0x0

    .line 596
    .local v12, "jsonString":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .local v11, "jsonSB":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .line 599
    .local v7, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/ICDClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    .end local v7    # "in":Ljava/io/BufferedReader;
    .local v8, "in":Ljava/io/BufferedReader;
    const/4 v13, 0x0

    .line 602
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    .local v13, "line":Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 603
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 607
    .end local v13    # "line":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/io/IOException;
    move-object v7, v8

    .line 608
    .end local v8    # "in":Ljava/io/BufferedReader;
    :goto_1
    if-eqz v7, :cond_0

    .line 610
    :cond_0
    :try_start_2
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 613
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 621
    .end local v6    # "ex":Ljava/io/IOException;
    :goto_2
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 622
    .local v12, "jsonString":Ljava/lang/String;
    const-string/jumbo v17, "WQE:ICD"

    move-object/from16 v0, v17

    invoke-static {v0, v12}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/net/ParseException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 623
    const/4 v9, 0x0

    .line 626
    .local v9, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Landroid/net/ParseException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 627
    .local v10, "jsonObject":Lorg/json/JSONObject;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/quicinc/cne/ICDClient;->bssid:Ljava/lang/String;

    move-object/from16 v17, v0

    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v18, "bssid"

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 629
    const-string/jumbo v17, "WQE:ICD"

    const-string/jumbo v18, "Bssids match, ICD PASS"

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Landroid/net/ParseException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 646
    :try_start_7
    const-string/jumbo v17, "mbw"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/quicinc/cne/ICDClient;->mbw:I

    .line 647
    move-object/from16 v0, p0

    iget v0, v0, Lcom/quicinc/cne/ICDClient;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x10

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/quicinc/cne/ICDClient;->flags:I

    .line 648
    const-string/jumbo v17, "tput"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 649
    .local v16, "tput":Lorg/json/JSONObject;
    if-eqz v16, :cond_1

    .line 651
    const-string/jumbo v17, "dl"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/quicinc/cne/ICDClient;->dl:I

    .line 652
    move-object/from16 v0, p0

    iget v0, v0, Lcom/quicinc/cne/ICDClient;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x20

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/quicinc/cne/ICDClient;->flags:I

    .line 653
    const-string/jumbo v17, "sdev"

    invoke-virtual/range {v16 .. v17}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/quicinc/cne/ICDClient;->sdev:I

    .line 654
    move-object/from16 v0, p0

    iget v0, v0, Lcom/quicinc/cne/ICDClient;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x40

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/quicinc/cne/ICDClient;->flags:I

    .line 656
    :cond_1
    const-string/jumbo v17, "prob"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 657
    .local v14, "prob":Lorg/json/JSONObject;
    if-eqz v14, :cond_2

    .line 659
    const-string/jumbo v17, "icd"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/quicinc/cne/ICDClient;->icdProb:I

    .line 660
    move-object/from16 v0, p0

    iget v0, v0, Lcom/quicinc/cne/ICDClient;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/quicinc/cne/ICDClient;->flags:I

    .line 661
    const-string/jumbo v17, "bqe"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/quicinc/cne/ICDClient;->bqeProb:I

    .line 662
    move-object/from16 v0, p0

    iget v0, v0, Lcom/quicinc/cne/ICDClient;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x8

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/quicinc/cne/ICDClient;->flags:I

    .line 664
    :cond_2
    const-string/jumbo v17, "quota"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 665
    .local v15, "quota":Lorg/json/JSONObject;
    if-eqz v15, :cond_3

    .line 667
    const-string/jumbo v17, "icd"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/quicinc/cne/ICDClient;->icdQuota:I

    .line 668
    move-object/from16 v0, p0

    iget v0, v0, Lcom/quicinc/cne/ICDClient;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/quicinc/cne/ICDClient;->flags:I

    .line 669
    const-string/jumbo v17, "bqe"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/quicinc/cne/ICDClient;->bqeQuota:I

    .line 670
    move-object/from16 v0, p0

    iget v0, v0, Lcom/quicinc/cne/ICDClient;->flags:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/quicinc/cne/ICDClient;->flags:I
    :try_end_7
    .catch Landroid/net/ParseException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 592
    :cond_3
    return-void

    .line 606
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "prob":Lorg/json/JSONObject;
    .end local v15    # "quota":Lorg/json/JSONObject;
    .end local v16    # "tput":Lorg/json/JSONObject;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    .local v12, "jsonString":Ljava/lang/String;
    .restart local v13    # "line":Ljava/lang/String;
    :cond_4
    :try_start_8
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 613
    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :goto_3
    move-object v7, v8

    .end local v8    # "in":Ljava/io/BufferedReader;
    .local v7, "in":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 614
    .end local v7    # "in":Ljava/io/BufferedReader;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .line 615
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 614
    .end local v3    # "e":Ljava/io/IOException;
    .end local v8    # "in":Ljava/io/BufferedReader;
    .end local v13    # "line":Ljava/lang/String;
    .restart local v6    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 615
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 611
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 613
    :goto_4
    :try_start_a
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 611
    :goto_5
    throw v17

    .line 614
    :catch_3
    move-exception v3

    .line 615
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 633
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v10    # "jsonObject":Lorg/json/JSONObject;
    .local v12, "jsonString":Ljava/lang/String;
    :cond_5
    :try_start_b
    const-string/jumbo v17, "WQE:ICD"

    const-string/jumbo v18, "Received a mismatched bssid from the server in JSON response."

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CneMsg;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string/jumbo v17, "WQE:ICD"

    const-string/jumbo v18, "Interpreting as ICD FAILURE"

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    sget-object v17, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_FAILURE:Lcom/quicinc/cne/ICDClient$IcdResult;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/ICDClient;->icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 636
    new-instance v17, Ljava/lang/Exception;

    invoke-direct/range {v17 .. v17}, Ljava/lang/Exception;-><init>()V

    throw v17
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_4
    .catch Landroid/net/ParseException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 640
    :catch_4
    move-exception v5

    .local v5, "e":Lorg/json/JSONException;
    move-object v9, v10

    .line 641
    .end local v10    # "jsonObject":Lorg/json/JSONObject;
    :goto_6
    :try_start_c
    const-string/jumbo v17, "WQE:ICD"

    const-string/jumbo v18, "Didn\'t receive a JSON Object/bssid not present, possible captive portal"

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string/jumbo v17, "WQE:ICD"

    const-string/jumbo v18, "Interpreting as ICD FAILURE"

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    sget-object v17, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_FAILURE:Lcom/quicinc/cne/ICDClient$IcdResult;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/ICDClient;->icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 644
    new-instance v17, Ljava/lang/Exception;

    invoke-direct/range {v17 .. v17}, Ljava/lang/Exception;-><init>()V

    throw v17
    :try_end_c
    .catch Landroid/net/ParseException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 674
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v12    # "jsonString":Ljava/lang/String;
    :catch_5
    move-exception v2

    .line 675
    .local v2, "e":Landroid/net/ParseException;
    const-string/jumbo v17, "WQE:ICD"

    const-string/jumbo v18, "Ignoring Parse  Exception"

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-virtual {v2}, Landroid/net/ParseException;->printStackTrace()V

    .line 677
    return-void

    .line 694
    .end local v2    # "e":Landroid/net/ParseException;
    :catch_6
    move-exception v4

    .line 695
    .local v4, "e":Ljava/lang/Exception;
    return-void

    .line 688
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v5

    .line 689
    .restart local v5    # "e":Lorg/json/JSONException;
    const-string/jumbo v17, "WQE:ICD"

    const-string/jumbo v18, "Ignoring JSON Exception"

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    .line 691
    return-void

    .line 680
    .end local v5    # "e":Lorg/json/JSONException;
    :catch_8
    move-exception v3

    .line 681
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v17, "WQE:ICD"

    const-string/jumbo v18, "IO Exception"

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 683
    const-string/jumbo v17, "WQE:ICD"

    const-string/jumbo v18, "Interpreting as ICD TIMEOUT"

    invoke-static/range {v17 .. v18}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    sget-object v17, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_TIMEOUT:Lcom/quicinc/cne/ICDClient$IcdResult;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/quicinc/cne/ICDClient;->icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 685
    return-void

    .line 640
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    .restart local v12    # "jsonString":Ljava/lang/String;
    :catch_9
    move-exception v5

    .restart local v5    # "e":Lorg/json/JSONException;
    goto :goto_6

    .line 611
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    .local v12, "jsonString":Ljava/lang/String;
    :catchall_1
    move-exception v17

    move-object v7, v8

    .end local v8    # "in":Ljava/io/BufferedReader;
    .restart local v7    # "in":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 607
    .local v7, "in":Ljava/io/BufferedReader;
    :catch_a
    move-exception v6

    .restart local v6    # "ex":Ljava/io/IOException;
    goto/16 :goto_1
.end method

.method private setBssid()V
    .locals 8

    .prologue
    .line 477
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "setBssid()"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 480
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_0

    .line 482
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ":"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/quicinc/cne/ICDClient;->bssid:Ljava/lang/String;

    .line 483
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/quicinc/cne/ICDClient;->currentBSSID:Ljava/lang/String;

    .line 484
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    iput v4, p0, Lcom/quicinc/cne/ICDClient;->ipAddr:I

    .line 485
    const-string/jumbo v4, "WQE:ICD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Bssid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient;->bssid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " currentBSSID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient;->currentBSSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string/jumbo v4, "WQE:ICD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Passed BSSID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/quicinc/cne/ICDClient;->bssidPassed:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " and IPAddr ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcom/quicinc/cne/ICDClient;->ipAddr:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/quicinc/cne/ICDClient;->bssidList:Ljava/util/ArrayList;

    .line 494
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    .line 495
    .local v3, "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v3, :cond_1

    .line 496
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "wifi scan result is null"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    return-void

    .line 490
    .end local v3    # "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_0
    const-string/jumbo v4, "WQE:ICD"

    const-string/jumbo v5, "wifiMgr RemoteException returned NULL"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 500
    .restart local v3    # "wifiScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "result$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 501
    .local v0, "result":Landroid/net/wifi/ScanResult;
    if-eqz v0, :cond_2

    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 502
    :cond_2
    const-string/jumbo v4, "WQE:ICD"

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

    .line 505
    :cond_3
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient;->bssidList:Ljava/util/ArrayList;

    iget-object v5, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    const-string/jumbo v6, ":"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 507
    .end local v0    # "result":Landroid/net/wifi/ScanResult;
    :cond_4
    iget-object v4, p0, Lcom/quicinc/cne/ICDClient;->bssidList:Ljava/util/ArrayList;

    sget-object v5, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 476
    return-void
.end method

.method private setIcdParamClientReq()Ljava/lang/Boolean;
    .locals 15

    .prologue
    .line 511
    const-string/jumbo v12, "WQE:ICD"

    const-string/jumbo v13, "setIcdParamClientReq()"

    invoke-static {v12, v13}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v12, p0, Lcom/quicinc/cne/ICDClient;->bssid:Ljava/lang/String;

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/quicinc/cne/ICDClient;->currentBSSID:Ljava/lang/String;

    if-nez v12, :cond_1

    .line 515
    :cond_0
    const-string/jumbo v12, "WQE:ICD"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Failure :Bssid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/quicinc/cne/ICDClient;->bssid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " currentBSSID="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/quicinc/cne/ICDClient;->currentBSSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " passed BSSID="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/quicinc/cne/ICDClient;->bssidPassed:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    const-string/jumbo v12, "WQE:ICD"

    const-string/jumbo v13, "Interpreting as ICD_RESULT_PASS_NOT_STORE"

    invoke-static {v12, v13}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    sget-object v12, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_PASS_NOT_STORE:Lcom/quicinc/cne/ICDClient$IcdResult;

    iput-object v12, p0, Lcom/quicinc/cne/ICDClient;->icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 518
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    return-object v12

    .line 513
    :cond_1
    iget-object v12, p0, Lcom/quicinc/cne/ICDClient;->bssidPassed:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 521
    iget-object v12, p0, Lcom/quicinc/cne/ICDClient;->currentBSSID:Ljava/lang/String;

    iget-object v13, p0, Lcom/quicinc/cne/ICDClient;->bssidPassed:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 523
    const-string/jumbo v12, "WQE:ICD"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Failure :currentBSSID="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/quicinc/cne/ICDClient;->currentBSSID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " passed BSSID="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/quicinc/cne/ICDClient;->bssidPassed:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const-string/jumbo v12, "WQE:ICD"

    const-string/jumbo v13, "Interpreting as ICD_RESULT_PASS_NOT_STORE"

    invoke-static {v12, v13}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    sget-object v12, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_PASS_NOT_STORE:Lcom/quicinc/cne/ICDClient$IcdResult;

    iput-object v12, p0, Lcom/quicinc/cne/ICDClient;->icdParamReqResult:Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 526
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    return-object v12

    .line 529
    :cond_2
    const/4 v7, 0x0

    .line 530
    .local v7, "numBssidAdded":I
    const/4 v6, 0x0

    .line 531
    .local v6, "np":Ljava/lang/String;
    const/4 v8, 0x0

    .line 532
    .local v8, "nx":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const/16 v12, 0x80

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 533
    .local v11, "tmp1":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 535
    .local v5, "len":I
    iget-object v12, p0, Lcom/quicinc/cne/ICDClient;->bssidList:Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v6    # "np":Ljava/lang/String;
    .local v10, "str$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 536
    .local v9, "str":Ljava/lang/String;
    const-string/jumbo v12, "WQE:ICD"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "currentbssid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/quicinc/cne/ICDClient;->bssid:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ",nbssid:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v12, p0, Lcom/quicinc/cne/ICDClient;->bssid:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 541
    const/4 v12, 0x1

    if-lt v7, v12, :cond_5

    const/4 v12, 0x4

    if-ge v7, v12, :cond_5

    .line 542
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v5, v12

    .line 543
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    const/4 v12, 0x3

    if-eq v7, v12, :cond_4

    .line 545
    const-string/jumbo v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    add-int/lit8 v5, v5, 0x1

    .line 548
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 551
    :cond_5
    if-nez v7, :cond_3

    .line 552
    move-object v6, v9

    .line 553
    .local v6, "np":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 557
    .end local v6    # "np":Ljava/lang/String;
    .end local v9    # "str":Ljava/lang/String;
    :cond_6
    const/4 v12, 0x0

    invoke-virtual {v11, v12, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 560
    .local v8, "nx":Ljava/lang/String;
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/quicinc/cne/ICDClient;->uri:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "?bssid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/quicinc/cne/ICDClient;->bssid:Ljava/lang/String;

    const-string/jumbo v14, "UTF-8"

    invoke-static {v13, v14}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "UrlString":Ljava/lang/String;
    if-eqz v6, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "&np="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "UTF-8"

    invoke-static {v6, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 562
    :cond_7
    if-eqz v8, :cond_8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "&nx="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "UTF-8"

    invoke-static {v8, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    :cond_8
    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v12, p0, Lcom/quicinc/cne/ICDClient;->httpsUrl:Ljava/net/URL;

    .line 564
    const-string/jumbo v12, "WQE:ICD"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "created url object with url = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/quicinc/cne/ICDClient;->httpsUrl:Ljava/net/URL;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    :try_start_1
    iget-object v12, p0, Lcom/quicinc/cne/ICDClient;->httpsUrl:Ljava/net/URL;

    invoke-virtual {v12}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v12

    check-cast v12, Ljavax/net/ssl/HttpsURLConnection;

    iput-object v12, p0, Lcom/quicinc/cne/ICDClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 581
    :try_start_2
    iget-object v12, p0, Lcom/quicinc/cne/ICDClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    const-string/jumbo v13, "GET"

    invoke-virtual {v12, v13}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_3

    .line 587
    iget-object v12, p0, Lcom/quicinc/cne/ICDClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    const-string/jumbo v13, "Accept-Encoding"

    const-string/jumbo v14, "gzip;q=0,deflate;q=0"

    invoke-virtual {v12, v13, v14}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v12, p0, Lcom/quicinc/cne/ICDClient;->sconn:Ljavax/net/ssl/HttpsURLConnection;

    const-string/jumbo v13, "Cache-Control"

    const-string/jumbo v14, "no-cache"

    invoke-virtual {v12, v13, v14}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    return-object v12

    .line 568
    .end local v0    # "UrlString":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 569
    .local v2, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 570
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    return-object v12

    .line 565
    .end local v2    # "ex":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v3

    .line 566
    .local v3, "ex":Ljava/net/MalformedURLException;
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 567
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    return-object v12

    .line 575
    .end local v3    # "ex":Ljava/net/MalformedURLException;
    .restart local v0    # "UrlString":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 576
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 577
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    return-object v12

    .line 582
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 583
    .local v4, "ex":Ljava/net/ProtocolException;
    invoke-virtual {v4}, Ljava/net/ProtocolException;->printStackTrace()V

    .line 584
    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    return-object v12
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 748
    const-string/jumbo v0, "WQE:ICD"

    const-string/jumbo v1, "ICDClient thread started"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CneMsg;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    invoke-direct {p0}, Lcom/quicinc/cne/ICDClient;->setIcdParamClientReq()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    invoke-direct {p0}, Lcom/quicinc/cne/ICDClient;->parseIcdParamClientRsp()V

    .line 747
    :cond_0
    return-void
.end method
