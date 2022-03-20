.class public final Lcom/quicinc/cne/Native$FeatureInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureInfo"
.end annotation


# static fields
.field public static final FEATUREID_FIELD_NUMBER:I = 0x1

.field public static final FEATURESTATUS_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private featureId_:I

.field private featureStatus_:I

.field private hasFeatureId:Z

.field private hasFeatureStatus:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 555
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 560
    iput v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->featureId_:I

    .line 577
    iput v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->featureStatus_:I

    .line 613
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->cachedSize:I

    .line 555
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$FeatureInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    new-instance v0, Lcom/quicinc/cne/Native$FeatureInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$FeatureInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$FeatureInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$FeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$FeatureInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 667
    new-instance v0, Lcom/quicinc/cne/Native$FeatureInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$FeatureInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$FeatureInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$FeatureInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$FeatureInfo;
    .locals 1

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->clearFeatureId()Lcom/quicinc/cne/Native$FeatureInfo;

    .line 593
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->clearFeatureStatus()Lcom/quicinc/cne/Native$FeatureInfo;

    .line 594
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->cachedSize:I

    .line 595
    return-object p0
.end method

.method public clearFeatureId()Lcom/quicinc/cne/Native$FeatureInfo;
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureId:Z

    .line 570
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->featureId_:I

    .line 571
    return-object p0
.end method

.method public clearFeatureStatus()Lcom/quicinc/cne/Native$FeatureInfo;
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureStatus:Z

    .line 587
    const/4 v0, 0x1

    iput v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->featureStatus_:I

    .line 588
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 616
    iget v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->getSerializedSize()I

    .line 620
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->cachedSize:I

    return v0
.end method

.method public getFeatureId()I
    .locals 1

    .prologue
    .line 562
    iget v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->featureId_:I

    return v0
.end method

.method public getFeatureStatus()I
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->featureStatus_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->getFeatureId()I

    move-result v1

    const/4 v2, 0x1

    .line 627
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 630
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 632
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->getFeatureStatus()I

    move-result v1

    const/4 v2, 0x2

    .line 631
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 634
    :cond_1
    iput v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->cachedSize:I

    .line 635
    return v0
.end method

.method public hasFeatureId()Z
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureId:Z

    return v0
.end method

.method public hasFeatureStatus()Z
    .locals 1

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 599
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
    .line 639
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$FeatureInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$FeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$FeatureInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 643
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 644
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 648
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$FeatureInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 649
    return-object p0

    .line 646
    :sswitch_0
    return-object p0

    .line 654
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$FeatureInfo;->setFeatureId(I)Lcom/quicinc/cne/Native$FeatureInfo;

    goto :goto_0

    .line 658
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$FeatureInfo;->setFeatureStatus(I)Lcom/quicinc/cne/Native$FeatureInfo;

    goto :goto_0

    .line 644
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setFeatureId(I)Lcom/quicinc/cne/Native$FeatureInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureId:Z

    .line 565
    iput p1, p0, Lcom/quicinc/cne/Native$FeatureInfo;->featureId_:I

    .line 566
    return-object p0
.end method

.method public setFeatureStatus(I)Lcom/quicinc/cne/Native$FeatureInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureStatus:Z

    .line 582
    iput p1, p0, Lcom/quicinc/cne/Native$FeatureInfo;->featureStatus_:I

    .line 583
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
    .line 605
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->getFeatureId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 608
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->hasFeatureStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 609
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$FeatureInfo;->getFeatureStatus()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 604
    :cond_1
    return-void
.end method
