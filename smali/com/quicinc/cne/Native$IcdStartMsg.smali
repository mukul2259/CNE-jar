.class public final Lcom/quicinc/cne/Native$IcdStartMsg;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IcdStartMsg"
.end annotation


# static fields
.field public static final BSSID_FIELD_NUMBER:I = 0x3

.field public static final HTTPURI_FIELD_NUMBER:I = 0x2

.field public static final TID_FIELD_NUMBER:I = 0x5

.field public static final TIMEOUT_FIELD_NUMBER:I = 0x4

.field public static final URI_FIELD_NUMBER:I = 0x1


# instance fields
.field private bssid_:Ljava/lang/String;

.field private cachedSize:I

.field private hasBssid:Z

.field private hasHttpuri:Z

.field private hasTid:Z

.field private hasTimeout:Z

.field private hasUri:Z

.field private httpuri_:Ljava/lang/String;

.field private tid_:I

.field private timeout_:I

.field private uri_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4412
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4417
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->uri_:Ljava/lang/String;

    .line 4434
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->httpuri_:Ljava/lang/String;

    .line 4451
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->bssid_:Ljava/lang/String;

    .line 4468
    iput v1, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->timeout_:I

    .line 4485
    iput v1, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->tid_:I

    .line 4533
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->cachedSize:I

    .line 4412
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4617
    new-instance v0, Lcom/quicinc/cne/Native$IcdStartMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$IcdStartMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdStartMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4611
    new-instance v0, Lcom/quicinc/cne/Native$IcdStartMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$IcdStartMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$IcdStartMsg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1

    .prologue
    .line 4500
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->clearUri()Lcom/quicinc/cne/Native$IcdStartMsg;

    .line 4501
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->clearHttpuri()Lcom/quicinc/cne/Native$IcdStartMsg;

    .line 4502
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->clearBssid()Lcom/quicinc/cne/Native$IcdStartMsg;

    .line 4503
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->clearTimeout()Lcom/quicinc/cne/Native$IcdStartMsg;

    .line 4504
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->clearTid()Lcom/quicinc/cne/Native$IcdStartMsg;

    .line 4505
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->cachedSize:I

    .line 4506
    return-object p0
.end method

.method public clearBssid()Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1

    .prologue
    .line 4460
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasBssid:Z

    .line 4461
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->bssid_:Ljava/lang/String;

    .line 4462
    return-object p0
.end method

.method public clearHttpuri()Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1

    .prologue
    .line 4443
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasHttpuri:Z

    .line 4444
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->httpuri_:Ljava/lang/String;

    .line 4445
    return-object p0
.end method

.method public clearTid()Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4494
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTid:Z

    .line 4495
    iput v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->tid_:I

    .line 4496
    return-object p0
.end method

.method public clearTimeout()Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4477
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTimeout:Z

    .line 4478
    iput v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->timeout_:I

    .line 4479
    return-object p0
.end method

.method public clearUri()Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1

    .prologue
    .line 4426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasUri:Z

    .line 4427
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->uri_:Ljava/lang/String;

    .line 4428
    return-object p0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4452
    iget-object v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->bssid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4536
    iget v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 4538
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getSerializedSize()I

    .line 4540
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->cachedSize:I

    return v0
.end method

.method public getHttpuri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4435
    iget-object v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->httpuri_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4545
    const/4 v0, 0x0

    .line 4546
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasUri()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4548
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getUri()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 4547
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 4550
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasHttpuri()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4552
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getHttpuri()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 4551
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4554
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasBssid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4556
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getBssid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 4555
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4558
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTimeout()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4560
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getTimeout()I

    move-result v1

    const/4 v2, 0x4

    .line 4559
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4562
    :cond_3
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTid()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4564
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getTid()I

    move-result v1

    const/4 v2, 0x5

    .line 4563
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4566
    :cond_4
    iput v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->cachedSize:I

    .line 4567
    return v0
.end method

.method public getTid()I
    .locals 1

    .prologue
    .line 4486
    iget v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->tid_:I

    return v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 4469
    iget v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->timeout_:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4418
    iget-object v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->uri_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBssid()Z
    .locals 1

    .prologue
    .line 4453
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasBssid:Z

    return v0
.end method

.method public hasHttpuri()Z
    .locals 1

    .prologue
    .line 4436
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasHttpuri:Z

    return v0
.end method

.method public hasTid()Z
    .locals 1

    .prologue
    .line 4487
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTid:Z

    return v0
.end method

.method public hasTimeout()Z
    .locals 1

    .prologue
    .line 4470
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTimeout:Z

    return v0
.end method

.method public hasUri()Z
    .locals 1

    .prologue
    .line 4419
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasUri:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4510
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
    .line 4571
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$IcdStartMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdStartMsg;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4575
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4576
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4580
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$IcdStartMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4581
    return-object p0

    .line 4578
    :sswitch_0
    return-object p0

    .line 4586
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->setUri(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdStartMsg;

    goto :goto_0

    .line 4590
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->setHttpuri(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdStartMsg;

    goto :goto_0

    .line 4594
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdStartMsg;

    goto :goto_0

    .line 4598
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->setTimeout(I)Lcom/quicinc/cne/Native$IcdStartMsg;

    goto :goto_0

    .line 4602
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdStartMsg;->setTid(I)Lcom/quicinc/cne/Native$IcdStartMsg;

    goto :goto_0

    .line 4576
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4455
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasBssid:Z

    .line 4456
    iput-object p1, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->bssid_:Ljava/lang/String;

    .line 4457
    return-object p0
.end method

.method public setHttpuri(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4438
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasHttpuri:Z

    .line 4439
    iput-object p1, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->httpuri_:Ljava/lang/String;

    .line 4440
    return-object p0
.end method

.method public setTid(I)Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTid:Z

    .line 4490
    iput p1, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->tid_:I

    .line 4491
    return-object p0
.end method

.method public setTimeout(I)Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTimeout:Z

    .line 4473
    iput p1, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->timeout_:I

    .line 4474
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdStartMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->hasUri:Z

    .line 4422
    iput-object p1, p0, Lcom/quicinc/cne/Native$IcdStartMsg;->uri_:Ljava/lang/String;

    .line 4423
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
    .line 4516
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasUri()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4517
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getUri()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4519
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasHttpuri()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4520
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getHttpuri()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4522
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasBssid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4523
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getBssid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4525
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTimeout()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4526
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getTimeout()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 4528
    :cond_3
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->hasTid()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4529
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdStartMsg;->getTid()I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 4515
    :cond_4
    return-void
.end method
