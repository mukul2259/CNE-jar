.class public final Lcom/quicinc/cne/Native$JrttResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JrttResult"
.end annotation


# static fields
.field public static final GETTSMILLIS_FIELD_NUMBER:I = 0x4

.field public static final GETTSSECONDS_FIELD_NUMBER:I = 0x3

.field public static final JRTTMILLIS_FIELD_NUMBER:I = 0x2

.field public static final RESULT_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private getTsMillis_:I

.field private getTsSeconds_:I

.field private hasGetTsMillis:Z

.field private hasGetTsSeconds:Z

.field private hasJrttMillis:Z

.field private hasResult:Z

.field private jrttMillis_:I

.field private result_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3259
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3264
    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->result_:I

    .line 3281
    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->jrttMillis_:I

    .line 3298
    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->getTsSeconds_:I

    .line 3315
    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->getTsMillis_:I

    .line 3359
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->cachedSize:I

    .line 3259
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$JrttResult;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3435
    new-instance v0, Lcom/quicinc/cne/Native$JrttResult;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$JrttResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$JrttResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$JrttResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$JrttResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3429
    new-instance v0, Lcom/quicinc/cne/Native$JrttResult;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$JrttResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$JrttResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$JrttResult;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$JrttResult;
    .locals 1

    .prologue
    .line 3330
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->clearResult()Lcom/quicinc/cne/Native$JrttResult;

    .line 3331
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->clearJrttMillis()Lcom/quicinc/cne/Native$JrttResult;

    .line 3332
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->clearGetTsSeconds()Lcom/quicinc/cne/Native$JrttResult;

    .line 3333
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->clearGetTsMillis()Lcom/quicinc/cne/Native$JrttResult;

    .line 3334
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->cachedSize:I

    .line 3335
    return-object p0
.end method

.method public clearGetTsMillis()Lcom/quicinc/cne/Native$JrttResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3324
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasGetTsMillis:Z

    .line 3325
    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->getTsMillis_:I

    .line 3326
    return-object p0
.end method

.method public clearGetTsSeconds()Lcom/quicinc/cne/Native$JrttResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3307
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasGetTsSeconds:Z

    .line 3308
    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->getTsSeconds_:I

    .line 3309
    return-object p0
.end method

.method public clearJrttMillis()Lcom/quicinc/cne/Native$JrttResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3290
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasJrttMillis:Z

    .line 3291
    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->jrttMillis_:I

    .line 3292
    return-object p0
.end method

.method public clearResult()Lcom/quicinc/cne/Native$JrttResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3273
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasResult:Z

    .line 3274
    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->result_:I

    .line 3275
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3362
    iget v0, p0, Lcom/quicinc/cne/Native$JrttResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 3364
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->getSerializedSize()I

    .line 3366
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$JrttResult;->cachedSize:I

    return v0
.end method

.method public getGetTsMillis()I
    .locals 1

    .prologue
    .line 3316
    iget v0, p0, Lcom/quicinc/cne/Native$JrttResult;->getTsMillis_:I

    return v0
.end method

.method public getGetTsSeconds()I
    .locals 1

    .prologue
    .line 3299
    iget v0, p0, Lcom/quicinc/cne/Native$JrttResult;->getTsSeconds_:I

    return v0
.end method

.method public getJrttMillis()I
    .locals 1

    .prologue
    .line 3282
    iget v0, p0, Lcom/quicinc/cne/Native$JrttResult;->jrttMillis_:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 3265
    iget v0, p0, Lcom/quicinc/cne/Native$JrttResult;->result_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3371
    const/4 v0, 0x0

    .line 3372
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3374
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->getResult()I

    move-result v1

    const/4 v2, 0x1

    .line 3373
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 3376
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->hasJrttMillis()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3378
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->getJrttMillis()I

    move-result v1

    const/4 v2, 0x2

    .line 3377
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3380
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->hasGetTsSeconds()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3382
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->getGetTsSeconds()I

    move-result v1

    const/4 v2, 0x3

    .line 3381
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3384
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->hasGetTsMillis()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3386
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->getGetTsMillis()I

    move-result v1

    const/4 v2, 0x4

    .line 3385
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3388
    :cond_3
    iput v0, p0, Lcom/quicinc/cne/Native$JrttResult;->cachedSize:I

    .line 3389
    return v0
.end method

.method public hasGetTsMillis()Z
    .locals 1

    .prologue
    .line 3317
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasGetTsMillis:Z

    return v0
.end method

.method public hasGetTsSeconds()Z
    .locals 1

    .prologue
    .line 3300
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasGetTsSeconds:Z

    return v0
.end method

.method public hasJrttMillis()Z
    .locals 1

    .prologue
    .line 3283
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasJrttMillis:Z

    return v0
.end method

.method public hasResult()Z
    .locals 1

    .prologue
    .line 3266
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasResult:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3339
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
    .line 3393
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$JrttResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$JrttResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$JrttResult;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3397
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3398
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3402
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$JrttResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3403
    return-object p0

    .line 3400
    :sswitch_0
    return-object p0

    .line 3408
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$JrttResult;->setResult(I)Lcom/quicinc/cne/Native$JrttResult;

    goto :goto_0

    .line 3412
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$JrttResult;->setJrttMillis(I)Lcom/quicinc/cne/Native$JrttResult;

    goto :goto_0

    .line 3416
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$JrttResult;->setGetTsSeconds(I)Lcom/quicinc/cne/Native$JrttResult;

    goto :goto_0

    .line 3420
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$JrttResult;->setGetTsMillis(I)Lcom/quicinc/cne/Native$JrttResult;

    goto :goto_0

    .line 3398
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setGetTsMillis(I)Lcom/quicinc/cne/Native$JrttResult;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasGetTsMillis:Z

    .line 3320
    iput p1, p0, Lcom/quicinc/cne/Native$JrttResult;->getTsMillis_:I

    .line 3321
    return-object p0
.end method

.method public setGetTsSeconds(I)Lcom/quicinc/cne/Native$JrttResult;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3302
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasGetTsSeconds:Z

    .line 3303
    iput p1, p0, Lcom/quicinc/cne/Native$JrttResult;->getTsSeconds_:I

    .line 3304
    return-object p0
.end method

.method public setJrttMillis(I)Lcom/quicinc/cne/Native$JrttResult;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasJrttMillis:Z

    .line 3286
    iput p1, p0, Lcom/quicinc/cne/Native$JrttResult;->jrttMillis_:I

    .line 3287
    return-object p0
.end method

.method public setResult(I)Lcom/quicinc/cne/Native$JrttResult;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$JrttResult;->hasResult:Z

    .line 3269
    iput p1, p0, Lcom/quicinc/cne/Native$JrttResult;->result_:I

    .line 3270
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
    .line 3345
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3346
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->getResult()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3348
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->hasJrttMillis()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3349
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->getJrttMillis()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3351
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->hasGetTsSeconds()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3352
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->getGetTsSeconds()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3354
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->hasGetTsMillis()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3355
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$JrttResult;->getGetTsMillis()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3344
    :cond_3
    return-void
.end method
