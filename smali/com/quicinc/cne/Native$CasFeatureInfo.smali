.class public final Lcom/quicinc/cne/Native$CasFeatureInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CasFeatureInfo"
.end annotation


# static fields
.field public static final FEATUREID_FIELD_NUMBER:I = 0x1

.field public static final FEATURESTATUS_FIELD_NUMBER:I = 0x2

.field public static final NOTIFY_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private featureId_:I

.field private featureStatus_:I

.field private hasFeatureId:Z

.field private hasFeatureStatus:Z

.field private hasNotify:Z

.field private notify_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 6876
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6881
    iput v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->featureId_:I

    .line 6898
    iput v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->featureStatus_:I

    .line 6915
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->notify_:Z

    .line 6955
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->cachedSize:I

    .line 6876
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CasFeatureInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7023
    new-instance v0, Lcom/quicinc/cne/Native$CasFeatureInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$CasFeatureInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$CasFeatureInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CasFeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$CasFeatureInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 7017
    new-instance v0, Lcom/quicinc/cne/Native$CasFeatureInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$CasFeatureInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$CasFeatureInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$CasFeatureInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$CasFeatureInfo;
    .locals 1

    .prologue
    .line 6930
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CasFeatureInfo;->clearFeatureId()Lcom/quicinc/cne/Native$CasFeatureInfo;

    .line 6931
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CasFeatureInfo;->clearFeatureStatus()Lcom/quicinc/cne/Native$CasFeatureInfo;

    .line 6932
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CasFeatureInfo;->clearNotify()Lcom/quicinc/cne/Native$CasFeatureInfo;

    .line 6933
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->cachedSize:I

    .line 6934
    return-object p0
.end method

.method public clearFeatureId()Lcom/quicinc/cne/Native$CasFeatureInfo;
    .locals 1

    .prologue
    .line 6890
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->hasFeatureId:Z

    .line 6891
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->featureId_:I

    .line 6892
    return-object p0
.end method

.method public clearFeatureStatus()Lcom/quicinc/cne/Native$CasFeatureInfo;
    .locals 1

    .prologue
    .line 6907
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->hasFeatureStatus:Z

    .line 6908
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->featureStatus_:I

    .line 6909
    return-object p0
.end method

.method public clearNotify()Lcom/quicinc/cne/Native$CasFeatureInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6924
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->hasNotify:Z

    .line 6925
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->notify_:Z

    .line 6926
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6958
    iget v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 6960
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CasFeatureInfo;->getSerializedSize()I

    .line 6962
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->cachedSize:I

    return v0
.end method

.method public getFeatureId()I
    .locals 1

    .prologue
    .line 6883
    iget v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->featureId_:I

    return v0
.end method

.method public getFeatureStatus()I
    .locals 1

    .prologue
    .line 6900
    iget v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->featureStatus_:I

    return v0
.end method

.method public getNotify()Z
    .locals 1

    .prologue
    .line 6916
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->notify_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6967
    const/4 v0, 0x0

    .line 6968
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CasFeatureInfo;->hasFeatureId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6970
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CasFeatureInfo;->getFeatureId()I

    move-result v1

    const/4 v2, 0x1

    .line 6969
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 6972
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CasFeatureInfo;->hasFeatureStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6974
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CasFeatureInfo;->getFeatureStatus()I

    move-result v1

    const/4 v2, 0x2

    .line 6973
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6976
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CasFeatureInfo;->hasNotify()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6978
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CasFeatureInfo;->getNotify()Z

    move-result v1

    const/4 v2, 0x3

    .line 6977
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6980
    :cond_2
    iput v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->cachedSize:I

    .line 6981
    return v0
.end method

.method public hasFeatureId()Z
    .locals 1

    .prologue
    .line 6882
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->hasFeatureId:Z

    return v0
.end method

.method public hasFeatureStatus()Z
    .locals 1

    .prologue
    .line 6899
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->hasFeatureStatus:Z

    return v0
.end method

.method public hasNotify()Z
    .locals 1

    .prologue
    .line 6917
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->hasNotify:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6938
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
    .line 6985
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$CasFeatureInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CasFeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CasFeatureInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6989
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6990
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6994
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$CasFeatureInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6995
    return-object p0

    .line 6992
    :sswitch_0
    return-object p0

    .line 7000
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$CasFeatureInfo;->setFeatureId(I)Lcom/quicinc/cne/Native$CasFeatureInfo;

    goto :goto_0

    .line 7004
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$CasFeatureInfo;->setFeatureStatus(I)Lcom/quicinc/cne/Native$CasFeatureInfo;

    goto :goto_0

    .line 7008
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$CasFeatureInfo;->setNotify(Z)Lcom/quicinc/cne/Native$CasFeatureInfo;

    goto :goto_0

    .line 6990
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setFeatureId(I)Lcom/quicinc/cne/Native$CasFeatureInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->hasFeatureId:Z

    .line 6886
    iput p1, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->featureId_:I

    .line 6887
    return-object p0
.end method

.method public setFeatureStatus(I)Lcom/quicinc/cne/Native$CasFeatureInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->hasFeatureStatus:Z

    .line 6903
    iput p1, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->featureStatus_:I

    .line 6904
    return-object p0
.end method

.method public setNotify(Z)Lcom/quicinc/cne/Native$CasFeatureInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 6919
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->hasNotify:Z

    .line 6920
    iput-boolean p1, p0, Lcom/quicinc/cne/Native$CasFeatureInfo;->notify_:Z

    .line 6921
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
    .line 6944
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CasFeatureInfo;->hasFeatureId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6945
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CasFeatureInfo;->getFeatureId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6947
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CasFeatureInfo;->hasFeatureStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6948
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CasFeatureInfo;->getFeatureStatus()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 6950
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CasFeatureInfo;->hasNotify()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6951
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CasFeatureInfo;->getNotify()Z

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 6943
    :cond_2
    return-void
.end method
