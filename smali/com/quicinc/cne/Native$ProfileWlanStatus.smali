.class public final Lcom/quicinc/cne/Native$ProfileWlanStatus;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfileWlanStatus"
.end annotation


# static fields
.field public static final CONNECTIONSTATUS_FIELD_NUMBER:I = 0x2

.field public static final PROFILE_FIELD_NUMBER:I = 0x1

.field public static final REASON_FIELD_NUMBER:I = 0x3


# instance fields
.field private cachedSize:I

.field private connectionStatus_:I

.field private hasConnectionStatus:Z

.field private hasProfile:Z

.field private hasReason:Z

.field private profile_:Ljava/lang/String;

.field private reason_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2533
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2538
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->profile_:Ljava/lang/String;

    .line 2555
    iput v1, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->connectionStatus_:I

    .line 2572
    iput v1, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->reason_:I

    .line 2612
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->cachedSize:I

    .line 2533
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$ProfileWlanStatus;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2680
    new-instance v0, Lcom/quicinc/cne/Native$ProfileWlanStatus;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$ProfileWlanStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$ProfileWlanStatus;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2674
    new-instance v0, Lcom/quicinc/cne/Native$ProfileWlanStatus;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$ProfileWlanStatus;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$ProfileWlanStatus;
    .locals 1

    .prologue
    .line 2587
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->clearProfile()Lcom/quicinc/cne/Native$ProfileWlanStatus;

    .line 2588
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->clearConnectionStatus()Lcom/quicinc/cne/Native$ProfileWlanStatus;

    .line 2589
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->clearReason()Lcom/quicinc/cne/Native$ProfileWlanStatus;

    .line 2590
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->cachedSize:I

    .line 2591
    return-object p0
.end method

.method public clearConnectionStatus()Lcom/quicinc/cne/Native$ProfileWlanStatus;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2564
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasConnectionStatus:Z

    .line 2565
    iput v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->connectionStatus_:I

    .line 2566
    return-object p0
.end method

.method public clearProfile()Lcom/quicinc/cne/Native$ProfileWlanStatus;
    .locals 1

    .prologue
    .line 2547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasProfile:Z

    .line 2548
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->profile_:Ljava/lang/String;

    .line 2549
    return-object p0
.end method

.method public clearReason()Lcom/quicinc/cne/Native$ProfileWlanStatus;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2581
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasReason:Z

    .line 2582
    iput v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->reason_:I

    .line 2583
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2615
    iget v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->cachedSize:I

    if-gez v0, :cond_0

    .line 2617
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->getSerializedSize()I

    .line 2619
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->cachedSize:I

    return v0
.end method

.method public getConnectionStatus()I
    .locals 1

    .prologue
    .line 2556
    iget v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->connectionStatus_:I

    return v0
.end method

.method public getProfile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2539
    iget-object v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->profile_:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()I
    .locals 1

    .prologue
    .line 2573
    iget v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->reason_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2624
    const/4 v0, 0x0

    .line 2625
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2627
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->getProfile()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 2626
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 2629
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasConnectionStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2631
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->getConnectionStatus()I

    move-result v1

    const/4 v2, 0x2

    .line 2630
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2633
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasReason()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2635
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->getReason()I

    move-result v1

    const/4 v2, 0x3

    .line 2634
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2637
    :cond_2
    iput v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->cachedSize:I

    .line 2638
    return v0
.end method

.method public hasConnectionStatus()Z
    .locals 1

    .prologue
    .line 2557
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasConnectionStatus:Z

    return v0
.end method

.method public hasProfile()Z
    .locals 1

    .prologue
    .line 2540
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasProfile:Z

    return v0
.end method

.method public hasReason()Z
    .locals 1

    .prologue
    .line 2574
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasReason:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2595
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
    .line 2642
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$ProfileWlanStatus;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$ProfileWlanStatus;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2646
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2647
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2651
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2652
    return-object p0

    .line 2649
    :sswitch_0
    return-object p0

    .line 2657
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->setProfile(Ljava/lang/String;)Lcom/quicinc/cne/Native$ProfileWlanStatus;

    goto :goto_0

    .line 2661
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->setConnectionStatus(I)Lcom/quicinc/cne/Native$ProfileWlanStatus;

    goto :goto_0

    .line 2665
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->setReason(I)Lcom/quicinc/cne/Native$ProfileWlanStatus;

    goto :goto_0

    .line 2647
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setConnectionStatus(I)Lcom/quicinc/cne/Native$ProfileWlanStatus;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2559
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasConnectionStatus:Z

    .line 2560
    iput p1, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->connectionStatus_:I

    .line 2561
    return-object p0
.end method

.method public setProfile(Ljava/lang/String;)Lcom/quicinc/cne/Native$ProfileWlanStatus;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasProfile:Z

    .line 2543
    iput-object p1, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->profile_:Ljava/lang/String;

    .line 2544
    return-object p0
.end method

.method public setReason(I)Lcom/quicinc/cne/Native$ProfileWlanStatus;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2576
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasReason:Z

    .line 2577
    iput p1, p0, Lcom/quicinc/cne/Native$ProfileWlanStatus;->reason_:I

    .line 2578
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
    .line 2601
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2602
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->getProfile()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2604
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasConnectionStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2605
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->getConnectionStatus()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2607
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->hasReason()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2608
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileWlanStatus;->getReason()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2600
    :cond_2
    return-void
.end method
