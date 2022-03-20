.class public final Lcom/quicinc/cne/Native$NetRequestInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NetRequestInfo"
.end annotation


# static fields
.field public static final RAT_FIELD_NUMBER:I = 0x1

.field public static final SLOT_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private hasRat:Z

.field private hasSlot:Z

.field private rat_:I

.field private slot_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5652
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5657
    iput v0, p0, Lcom/quicinc/cne/Native$NetRequestInfo;->rat_:I

    .line 5674
    iput v0, p0, Lcom/quicinc/cne/Native$NetRequestInfo;->slot_:I

    .line 5710
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$NetRequestInfo;->cachedSize:I

    .line 5652
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NetRequestInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5770
    new-instance v0, Lcom/quicinc/cne/Native$NetRequestInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$NetRequestInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$NetRequestInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NetRequestInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$NetRequestInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5764
    new-instance v0, Lcom/quicinc/cne/Native$NetRequestInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$NetRequestInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$NetRequestInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$NetRequestInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$NetRequestInfo;
    .locals 1

    .prologue
    .line 5689
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequestInfo;->clearRat()Lcom/quicinc/cne/Native$NetRequestInfo;

    .line 5690
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequestInfo;->clearSlot()Lcom/quicinc/cne/Native$NetRequestInfo;

    .line 5691
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$NetRequestInfo;->cachedSize:I

    .line 5692
    return-object p0
.end method

.method public clearRat()Lcom/quicinc/cne/Native$NetRequestInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5666
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NetRequestInfo;->hasRat:Z

    .line 5667
    iput v0, p0, Lcom/quicinc/cne/Native$NetRequestInfo;->rat_:I

    .line 5668
    return-object p0
.end method

.method public clearSlot()Lcom/quicinc/cne/Native$NetRequestInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5683
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NetRequestInfo;->hasSlot:Z

    .line 5684
    iput v0, p0, Lcom/quicinc/cne/Native$NetRequestInfo;->slot_:I

    .line 5685
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5713
    iget v0, p0, Lcom/quicinc/cne/Native$NetRequestInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 5715
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequestInfo;->getSerializedSize()I

    .line 5717
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$NetRequestInfo;->cachedSize:I

    return v0
.end method

.method public getRat()I
    .locals 1

    .prologue
    .line 5659
    iget v0, p0, Lcom/quicinc/cne/Native$NetRequestInfo;->rat_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5722
    const/4 v0, 0x0

    .line 5723
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequestInfo;->hasRat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5725
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequestInfo;->getRat()I

    move-result v1

    const/4 v2, 0x1

    .line 5724
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 5727
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequestInfo;->hasSlot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5729
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequestInfo;->getSlot()I

    move-result v1

    const/4 v2, 0x2

    .line 5728
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5731
    :cond_1
    iput v0, p0, Lcom/quicinc/cne/Native$NetRequestInfo;->cachedSize:I

    .line 5732
    return v0
.end method

.method public getSlot()I
    .locals 1

    .prologue
    .line 5676
    iget v0, p0, Lcom/quicinc/cne/Native$NetRequestInfo;->slot_:I

    return v0
.end method

.method public hasRat()Z
    .locals 1

    .prologue
    .line 5658
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$NetRequestInfo;->hasRat:Z

    return v0
.end method

.method public hasSlot()Z
    .locals 1

    .prologue
    .line 5675
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$NetRequestInfo;->hasSlot:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5696
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
    .line 5736
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$NetRequestInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NetRequestInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$NetRequestInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5740
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5741
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5745
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$NetRequestInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5746
    return-object p0

    .line 5743
    :sswitch_0
    return-object p0

    .line 5751
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$NetRequestInfo;->setRat(I)Lcom/quicinc/cne/Native$NetRequestInfo;

    goto :goto_0

    .line 5755
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$NetRequestInfo;->setSlot(I)Lcom/quicinc/cne/Native$NetRequestInfo;

    goto :goto_0

    .line 5741
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setRat(I)Lcom/quicinc/cne/Native$NetRequestInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NetRequestInfo;->hasRat:Z

    .line 5662
    iput p1, p0, Lcom/quicinc/cne/Native$NetRequestInfo;->rat_:I

    .line 5663
    return-object p0
.end method

.method public setSlot(I)Lcom/quicinc/cne/Native$NetRequestInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 5678
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$NetRequestInfo;->hasSlot:Z

    .line 5679
    iput p1, p0, Lcom/quicinc/cne/Native$NetRequestInfo;->slot_:I

    .line 5680
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
    .line 5702
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequestInfo;->hasRat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5703
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequestInfo;->getRat()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5705
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequestInfo;->hasSlot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5706
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$NetRequestInfo;->getSlot()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 5701
    :cond_1
    return-void
.end method
