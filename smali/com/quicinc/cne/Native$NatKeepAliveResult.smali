.class public final Lcom/quicinc/cne/Native$NatKeepAliveResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NatKeepAliveResult"
.end annotation


# static fields
.field public static final RETCODE_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasRetcode:Z

.field private retcode_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2436
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2441
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->retcode_:I

    .line 2473
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->cachedSize:I

    .line 2436
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NatKeepAliveResult;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2525
    new-instance v0, Lcom/quicinc/cne/Native$NatKeepAliveResult;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NatKeepAliveResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$NatKeepAliveResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2519
    new-instance v0, Lcom/quicinc/cne/Native$NatKeepAliveResult;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$NatKeepAliveResult;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$NatKeepAliveResult;
    .locals 1

    .prologue
    .line 2456
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->clearRetcode()Lcom/quicinc/cne/Native$NatKeepAliveResult;

    .line 2457
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->cachedSize:I

    .line 2458
    return-object p0
.end method

.method public clearRetcode()Lcom/quicinc/cne/Native$NatKeepAliveResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2450
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->hasRetcode:Z

    .line 2451
    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->retcode_:I

    .line 2452
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2476
    iget v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 2478
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->getSerializedSize()I

    .line 2480
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->cachedSize:I

    return v0
.end method

.method public getRetcode()I
    .locals 1

    .prologue
    .line 2442
    iget v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->retcode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2485
    const/4 v0, 0x0

    .line 2486
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->hasRetcode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2488
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->getRetcode()I

    move-result v1

    const/4 v2, 0x1

    .line 2487
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 2490
    :cond_0
    iput v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->cachedSize:I

    .line 2491
    return v0
.end method

.method public hasRetcode()Z
    .locals 1

    .prologue
    .line 2443
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->hasRetcode:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2462
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
    .line 2495
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NatKeepAliveResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NatKeepAliveResult;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2499
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2500
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2504
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2505
    return-object p0

    .line 2502
    :sswitch_0
    return-object p0

    .line 2510
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->setRetcode(I)Lcom/quicinc/cne/Native$NatKeepAliveResult;

    goto :goto_0

    .line 2500
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setRetcode(I)Lcom/quicinc/cne/Native$NatKeepAliveResult;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2445
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->hasRetcode:Z

    .line 2446
    iput p1, p0, Lcom/quicinc/cne/Native$NatKeepAliveResult;->retcode_:I

    .line 2447
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
    .line 2468
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->hasRetcode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2469
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NatKeepAliveResult;->getRetcode()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2467
    :cond_0
    return-void
.end method
