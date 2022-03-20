.class public final Lcom/quicinc/cne/Native$WwanInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WwanInfo"
.end annotation


# static fields
.field public static final MCCMNC_FIELD_NUMBER:I = 0xd

.field public static final RATINFO_FIELD_NUMBER:I = 0x1

.field public static final ROAMING_FIELD_NUMBER:I = 0xc

.field public static final SIGNALSTRENGTH_FIELD_NUMBER:I = 0xb


# instance fields
.field private cachedSize:I

.field private hasMccMnc:Z

.field private hasRatInfo:Z

.field private hasRoaming:Z

.field private hasSignalStrength:Z

.field private mccMnc_:Ljava/lang/String;

.field private ratInfo_:Lcom/quicinc/cne/Native$RatInfo;

.field private roaming_:I

.field private signalStrength_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2121
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->ratInfo_:Lcom/quicinc/cne/Native$RatInfo;

    .line 2146
    iput v1, p0, Lcom/quicinc/cne/Native$WwanInfo;->signalStrength_:I

    .line 2163
    iput v1, p0, Lcom/quicinc/cne/Native$WwanInfo;->roaming_:I

    .line 2180
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->mccMnc_:Ljava/lang/String;

    .line 2224
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->cachedSize:I

    .line 2121
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2302
    new-instance v0, Lcom/quicinc/cne/Native$WwanInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WwanInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WwanInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WwanInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2296
    new-instance v0, Lcom/quicinc/cne/Native$WwanInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WwanInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WwanInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$WwanInfo;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1

    .prologue
    .line 2195
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->clearRatInfo()Lcom/quicinc/cne/Native$WwanInfo;

    .line 2196
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->clearSignalStrength()Lcom/quicinc/cne/Native$WwanInfo;

    .line 2197
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->clearRoaming()Lcom/quicinc/cne/Native$WwanInfo;

    .line 2198
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->clearMccMnc()Lcom/quicinc/cne/Native$WwanInfo;

    .line 2199
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->cachedSize:I

    .line 2200
    return-object p0
.end method

.method public clearMccMnc()Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1

    .prologue
    .line 2189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasMccMnc:Z

    .line 2190
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->mccMnc_:Ljava/lang/String;

    .line 2191
    return-object p0
.end method

.method public clearRatInfo()Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1

    .prologue
    .line 2138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasRatInfo:Z

    .line 2139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->ratInfo_:Lcom/quicinc/cne/Native$RatInfo;

    .line 2140
    return-object p0
.end method

.method public clearRoaming()Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2172
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasRoaming:Z

    .line 2173
    iput v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->roaming_:I

    .line 2174
    return-object p0
.end method

.method public clearSignalStrength()Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2155
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasSignalStrength:Z

    .line 2156
    iput v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->signalStrength_:I

    .line 2157
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2227
    iget v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 2229
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->getSerializedSize()I

    .line 2231
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->cachedSize:I

    return v0
.end method

.method public getMccMnc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->mccMnc_:Ljava/lang/String;

    return-object v0
.end method

.method public getRatInfo()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->ratInfo_:Lcom/quicinc/cne/Native$RatInfo;

    return-object v0
.end method

.method public getRoaming()I
    .locals 1

    .prologue
    .line 2164
    iget v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->roaming_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2236
    const/4 v0, 0x0

    .line 2237
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->hasRatInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2239
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v1

    const/4 v2, 0x1

    .line 2238
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 2241
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->hasSignalStrength()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2243
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->getSignalStrength()I

    move-result v1

    const/16 v2, 0xb

    .line 2242
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeSInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2245
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->hasRoaming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2247
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->getRoaming()I

    move-result v1

    const/16 v2, 0xc

    .line 2246
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2249
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->hasMccMnc()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2251
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->getMccMnc()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    .line 2250
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2253
    :cond_3
    iput v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->cachedSize:I

    .line 2254
    return v0
.end method

.method public getSignalStrength()I
    .locals 1

    .prologue
    .line 2147
    iget v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->signalStrength_:I

    return v0
.end method

.method public hasMccMnc()Z
    .locals 1

    .prologue
    .line 2182
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasMccMnc:Z

    return v0
.end method

.method public hasRatInfo()Z
    .locals 1

    .prologue
    .line 2127
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasRatInfo:Z

    return v0
.end method

.method public hasRoaming()Z
    .locals 1

    .prologue
    .line 2165
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasRoaming:Z

    return v0
.end method

.method public hasSignalStrength()Z
    .locals 1

    .prologue
    .line 2148
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasSignalStrength:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2204
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
    .line 2258
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$WwanInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WwanInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WwanInfo;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2262
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2263
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2267
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$WwanInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2268
    return-object p0

    .line 2265
    :sswitch_0
    return-object p0

    .line 2273
    :sswitch_1
    new-instance v1, Lcom/quicinc/cne/Native$RatInfo;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$RatInfo;-><init>()V

    .line 2274
    .local v1, "value":Lcom/quicinc/cne/Native$RatInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2275
    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WwanInfo;->setRatInfo(Lcom/quicinc/cne/Native$RatInfo;)Lcom/quicinc/cne/Native$WwanInfo;

    goto :goto_0

    .line 2279
    .end local v1    # "value":Lcom/quicinc/cne/Native$RatInfo;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readSInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/quicinc/cne/Native$WwanInfo;->setSignalStrength(I)Lcom/quicinc/cne/Native$WwanInfo;

    goto :goto_0

    .line 2283
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/quicinc/cne/Native$WwanInfo;->setRoaming(I)Lcom/quicinc/cne/Native$WwanInfo;

    goto :goto_0

    .line 2287
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/quicinc/cne/Native$WwanInfo;->setMccMnc(Ljava/lang/String;)Lcom/quicinc/cne/Native$WwanInfo;

    goto :goto_0

    .line 2263
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x58 -> :sswitch_2
        0x60 -> :sswitch_3
        0x6a -> :sswitch_4
    .end sparse-switch
.end method

.method public setMccMnc(Ljava/lang/String;)Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasMccMnc:Z

    .line 2185
    iput-object p1, p0, Lcom/quicinc/cne/Native$WwanInfo;->mccMnc_:Ljava/lang/String;

    .line 2186
    return-object p0
.end method

.method public setRatInfo(Lcom/quicinc/cne/Native$RatInfo;)Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1
    .param p1, "value"    # Lcom/quicinc/cne/Native$RatInfo;

    .prologue
    .line 2130
    if-nez p1, :cond_0

    .line 2131
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2133
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasRatInfo:Z

    .line 2134
    iput-object p1, p0, Lcom/quicinc/cne/Native$WwanInfo;->ratInfo_:Lcom/quicinc/cne/Native$RatInfo;

    .line 2135
    return-object p0
.end method

.method public setRoaming(I)Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasRoaming:Z

    .line 2168
    iput p1, p0, Lcom/quicinc/cne/Native$WwanInfo;->roaming_:I

    .line 2169
    return-object p0
.end method

.method public setSignalStrength(I)Lcom/quicinc/cne/Native$WwanInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WwanInfo;->hasSignalStrength:Z

    .line 2151
    iput p1, p0, Lcom/quicinc/cne/Native$WwanInfo;->signalStrength_:I

    .line 2152
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
    .line 2210
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->hasRatInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2211
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2213
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->hasSignalStrength()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2214
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->getSignalStrength()I

    move-result v0

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeSInt32(II)V

    .line 2216
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->hasRoaming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2217
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->getRoaming()I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2219
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->hasMccMnc()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2220
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WwanInfo;->getMccMnc()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2209
    :cond_3
    return-void
.end method
