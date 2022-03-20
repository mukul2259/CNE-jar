.class public final Lcom/quicinc/cne/Native$BqePostParamsMsg;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BqePostParamsMsg"
.end annotation


# static fields
.field public static final BSSID_FIELD_NUMBER:I = 0x1

.field public static final TIMESTAMPSEC_FIELD_NUMBER:I = 0x4

.field public static final TPUTKILOBITSPERSEC_FIELD_NUMBER:I = 0x3

.field public static final URI_FIELD_NUMBER:I = 0x2


# instance fields
.field private bssid_:Ljava/lang/String;

.field private cachedSize:I

.field private hasBssid:Z

.field private hasTimeStampSec:Z

.field private hasTputKiloBitsPerSec:Z

.field private hasUri:Z

.field private timeStampSec_:I

.field private tputKiloBitsPerSec_:I

.field private uri_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4625
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4630
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->bssid_:Ljava/lang/String;

    .line 4647
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->uri_:Ljava/lang/String;

    .line 4664
    iput v1, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->tputKiloBitsPerSec_:I

    .line 4681
    iput v1, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->timeStampSec_:I

    .line 4725
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->cachedSize:I

    .line 4625
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4801
    new-instance v0, Lcom/quicinc/cne/Native$BqePostParamsMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$BqePostParamsMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4795
    new-instance v0, Lcom/quicinc/cne/Native$BqePostParamsMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$BqePostParamsMsg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1

    .prologue
    .line 4696
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->clearBssid()Lcom/quicinc/cne/Native$BqePostParamsMsg;

    .line 4697
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->clearUri()Lcom/quicinc/cne/Native$BqePostParamsMsg;

    .line 4698
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->clearTputKiloBitsPerSec()Lcom/quicinc/cne/Native$BqePostParamsMsg;

    .line 4699
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->clearTimeStampSec()Lcom/quicinc/cne/Native$BqePostParamsMsg;

    .line 4700
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->cachedSize:I

    .line 4701
    return-object p0
.end method

.method public clearBssid()Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1

    .prologue
    .line 4639
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasBssid:Z

    .line 4640
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->bssid_:Ljava/lang/String;

    .line 4641
    return-object p0
.end method

.method public clearTimeStampSec()Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4690
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTimeStampSec:Z

    .line 4691
    iput v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->timeStampSec_:I

    .line 4692
    return-object p0
.end method

.method public clearTputKiloBitsPerSec()Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4673
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTputKiloBitsPerSec:Z

    .line 4674
    iput v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->tputKiloBitsPerSec_:I

    .line 4675
    return-object p0
.end method

.method public clearUri()Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1

    .prologue
    .line 4656
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasUri:Z

    .line 4657
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->uri_:Ljava/lang/String;

    .line 4658
    return-object p0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4631
    iget-object v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->bssid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4728
    iget v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 4730
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getSerializedSize()I

    .line 4732
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4737
    const/4 v0, 0x0

    .line 4738
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasBssid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4740
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getBssid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 4739
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 4742
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasUri()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4744
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getUri()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 4743
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4746
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTputKiloBitsPerSec()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4748
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getTputKiloBitsPerSec()I

    move-result v1

    const/4 v2, 0x3

    .line 4747
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4750
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTimeStampSec()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4752
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getTimeStampSec()I

    move-result v1

    const/4 v2, 0x4

    .line 4751
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4754
    :cond_3
    iput v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->cachedSize:I

    .line 4755
    return v0
.end method

.method public getTimeStampSec()I
    .locals 1

    .prologue
    .line 4682
    iget v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->timeStampSec_:I

    return v0
.end method

.method public getTputKiloBitsPerSec()I
    .locals 1

    .prologue
    .line 4665
    iget v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->tputKiloBitsPerSec_:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4648
    iget-object v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->uri_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBssid()Z
    .locals 1

    .prologue
    .line 4632
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasBssid:Z

    return v0
.end method

.method public hasTimeStampSec()Z
    .locals 1

    .prologue
    .line 4683
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTimeStampSec:Z

    return v0
.end method

.method public hasTputKiloBitsPerSec()Z
    .locals 1

    .prologue
    .line 4666
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTputKiloBitsPerSec:Z

    return v0
.end method

.method public hasUri()Z
    .locals 1

    .prologue
    .line 4649
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasUri:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4705
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
    .line 4759
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$BqePostParamsMsg;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4763
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4764
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4768
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4769
    return-object p0

    .line 4766
    :sswitch_0
    return-object p0

    .line 4774
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqePostParamsMsg;

    goto :goto_0

    .line 4778
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->setUri(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqePostParamsMsg;

    goto :goto_0

    .line 4782
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->setTputKiloBitsPerSec(I)Lcom/quicinc/cne/Native$BqePostParamsMsg;

    goto :goto_0

    .line 4786
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->setTimeStampSec(I)Lcom/quicinc/cne/Native$BqePostParamsMsg;

    goto :goto_0

    .line 4764
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

.method public setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4634
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasBssid:Z

    .line 4635
    iput-object p1, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->bssid_:Ljava/lang/String;

    .line 4636
    return-object p0
.end method

.method public setTimeStampSec(I)Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4685
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTimeStampSec:Z

    .line 4686
    iput p1, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->timeStampSec_:I

    .line 4687
    return-object p0
.end method

.method public setTputKiloBitsPerSec(I)Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTputKiloBitsPerSec:Z

    .line 4669
    iput p1, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->tputKiloBitsPerSec_:I

    .line 4670
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqePostParamsMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4651
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasUri:Z

    .line 4652
    iput-object p1, p0, Lcom/quicinc/cne/Native$BqePostParamsMsg;->uri_:Ljava/lang/String;

    .line 4653
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
    .line 4711
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasBssid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4712
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getBssid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4714
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasUri()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4715
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getUri()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4717
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTputKiloBitsPerSec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4718
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getTputKiloBitsPerSec()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 4720
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->hasTimeStampSec()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4721
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqePostParamsMsg;->getTimeStampSec()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 4710
    :cond_3
    return-void
.end method
