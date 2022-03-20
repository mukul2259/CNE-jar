.class public final Lcom/quicinc/cne/Native$IcdHttpResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IcdHttpResult"
.end annotation


# static fields
.field public static final BSSID_FIELD_NUMBER:I = 0x1

.field public static final FAMILY_FIELD_NUMBER:I = 0x4

.field public static final RESULT_FIELD_NUMBER:I = 0x2

.field public static final TID_FIELD_NUMBER:I = 0x3


# instance fields
.field private bssid_:Ljava/lang/String;

.field private cachedSize:I

.field private family_:I

.field private hasBssid:Z

.field private hasFamily:Z

.field private hasResult:Z

.field private hasTid:Z

.field private result_:I

.field private tid_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2688
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2693
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->bssid_:Ljava/lang/String;

    .line 2710
    iput v1, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->result_:I

    .line 2727
    iput v1, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->tid_:I

    .line 2744
    iput v1, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->family_:I

    .line 2788
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->cachedSize:I

    .line 2688
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2864
    new-instance v0, Lcom/quicinc/cne/Native$IcdHttpResult;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$IcdHttpResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdHttpResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2858
    new-instance v0, Lcom/quicinc/cne/Native$IcdHttpResult;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$IcdHttpResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$IcdHttpResult;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1

    .prologue
    .line 2759
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->clearBssid()Lcom/quicinc/cne/Native$IcdHttpResult;

    .line 2760
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->clearResult()Lcom/quicinc/cne/Native$IcdHttpResult;

    .line 2761
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->clearTid()Lcom/quicinc/cne/Native$IcdHttpResult;

    .line 2762
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->clearFamily()Lcom/quicinc/cne/Native$IcdHttpResult;

    .line 2763
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->cachedSize:I

    .line 2764
    return-object p0
.end method

.method public clearBssid()Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1

    .prologue
    .line 2702
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasBssid:Z

    .line 2703
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->bssid_:Ljava/lang/String;

    .line 2704
    return-object p0
.end method

.method public clearFamily()Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2753
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasFamily:Z

    .line 2754
    iput v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->family_:I

    .line 2755
    return-object p0
.end method

.method public clearResult()Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2719
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasResult:Z

    .line 2720
    iput v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->result_:I

    .line 2721
    return-object p0
.end method

.method public clearTid()Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2736
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasTid:Z

    .line 2737
    iput v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->tid_:I

    .line 2738
    return-object p0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2694
    iget-object v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->bssid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2791
    iget v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 2793
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getSerializedSize()I

    .line 2795
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->cachedSize:I

    return v0
.end method

.method public getFamily()I
    .locals 1

    .prologue
    .line 2745
    iget v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->family_:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 2711
    iget v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->result_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2800
    const/4 v0, 0x0

    .line 2801
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->hasBssid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2803
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getBssid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 2802
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 2805
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2807
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getResult()I

    move-result v1

    const/4 v2, 0x2

    .line 2806
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2809
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->hasTid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2811
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getTid()I

    move-result v1

    const/4 v2, 0x3

    .line 2810
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2813
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->hasFamily()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2815
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getFamily()I

    move-result v1

    const/4 v2, 0x4

    .line 2814
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2817
    :cond_3
    iput v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->cachedSize:I

    .line 2818
    return v0
.end method

.method public getTid()I
    .locals 1

    .prologue
    .line 2728
    iget v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->tid_:I

    return v0
.end method

.method public hasBssid()Z
    .locals 1

    .prologue
    .line 2695
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasBssid:Z

    return v0
.end method

.method public hasFamily()Z
    .locals 1

    .prologue
    .line 2746
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasFamily:Z

    return v0
.end method

.method public hasResult()Z
    .locals 1

    .prologue
    .line 2712
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasResult:Z

    return v0
.end method

.method public hasTid()Z
    .locals 1

    .prologue
    .line 2729
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasTid:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2768
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
    .line 2822
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$IcdHttpResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdHttpResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2826
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2827
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2831
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$IcdHttpResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2832
    return-object p0

    .line 2829
    :sswitch_0
    return-object p0

    .line 2837
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdHttpResult;->setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdHttpResult;

    goto :goto_0

    .line 2841
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdHttpResult;->setResult(I)Lcom/quicinc/cne/Native$IcdHttpResult;

    goto :goto_0

    .line 2845
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdHttpResult;->setTid(I)Lcom/quicinc/cne/Native$IcdHttpResult;

    goto :goto_0

    .line 2849
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdHttpResult;->setFamily(I)Lcom/quicinc/cne/Native$IcdHttpResult;

    goto :goto_0

    .line 2827
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasBssid:Z

    .line 2698
    iput-object p1, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->bssid_:Ljava/lang/String;

    .line 2699
    return-object p0
.end method

.method public setFamily(I)Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasFamily:Z

    .line 2749
    iput p1, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->family_:I

    .line 2750
    return-object p0
.end method

.method public setResult(I)Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2714
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasResult:Z

    .line 2715
    iput p1, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->result_:I

    .line 2716
    return-object p0
.end method

.method public setTid(I)Lcom/quicinc/cne/Native$IcdHttpResult;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->hasTid:Z

    .line 2732
    iput p1, p0, Lcom/quicinc/cne/Native$IcdHttpResult;->tid_:I

    .line 2733
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
    .line 2774
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->hasBssid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2775
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getBssid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2777
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2778
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getResult()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 2780
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->hasTid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2781
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getTid()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 2783
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->hasFamily()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2784
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdHttpResult;->getFamily()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2773
    :cond_3
    return-void
.end method
