.class public final Lcom/quicinc/cne/Native$VendorType;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VendorType"
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x3

.field public static final LENGTH_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private data_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private hasData:Z

.field private hasLength:Z

.field private length_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3443
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3448
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$VendorType;->length_:I

    .line 3465
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/quicinc/cne/Native$VendorType;->data_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 3501
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$VendorType;->cachedSize:I

    .line 3443
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$VendorType;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3561
    new-instance v0, Lcom/quicinc/cne/Native$VendorType;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$VendorType;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$VendorType;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$VendorType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$VendorType;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3555
    new-instance v0, Lcom/quicinc/cne/Native$VendorType;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$VendorType;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$VendorType;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$VendorType;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$VendorType;
    .locals 1

    .prologue
    .line 3480
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->clearLength()Lcom/quicinc/cne/Native$VendorType;

    .line 3481
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->clearData()Lcom/quicinc/cne/Native$VendorType;

    .line 3482
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$VendorType;->cachedSize:I

    .line 3483
    return-object p0
.end method

.method public clearData()Lcom/quicinc/cne/Native$VendorType;
    .locals 1

    .prologue
    .line 3474
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$VendorType;->hasData:Z

    .line 3475
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/quicinc/cne/Native$VendorType;->data_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 3476
    return-object p0
.end method

.method public clearLength()Lcom/quicinc/cne/Native$VendorType;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3457
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$VendorType;->hasLength:Z

    .line 3458
    iput v0, p0, Lcom/quicinc/cne/Native$VendorType;->length_:I

    .line 3459
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3504
    iget v0, p0, Lcom/quicinc/cne/Native$VendorType;->cachedSize:I

    if-gez v0, :cond_0

    .line 3506
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->getSerializedSize()I

    .line 3508
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$VendorType;->cachedSize:I

    return v0
.end method

.method public getData()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 3466
    iget-object v0, p0, Lcom/quicinc/cne/Native$VendorType;->data_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 3449
    iget v0, p0, Lcom/quicinc/cne/Native$VendorType;->length_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3513
    const/4 v0, 0x0

    .line 3514
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->hasLength()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3516
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->getLength()I

    move-result v1

    const/4 v2, 0x2

    .line 3515
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 3518
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->hasData()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3520
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->getData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    const/4 v2, 0x3

    .line 3519
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3522
    :cond_1
    iput v0, p0, Lcom/quicinc/cne/Native$VendorType;->cachedSize:I

    .line 3523
    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 3467
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$VendorType;->hasData:Z

    return v0
.end method

.method public hasLength()Z
    .locals 1

    .prologue
    .line 3450
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$VendorType;->hasLength:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3487
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
    .line 3527
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$VendorType;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$VendorType;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$VendorType;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3531
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3532
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3536
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$VendorType;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3537
    return-object p0

    .line 3534
    :sswitch_0
    return-object p0

    .line 3542
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$VendorType;->setLength(I)Lcom/quicinc/cne/Native$VendorType;

    goto :goto_0

    .line 3546
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$VendorType;->setData(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/quicinc/cne/Native$VendorType;

    goto :goto_0

    .line 3532
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_1
        0x1a -> :sswitch_2
    .end sparse-switch
.end method

.method public setData(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/quicinc/cne/Native$VendorType;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .prologue
    .line 3469
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$VendorType;->hasData:Z

    .line 3470
    iput-object p1, p0, Lcom/quicinc/cne/Native$VendorType;->data_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 3471
    return-object p0
.end method

.method public setLength(I)Lcom/quicinc/cne/Native$VendorType;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$VendorType;->hasLength:Z

    .line 3453
    iput p1, p0, Lcom/quicinc/cne/Native$VendorType;->length_:I

    .line 3454
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
    .line 3493
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->hasLength()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3494
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->getLength()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3496
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3497
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$VendorType;->getData()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 3492
    :cond_1
    return-void
.end method
