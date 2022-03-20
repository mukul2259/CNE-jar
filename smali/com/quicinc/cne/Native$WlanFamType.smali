.class public final Lcom/quicinc/cne/Native$WlanFamType;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WlanFamType"
.end annotation


# static fields
.field public static final FAMILY_FIELD_NUMBER:I = 0x1

.field public static final ISANDROIDVALIDATED_FIELD_NUMBER:I = 0x2


# instance fields
.field private cachedSize:I

.field private family_:I

.field private hasFamily:Z

.field private hasIsAndroidValidated:Z

.field private isAndroidValidated_:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1059
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1064
    iput v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->family_:I

    .line 1081
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->isAndroidValidated_:Z

    .line 1117
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->cachedSize:I

    .line 1059
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WlanFamType;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1177
    new-instance v0, Lcom/quicinc/cne/Native$WlanFamType;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WlanFamType;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WlanFamType;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WlanFamType;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$WlanFamType;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 1171
    new-instance v0, Lcom/quicinc/cne/Native$WlanFamType;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WlanFamType;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WlanFamType;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$WlanFamType;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$WlanFamType;
    .locals 1

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->clearFamily()Lcom/quicinc/cne/Native$WlanFamType;

    .line 1097
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->clearIsAndroidValidated()Lcom/quicinc/cne/Native$WlanFamType;

    .line 1098
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->cachedSize:I

    .line 1099
    return-object p0
.end method

.method public clearFamily()Lcom/quicinc/cne/Native$WlanFamType;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1073
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->hasFamily:Z

    .line 1074
    iput v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->family_:I

    .line 1075
    return-object p0
.end method

.method public clearIsAndroidValidated()Lcom/quicinc/cne/Native$WlanFamType;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1090
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->hasIsAndroidValidated:Z

    .line 1091
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->isAndroidValidated_:Z

    .line 1092
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1120
    iget v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->cachedSize:I

    if-gez v0, :cond_0

    .line 1122
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->getSerializedSize()I

    .line 1124
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->cachedSize:I

    return v0
.end method

.method public getFamily()I
    .locals 1

    .prologue
    .line 1066
    iget v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->family_:I

    return v0
.end method

.method public getIsAndroidValidated()Z
    .locals 1

    .prologue
    .line 1082
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->isAndroidValidated_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1129
    const/4 v0, 0x0

    .line 1130
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->hasFamily()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1132
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->getFamily()I

    move-result v1

    const/4 v2, 0x1

    .line 1131
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 1134
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->hasIsAndroidValidated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1136
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->getIsAndroidValidated()Z

    move-result v1

    const/4 v2, 0x2

    .line 1135
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1138
    :cond_1
    iput v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->cachedSize:I

    .line 1139
    return v0
.end method

.method public hasFamily()Z
    .locals 1

    .prologue
    .line 1065
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->hasFamily:Z

    return v0
.end method

.method public hasIsAndroidValidated()Z
    .locals 1

    .prologue
    .line 1083
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->hasIsAndroidValidated:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1103
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
    .line 1143
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$WlanFamType;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WlanFamType;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WlanFamType;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1147
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1148
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1152
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$WlanFamType;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1153
    return-object p0

    .line 1150
    :sswitch_0
    return-object p0

    .line 1158
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WlanFamType;->setFamily(I)Lcom/quicinc/cne/Native$WlanFamType;

    goto :goto_0

    .line 1162
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WlanFamType;->setIsAndroidValidated(Z)Lcom/quicinc/cne/Native$WlanFamType;

    goto :goto_0

    .line 1148
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setFamily(I)Lcom/quicinc/cne/Native$WlanFamType;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1068
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->hasFamily:Z

    .line 1069
    iput p1, p0, Lcom/quicinc/cne/Native$WlanFamType;->family_:I

    .line 1070
    return-object p0
.end method

.method public setIsAndroidValidated(Z)Lcom/quicinc/cne/Native$WlanFamType;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 1085
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanFamType;->hasIsAndroidValidated:Z

    .line 1086
    iput-boolean p1, p0, Lcom/quicinc/cne/Native$WlanFamType;->isAndroidValidated_:Z

    .line 1087
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
    .line 1109
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->hasFamily()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->getFamily()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1112
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->hasIsAndroidValidated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1113
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanFamType;->getIsAndroidValidated()Z

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1108
    :cond_1
    return-void
.end method
