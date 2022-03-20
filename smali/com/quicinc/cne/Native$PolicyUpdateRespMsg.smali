.class public final Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PolicyUpdateRespMsg"
.end annotation


# static fields
.field public static final POLICY_FIELD_NUMBER:I = 0x1

.field public static final RESULT_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasPolicy:Z

.field private hasResult:Z

.field private policy_:I

.field private result_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4964
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4969
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->policy_:I

    .line 4986
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->result_:I

    .line 5022
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->cachedSize:I

    .line 4964
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5082
    new-instance v0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5076
    new-instance v0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;
    .locals 1

    .prologue
    .line 5001
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->clearPolicy()Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;

    .line 5002
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->clearResult()Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;

    .line 5003
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->cachedSize:I

    .line 5004
    return-object p0
.end method

.method public clearPolicy()Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;
    .locals 1

    .prologue
    .line 4978
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->hasPolicy:Z

    .line 4979
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->policy_:I

    .line 4980
    return-object p0
.end method

.method public clearResult()Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4995
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->hasResult:Z

    .line 4996
    iput v0, p0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->result_:I

    .line 4997
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5025
    iget v0, p0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 5027
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->getSerializedSize()I

    .line 5029
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->cachedSize:I

    return v0
.end method

.method public getPolicy()I
    .locals 1

    .prologue
    .line 4971
    iget v0, p0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->policy_:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 4987
    iget v0, p0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->result_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5034
    const/4 v0, 0x0

    .line 5035
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->hasPolicy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5037
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->getPolicy()I

    move-result v1

    const/4 v2, 0x1

    .line 5036
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 5039
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5041
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->getResult()I

    move-result v1

    const/4 v2, 0x2

    .line 5040
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5043
    :cond_1
    iput v0, p0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->cachedSize:I

    .line 5044
    return v0
.end method

.method public hasPolicy()Z
    .locals 1

    .prologue
    .line 4970
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->hasPolicy:Z

    return v0
.end method

.method public hasResult()Z
    .locals 1

    .prologue
    .line 4988
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->hasResult:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5008
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
    .line 5048
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5052
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5053
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5057
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5058
    return-object p0

    .line 5055
    :sswitch_0
    return-object p0

    .line 5063
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->setPolicy(I)Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;

    goto :goto_0

    .line 5067
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->setResult(I)Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;

    goto :goto_0

    .line 5053
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setPolicy(I)Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4973
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->hasPolicy:Z

    .line 4974
    iput p1, p0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->policy_:I

    .line 4975
    return-object p0
.end method

.method public setResult(I)Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4990
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->hasResult:Z

    .line 4991
    iput p1, p0, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->result_:I

    .line 4992
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
    .line 5014
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->hasPolicy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5015
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->getPolicy()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5017
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5018
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PolicyUpdateRespMsg;->getResult()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5013
    :cond_1
    return-void
.end method
