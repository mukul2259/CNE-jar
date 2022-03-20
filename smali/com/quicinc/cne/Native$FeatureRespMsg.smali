.class public final Lcom/quicinc/cne/Native$FeatureRespMsg;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureRespMsg"
.end annotation


# static fields
.field public static final FEATURESTATUS_FIELD_NUMBER:I = 0x2

.field public static final FEATURETYPE_FIELD_NUMBER:I = 0x1

.field public static final RESULT_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private featureStatus_:I

.field private featureType_:I

.field private hasFeatureStatus:Z

.field private hasFeatureType:Z

.field private hasResult:Z

.field private result_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 4809
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4814
    iput v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->featureType_:I

    .line 4831
    iput v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->featureStatus_:I

    .line 4848
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->result_:I

    .line 4888
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->cachedSize:I

    .line 4809
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$FeatureRespMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4956
    new-instance v0, Lcom/quicinc/cne/Native$FeatureRespMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$FeatureRespMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$FeatureRespMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$FeatureRespMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$FeatureRespMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4950
    new-instance v0, Lcom/quicinc/cne/Native$FeatureRespMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$FeatureRespMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$FeatureRespMsg;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$FeatureRespMsg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$FeatureRespMsg;
    .locals 1

    .prologue
    .line 4863
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureRespMsg;->clearFeatureType()Lcom/quicinc/cne/Native$FeatureRespMsg;

    .line 4864
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureRespMsg;->clearFeatureStatus()Lcom/quicinc/cne/Native$FeatureRespMsg;

    .line 4865
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureRespMsg;->clearResult()Lcom/quicinc/cne/Native$FeatureRespMsg;

    .line 4866
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->cachedSize:I

    .line 4867
    return-object p0
.end method

.method public clearFeatureStatus()Lcom/quicinc/cne/Native$FeatureRespMsg;
    .locals 1

    .prologue
    .line 4840
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->hasFeatureStatus:Z

    .line 4841
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->featureStatus_:I

    .line 4842
    return-object p0
.end method

.method public clearFeatureType()Lcom/quicinc/cne/Native$FeatureRespMsg;
    .locals 1

    .prologue
    .line 4823
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->hasFeatureType:Z

    .line 4824
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->featureType_:I

    .line 4825
    return-object p0
.end method

.method public clearResult()Lcom/quicinc/cne/Native$FeatureRespMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4857
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->hasResult:Z

    .line 4858
    iput v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->result_:I

    .line 4859
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4891
    iget v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 4893
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureRespMsg;->getSerializedSize()I

    .line 4895
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->cachedSize:I

    return v0
.end method

.method public getFeatureStatus()I
    .locals 1

    .prologue
    .line 4833
    iget v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->featureStatus_:I

    return v0
.end method

.method public getFeatureType()I
    .locals 1

    .prologue
    .line 4816
    iget v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->featureType_:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 4849
    iget v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->result_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4900
    const/4 v0, 0x0

    .line 4901
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureRespMsg;->hasFeatureType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4903
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureRespMsg;->getFeatureType()I

    move-result v1

    const/4 v2, 0x1

    .line 4902
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 4905
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureRespMsg;->hasFeatureStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4907
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureRespMsg;->getFeatureStatus()I

    move-result v1

    const/4 v2, 0x2

    .line 4906
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4909
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureRespMsg;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4911
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureRespMsg;->getResult()I

    move-result v1

    const/4 v2, 0x3

    .line 4910
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4913
    :cond_2
    iput v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->cachedSize:I

    .line 4914
    return v0
.end method

.method public hasFeatureStatus()Z
    .locals 1

    .prologue
    .line 4832
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->hasFeatureStatus:Z

    return v0
.end method

.method public hasFeatureType()Z
    .locals 1

    .prologue
    .line 4815
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->hasFeatureType:Z

    return v0
.end method

.method public hasResult()Z
    .locals 1

    .prologue
    .line 4850
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->hasResult:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4871
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
    .line 4918
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$FeatureRespMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$FeatureRespMsg;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$FeatureRespMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4922
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4923
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4927
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$FeatureRespMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4928
    return-object p0

    .line 4925
    :sswitch_0
    return-object p0

    .line 4933
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$FeatureRespMsg;->setFeatureType(I)Lcom/quicinc/cne/Native$FeatureRespMsg;

    goto :goto_0

    .line 4937
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$FeatureRespMsg;->setFeatureStatus(I)Lcom/quicinc/cne/Native$FeatureRespMsg;

    goto :goto_0

    .line 4941
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$FeatureRespMsg;->setResult(I)Lcom/quicinc/cne/Native$FeatureRespMsg;

    goto :goto_0

    .line 4923
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setFeatureStatus(I)Lcom/quicinc/cne/Native$FeatureRespMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->hasFeatureStatus:Z

    .line 4836
    iput p1, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->featureStatus_:I

    .line 4837
    return-object p0
.end method

.method public setFeatureType(I)Lcom/quicinc/cne/Native$FeatureRespMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4818
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->hasFeatureType:Z

    .line 4819
    iput p1, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->featureType_:I

    .line 4820
    return-object p0
.end method

.method public setResult(I)Lcom/quicinc/cne/Native$FeatureRespMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4852
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->hasResult:Z

    .line 4853
    iput p1, p0, Lcom/quicinc/cne/Native$FeatureRespMsg;->result_:I

    .line 4854
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
    .line 4877
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureRespMsg;->hasFeatureType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4878
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureRespMsg;->getFeatureType()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4880
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureRespMsg;->hasFeatureStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4881
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureRespMsg;->getFeatureStatus()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4883
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureRespMsg;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4884
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureRespMsg;->getResult()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4876
    :cond_2
    return-void
.end method
