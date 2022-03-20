.class public final Lcom/quicinc/cne/Native$NetRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetRequest"
.end annotation


# static fields
.field public static final RATTYPE_FIELD_NUMBER:I = 0x1

.field public static final SLOTTYPE_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasRattype:Z

.field private hasSlottype:Z

.field private rattype_:I

.field private slottype_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3850
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3855
    iput v0, p0, Lcom/quicinc/cne/Native$NetRequest;->rattype_:I

    .line 3872
    iput v0, p0, Lcom/quicinc/cne/Native$NetRequest;->slottype_:I

    .line 3908
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$NetRequest;->cachedSize:I

    .line 3850
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NetRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3968
    new-instance v0, Lcom/quicinc/cne/Native$NetRequest;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$NetRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$NetRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NetRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$NetRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3962
    new-instance v0, Lcom/quicinc/cne/Native$NetRequest;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$NetRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$NetRequest;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$NetRequest;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$NetRequest;
    .locals 1

    .prologue
    .line 3887
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequest;->clearRattype()Lcom/quicinc/cne/Native$NetRequest;

    .line 3888
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequest;->clearSlottype()Lcom/quicinc/cne/Native$NetRequest;

    .line 3889
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$NetRequest;->cachedSize:I

    .line 3890
    return-object p0
.end method

.method public clearRattype()Lcom/quicinc/cne/Native$NetRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3864
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NetRequest;->hasRattype:Z

    .line 3865
    iput v0, p0, Lcom/quicinc/cne/Native$NetRequest;->rattype_:I

    .line 3866
    return-object p0
.end method

.method public clearSlottype()Lcom/quicinc/cne/Native$NetRequest;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3881
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NetRequest;->hasSlottype:Z

    .line 3882
    iput v0, p0, Lcom/quicinc/cne/Native$NetRequest;->slottype_:I

    .line 3883
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3911
    iget v0, p0, Lcom/quicinc/cne/Native$NetRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 3913
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequest;->getSerializedSize()I

    .line 3915
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$NetRequest;->cachedSize:I

    return v0
.end method

.method public getRattype()I
    .locals 1

    .prologue
    .line 3857
    iget v0, p0, Lcom/quicinc/cne/Native$NetRequest;->rattype_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3920
    const/4 v0, 0x0

    .line 3921
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequest;->hasRattype()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3923
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequest;->getRattype()I

    move-result v1

    const/4 v2, 0x1

    .line 3922
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 3925
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequest;->hasSlottype()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3927
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequest;->getSlottype()I

    move-result v1

    const/4 v2, 0x2

    .line 3926
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3929
    :cond_1
    iput v0, p0, Lcom/quicinc/cne/Native$NetRequest;->cachedSize:I

    .line 3930
    return v0
.end method

.method public getSlottype()I
    .locals 1

    .prologue
    .line 3874
    iget v0, p0, Lcom/quicinc/cne/Native$NetRequest;->slottype_:I

    return v0
.end method

.method public hasRattype()Z
    .locals 1

    .prologue
    .line 3856
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$NetRequest;->hasRattype:Z

    return v0
.end method

.method public hasSlottype()Z
    .locals 1

    .prologue
    .line 3873
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$NetRequest;->hasSlottype:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3894
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
    .line 3934
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$NetRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NetRequest;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NetRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3938
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3939
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3943
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$NetRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3944
    return-object p0

    .line 3941
    :sswitch_0
    return-object p0

    .line 3949
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$NetRequest;->setRattype(I)Lcom/quicinc/cne/Native$NetRequest;

    goto :goto_0

    .line 3953
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$NetRequest;->setSlottype(I)Lcom/quicinc/cne/Native$NetRequest;

    goto :goto_0

    .line 3939
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setRattype(I)Lcom/quicinc/cne/Native$NetRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3859
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NetRequest;->hasRattype:Z

    .line 3860
    iput p1, p0, Lcom/quicinc/cne/Native$NetRequest;->rattype_:I

    .line 3861
    return-object p0
.end method

.method public setSlottype(I)Lcom/quicinc/cne/Native$NetRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3876
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NetRequest;->hasSlottype:Z

    .line 3877
    iput p1, p0, Lcom/quicinc/cne/Native$NetRequest;->slottype_:I

    .line 3878
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
    .line 3900
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequest;->hasRattype()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3901
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequest;->getRattype()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3903
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequest;->hasSlottype()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3904
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequest;->getSlottype()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 3899
    :cond_1
    return-void
.end method
