.class public final Lcom/quicinc/cne/Native$WwanSubtypeInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WwanSubtypeInfo"
.end annotation


# static fields
.field public static final SUBTYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasSubtype:Z

.field private subtype_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 361
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 366
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->subtype_:I

    .line 398
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->cachedSize:I

    .line 361
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WwanSubtypeInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    new-instance v0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WwanSubtypeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$WwanSubtypeInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 444
    new-instance v0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$WwanSubtypeInfo;
    .locals 1

    .prologue
    .line 381
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->clearSubtype()Lcom/quicinc/cne/Native$WwanSubtypeInfo;

    .line 382
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->cachedSize:I

    .line 383
    return-object p0
.end method

.method public clearSubtype()Lcom/quicinc/cne/Native$WwanSubtypeInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 375
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->hasSubtype:Z

    .line 376
    iput v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->subtype_:I

    .line 377
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 401
    iget v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->getSerializedSize()I

    .line 405
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 410
    const/4 v0, 0x0

    .line 411
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->hasSubtype()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->getSubtype()I

    move-result v1

    const/4 v2, 0x1

    .line 412
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 415
    :cond_0
    iput v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->cachedSize:I

    .line 416
    return v0
.end method

.method public getSubtype()I
    .locals 1

    .prologue
    .line 368
    iget v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->subtype_:I

    return v0
.end method

.method public hasSubtype()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->hasSubtype:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 387
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
    .line 420
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WwanSubtypeInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WwanSubtypeInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 425
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 429
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 430
    return-object p0

    .line 427
    :sswitch_0
    return-object p0

    .line 435
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->setSubtype(I)Lcom/quicinc/cne/Native$WwanSubtypeInfo;

    goto :goto_0

    .line 425
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setSubtype(I)Lcom/quicinc/cne/Native$WwanSubtypeInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->hasSubtype:Z

    .line 371
    iput p1, p0, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->subtype_:I

    .line 372
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
    .line 393
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->hasSubtype()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanSubtypeInfo;->getSubtype()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 392
    :cond_0
    return-void
.end method
