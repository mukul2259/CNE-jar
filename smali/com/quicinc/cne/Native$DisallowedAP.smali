.class public final Lcom/quicinc/cne/Native$DisallowedAP;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisallowedAP"
.end annotation


# static fields
.field public static final BSSID_FIELD_NUMBER:I = 0x3

.field public static final DISALLOWED_FIELD_NUMBER:I = 0x1

.field public static final REASON_FIELD_NUMBER:I = 0x2


# instance fields
.field private bssid_:Ljava/lang/String;

.field private cachedSize:I

.field private disallowed_:I

.field private hasBssid:Z

.field private hasDisallowed:Z

.field private hasReason:Z

.field private reason_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3976
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 3981
    iput v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->disallowed_:I

    .line 3998
    iput v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->reason_:I

    .line 4015
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->bssid_:Ljava/lang/String;

    .line 4055
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->cachedSize:I

    .line 3976
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4123
    new-instance v0, Lcom/quicinc/cne/Native$DisallowedAP;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$DisallowedAP;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$DisallowedAP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$DisallowedAP;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 4117
    new-instance v0, Lcom/quicinc/cne/Native$DisallowedAP;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$DisallowedAP;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$DisallowedAP;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$DisallowedAP;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 1

    .prologue
    .line 4030
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->clearDisallowed()Lcom/quicinc/cne/Native$DisallowedAP;

    .line 4031
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->clearReason()Lcom/quicinc/cne/Native$DisallowedAP;

    .line 4032
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->clearBssid()Lcom/quicinc/cne/Native$DisallowedAP;

    .line 4033
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->cachedSize:I

    .line 4034
    return-object p0
.end method

.method public clearBssid()Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 1

    .prologue
    .line 4024
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->hasBssid:Z

    .line 4025
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->bssid_:Ljava/lang/String;

    .line 4026
    return-object p0
.end method

.method public clearDisallowed()Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3990
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->hasDisallowed:Z

    .line 3991
    iput v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->disallowed_:I

    .line 3992
    return-object p0
.end method

.method public clearReason()Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 4007
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->hasReason:Z

    .line 4008
    iput v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->reason_:I

    .line 4009
    return-object p0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4016
    iget-object v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->bssid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 4058
    iget v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->cachedSize:I

    if-gez v0, :cond_0

    .line 4060
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->getSerializedSize()I

    .line 4062
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->cachedSize:I

    return v0
.end method

.method public getDisallowed()I
    .locals 1

    .prologue
    .line 3982
    iget v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->disallowed_:I

    return v0
.end method

.method public getReason()I
    .locals 1

    .prologue
    .line 3999
    iget v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->reason_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4067
    const/4 v0, 0x0

    .line 4068
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->hasDisallowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4070
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->getDisallowed()I

    move-result v1

    const/4 v2, 0x1

    .line 4069
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 4072
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->hasReason()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4074
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->getReason()I

    move-result v1

    const/4 v2, 0x2

    .line 4073
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4076
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->hasBssid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4078
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->getBssid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 4077
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4080
    :cond_2
    iput v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->cachedSize:I

    .line 4081
    return v0
.end method

.method public hasBssid()Z
    .locals 1

    .prologue
    .line 4017
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->hasBssid:Z

    return v0
.end method

.method public hasDisallowed()Z
    .locals 1

    .prologue
    .line 3983
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->hasDisallowed:Z

    return v0
.end method

.method public hasReason()Z
    .locals 1

    .prologue
    .line 4000
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->hasReason:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 4038
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
    .line 4085
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$DisallowedAP;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$DisallowedAP;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4089
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 4090
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4094
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$DisallowedAP;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4095
    return-object p0

    .line 4092
    :sswitch_0
    return-object p0

    .line 4100
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$DisallowedAP;->setDisallowed(I)Lcom/quicinc/cne/Native$DisallowedAP;

    goto :goto_0

    .line 4104
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$DisallowedAP;->setReason(I)Lcom/quicinc/cne/Native$DisallowedAP;

    goto :goto_0

    .line 4108
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$DisallowedAP;->setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$DisallowedAP;

    goto :goto_0

    .line 4090
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4019
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->hasBssid:Z

    .line 4020
    iput-object p1, p0, Lcom/quicinc/cne/Native$DisallowedAP;->bssid_:Ljava/lang/String;

    .line 4021
    return-object p0
.end method

.method public setDisallowed(I)Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3985
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->hasDisallowed:Z

    .line 3986
    iput p1, p0, Lcom/quicinc/cne/Native$DisallowedAP;->disallowed_:I

    .line 3987
    return-object p0
.end method

.method public setReason(I)Lcom/quicinc/cne/Native$DisallowedAP;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4002
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$DisallowedAP;->hasReason:Z

    .line 4003
    iput p1, p0, Lcom/quicinc/cne/Native$DisallowedAP;->reason_:I

    .line 4004
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
    .line 4044
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->hasDisallowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4045
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->getDisallowed()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 4047
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->hasReason()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4048
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->getReason()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 4050
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->hasBssid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4051
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$DisallowedAP;->getBssid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 4043
    :cond_2
    return-void
.end method
