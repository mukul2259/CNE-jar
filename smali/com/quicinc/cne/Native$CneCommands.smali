.class public final Lcom/quicinc/cne/Native$CneCommands;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CneCommands"
.end annotation


# static fields
.field public static final CMD_FIELD_NUMBER:I = 0x1

.field public static final PAYLOAD_FIELD_NUMBER:I = 0x3

.field public static final SERIAL_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private cmd_:I

.field private hasCmd:Z

.field private hasPayload:Z

.field private hasSerial:Z

.field private payload_:Lcom/google/protobuf/micro/ByteStringMicro;

.field private serial_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 211
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneCommands;->cmd_:I

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$CneCommands;->serial_:I

    .line 245
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/quicinc/cne/Native$CneCommands;->payload_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 285
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneCommands;->cachedSize:I

    .line 206
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneCommands;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 353
    new-instance v0, Lcom/quicinc/cne/Native$CneCommands;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$CneCommands;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$CneCommands;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneCommands;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$CneCommands;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 347
    new-instance v0, Lcom/quicinc/cne/Native$CneCommands;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$CneCommands;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$CneCommands;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$CneCommands;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$CneCommands;
    .locals 1

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->clearCmd()Lcom/quicinc/cne/Native$CneCommands;

    .line 261
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->clearSerial()Lcom/quicinc/cne/Native$CneCommands;

    .line 262
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->clearPayload()Lcom/quicinc/cne/Native$CneCommands;

    .line 263
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneCommands;->cachedSize:I

    .line 264
    return-object p0
.end method

.method public clearCmd()Lcom/quicinc/cne/Native$CneCommands;
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneCommands;->hasCmd:Z

    .line 221
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CneCommands;->cmd_:I

    .line 222
    return-object p0
.end method

.method public clearPayload()Lcom/quicinc/cne/Native$CneCommands;
    .locals 1

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneCommands;->hasPayload:Z

    .line 255
    sget-object v0, Lcom/google/protobuf/micro/ByteStringMicro;->EMPTY:Lcom/google/protobuf/micro/ByteStringMicro;

    iput-object v0, p0, Lcom/quicinc/cne/Native$CneCommands;->payload_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 256
    return-object p0
.end method

.method public clearSerial()Lcom/quicinc/cne/Native$CneCommands;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneCommands;->hasSerial:Z

    .line 238
    iput v0, p0, Lcom/quicinc/cne/Native$CneCommands;->serial_:I

    .line 239
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Lcom/quicinc/cne/Native$CneCommands;->cachedSize:I

    if-gez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->getSerializedSize()I

    .line 292
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$CneCommands;->cachedSize:I

    return v0
.end method

.method public getCmd()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Lcom/quicinc/cne/Native$CneCommands;->cmd_:I

    return v0
.end method

.method public getPayload()Lcom/google/protobuf/micro/ByteStringMicro;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/quicinc/cne/Native$CneCommands;->payload_:Lcom/google/protobuf/micro/ByteStringMicro;

    return-object v0
.end method

.method public getSerial()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/quicinc/cne/Native$CneCommands;->serial_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->hasCmd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->getCmd()I

    move-result v1

    const/4 v2, 0x1

    .line 299
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->hasSerial()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->getSerial()I

    move-result v1

    const/4 v2, 0x2

    .line 303
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 306
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->hasPayload()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    const/4 v2, 0x3

    .line 307
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBytesSize(ILcom/google/protobuf/micro/ByteStringMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 310
    :cond_2
    iput v0, p0, Lcom/quicinc/cne/Native$CneCommands;->cachedSize:I

    .line 311
    return v0
.end method

.method public hasCmd()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CneCommands;->hasCmd:Z

    return v0
.end method

.method public hasPayload()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CneCommands;->hasPayload:Z

    return v0
.end method

.method public hasSerial()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CneCommands;->hasSerial:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 268
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
    .line 315
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$CneCommands;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneCommands;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CneCommands;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 320
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 324
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$CneCommands;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    return-object p0

    .line 322
    :sswitch_0
    return-object p0

    .line 330
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$CneCommands;->setCmd(I)Lcom/quicinc/cne/Native$CneCommands;

    goto :goto_0

    .line 334
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$CneCommands;->setSerial(I)Lcom/quicinc/cne/Native$CneCommands;

    goto :goto_0

    .line 338
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBytes()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$CneCommands;->setPayload(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/quicinc/cne/Native$CneCommands;

    goto :goto_0

    .line 320
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setCmd(I)Lcom/quicinc/cne/Native$CneCommands;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneCommands;->hasCmd:Z

    .line 216
    iput p1, p0, Lcom/quicinc/cne/Native$CneCommands;->cmd_:I

    .line 217
    return-object p0
.end method

.method public setPayload(Lcom/google/protobuf/micro/ByteStringMicro;)Lcom/quicinc/cne/Native$CneCommands;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/micro/ByteStringMicro;

    .prologue
    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneCommands;->hasPayload:Z

    .line 250
    iput-object p1, p0, Lcom/quicinc/cne/Native$CneCommands;->payload_:Lcom/google/protobuf/micro/ByteStringMicro;

    .line 251
    return-object p0
.end method

.method public setSerial(I)Lcom/quicinc/cne/Native$CneCommands;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CneCommands;->hasSerial:Z

    .line 233
    iput p1, p0, Lcom/quicinc/cne/Native$CneCommands;->serial_:I

    .line 234
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
    .line 274
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->hasCmd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->getCmd()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->hasSerial()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->getSerial()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->hasPayload()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CneCommands;->getPayload()Lcom/google/protobuf/micro/ByteStringMicro;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBytes(ILcom/google/protobuf/micro/ByteStringMicro;)V

    .line 273
    :cond_2
    return-void
.end method
