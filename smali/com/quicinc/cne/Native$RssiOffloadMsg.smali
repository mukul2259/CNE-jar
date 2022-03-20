.class public final Lcom/quicinc/cne/Native$RssiOffloadMsg;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RssiOffloadMsg"
.end annotation


# static fields
.field public static final OPERATORNAME_FIELD_NUMBER:I = 0x2

.field public static final PROFILENAME_FIELD_NUMBER:I = 0x1

.field public static final RSSIHIGH_FIELD_NUMBER:I = 0x3

.field public static final RSSILOW_FIELD_NUMBER:I = 0x4


# instance fields
.field private cachedSize:I

.field private hasOperatorName:Z

.field private hasProfileName:Z

.field private hasRssiHigh:Z

.field private hasRssiLow:Z

.field private operatorName_:Ljava/lang/String;

.field private profileName_:Ljava/lang/String;

.field private rssiHigh_:I

.field private rssiLow_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5274
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5279
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->profileName_:Ljava/lang/String;

    .line 5296
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->operatorName_:Ljava/lang/String;

    .line 5313
    iput v1, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->rssiHigh_:I

    .line 5330
    iput v1, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->rssiLow_:I

    .line 5374
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->cachedSize:I

    .line 5274
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5450
    new-instance v0, Lcom/quicinc/cne/Native$RssiOffloadMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RssiOffloadMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5444
    new-instance v0, Lcom/quicinc/cne/Native$RssiOffloadMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$RssiOffloadMsg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1

    .prologue
    .line 5345
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->clearProfileName()Lcom/quicinc/cne/Native$RssiOffloadMsg;

    .line 5346
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->clearOperatorName()Lcom/quicinc/cne/Native$RssiOffloadMsg;

    .line 5347
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->clearRssiHigh()Lcom/quicinc/cne/Native$RssiOffloadMsg;

    .line 5348
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->clearRssiLow()Lcom/quicinc/cne/Native$RssiOffloadMsg;

    .line 5349
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->cachedSize:I

    .line 5350
    return-object p0
.end method

.method public clearOperatorName()Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1

    .prologue
    .line 5305
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasOperatorName:Z

    .line 5306
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->operatorName_:Ljava/lang/String;

    .line 5307
    return-object p0
.end method

.method public clearProfileName()Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1

    .prologue
    .line 5288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasProfileName:Z

    .line 5289
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->profileName_:Ljava/lang/String;

    .line 5290
    return-object p0
.end method

.method public clearRssiHigh()Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5322
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiHigh:Z

    .line 5323
    iput v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->rssiHigh_:I

    .line 5324
    return-object p0
.end method

.method public clearRssiLow()Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5339
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiLow:Z

    .line 5340
    iput v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->rssiLow_:I

    .line 5341
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5377
    iget v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 5379
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getSerializedSize()I

    .line 5381
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->cachedSize:I

    return v0
.end method

.method public getOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5297
    iget-object v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->operatorName_:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5280
    iget-object v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->profileName_:Ljava/lang/String;

    return-object v0
.end method

.method public getRssiHigh()I
    .locals 1

    .prologue
    .line 5314
    iget v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->rssiHigh_:I

    return v0
.end method

.method public getRssiLow()I
    .locals 1

    .prologue
    .line 5331
    iget v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->rssiLow_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5386
    const/4 v0, 0x0

    .line 5387
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasProfileName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5389
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getProfileName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 5388
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 5391
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasOperatorName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5393
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 5392
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5395
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiHigh()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5397
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getRssiHigh()I

    move-result v1

    const/4 v2, 0x3

    .line 5396
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5399
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiLow()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5401
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getRssiLow()I

    move-result v1

    const/4 v2, 0x4

    .line 5400
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5403
    :cond_3
    iput v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->cachedSize:I

    .line 5404
    return v0
.end method

.method public hasOperatorName()Z
    .locals 1

    .prologue
    .line 5298
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasOperatorName:Z

    return v0
.end method

.method public hasProfileName()Z
    .locals 1

    .prologue
    .line 5281
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasProfileName:Z

    return v0
.end method

.method public hasRssiHigh()Z
    .locals 1

    .prologue
    .line 5315
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiHigh:Z

    return v0
.end method

.method public hasRssiLow()Z
    .locals 1

    .prologue
    .line 5332
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiLow:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5354
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
    .line 5408
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RssiOffloadMsg;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5412
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5413
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5417
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5418
    return-object p0

    .line 5415
    :sswitch_0
    return-object p0

    .line 5423
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->setProfileName(Ljava/lang/String;)Lcom/quicinc/cne/Native$RssiOffloadMsg;

    goto :goto_0

    .line 5427
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->setOperatorName(Ljava/lang/String;)Lcom/quicinc/cne/Native$RssiOffloadMsg;

    goto :goto_0

    .line 5431
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readSInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->setRssiHigh(I)Lcom/quicinc/cne/Native$RssiOffloadMsg;

    goto :goto_0

    .line 5435
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readSInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->setRssiLow(I)Lcom/quicinc/cne/Native$RssiOffloadMsg;

    goto :goto_0

    .line 5413
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setOperatorName(Ljava/lang/String;)Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasOperatorName:Z

    .line 5301
    iput-object p1, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->operatorName_:Ljava/lang/String;

    .line 5302
    return-object p0
.end method

.method public setProfileName(Ljava/lang/String;)Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasProfileName:Z

    .line 5284
    iput-object p1, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->profileName_:Ljava/lang/String;

    .line 5285
    return-object p0
.end method

.method public setRssiHigh(I)Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5317
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiHigh:Z

    .line 5318
    iput p1, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->rssiHigh_:I

    .line 5319
    return-object p0
.end method

.method public setRssiLow(I)Lcom/quicinc/cne/Native$RssiOffloadMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiLow:Z

    .line 5335
    iput p1, p0, Lcom/quicinc/cne/Native$RssiOffloadMsg;->rssiLow_:I

    .line 5336
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
    .line 5360
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasProfileName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5361
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getProfileName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5363
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasOperatorName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5364
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getOperatorName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5366
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiHigh()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5367
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getRssiHigh()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeSInt32(II)V

    .line 5369
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->hasRssiLow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5370
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RssiOffloadMsg;->getRssiLow()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeSInt32(II)V

    .line 5359
    :cond_3
    return-void
.end method
