.class public final Lcom/quicinc/cne/Native$WqeResultInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WqeResultInfo"
.end annotation


# static fields
.field public static final REASON_FIELD_NUMBER:I = 0x2

.field public static final WLANQUALITY_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasReason:Z

.field private hasWlanquality:Z

.field private reason_:I

.field private wlanquality_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6296
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6301
    iput v0, p0, Lcom/quicinc/cne/Native$WqeResultInfo;->wlanquality_:I

    .line 6318
    iput v0, p0, Lcom/quicinc/cne/Native$WqeResultInfo;->reason_:I

    .line 6354
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WqeResultInfo;->cachedSize:I

    .line 6296
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WqeResultInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6414
    new-instance v0, Lcom/quicinc/cne/Native$WqeResultInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WqeResultInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WqeResultInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WqeResultInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$WqeResultInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 6408
    new-instance v0, Lcom/quicinc/cne/Native$WqeResultInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WqeResultInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WqeResultInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$WqeResultInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$WqeResultInfo;
    .locals 1

    .prologue
    .line 6333
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WqeResultInfo;->clearWlanquality()Lcom/quicinc/cne/Native$WqeResultInfo;

    .line 6334
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WqeResultInfo;->clearReason()Lcom/quicinc/cne/Native$WqeResultInfo;

    .line 6335
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WqeResultInfo;->cachedSize:I

    .line 6336
    return-object p0
.end method

.method public clearReason()Lcom/quicinc/cne/Native$WqeResultInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6327
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WqeResultInfo;->hasReason:Z

    .line 6328
    iput v0, p0, Lcom/quicinc/cne/Native$WqeResultInfo;->reason_:I

    .line 6329
    return-object p0
.end method

.method public clearWlanquality()Lcom/quicinc/cne/Native$WqeResultInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6310
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WqeResultInfo;->hasWlanquality:Z

    .line 6311
    iput v0, p0, Lcom/quicinc/cne/Native$WqeResultInfo;->wlanquality_:I

    .line 6312
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6357
    iget v0, p0, Lcom/quicinc/cne/Native$WqeResultInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 6359
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WqeResultInfo;->getSerializedSize()I

    .line 6361
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$WqeResultInfo;->cachedSize:I

    return v0
.end method

.method public getReason()I
    .locals 1

    .prologue
    .line 6320
    iget v0, p0, Lcom/quicinc/cne/Native$WqeResultInfo;->reason_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6366
    const/4 v0, 0x0

    .line 6367
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WqeResultInfo;->hasWlanquality()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6369
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WqeResultInfo;->getWlanquality()I

    move-result v1

    const/4 v2, 0x1

    .line 6368
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 6371
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WqeResultInfo;->hasReason()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6373
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WqeResultInfo;->getReason()I

    move-result v1

    const/4 v2, 0x2

    .line 6372
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6375
    :cond_1
    iput v0, p0, Lcom/quicinc/cne/Native$WqeResultInfo;->cachedSize:I

    .line 6376
    return v0
.end method

.method public getWlanquality()I
    .locals 1

    .prologue
    .line 6303
    iget v0, p0, Lcom/quicinc/cne/Native$WqeResultInfo;->wlanquality_:I

    return v0
.end method

.method public hasReason()Z
    .locals 1

    .prologue
    .line 6319
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WqeResultInfo;->hasReason:Z

    return v0
.end method

.method public hasWlanquality()Z
    .locals 1

    .prologue
    .line 6302
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WqeResultInfo;->hasWlanquality:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6340
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
    .line 6380
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$WqeResultInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WqeResultInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WqeResultInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6384
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6385
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6389
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$WqeResultInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6390
    return-object p0

    .line 6387
    :sswitch_0
    return-object p0

    .line 6395
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WqeResultInfo;->setWlanquality(I)Lcom/quicinc/cne/Native$WqeResultInfo;

    goto :goto_0

    .line 6399
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WqeResultInfo;->setReason(I)Lcom/quicinc/cne/Native$WqeResultInfo;

    goto :goto_0

    .line 6385
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setReason(I)Lcom/quicinc/cne/Native$WqeResultInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WqeResultInfo;->hasReason:Z

    .line 6323
    iput p1, p0, Lcom/quicinc/cne/Native$WqeResultInfo;->reason_:I

    .line 6324
    return-object p0
.end method

.method public setWlanquality(I)Lcom/quicinc/cne/Native$WqeResultInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WqeResultInfo;->hasWlanquality:Z

    .line 6306
    iput p1, p0, Lcom/quicinc/cne/Native$WqeResultInfo;->wlanquality_:I

    .line 6307
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
    .line 6346
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WqeResultInfo;->hasWlanquality()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6347
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WqeResultInfo;->getWlanquality()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6349
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WqeResultInfo;->hasReason()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6350
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WqeResultInfo;->getReason()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6345
    :cond_1
    return-void
.end method
