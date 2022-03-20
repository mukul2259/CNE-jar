.class public final Lcom/quicinc/cne/Native$DefaultNetwork;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultNetwork"
.end annotation


# static fields
.field public static final NETWORK_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasNetwork:Z

.field private network_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 681
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 686
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->network_:I

    .line 718
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->cachedSize:I

    .line 681
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$DefaultNetwork;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 770
    new-instance v0, Lcom/quicinc/cne/Native$DefaultNetwork;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$DefaultNetwork;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$DefaultNetwork;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$DefaultNetwork;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$DefaultNetwork;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 764
    new-instance v0, Lcom/quicinc/cne/Native$DefaultNetwork;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$DefaultNetwork;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$DefaultNetwork;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$DefaultNetwork;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$DefaultNetwork;
    .locals 1

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DefaultNetwork;->clearNetwork()Lcom/quicinc/cne/Native$DefaultNetwork;

    .line 702
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->cachedSize:I

    .line 703
    return-object p0
.end method

.method public clearNetwork()Lcom/quicinc/cne/Native$DefaultNetwork;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 695
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->hasNetwork:Z

    .line 696
    iput v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->network_:I

    .line 697
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 721
    iget v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->cachedSize:I

    if-gez v0, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DefaultNetwork;->getSerializedSize()I

    .line 725
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->cachedSize:I

    return v0
.end method

.method public getNetwork()I
    .locals 1

    .prologue
    .line 687
    iget v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->network_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 730
    const/4 v0, 0x0

    .line 731
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DefaultNetwork;->hasNetwork()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DefaultNetwork;->getNetwork()I

    move-result v1

    const/4 v2, 0x1

    .line 732
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 735
    :cond_0
    iput v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->cachedSize:I

    .line 736
    return v0
.end method

.method public hasNetwork()Z
    .locals 1

    .prologue
    .line 688
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->hasNetwork:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 707
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
    .line 740
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$DefaultNetwork;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$DefaultNetwork;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$DefaultNetwork;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 744
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 745
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 749
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$DefaultNetwork;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 750
    return-object p0

    .line 747
    :sswitch_0
    return-object p0

    .line 755
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$DefaultNetwork;->setNetwork(I)Lcom/quicinc/cne/Native$DefaultNetwork;

    goto :goto_0

    .line 745
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setNetwork(I)Lcom/quicinc/cne/Native$DefaultNetwork;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 690
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->hasNetwork:Z

    .line 691
    iput p1, p0, Lcom/quicinc/cne/Native$DefaultNetwork;->network_:I

    .line 692
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
    .line 713
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DefaultNetwork;->hasNetwork()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DefaultNetwork;->getNetwork()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 712
    :cond_0
    return-void
.end method
