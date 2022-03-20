.class public final Lcom/quicinc/cne/Native$PbMobileDataState;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PbMobileDataState"
.end annotation


# static fields
.field public static final ISENABLED_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasIsEnabled:Z

.field private isEnabled_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 962
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 967
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->isEnabled_:I

    .line 999
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->cachedSize:I

    .line 962
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$PbMobileDataState;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1051
    new-instance v0, Lcom/quicinc/cne/Native$PbMobileDataState;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$PbMobileDataState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$PbMobileDataState;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$PbMobileDataState;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$PbMobileDataState;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1045
    new-instance v0, Lcom/quicinc/cne/Native$PbMobileDataState;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$PbMobileDataState;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$PbMobileDataState;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$PbMobileDataState;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$PbMobileDataState;
    .locals 1

    .prologue
    .line 982
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PbMobileDataState;->clearIsEnabled()Lcom/quicinc/cne/Native$PbMobileDataState;

    .line 983
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->cachedSize:I

    .line 984
    return-object p0
.end method

.method public clearIsEnabled()Lcom/quicinc/cne/Native$PbMobileDataState;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 976
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->hasIsEnabled:Z

    .line 977
    iput v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->isEnabled_:I

    .line 978
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1002
    iget v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->cachedSize:I

    if-gez v0, :cond_0

    .line 1004
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PbMobileDataState;->getSerializedSize()I

    .line 1006
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->cachedSize:I

    return v0
.end method

.method public getIsEnabled()I
    .locals 1

    .prologue
    .line 968
    iget v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->isEnabled_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1011
    const/4 v0, 0x0

    .line 1012
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PbMobileDataState;->hasIsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1014
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PbMobileDataState;->getIsEnabled()I

    move-result v1

    const/4 v2, 0x1

    .line 1013
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 1016
    :cond_0
    iput v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->cachedSize:I

    .line 1017
    return v0
.end method

.method public hasIsEnabled()Z
    .locals 1

    .prologue
    .line 969
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->hasIsEnabled:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 988
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
    .line 1021
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$PbMobileDataState;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$PbMobileDataState;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$PbMobileDataState;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1025
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1026
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1030
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$PbMobileDataState;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1031
    return-object p0

    .line 1028
    :sswitch_0
    return-object p0

    .line 1036
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$PbMobileDataState;->setIsEnabled(I)Lcom/quicinc/cne/Native$PbMobileDataState;

    goto :goto_0

    .line 1026
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setIsEnabled(I)Lcom/quicinc/cne/Native$PbMobileDataState;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 971
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->hasIsEnabled:Z

    .line 972
    iput p1, p0, Lcom/quicinc/cne/Native$PbMobileDataState;->isEnabled_:I

    .line 973
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
    .line 994
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PbMobileDataState;->hasIsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$PbMobileDataState;->getIsEnabled()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 993
    :cond_0
    return-void
.end method
