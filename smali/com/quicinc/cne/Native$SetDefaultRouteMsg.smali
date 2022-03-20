.class public final Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetDefaultRouteMsg"
.end annotation


# static fields
.field public static final RATTYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasRattype:Z

.field private rattype_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4315
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 4320
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->rattype_:I

    .line 4352
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->cachedSize:I

    .line 4315
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4404
    new-instance v0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$SetDefaultRouteMsg;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4398
    new-instance v0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    .locals 1

    .prologue
    .line 4335
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->clearRattype()Lcom/quicinc/cne/Native$SetDefaultRouteMsg;

    .line 4336
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->cachedSize:I

    .line 4337
    return-object p0
.end method

.method public clearRattype()Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4329
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->hasRattype:Z

    .line 4330
    iput v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->rattype_:I

    .line 4331
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4355
    iget v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->cachedSize:I

    if-gez v0, :cond_0

    .line 4357
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->getSerializedSize()I

    .line 4359
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->cachedSize:I

    return v0
.end method

.method public getRattype()I
    .locals 1

    .prologue
    .line 4322
    iget v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->rattype_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4364
    const/4 v0, 0x0

    .line 4365
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->hasRattype()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4367
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->getRattype()I

    move-result v1

    const/4 v2, 0x1

    .line 4366
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 4369
    :cond_0
    iput v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->cachedSize:I

    .line 4370
    return v0
.end method

.method public hasRattype()Z
    .locals 1

    .prologue
    .line 4321
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->hasRattype:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4341
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
    .line 4374
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$SetDefaultRouteMsg;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4378
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4379
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4383
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4384
    return-object p0

    .line 4381
    :sswitch_0
    return-object p0

    .line 4389
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->setRattype(I)Lcom/quicinc/cne/Native$SetDefaultRouteMsg;

    goto :goto_0

    .line 4379
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setRattype(I)Lcom/quicinc/cne/Native$SetDefaultRouteMsg;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->hasRattype:Z

    .line 4325
    iput p1, p0, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->rattype_:I

    .line 4326
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
    .line 4347
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->hasRattype()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4348
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$SetDefaultRouteMsg;->getRattype()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 4346
    :cond_0
    return-void
.end method
