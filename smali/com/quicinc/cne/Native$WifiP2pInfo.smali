.class public final Lcom/quicinc/cne/Native$WifiP2pInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiP2pInfo"
.end annotation


# static fields
.field public static final CURRSTATE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private currState_:I

.field private hasCurrState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1311
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1316
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$WifiP2pInfo;->currState_:I

    .line 1348
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WifiP2pInfo;->cachedSize:I

    .line 1311
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WifiP2pInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1400
    new-instance v0, Lcom/quicinc/cne/Native$WifiP2pInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WifiP2pInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WifiP2pInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WifiP2pInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$WifiP2pInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1394
    new-instance v0, Lcom/quicinc/cne/Native$WifiP2pInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WifiP2pInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WifiP2pInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$WifiP2pInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$WifiP2pInfo;
    .locals 1

    .prologue
    .line 1331
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiP2pInfo;->clearCurrState()Lcom/quicinc/cne/Native$WifiP2pInfo;

    .line 1332
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WifiP2pInfo;->cachedSize:I

    .line 1333
    return-object p0
.end method

.method public clearCurrState()Lcom/quicinc/cne/Native$WifiP2pInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1325
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WifiP2pInfo;->hasCurrState:Z

    .line 1326
    iput v0, p0, Lcom/quicinc/cne/Native$WifiP2pInfo;->currState_:I

    .line 1327
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1351
    iget v0, p0, Lcom/quicinc/cne/Native$WifiP2pInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 1353
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiP2pInfo;->getSerializedSize()I

    .line 1355
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$WifiP2pInfo;->cachedSize:I

    return v0
.end method

.method public getCurrState()I
    .locals 1

    .prologue
    .line 1317
    iget v0, p0, Lcom/quicinc/cne/Native$WifiP2pInfo;->currState_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1360
    const/4 v0, 0x0

    .line 1361
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiP2pInfo;->hasCurrState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1363
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiP2pInfo;->getCurrState()I

    move-result v1

    const/4 v2, 0x1

    .line 1362
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 1365
    :cond_0
    iput v0, p0, Lcom/quicinc/cne/Native$WifiP2pInfo;->cachedSize:I

    .line 1366
    return v0
.end method

.method public hasCurrState()Z
    .locals 1

    .prologue
    .line 1318
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WifiP2pInfo;->hasCurrState:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1337
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1370
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$WifiP2pInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WifiP2pInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WifiP2pInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1374
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1375
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1379
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$WifiP2pInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1380
    return-object p0

    .line 1377
    :sswitch_0
    return-object p0

    .line 1385
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WifiP2pInfo;->setCurrState(I)Lcom/quicinc/cne/Native$WifiP2pInfo;

    goto :goto_0

    .line 1375
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setCurrState(I)Lcom/quicinc/cne/Native$WifiP2pInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WifiP2pInfo;->hasCurrState:Z

    .line 1321
    iput p1, p0, Lcom/quicinc/cne/Native$WifiP2pInfo;->currState_:I

    .line 1322
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1343
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiP2pInfo;->hasCurrState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiP2pInfo;->getCurrState()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1342
    :cond_0
    return-void
.end method
