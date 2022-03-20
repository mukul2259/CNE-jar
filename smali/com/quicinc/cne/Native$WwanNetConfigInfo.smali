.class public final Lcom/quicinc/cne/Native$WwanNetConfigInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WwanNetConfigInfo"
.end annotation


# static fields
.field public static final NC_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasNc:Z

.field private nc_:Lcom/quicinc/cne/Native$CnoNetcfgInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6774
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 6779
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->nc_:Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    .line 6814
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->cachedSize:I

    .line 6774
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WwanNetConfigInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6868
    new-instance v0, Lcom/quicinc/cne/Native$WwanNetConfigInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WwanNetConfigInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WwanNetConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$WwanNetConfigInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 6862
    new-instance v0, Lcom/quicinc/cne/Native$WwanNetConfigInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WwanNetConfigInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$WwanNetConfigInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$WwanNetConfigInfo;
    .locals 1

    .prologue
    .line 6797
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->clearNc()Lcom/quicinc/cne/Native$WwanNetConfigInfo;

    .line 6798
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->cachedSize:I

    .line 6799
    return-object p0
.end method

.method public clearNc()Lcom/quicinc/cne/Native$WwanNetConfigInfo;
    .locals 1

    .prologue
    .line 6791
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->hasNc:Z

    .line 6792
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->nc_:Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    .line 6793
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6817
    iget v0, p0, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 6819
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->getSerializedSize()I

    .line 6821
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->cachedSize:I

    return v0
.end method

.method public getNc()Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 1

    .prologue
    .line 6781
    iget-object v0, p0, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->nc_:Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 6826
    const/4 v0, 0x0

    .line 6827
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->hasNc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6829
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->getNc()Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    move-result-object v1

    const/4 v2, 0x1

    .line 6828
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 6831
    :cond_0
    iput v0, p0, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->cachedSize:I

    .line 6832
    return v0
.end method

.method public hasNc()Z
    .locals 1

    .prologue
    .line 6780
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->hasNc:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6803
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
    .line 6836
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WwanNetConfigInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WwanNetConfigInfo;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6840
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6841
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6845
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6846
    return-object p0

    .line 6843
    :sswitch_0
    return-object p0

    .line 6851
    :sswitch_1
    new-instance v1, Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;-><init>()V

    .line 6852
    .local v1, "value":Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6853
    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->setNc(Lcom/quicinc/cne/Native$CnoNetcfgInfo;)Lcom/quicinc/cne/Native$WwanNetConfigInfo;

    goto :goto_0

    .line 6841
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setNc(Lcom/quicinc/cne/Native$CnoNetcfgInfo;)Lcom/quicinc/cne/Native$WwanNetConfigInfo;
    .locals 1
    .param p1, "value"    # Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    .prologue
    .line 6783
    if-nez p1, :cond_0

    .line 6784
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6786
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->hasNc:Z

    .line 6787
    iput-object p1, p0, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->nc_:Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    .line 6788
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
    .line 6809
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->hasNc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6810
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanNetConfigInfo;->getNc()Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 6808
    :cond_0
    return-void
.end method
