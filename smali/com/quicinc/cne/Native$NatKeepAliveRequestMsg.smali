.class public final Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NatKeepAliveRequestMsg"
.end annotation


# static fields
.field public static final DESTIP_FIELD_NUMBER:I = 0x4

.field public static final DESTPORT_FIELD_NUMBER:I = 0x3

.field public static final SRCPORT_FIELD_NUMBER:I = 0x2

.field public static final TIMER_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private destIp_:Ljava/lang/String;

.field private destPort_:I

.field private hasDestIp:Z

.field private hasDestPort:Z

.field private hasSrcPort:Z

.field private hasTimer:Z

.field private srcPort_:I

.field private timer_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5090
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5095
    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->timer_:I

    .line 5112
    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->srcPort_:I

    .line 5129
    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->destPort_:I

    .line 5146
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->destIp_:Ljava/lang/String;

    .line 5190
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->cachedSize:I

    .line 5090
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5266
    new-instance v0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5260
    new-instance v0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1

    .prologue
    .line 5161
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->clearTimer()Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    .line 5162
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->clearSrcPort()Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    .line 5163
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->clearDestPort()Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    .line 5164
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->clearDestIp()Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    .line 5165
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->cachedSize:I

    .line 5166
    return-object p0
.end method

.method public clearDestIp()Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1

    .prologue
    .line 5155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestIp:Z

    .line 5156
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->destIp_:Ljava/lang/String;

    .line 5157
    return-object p0
.end method

.method public clearDestPort()Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5138
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestPort:Z

    .line 5139
    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->destPort_:I

    .line 5140
    return-object p0
.end method

.method public clearSrcPort()Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5121
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasSrcPort:Z

    .line 5122
    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->srcPort_:I

    .line 5123
    return-object p0
.end method

.method public clearTimer()Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5104
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasTimer:Z

    .line 5105
    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->timer_:I

    .line 5106
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5193
    iget v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 5195
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getSerializedSize()I

    .line 5197
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->cachedSize:I

    return v0
.end method

.method public getDestIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5147
    iget-object v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->destIp_:Ljava/lang/String;

    return-object v0
.end method

.method public getDestPort()I
    .locals 1

    .prologue
    .line 5130
    iget v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->destPort_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5202
    const/4 v0, 0x0

    .line 5203
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasTimer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5205
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getTimer()I

    move-result v1

    const/4 v2, 0x1

    .line 5204
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 5207
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasSrcPort()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5209
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getSrcPort()I

    move-result v1

    const/4 v2, 0x2

    .line 5208
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5211
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestPort()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5213
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getDestPort()I

    move-result v1

    const/4 v2, 0x3

    .line 5212
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5215
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestIp()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5217
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getDestIp()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 5216
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5219
    :cond_3
    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->cachedSize:I

    .line 5220
    return v0
.end method

.method public getSrcPort()I
    .locals 1

    .prologue
    .line 5113
    iget v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->srcPort_:I

    return v0
.end method

.method public getTimer()I
    .locals 1

    .prologue
    .line 5096
    iget v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->timer_:I

    return v0
.end method

.method public hasDestIp()Z
    .locals 1

    .prologue
    .line 5148
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestIp:Z

    return v0
.end method

.method public hasDestPort()Z
    .locals 1

    .prologue
    .line 5131
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestPort:Z

    return v0
.end method

.method public hasSrcPort()Z
    .locals 1

    .prologue
    .line 5114
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasSrcPort:Z

    return v0
.end method

.method public hasTimer()Z
    .locals 1

    .prologue
    .line 5097
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasTimer:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5170
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
    .line 5224
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5228
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5229
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5233
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5234
    return-object p0

    .line 5231
    :sswitch_0
    return-object p0

    .line 5239
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->setTimer(I)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    goto :goto_0

    .line 5243
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->setSrcPort(I)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    goto :goto_0

    .line 5247
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->setDestPort(I)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    goto :goto_0

    .line 5251
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->setDestIp(Ljava/lang/String;)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;

    goto :goto_0

    .line 5229
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setDestIp(Ljava/lang/String;)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestIp:Z

    .line 5151
    iput-object p1, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->destIp_:Ljava/lang/String;

    .line 5152
    return-object p0
.end method

.method public setDestPort(I)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestPort:Z

    .line 5134
    iput p1, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->destPort_:I

    .line 5135
    return-object p0
.end method

.method public setSrcPort(I)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasSrcPort:Z

    .line 5117
    iput p1, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->srcPort_:I

    .line 5118
    return-object p0
.end method

.method public setTimer(I)Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5099
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasTimer:Z

    .line 5100
    iput p1, p0, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->timer_:I

    .line 5101
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
    .line 5176
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasTimer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5177
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getTimer()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 5179
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasSrcPort()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5180
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getSrcPort()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 5182
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestPort()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5183
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getDestPort()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 5185
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->hasDestIp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5186
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveRequestMsg;->getDestIp()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5175
    :cond_3
    return-void
.end method
