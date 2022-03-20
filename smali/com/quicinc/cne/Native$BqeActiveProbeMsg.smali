.class public final Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BqeActiveProbeMsg"
.end annotation


# static fields
.field public static final BSSID_FIELD_NUMBER:I = 0x1

.field public static final FILESIZE_FIELD_NUMBER:I = 0x4

.field public static final HTTPURI_FIELD_NUMBER:I = 0x3

.field public static final URI_FIELD_NUMBER:I = 0x2


# instance fields
.field private bssid_:Ljava/lang/String;

.field private cachedSize:I

.field private fileSize_:Ljava/lang/String;

.field private hasBssid:Z

.field private hasFileSize:Z

.field private hasHttpuri:Z

.field private hasUri:Z

.field private httpuri_:Ljava/lang/String;

.field private uri_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4131
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4136
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->bssid_:Ljava/lang/String;

    .line 4153
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->uri_:Ljava/lang/String;

    .line 4170
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->httpuri_:Ljava/lang/String;

    .line 4187
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->fileSize_:Ljava/lang/String;

    .line 4231
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->cachedSize:I

    .line 4131
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4307
    new-instance v0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4301
    new-instance v0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1

    .prologue
    .line 4202
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->clearBssid()Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    .line 4203
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->clearUri()Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    .line 4204
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->clearHttpuri()Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    .line 4205
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->clearFileSize()Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    .line 4206
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->cachedSize:I

    .line 4207
    return-object p0
.end method

.method public clearBssid()Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1

    .prologue
    .line 4145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasBssid:Z

    .line 4146
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->bssid_:Ljava/lang/String;

    .line 4147
    return-object p0
.end method

.method public clearFileSize()Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1

    .prologue
    .line 4196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasFileSize:Z

    .line 4197
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->fileSize_:Ljava/lang/String;

    .line 4198
    return-object p0
.end method

.method public clearHttpuri()Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1

    .prologue
    .line 4179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasHttpuri:Z

    .line 4180
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->httpuri_:Ljava/lang/String;

    .line 4181
    return-object p0
.end method

.method public clearUri()Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1

    .prologue
    .line 4162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasUri:Z

    .line 4163
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->uri_:Ljava/lang/String;

    .line 4164
    return-object p0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4137
    iget-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->bssid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4234
    iget v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 4236
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getSerializedSize()I

    .line 4238
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->cachedSize:I

    return v0
.end method

.method public getFileSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4188
    iget-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->fileSize_:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpuri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4171
    iget-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->httpuri_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4243
    const/4 v0, 0x0

    .line 4244
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasBssid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4246
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getBssid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 4245
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 4248
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasUri()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4250
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getUri()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 4249
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4252
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasHttpuri()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4254
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getHttpuri()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 4253
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4256
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasFileSize()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4258
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getFileSize()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 4257
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4260
    :cond_3
    iput v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->cachedSize:I

    .line 4261
    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4154
    iget-object v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->uri_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBssid()Z
    .locals 1

    .prologue
    .line 4138
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasBssid:Z

    return v0
.end method

.method public hasFileSize()Z
    .locals 1

    .prologue
    .line 4189
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasFileSize:Z

    return v0
.end method

.method public hasHttpuri()Z
    .locals 1

    .prologue
    .line 4172
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasHttpuri:Z

    return v0
.end method

.method public hasUri()Z
    .locals 1

    .prologue
    .line 4155
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasUri:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4211
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
    .line 4265
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4269
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4270
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4274
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4275
    return-object p0

    .line 4272
    :sswitch_0
    return-object p0

    .line 4280
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    goto :goto_0

    .line 4284
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->setUri(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    goto :goto_0

    .line 4288
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->setHttpuri(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    goto :goto_0

    .line 4292
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->setFileSize(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;

    goto :goto_0

    .line 4270
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasBssid:Z

    .line 4141
    iput-object p1, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->bssid_:Ljava/lang/String;

    .line 4142
    return-object p0
.end method

.method public setFileSize(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasFileSize:Z

    .line 4192
    iput-object p1, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->fileSize_:Ljava/lang/String;

    .line 4193
    return-object p0
.end method

.method public setHttpuri(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasHttpuri:Z

    .line 4175
    iput-object p1, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->httpuri_:Ljava/lang/String;

    .line 4176
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lcom/quicinc/cne/Native$BqeActiveProbeMsg;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasUri:Z

    .line 4158
    iput-object p1, p0, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->uri_:Ljava/lang/String;

    .line 4159
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
    .line 4217
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasBssid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4218
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getBssid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4220
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasUri()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4221
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getUri()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4223
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasHttpuri()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4224
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getHttpuri()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4226
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->hasFileSize()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4227
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$BqeActiveProbeMsg;->getFileSize()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4216
    :cond_3
    return-void
.end method
