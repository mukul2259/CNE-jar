.class public final Lcom/quicinc/cne/Native$CneMessage;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CneMessage"
.end annotation


# static fields
.field public static final MSGBODY_FIELD_NUMBER:I = 0x3

.field public static final MSGID_FIELD_NUMBER:I = 0x2

.field public static final RESPONSE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasMsgId:Z

.field private hasMsgbody:Z

.field private hasResponse:Z

.field private msgId_:I

.field private msgbody_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private response_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3569
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3574
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$CneMessage;->response_:I

    .line 3591
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneMessage;->msgId_:I

    .line 3608
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/quicinc/cne/Native$CneMessage;->msgbody_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 3648
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneMessage;->cachedSize:I

    .line 3569
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneMessage;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3716
    new-instance v0, Lcom/quicinc/cne/Native$CneMessage;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$CneMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$CneMessage;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneMessage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$CneMessage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3710
    new-instance v0, Lcom/quicinc/cne/Native$CneMessage;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$CneMessage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$CneMessage;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$CneMessage;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$CneMessage;
    .locals 1

    .prologue
    .line 3623
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->clearResponse()Lcom/quicinc/cne/Native$CneMessage;

    .line 3624
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->clearMsgId()Lcom/quicinc/cne/Native$CneMessage;

    .line 3625
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->clearMsgbody()Lcom/quicinc/cne/Native$CneMessage;

    .line 3626
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneMessage;->cachedSize:I

    .line 3627
    return-object p0
.end method

.method public clearMsgId()Lcom/quicinc/cne/Native$CneMessage;
    .locals 1

    .prologue
    .line 3600
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneMessage;->hasMsgId:Z

    .line 3601
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneMessage;->msgId_:I

    .line 3602
    return-object p0
.end method

.method public clearMsgbody()Lcom/quicinc/cne/Native$CneMessage;
    .locals 1

    .prologue
    .line 3617
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneMessage;->hasMsgbody:Z

    .line 3618
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/quicinc/cne/Native$CneMessage;->msgbody_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 3619
    return-object p0
.end method

.method public clearResponse()Lcom/quicinc/cne/Native$CneMessage;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3583
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneMessage;->hasResponse:Z

    .line 3584
    iput v0, p0, Lcom/quicinc/cne/Native$CneMessage;->response_:I

    .line 3585
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3651
    iget v0, p0, Lcom/quicinc/cne/Native$CneMessage;->cachedSize:I

    if-gez v0, :cond_0

    .line 3653
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->getSerializedSize()I

    .line 3655
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$CneMessage;->cachedSize:I

    return v0
.end method

.method public getMsgId()I
    .locals 1

    .prologue
    .line 3593
    iget v0, p0, Lcom/quicinc/cne/Native$CneMessage;->msgId_:I

    return v0
.end method

.method public getMsgbody()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 3609
    iget-object v0, p0, Lcom/quicinc/cne/Native$CneMessage;->msgbody_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getResponse()I
    .locals 1

    .prologue
    .line 3576
    iget v0, p0, Lcom/quicinc/cne/Native$CneMessage;->response_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3660
    const/4 v0, 0x0

    .line 3661
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3663
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->getResponse()I

    move-result v1

    const/4 v2, 0x1

    .line 3662
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 3665
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->hasMsgId()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3667
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->getMsgId()I

    move-result v1

    const/4 v2, 0x2

    .line 3666
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3669
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->hasMsgbody()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3671
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->getMsgbody()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    const/4 v2, 0x3

    .line 3670
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3673
    :cond_2
    iput v0, p0, Lcom/quicinc/cne/Native$CneMessage;->cachedSize:I

    .line 3674
    return v0
.end method

.method public hasMsgId()Z
    .locals 1

    .prologue
    .line 3592
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CneMessage;->hasMsgId:Z

    return v0
.end method

.method public hasMsgbody()Z
    .locals 1

    .prologue
    .line 3610
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CneMessage;->hasMsgbody:Z

    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .prologue
    .line 3575
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CneMessage;->hasResponse:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3631
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
    .line 3678
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$CneMessage;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneMessage;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneMessage;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3682
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3683
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3687
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$CneMessage;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3688
    return-object p0

    .line 3685
    :sswitch_0
    return-object p0

    .line 3693
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$CneMessage;->setResponse(I)Lcom/quicinc/cne/Native$CneMessage;

    goto :goto_0

    .line 3697
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$CneMessage;->setMsgId(I)Lcom/quicinc/cne/Native$CneMessage;

    goto :goto_0

    .line 3701
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$CneMessage;->setMsgbody(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/quicinc/cne/Native$CneMessage;

    goto :goto_0

    .line 3683
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setMsgId(I)Lcom/quicinc/cne/Native$CneMessage;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3595
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneMessage;->hasMsgId:Z

    .line 3596
    iput p1, p0, Lcom/quicinc/cne/Native$CneMessage;->msgId_:I

    .line 3597
    return-object p0
.end method

.method public setMsgbody(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/quicinc/cne/Native$CneMessage;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .prologue
    .line 3612
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneMessage;->hasMsgbody:Z

    .line 3613
    iput-object p1, p0, Lcom/quicinc/cne/Native$CneMessage;->msgbody_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 3614
    return-object p0
.end method

.method public setResponse(I)Lcom/quicinc/cne/Native$CneMessage;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneMessage;->hasResponse:Z

    .line 3579
    iput p1, p0, Lcom/quicinc/cne/Native$CneMessage;->response_:I

    .line 3580
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
    .line 3637
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3638
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->getResponse()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3640
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->hasMsgId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3641
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->getMsgId()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3643
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->hasMsgbody()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3644
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneMessage;->getMsgbody()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 3636
    :cond_2
    return-void
.end method
