.class public final Lcom/quicinc/cne/Native$CnoNetcfgInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CnoNetcfgInfo"
.end annotation


# static fields
.field public static final IPV4_FIELD_NUMBER:I = 0x2

.field public static final IPV6_FIELD_NUMBER:I = 0x3

.field public static final ISCONNECTED_FIELD_NUMBER:I = 0x7

.field public static final ISDEFAULT_FIELD_NUMBER:I = 0x5

.field public static final MTU_FIELD_NUMBER:I = 0x4

.field public static final NETHDL_FIELD_NUMBER:I = 0x6

.field public static final NETINFO_FIELD_NUMBER:I = 0x1

.field public static final NOTIFY_FIELD_NUMBER:I = 0x8


# instance fields
.field private cachedSize:I

.field private hasIpv4:Z

.field private hasIpv6:Z

.field private hasIsConnected:Z

.field private hasIsDefault:Z

.field private hasMtu:Z

.field private hasNetHdl:Z

.field private hasNetInfo:Z

.field private hasNotify:Z

.field private ipv4_:Ljava/lang/String;

.field private ipv6_:Ljava/lang/String;

.field private isConnected_:Z

.field private isDefault_:Z

.field private mtu_:I

.field private netHdl_:J

.field private netInfo_:Lcom/quicinc/cne/Native$NetTypeInfo;

.field private notify_:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5991
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 5996
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->netInfo_:Lcom/quicinc/cne/Native$NetTypeInfo;

    .line 6016
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->ipv4_:Ljava/lang/String;

    .line 6033
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->ipv6_:Ljava/lang/String;

    .line 6050
    iput v2, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->mtu_:I

    .line 6067
    iput-boolean v2, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->isDefault_:Z

    .line 6084
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->netHdl_:J

    .line 6101
    iput-boolean v2, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->isConnected_:Z

    .line 6118
    iput-boolean v2, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->notify_:Z

    .line 6178
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->cachedSize:I

    .line 5991
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6288
    new-instance v0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 6282
    new-instance v0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 1

    .prologue
    .line 6133
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->clearNetInfo()Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    .line 6134
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->clearIpv4()Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    .line 6135
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->clearIpv6()Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    .line 6136
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->clearMtu()Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    .line 6137
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->clearIsDefault()Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    .line 6138
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->clearNetHdl()Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    .line 6139
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->clearIsConnected()Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    .line 6140
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->clearNotify()Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    .line 6141
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->cachedSize:I

    .line 6142
    return-object p0
.end method

.method public clearIpv4()Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 1

    .prologue
    .line 6025
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasIpv4:Z

    .line 6026
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->ipv4_:Ljava/lang/String;

    .line 6027
    return-object p0
.end method

.method public clearIpv6()Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 1

    .prologue
    .line 6042
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasIpv6:Z

    .line 6043
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->ipv6_:Ljava/lang/String;

    .line 6044
    return-object p0
.end method

.method public clearIsConnected()Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6110
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasIsConnected:Z

    .line 6111
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->isConnected_:Z

    .line 6112
    return-object p0
.end method

.method public clearIsDefault()Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6076
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasIsDefault:Z

    .line 6077
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->isDefault_:Z

    .line 6078
    return-object p0
.end method

.method public clearMtu()Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6059
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasMtu:Z

    .line 6060
    iput v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->mtu_:I

    .line 6061
    return-object p0
.end method

.method public clearNetHdl()Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 2

    .prologue
    .line 6093
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasNetHdl:Z

    .line 6094
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->netHdl_:J

    .line 6095
    return-object p0
.end method

.method public clearNetInfo()Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 1

    .prologue
    .line 6008
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasNetInfo:Z

    .line 6009
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->netInfo_:Lcom/quicinc/cne/Native$NetTypeInfo;

    .line 6010
    return-object p0
.end method

.method public clearNotify()Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6127
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasNotify:Z

    .line 6128
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->notify_:Z

    .line 6129
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 6181
    iget v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 6183
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->getSerializedSize()I

    .line 6185
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->cachedSize:I

    return v0
.end method

.method public getIpv4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6017
    iget-object v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->ipv4_:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 6034
    iget-object v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->ipv6_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsConnected()Z
    .locals 1

    .prologue
    .line 6102
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->isConnected_:Z

    return v0
.end method

.method public getIsDefault()Z
    .locals 1

    .prologue
    .line 6068
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->isDefault_:Z

    return v0
.end method

.method public getMtu()I
    .locals 1

    .prologue
    .line 6051
    iget v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->mtu_:I

    return v0
.end method

.method public getNetHdl()J
    .locals 2

    .prologue
    .line 6085
    iget-wide v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->netHdl_:J

    return-wide v0
.end method

.method public getNetInfo()Lcom/quicinc/cne/Native$NetTypeInfo;
    .locals 1

    .prologue
    .line 5998
    iget-object v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->netInfo_:Lcom/quicinc/cne/Native$NetTypeInfo;

    return-object v0
.end method

.method public getNotify()Z
    .locals 1

    .prologue
    .line 6119
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->notify_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 6190
    const/4 v0, 0x0

    .line 6191
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasNetInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6193
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->getNetInfo()Lcom/quicinc/cne/Native$NetTypeInfo;

    move-result-object v1

    const/4 v2, 0x1

    .line 6192
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 6195
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasIpv4()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6197
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->getIpv4()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 6196
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6199
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasIpv6()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6201
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->getIpv6()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 6200
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6203
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasMtu()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6205
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->getMtu()I

    move-result v1

    const/4 v2, 0x4

    .line 6204
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6207
    :cond_3
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasIsDefault()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6209
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->getIsDefault()Z

    move-result v1

    const/4 v2, 0x5

    .line 6208
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6211
    :cond_4
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasNetHdl()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6213
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->getNetHdl()J

    move-result-wide v2

    const/4 v1, 0x6

    .line 6212
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6215
    :cond_5
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasIsConnected()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6217
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->getIsConnected()Z

    move-result v1

    const/4 v2, 0x7

    .line 6216
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6219
    :cond_6
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasNotify()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6221
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->getNotify()Z

    move-result v1

    const/16 v2, 0x8

    .line 6220
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6223
    :cond_7
    iput v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->cachedSize:I

    .line 6224
    return v0
.end method

.method public hasIpv4()Z
    .locals 1

    .prologue
    .line 6018
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasIpv4:Z

    return v0
.end method

.method public hasIpv6()Z
    .locals 1

    .prologue
    .line 6035
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasIpv6:Z

    return v0
.end method

.method public hasIsConnected()Z
    .locals 1

    .prologue
    .line 6103
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasIsConnected:Z

    return v0
.end method

.method public hasIsDefault()Z
    .locals 1

    .prologue
    .line 6069
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasIsDefault:Z

    return v0
.end method

.method public hasMtu()Z
    .locals 1

    .prologue
    .line 6052
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasMtu:Z

    return v0
.end method

.method public hasNetHdl()Z
    .locals 1

    .prologue
    .line 6086
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasNetHdl:Z

    return v0
.end method

.method public hasNetInfo()Z
    .locals 1

    .prologue
    .line 5997
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasNetInfo:Z

    return v0
.end method

.method public hasNotify()Z
    .locals 1

    .prologue
    .line 6120
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasNotify:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 6146
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
    .line 6228
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6232
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 6233
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 6237
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6238
    return-object p0

    .line 6235
    :sswitch_0
    return-object p0

    .line 6243
    :sswitch_1
    new-instance v1, Lcom/quicinc/cne/Native$NetTypeInfo;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$NetTypeInfo;-><init>()V

    .line 6244
    .local v1, "value":Lcom/quicinc/cne/Native$NetTypeInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 6245
    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->setNetInfo(Lcom/quicinc/cne/Native$NetTypeInfo;)Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    goto :goto_0

    .line 6249
    .end local v1    # "value":Lcom/quicinc/cne/Native$NetTypeInfo;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->setIpv4(Ljava/lang/String;)Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    goto :goto_0

    .line 6253
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->setIpv6(Ljava/lang/String;)Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    goto :goto_0

    .line 6257
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->setMtu(I)Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    goto :goto_0

    .line 6261
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->setIsDefault(Z)Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    goto :goto_0

    .line 6265
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->setNetHdl(J)Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    goto :goto_0

    .line 6269
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->setIsConnected(Z)Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    goto :goto_0

    .line 6273
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->setNotify(Z)Lcom/quicinc/cne/Native$CnoNetcfgInfo;

    goto :goto_0

    .line 6233
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
    .end sparse-switch
.end method

.method public setIpv4(Ljava/lang/String;)Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasIpv4:Z

    .line 6021
    iput-object p1, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->ipv4_:Ljava/lang/String;

    .line 6022
    return-object p0
.end method

.method public setIpv6(Ljava/lang/String;)Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 6037
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasIpv6:Z

    .line 6038
    iput-object p1, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->ipv6_:Ljava/lang/String;

    .line 6039
    return-object p0
.end method

.method public setIsConnected(Z)Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 6105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasIsConnected:Z

    .line 6106
    iput-boolean p1, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->isConnected_:Z

    .line 6107
    return-object p0
.end method

.method public setIsDefault(Z)Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 6071
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasIsDefault:Z

    .line 6072
    iput-boolean p1, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->isDefault_:Z

    .line 6073
    return-object p0
.end method

.method public setMtu(I)Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 6054
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasMtu:Z

    .line 6055
    iput p1, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->mtu_:I

    .line 6056
    return-object p0
.end method

.method public setNetHdl(J)Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 6088
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasNetHdl:Z

    .line 6089
    iput-wide p1, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->netHdl_:J

    .line 6090
    return-object p0
.end method

.method public setNetInfo(Lcom/quicinc/cne/Native$NetTypeInfo;)Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 1
    .param p1, "value"    # Lcom/quicinc/cne/Native$NetTypeInfo;

    .prologue
    .line 6000
    if-nez p1, :cond_0

    .line 6001
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6003
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasNetInfo:Z

    .line 6004
    iput-object p1, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->netInfo_:Lcom/quicinc/cne/Native$NetTypeInfo;

    .line 6005
    return-object p0
.end method

.method public setNotify(Z)Lcom/quicinc/cne/Native$CnoNetcfgInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 6122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasNotify:Z

    .line 6123
    iput-boolean p1, p0, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->notify_:Z

    .line 6124
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6152
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasNetInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6153
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->getNetInfo()Lcom/quicinc/cne/Native$NetTypeInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 6155
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasIpv4()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6156
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->getIpv4()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6158
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasIpv6()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6159
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->getIpv6()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 6161
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasMtu()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6162
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->getMtu()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 6164
    :cond_3
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasIsDefault()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6165
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->getIsDefault()Z

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 6167
    :cond_4
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasNetHdl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6168
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->getNetHdl()J

    move-result-wide v0

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt64(IJ)V

    .line 6170
    :cond_5
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasIsConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6171
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->getIsConnected()Z

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 6173
    :cond_6
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->hasNotify()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6174
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$CnoNetcfgInfo;->getNotify()Z

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 6151
    :cond_7
    return-void
.end method
