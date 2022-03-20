.class public final Lcom/quicinc/cne/Native$NetTypeInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetTypeInfo"
.end annotation


# static fields
.field public static final ERRORCAUSE_FIELD_NUMBER:I = 0x5

.field public static final RAT_FIELD_NUMBER:I = 0x1

.field public static final SLOT_FIELD_NUMBER:I = 0x4

.field public static final SUBTYPEFWD_FIELD_NUMBER:I = 0x2

.field public static final SUBTYPEREV_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private errorCause_:I

.field private hasErrorCause:Z

.field private hasRat:Z

.field private hasSlot:Z

.field private hasSubtypeFwd:Z

.field private hasSubtypeRev:Z

.field private rat_:I

.field private slot_:I

.field private subtypeFwd_:I

.field private subtypeRev_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5778
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5783
    iput v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->rat_:I

    .line 5800
    iput v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->subtypeFwd_:I

    .line 5817
    iput v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->subtypeRev_:I

    .line 5834
    iput v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->slot_:I

    .line 5851
    iput v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->errorCause_:I

    .line 5899
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->cachedSize:I

    .line 5778
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NetTypeInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5983
    new-instance v0, Lcom/quicinc/cne/Native$NetTypeInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$NetTypeInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NetTypeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$NetTypeInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5977
    new-instance v0, Lcom/quicinc/cne/Native$NetTypeInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$NetTypeInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$NetTypeInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$NetTypeInfo;
    .locals 1

    .prologue
    .line 5866
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->clearRat()Lcom/quicinc/cne/Native$NetTypeInfo;

    .line 5867
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->clearSubtypeFwd()Lcom/quicinc/cne/Native$NetTypeInfo;

    .line 5868
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->clearSubtypeRev()Lcom/quicinc/cne/Native$NetTypeInfo;

    .line 5869
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->clearSlot()Lcom/quicinc/cne/Native$NetTypeInfo;

    .line 5870
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->clearErrorCause()Lcom/quicinc/cne/Native$NetTypeInfo;

    .line 5871
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->cachedSize:I

    .line 5872
    return-object p0
.end method

.method public clearErrorCause()Lcom/quicinc/cne/Native$NetTypeInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5860
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->hasErrorCause:Z

    .line 5861
    iput v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->errorCause_:I

    .line 5862
    return-object p0
.end method

.method public clearRat()Lcom/quicinc/cne/Native$NetTypeInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5792
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->hasRat:Z

    .line 5793
    iput v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->rat_:I

    .line 5794
    return-object p0
.end method

.method public clearSlot()Lcom/quicinc/cne/Native$NetTypeInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5843
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->hasSlot:Z

    .line 5844
    iput v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->slot_:I

    .line 5845
    return-object p0
.end method

.method public clearSubtypeFwd()Lcom/quicinc/cne/Native$NetTypeInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5809
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->hasSubtypeFwd:Z

    .line 5810
    iput v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->subtypeFwd_:I

    .line 5811
    return-object p0
.end method

.method public clearSubtypeRev()Lcom/quicinc/cne/Native$NetTypeInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5826
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->hasSubtypeRev:Z

    .line 5827
    iput v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->subtypeRev_:I

    .line 5828
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5902
    iget v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 5904
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->getSerializedSize()I

    .line 5906
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->cachedSize:I

    return v0
.end method

.method public getErrorCause()I
    .locals 1

    .prologue
    .line 5853
    iget v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->errorCause_:I

    return v0
.end method

.method public getRat()I
    .locals 1

    .prologue
    .line 5785
    iget v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->rat_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5911
    const/4 v0, 0x0

    .line 5912
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->hasRat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5914
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->getRat()I

    move-result v1

    const/4 v2, 0x1

    .line 5913
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 5916
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->hasSubtypeFwd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5918
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->getSubtypeFwd()I

    move-result v1

    const/4 v2, 0x2

    .line 5917
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5920
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->hasSubtypeRev()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5922
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->getSubtypeRev()I

    move-result v1

    const/4 v2, 0x3

    .line 5921
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5924
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->hasSlot()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5926
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->getSlot()I

    move-result v1

    const/4 v2, 0x4

    .line 5925
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5928
    :cond_3
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->hasErrorCause()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5930
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->getErrorCause()I

    move-result v1

    const/4 v2, 0x5

    .line 5929
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5932
    :cond_4
    iput v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->cachedSize:I

    .line 5933
    return v0
.end method

.method public getSlot()I
    .locals 1

    .prologue
    .line 5836
    iget v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->slot_:I

    return v0
.end method

.method public getSubtypeFwd()I
    .locals 1

    .prologue
    .line 5802
    iget v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->subtypeFwd_:I

    return v0
.end method

.method public getSubtypeRev()I
    .locals 1

    .prologue
    .line 5819
    iget v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->subtypeRev_:I

    return v0
.end method

.method public hasErrorCause()Z
    .locals 1

    .prologue
    .line 5852
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->hasErrorCause:Z

    return v0
.end method

.method public hasRat()Z
    .locals 1

    .prologue
    .line 5784
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->hasRat:Z

    return v0
.end method

.method public hasSlot()Z
    .locals 1

    .prologue
    .line 5835
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->hasSlot:Z

    return v0
.end method

.method public hasSubtypeFwd()Z
    .locals 1

    .prologue
    .line 5801
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->hasSubtypeFwd:Z

    return v0
.end method

.method public hasSubtypeRev()Z
    .locals 1

    .prologue
    .line 5818
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->hasSubtypeRev:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5876
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
    .line 5937
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$NetTypeInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NetTypeInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NetTypeInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5941
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5942
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5946
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$NetTypeInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5947
    return-object p0

    .line 5944
    :sswitch_0
    return-object p0

    .line 5952
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$NetTypeInfo;->setRat(I)Lcom/quicinc/cne/Native$NetTypeInfo;

    goto :goto_0

    .line 5956
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$NetTypeInfo;->setSubtypeFwd(I)Lcom/quicinc/cne/Native$NetTypeInfo;

    goto :goto_0

    .line 5960
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$NetTypeInfo;->setSubtypeRev(I)Lcom/quicinc/cne/Native$NetTypeInfo;

    goto :goto_0

    .line 5964
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$NetTypeInfo;->setSlot(I)Lcom/quicinc/cne/Native$NetTypeInfo;

    goto :goto_0

    .line 5968
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$NetTypeInfo;->setErrorCause(I)Lcom/quicinc/cne/Native$NetTypeInfo;

    goto :goto_0

    .line 5942
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setErrorCause(I)Lcom/quicinc/cne/Native$NetTypeInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5855
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->hasErrorCause:Z

    .line 5856
    iput p1, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->errorCause_:I

    .line 5857
    return-object p0
.end method

.method public setRat(I)Lcom/quicinc/cne/Native$NetTypeInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5787
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->hasRat:Z

    .line 5788
    iput p1, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->rat_:I

    .line 5789
    return-object p0
.end method

.method public setSlot(I)Lcom/quicinc/cne/Native$NetTypeInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->hasSlot:Z

    .line 5839
    iput p1, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->slot_:I

    .line 5840
    return-object p0
.end method

.method public setSubtypeFwd(I)Lcom/quicinc/cne/Native$NetTypeInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5804
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->hasSubtypeFwd:Z

    .line 5805
    iput p1, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->subtypeFwd_:I

    .line 5806
    return-object p0
.end method

.method public setSubtypeRev(I)Lcom/quicinc/cne/Native$NetTypeInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->hasSubtypeRev:Z

    .line 5822
    iput p1, p0, Lcom/quicinc/cne/Native$NetTypeInfo;->subtypeRev_:I

    .line 5823
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
    .line 5882
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->hasRat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5883
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->getRat()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5885
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->hasSubtypeFwd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5886
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->getSubtypeFwd()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5888
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->hasSubtypeRev()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5889
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->getSubtypeRev()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5891
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->hasSlot()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5892
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->getSlot()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5894
    :cond_3
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->hasErrorCause()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5895
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetTypeInfo;->getErrorCause()I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5881
    :cond_4
    return-void
.end method
