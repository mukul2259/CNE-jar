.class public final Lcom/quicinc/cne/Native$ProfileOverride;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfileOverride"
.end annotation


# static fields
.field public static final ISOVERRIDESET_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasIsOverrideSet:Z

.field private isOverrideSet_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5458
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5463
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$ProfileOverride;->isOverrideSet_:I

    .line 5495
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$ProfileOverride;->cachedSize:I

    .line 5458
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$ProfileOverride;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5547
    new-instance v0, Lcom/quicinc/cne/Native$ProfileOverride;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$ProfileOverride;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$ProfileOverride;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$ProfileOverride;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$ProfileOverride;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5541
    new-instance v0, Lcom/quicinc/cne/Native$ProfileOverride;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$ProfileOverride;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$ProfileOverride;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$ProfileOverride;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$ProfileOverride;
    .locals 1

    .prologue
    .line 5478
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileOverride;->clearIsOverrideSet()Lcom/quicinc/cne/Native$ProfileOverride;

    .line 5479
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$ProfileOverride;->cachedSize:I

    .line 5480
    return-object p0
.end method

.method public clearIsOverrideSet()Lcom/quicinc/cne/Native$ProfileOverride;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5472
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileOverride;->hasIsOverrideSet:Z

    .line 5473
    iput v0, p0, Lcom/quicinc/cne/Native$ProfileOverride;->isOverrideSet_:I

    .line 5474
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5498
    iget v0, p0, Lcom/quicinc/cne/Native$ProfileOverride;->cachedSize:I

    if-gez v0, :cond_0

    .line 5500
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileOverride;->getSerializedSize()I

    .line 5502
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$ProfileOverride;->cachedSize:I

    return v0
.end method

.method public getIsOverrideSet()I
    .locals 1

    .prologue
    .line 5464
    iget v0, p0, Lcom/quicinc/cne/Native$ProfileOverride;->isOverrideSet_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5507
    const/4 v0, 0x0

    .line 5508
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileOverride;->hasIsOverrideSet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5510
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileOverride;->getIsOverrideSet()I

    move-result v1

    const/4 v2, 0x1

    .line 5509
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 5512
    :cond_0
    iput v0, p0, Lcom/quicinc/cne/Native$ProfileOverride;->cachedSize:I

    .line 5513
    return v0
.end method

.method public hasIsOverrideSet()Z
    .locals 1

    .prologue
    .line 5465
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileOverride;->hasIsOverrideSet:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5484
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
    .line 5517
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$ProfileOverride;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$ProfileOverride;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$ProfileOverride;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5521
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5522
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5526
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$ProfileOverride;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5527
    return-object p0

    .line 5524
    :sswitch_0
    return-object p0

    .line 5532
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$ProfileOverride;->setIsOverrideSet(I)Lcom/quicinc/cne/Native$ProfileOverride;

    goto :goto_0

    .line 5522
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setIsOverrideSet(I)Lcom/quicinc/cne/Native$ProfileOverride;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileOverride;->hasIsOverrideSet:Z

    .line 5468
    iput p1, p0, Lcom/quicinc/cne/Native$ProfileOverride;->isOverrideSet_:I

    .line 5469
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
    .line 5490
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileOverride;->hasIsOverrideSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5491
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileOverride;->getIsOverrideSet()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 5489
    :cond_0
    return-void
.end method
