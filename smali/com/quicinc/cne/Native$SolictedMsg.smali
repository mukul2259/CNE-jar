.class public final Lcom/quicinc/cne/Native$SolictedMsg;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SolictedMsg"
.end annotation


# static fields
.field public static final ERROR_FIELD_NUMBER:I = 0x2

.field public static final SERIAL_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private error_:I

.field private hasError:Z

.field private hasSerial:Z

.field private serial_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3724
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3729
    iput v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->serial_:I

    .line 3746
    iput v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->error_:I

    .line 3782
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->cachedSize:I

    .line 3724
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$SolictedMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3842
    new-instance v0, Lcom/quicinc/cne/Native$SolictedMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$SolictedMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$SolictedMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$SolictedMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$SolictedMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3836
    new-instance v0, Lcom/quicinc/cne/Native$SolictedMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$SolictedMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$SolictedMsg;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$SolictedMsg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$SolictedMsg;
    .locals 1

    .prologue
    .line 3761
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->clearSerial()Lcom/quicinc/cne/Native$SolictedMsg;

    .line 3762
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->clearError()Lcom/quicinc/cne/Native$SolictedMsg;

    .line 3763
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->cachedSize:I

    .line 3764
    return-object p0
.end method

.method public clearError()Lcom/quicinc/cne/Native$SolictedMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3755
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->hasError:Z

    .line 3756
    iput v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->error_:I

    .line 3757
    return-object p0
.end method

.method public clearSerial()Lcom/quicinc/cne/Native$SolictedMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3738
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->hasSerial:Z

    .line 3739
    iput v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->serial_:I

    .line 3740
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3785
    iget v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 3787
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->getSerializedSize()I

    .line 3789
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->cachedSize:I

    return v0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 3747
    iget v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->error_:I

    return v0
.end method

.method public getSerial()I
    .locals 1

    .prologue
    .line 3730
    iget v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->serial_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3794
    const/4 v0, 0x0

    .line 3795
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->hasSerial()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3797
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->getSerial()I

    move-result v1

    const/4 v2, 0x1

    .line 3796
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 3799
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->hasError()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3801
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->getError()I

    move-result v1

    const/4 v2, 0x2

    .line 3800
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3803
    :cond_1
    iput v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->cachedSize:I

    .line 3804
    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 3748
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->hasError:Z

    return v0
.end method

.method public hasSerial()Z
    .locals 1

    .prologue
    .line 3731
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->hasSerial:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3768
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
    .line 3808
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$SolictedMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$SolictedMsg;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$SolictedMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3812
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3813
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3817
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$SolictedMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3818
    return-object p0

    .line 3815
    :sswitch_0
    return-object p0

    .line 3823
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$SolictedMsg;->setSerial(I)Lcom/quicinc/cne/Native$SolictedMsg;

    goto :goto_0

    .line 3827
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$SolictedMsg;->setError(I)Lcom/quicinc/cne/Native$SolictedMsg;

    goto :goto_0

    .line 3813
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setError(I)Lcom/quicinc/cne/Native$SolictedMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->hasError:Z

    .line 3751
    iput p1, p0, Lcom/quicinc/cne/Native$SolictedMsg;->error_:I

    .line 3752
    return-object p0
.end method

.method public setSerial(I)Lcom/quicinc/cne/Native$SolictedMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$SolictedMsg;->hasSerial:Z

    .line 3734
    iput p1, p0, Lcom/quicinc/cne/Native$SolictedMsg;->serial_:I

    .line 3735
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
    .line 3774
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->hasSerial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3775
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->getSerial()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3777
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->hasError()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3778
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SolictedMsg;->getError()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3773
    :cond_1
    return-void
.end method
