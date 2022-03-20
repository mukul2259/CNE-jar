.class public final Lcom/quicinc/cne/Native$WifiApInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WifiApInfo"
.end annotation


# static fields
.field public static final CURRSTATE_FIELD_NUMBER:I = 0x1

.field public static final PREVSTATE_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private currState_:I

.field private hasCurrState:Z

.field private hasPrevState:Z

.field private prevState_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1185
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1190
    iput v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->currState_:I

    .line 1207
    iput v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->prevState_:I

    .line 1243
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->cachedSize:I

    .line 1185
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WifiApInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1303
    new-instance v0, Lcom/quicinc/cne/Native$WifiApInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WifiApInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WifiApInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WifiApInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$WifiApInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1297
    new-instance v0, Lcom/quicinc/cne/Native$WifiApInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WifiApInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WifiApInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$WifiApInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$WifiApInfo;
    .locals 1

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->clearCurrState()Lcom/quicinc/cne/Native$WifiApInfo;

    .line 1223
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->clearPrevState()Lcom/quicinc/cne/Native$WifiApInfo;

    .line 1224
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->cachedSize:I

    .line 1225
    return-object p0
.end method

.method public clearCurrState()Lcom/quicinc/cne/Native$WifiApInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1199
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->hasCurrState:Z

    .line 1200
    iput v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->currState_:I

    .line 1201
    return-object p0
.end method

.method public clearPrevState()Lcom/quicinc/cne/Native$WifiApInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1216
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->hasPrevState:Z

    .line 1217
    iput v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->prevState_:I

    .line 1218
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1246
    iget v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 1248
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->getSerializedSize()I

    .line 1250
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->cachedSize:I

    return v0
.end method

.method public getCurrState()I
    .locals 1

    .prologue
    .line 1191
    iget v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->currState_:I

    return v0
.end method

.method public getPrevState()I
    .locals 1

    .prologue
    .line 1208
    iget v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->prevState_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1255
    const/4 v0, 0x0

    .line 1256
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->hasCurrState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1258
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->getCurrState()I

    move-result v1

    const/4 v2, 0x1

    .line 1257
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 1260
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->hasPrevState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1262
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->getPrevState()I

    move-result v1

    const/4 v2, 0x2

    .line 1261
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1264
    :cond_1
    iput v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->cachedSize:I

    .line 1265
    return v0
.end method

.method public hasCurrState()Z
    .locals 1

    .prologue
    .line 1192
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->hasCurrState:Z

    return v0
.end method

.method public hasPrevState()Z
    .locals 1

    .prologue
    .line 1209
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->hasPrevState:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1229
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
    .line 1269
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$WifiApInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WifiApInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WifiApInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1273
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1274
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1278
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$WifiApInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1279
    return-object p0

    .line 1276
    :sswitch_0
    return-object p0

    .line 1284
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WifiApInfo;->setCurrState(I)Lcom/quicinc/cne/Native$WifiApInfo;

    goto :goto_0

    .line 1288
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WifiApInfo;->setPrevState(I)Lcom/quicinc/cne/Native$WifiApInfo;

    goto :goto_0

    .line 1274
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setCurrState(I)Lcom/quicinc/cne/Native$WifiApInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->hasCurrState:Z

    .line 1195
    iput p1, p0, Lcom/quicinc/cne/Native$WifiApInfo;->currState_:I

    .line 1196
    return-object p0
.end method

.method public setPrevState(I)Lcom/quicinc/cne/Native$WifiApInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WifiApInfo;->hasPrevState:Z

    .line 1212
    iput p1, p0, Lcom/quicinc/cne/Native$WifiApInfo;->prevState_:I

    .line 1213
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
    .line 1235
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->hasCurrState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1236
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->getCurrState()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1238
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->hasPrevState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1239
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WifiApInfo;->getPrevState()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1234
    :cond_1
    return-void
.end method
