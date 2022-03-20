.class public Lcom/quicinc/cne/CNERequest;
.super Ljava/lang/Object;
.source "CNERequest.java"


# static fields
.field private static final MAX_POOL_SIZE:I = 0x4

.field private static final SUB_TYPE:Ljava/lang/String; = "CORE:COM"

.field static sNextSerial:I

.field private static sPool:Lcom/quicinc/cne/CNERequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sSerialMonitor:Ljava/lang/Object;


# instance fields
.field mData:[B

.field mNext:Lcom/quicinc/cne/CNERequest;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    sput v1, Lcom/quicinc/cne/CNERequest;->sNextSerial:I

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/quicinc/cne/CNERequest;->sSerialMonitor:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/quicinc/cne/CNERequest;->sPoolSync:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/quicinc/cne/CNERequest;->sPool:Lcom/quicinc/cne/CNERequest;

    .line 42
    sput v1, Lcom/quicinc/cne/CNERequest;->sPoolSize:I

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method static obtain(I)Lcom/quicinc/cne/CNERequest;
    .locals 4
    .param p0, "request"    # I

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 64
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    sget-object v2, Lcom/quicinc/cne/CNERequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 65
    :try_start_0
    sget-object v1, Lcom/quicinc/cne/CNERequest;->sPool:Lcom/quicinc/cne/CNERequest;

    if-eqz v1, :cond_0

    .line 66
    sget-object v0, Lcom/quicinc/cne/CNERequest;->sPool:Lcom/quicinc/cne/CNERequest;

    .line 67
    .local v0, "rr":Lcom/quicinc/cne/CNERequest;
    iget-object v1, v0, Lcom/quicinc/cne/CNERequest;->mNext:Lcom/quicinc/cne/CNERequest;

    sput-object v1, Lcom/quicinc/cne/CNERequest;->sPool:Lcom/quicinc/cne/CNERequest;

    .line 68
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/quicinc/cne/CNERequest;->mNext:Lcom/quicinc/cne/CNERequest;

    .line 69
    sget v1, Lcom/quicinc/cne/CNERequest;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/quicinc/cne/CNERequest;->sPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "rr":Lcom/quicinc/cne/CNERequest;
    :cond_0
    monitor-exit v2

    .line 73
    if-nez v0, :cond_1

    .line 74
    new-instance v0, Lcom/quicinc/cne/CNERequest;

    invoke-direct {v0}, Lcom/quicinc/cne/CNERequest;-><init>()V

    .line 77
    :cond_1
    sget-object v2, Lcom/quicinc/cne/CNERequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v2

    .line 78
    :try_start_1
    sget v1, Lcom/quicinc/cne/CNERequest;->sNextSerial:I

    add-int/lit8 v3, v1, 0x1

    sput v3, Lcom/quicinc/cne/CNERequest;->sNextSerial:I

    iput v1, v0, Lcom/quicinc/cne/CNERequest;->mSerial:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    .line 81
    iput p0, v0, Lcom/quicinc/cne/CNERequest;->mRequest:I

    .line 83
    return-object v0

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 77
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static resetSerial()V
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/quicinc/cne/CNERequest;->sSerialMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    const/4 v1, 0x0

    :try_start_0
    sput v1, Lcom/quicinc/cne/CNERequest;->sNextSerial:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 105
    return-void

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method onError(I)V
    .locals 0
    .param p1, "error"    # I

    .prologue
    .line 130
    return-void
.end method

.method release()V
    .locals 3

    .prologue
    .line 92
    sget-object v1, Lcom/quicinc/cne/CNERequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_0
    sget v0, Lcom/quicinc/cne/CNERequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 94
    sget-object v0, Lcom/quicinc/cne/CNERequest;->sPool:Lcom/quicinc/cne/CNERequest;

    iput-object v0, p0, Lcom/quicinc/cne/CNERequest;->mNext:Lcom/quicinc/cne/CNERequest;

    .line 95
    sput-object p0, Lcom/quicinc/cne/CNERequest;->sPool:Lcom/quicinc/cne/CNERequest;

    .line 96
    sget v0, Lcom/quicinc/cne/CNERequest;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/quicinc/cne/CNERequest;->sPoolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 91
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method serialString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 113
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x8

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 116
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget v4, p0, Lcom/quicinc/cne/CNERequest;->mSerial:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "sn":Ljava/lang/String;
    const/16 v4, 0x5b

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "s":I
    :goto_0
    rsub-int/lit8 v4, v1, 0x4

    if-ge v0, v4, :cond_0

    .line 121
    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const/16 v4, 0x5d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
