.class public final Lcom/quicinc/cne/Native$QuotaInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuotaInfo"
.end annotation


# static fields
.field public static final ISQUOTAREACHED_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasIsQuotaReached:Z

.field private isQuotaReached_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 463
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->isQuotaReached_:I

    .line 495
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->cachedSize:I

    .line 458
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$QuotaInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 547
    new-instance v0, Lcom/quicinc/cne/Native$QuotaInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$QuotaInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$QuotaInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$QuotaInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$QuotaInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 541
    new-instance v0, Lcom/quicinc/cne/Native$QuotaInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$QuotaInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$QuotaInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$QuotaInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$QuotaInfo;
    .locals 1

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$QuotaInfo;->clearIsQuotaReached()Lcom/quicinc/cne/Native$QuotaInfo;

    .line 479
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->cachedSize:I

    .line 480
    return-object p0
.end method

.method public clearIsQuotaReached()Lcom/quicinc/cne/Native$QuotaInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 472
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->hasIsQuotaReached:Z

    .line 473
    iput v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->isQuotaReached_:I

    .line 474
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$QuotaInfo;->getSerializedSize()I

    .line 502
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->cachedSize:I

    return v0
.end method

.method public getIsQuotaReached()I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->isQuotaReached_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 507
    const/4 v0, 0x0

    .line 508
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$QuotaInfo;->hasIsQuotaReached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$QuotaInfo;->getIsQuotaReached()I

    move-result v1

    const/4 v2, 0x1

    .line 509
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 512
    :cond_0
    iput v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->cachedSize:I

    .line 513
    return v0
.end method

.method public hasIsQuotaReached()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->hasIsQuotaReached:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 484
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
    .line 517
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$QuotaInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$QuotaInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$QuotaInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 521
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 522
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 526
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$QuotaInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 527
    return-object p0

    .line 524
    :sswitch_0
    return-object p0

    .line 532
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$QuotaInfo;->setIsQuotaReached(I)Lcom/quicinc/cne/Native$QuotaInfo;

    goto :goto_0

    .line 522
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setIsQuotaReached(I)Lcom/quicinc/cne/Native$QuotaInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$QuotaInfo;->hasIsQuotaReached:Z

    .line 468
    iput p1, p0, Lcom/quicinc/cne/Native$QuotaInfo;->isQuotaReached_:I

    .line 469
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
    .line 490
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$QuotaInfo;->hasIsQuotaReached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$QuotaInfo;->getIsQuotaReached()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 489
    :cond_0
    return-void
.end method
