.class public final Lcom/quicinc/cne/Native$ProfileInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfileInfo"
.end annotation


# static fields
.field public static final PROFILENAME_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasProfileName:Z

.field private profileName_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5555
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5560
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$ProfileInfo;->profileName_:Ljava/lang/String;

    .line 5592
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$ProfileInfo;->cachedSize:I

    .line 5555
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$ProfileInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5644
    new-instance v0, Lcom/quicinc/cne/Native$ProfileInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$ProfileInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$ProfileInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$ProfileInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$ProfileInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 5638
    new-instance v0, Lcom/quicinc/cne/Native$ProfileInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$ProfileInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$ProfileInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$ProfileInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$ProfileInfo;
    .locals 1

    .prologue
    .line 5575
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileInfo;->clearProfileName()Lcom/quicinc/cne/Native$ProfileInfo;

    .line 5576
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$ProfileInfo;->cachedSize:I

    .line 5577
    return-object p0
.end method

.method public clearProfileName()Lcom/quicinc/cne/Native$ProfileInfo;
    .locals 1

    .prologue
    .line 5569
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileInfo;->hasProfileName:Z

    .line 5570
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$ProfileInfo;->profileName_:Ljava/lang/String;

    .line 5571
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 5595
    iget v0, p0, Lcom/quicinc/cne/Native$ProfileInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 5597
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileInfo;->getSerializedSize()I

    .line 5599
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$ProfileInfo;->cachedSize:I

    return v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5561
    iget-object v0, p0, Lcom/quicinc/cne/Native$ProfileInfo;->profileName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 5604
    const/4 v0, 0x0

    .line 5605
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileInfo;->hasProfileName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5607
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 5606
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 5609
    :cond_0
    iput v0, p0, Lcom/quicinc/cne/Native$ProfileInfo;->cachedSize:I

    .line 5610
    return v0
.end method

.method public hasProfileName()Z
    .locals 1

    .prologue
    .line 5562
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileInfo;->hasProfileName:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 5581
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
    .line 5614
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$ProfileInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$ProfileInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$ProfileInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5618
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 5619
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 5623
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$ProfileInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5624
    return-object p0

    .line 5621
    :sswitch_0
    return-object p0

    .line 5629
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$ProfileInfo;->setProfileName(Ljava/lang/String;)Lcom/quicinc/cne/Native$ProfileInfo;

    goto :goto_0

    .line 5619
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setProfileName(Ljava/lang/String;)Lcom/quicinc/cne/Native$ProfileInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 5564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$ProfileInfo;->hasProfileName:Z

    .line 5565
    iput-object p1, p0, Lcom/quicinc/cne/Native$ProfileInfo;->profileName_:Ljava/lang/String;

    .line 5566
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
    .line 5587
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileInfo;->hasProfileName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5588
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$ProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 5586
    :cond_0
    return-void
.end method
