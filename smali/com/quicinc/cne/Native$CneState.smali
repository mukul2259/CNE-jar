.class public final Lcom/quicinc/cne/Native$CneState;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CneState"
.end annotation


# static fields
.field public static final STATE_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasState:Z

.field private hasType:Z

.field private state_:I

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2310
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2315
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneState;->type_:I

    .line 2332
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$CneState;->state_:I

    .line 2368
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneState;->cachedSize:I

    .line 2310
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneState;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2428
    new-instance v0, Lcom/quicinc/cne/Native$CneState;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$CneState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$CneState;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneState;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$CneState;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2422
    new-instance v0, Lcom/quicinc/cne/Native$CneState;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$CneState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$CneState;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$CneState;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$CneState;
    .locals 1

    .prologue
    .line 2347
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->clearType()Lcom/quicinc/cne/Native$CneState;

    .line 2348
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->clearState()Lcom/quicinc/cne/Native$CneState;

    .line 2349
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneState;->cachedSize:I

    .line 2350
    return-object p0
.end method

.method public clearState()Lcom/quicinc/cne/Native$CneState;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2341
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneState;->hasState:Z

    .line 2342
    iput v0, p0, Lcom/quicinc/cne/Native$CneState;->state_:I

    .line 2343
    return-object p0
.end method

.method public clearType()Lcom/quicinc/cne/Native$CneState;
    .locals 1

    .prologue
    .line 2324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneState;->hasType:Z

    .line 2325
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneState;->type_:I

    .line 2326
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2371
    iget v0, p0, Lcom/quicinc/cne/Native$CneState;->cachedSize:I

    if-gez v0, :cond_0

    .line 2373
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->getSerializedSize()I

    .line 2375
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$CneState;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2380
    const/4 v0, 0x0

    .line 2381
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->hasType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2383
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->getType()I

    move-result v1

    const/4 v2, 0x1

    .line 2382
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 2385
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->hasState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2387
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->getState()I

    move-result v1

    const/4 v2, 0x2

    .line 2386
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2389
    :cond_1
    iput v0, p0, Lcom/quicinc/cne/Native$CneState;->cachedSize:I

    .line 2390
    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 2333
    iget v0, p0, Lcom/quicinc/cne/Native$CneState;->state_:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 2317
    iget v0, p0, Lcom/quicinc/cne/Native$CneState;->type_:I

    return v0
.end method

.method public hasState()Z
    .locals 1

    .prologue
    .line 2334
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CneState;->hasState:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 2316
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CneState;->hasType:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2354
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
    .line 2394
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$CneState;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneState;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneState;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2398
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2399
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2403
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$CneState;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2404
    return-object p0

    .line 2401
    :sswitch_0
    return-object p0

    .line 2409
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$CneState;->setType(I)Lcom/quicinc/cne/Native$CneState;

    goto :goto_0

    .line 2413
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$CneState;->setState(I)Lcom/quicinc/cne/Native$CneState;

    goto :goto_0

    .line 2399
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setState(I)Lcom/quicinc/cne/Native$CneState;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneState;->hasState:Z

    .line 2337
    iput p1, p0, Lcom/quicinc/cne/Native$CneState;->state_:I

    .line 2338
    return-object p0
.end method

.method public setType(I)Lcom/quicinc/cne/Native$CneState;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneState;->hasType:Z

    .line 2320
    iput p1, p0, Lcom/quicinc/cne/Native$CneState;->type_:I

    .line 2321
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
    .line 2360
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->hasType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2361
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->getType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2363
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->hasState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2364
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneState;->getState()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2359
    :cond_1
    return-void
.end method
