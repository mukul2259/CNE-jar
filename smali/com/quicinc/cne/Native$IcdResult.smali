.class public final Lcom/quicinc/cne/Native$IcdResult;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IcdResult"
.end annotation


# static fields
.field public static final BQEPROB_FIELD_NUMBER:I = 0x8

.field public static final BQEQUOTA_FIELD_NUMBER:I = 0x7

.field public static final BSSID_FIELD_NUMBER:I = 0x1

.field public static final FLAGS_FIELD_NUMBER:I = 0x3

.field public static final ICDPROB_FIELD_NUMBER:I = 0x6

.field public static final ICDQUOTA_FIELD_NUMBER:I = 0x5

.field public static final MBW_FIELD_NUMBER:I = 0x9

.field public static final RESULT_FIELD_NUMBER:I = 0x2

.field public static final TID_FIELD_NUMBER:I = 0x4

.field public static final TPUTDL_FIELD_NUMBER:I = 0xa

.field public static final TPUTSDEV_FIELD_NUMBER:I = 0xb


# instance fields
.field private bqeProb_:I

.field private bqeQuota_:I

.field private bssid_:Ljava/lang/String;

.field private cachedSize:I

.field private flags_:I

.field private hasBqeProb:Z

.field private hasBqeQuota:Z

.field private hasBssid:Z

.field private hasFlags:Z

.field private hasIcdProb:Z

.field private hasIcdQuota:Z

.field private hasMbw:Z

.field private hasResult:Z

.field private hasTid:Z

.field private hasTputDl:Z

.field private hasTputSdev:Z

.field private icdProb_:I

.field private icdQuota_:I

.field private mbw_:I

.field private result_:I

.field private tid_:I

.field private tputDl_:I

.field private tputSdev_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2872
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2877
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$IcdResult;->bssid_:Ljava/lang/String;

    .line 2894
    iput v1, p0, Lcom/quicinc/cne/Native$IcdResult;->result_:I

    .line 2911
    iput v1, p0, Lcom/quicinc/cne/Native$IcdResult;->flags_:I

    .line 2928
    iput v1, p0, Lcom/quicinc/cne/Native$IcdResult;->tid_:I

    .line 2945
    iput v1, p0, Lcom/quicinc/cne/Native$IcdResult;->icdQuota_:I

    .line 2962
    iput v1, p0, Lcom/quicinc/cne/Native$IcdResult;->icdProb_:I

    .line 2979
    iput v1, p0, Lcom/quicinc/cne/Native$IcdResult;->bqeQuota_:I

    .line 2996
    iput v1, p0, Lcom/quicinc/cne/Native$IcdResult;->bqeProb_:I

    .line 3013
    iput v1, p0, Lcom/quicinc/cne/Native$IcdResult;->mbw_:I

    .line 3030
    iput v1, p0, Lcom/quicinc/cne/Native$IcdResult;->tputDl_:I

    .line 3047
    iput v1, p0, Lcom/quicinc/cne/Native$IcdResult;->tputSdev_:I

    .line 3119
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->cachedSize:I

    .line 2872
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3251
    new-instance v0, Lcom/quicinc/cne/Native$IcdResult;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$IcdResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$IcdResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdResult;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 3245
    new-instance v0, Lcom/quicinc/cne/Native$IcdResult;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$IcdResult;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$IcdResult;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$IcdResult;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .prologue
    .line 3062
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearBssid()Lcom/quicinc/cne/Native$IcdResult;

    .line 3063
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearResult()Lcom/quicinc/cne/Native$IcdResult;

    .line 3064
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearFlags()Lcom/quicinc/cne/Native$IcdResult;

    .line 3065
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearTid()Lcom/quicinc/cne/Native$IcdResult;

    .line 3066
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearIcdQuota()Lcom/quicinc/cne/Native$IcdResult;

    .line 3067
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearIcdProb()Lcom/quicinc/cne/Native$IcdResult;

    .line 3068
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearBqeQuota()Lcom/quicinc/cne/Native$IcdResult;

    .line 3069
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearBqeProb()Lcom/quicinc/cne/Native$IcdResult;

    .line 3070
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearMbw()Lcom/quicinc/cne/Native$IcdResult;

    .line 3071
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearTputDl()Lcom/quicinc/cne/Native$IcdResult;

    .line 3072
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->clearTputSdev()Lcom/quicinc/cne/Native$IcdResult;

    .line 3073
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->cachedSize:I

    .line 3074
    return-object p0
.end method

.method public clearBqeProb()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3005
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasBqeProb:Z

    .line 3006
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->bqeProb_:I

    .line 3007
    return-object p0
.end method

.method public clearBqeQuota()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2988
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasBqeQuota:Z

    .line 2989
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->bqeQuota_:I

    .line 2990
    return-object p0
.end method

.method public clearBssid()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .prologue
    .line 2886
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasBssid:Z

    .line 2887
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$IcdResult;->bssid_:Ljava/lang/String;

    .line 2888
    return-object p0
.end method

.method public clearFlags()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2920
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasFlags:Z

    .line 2921
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->flags_:I

    .line 2922
    return-object p0
.end method

.method public clearIcdProb()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2971
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasIcdProb:Z

    .line 2972
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->icdProb_:I

    .line 2973
    return-object p0
.end method

.method public clearIcdQuota()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2954
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasIcdQuota:Z

    .line 2955
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->icdQuota_:I

    .line 2956
    return-object p0
.end method

.method public clearMbw()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3022
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasMbw:Z

    .line 3023
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->mbw_:I

    .line 3024
    return-object p0
.end method

.method public clearResult()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2903
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasResult:Z

    .line 2904
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->result_:I

    .line 2905
    return-object p0
.end method

.method public clearTid()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2937
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasTid:Z

    .line 2938
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->tid_:I

    .line 2939
    return-object p0
.end method

.method public clearTputDl()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3039
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasTputDl:Z

    .line 3040
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->tputDl_:I

    .line 3041
    return-object p0
.end method

.method public clearTputSdev()Lcom/quicinc/cne/Native$IcdResult;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3056
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasTputSdev:Z

    .line 3057
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->tputSdev_:I

    .line 3058
    return-object p0
.end method

.method public getBqeProb()I
    .locals 1

    .prologue
    .line 2997
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->bqeProb_:I

    return v0
.end method

.method public getBqeQuota()I
    .locals 1

    .prologue
    .line 2980
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->bqeQuota_:I

    return v0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2878
    iget-object v0, p0, Lcom/quicinc/cne/Native$IcdResult;->bssid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 3122
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->cachedSize:I

    if-gez v0, :cond_0

    .line 3124
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getSerializedSize()I

    .line 3126
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->cachedSize:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 2912
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->flags_:I

    return v0
.end method

.method public getIcdProb()I
    .locals 1

    .prologue
    .line 2963
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->icdProb_:I

    return v0
.end method

.method public getIcdQuota()I
    .locals 1

    .prologue
    .line 2946
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->icdQuota_:I

    return v0
.end method

.method public getMbw()I
    .locals 1

    .prologue
    .line 3014
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->mbw_:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 2895
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->result_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3131
    const/4 v0, 0x0

    .line 3132
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasBssid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3134
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getBssid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 3133
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 3136
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3138
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getResult()I

    move-result v1

    const/4 v2, 0x2

    .line 3137
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3140
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasFlags()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3142
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getFlags()I

    move-result v1

    const/4 v2, 0x3

    .line 3141
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3144
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasTid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3146
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getTid()I

    move-result v1

    const/4 v2, 0x4

    .line 3145
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3148
    :cond_3
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasIcdQuota()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3150
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getIcdQuota()I

    move-result v1

    const/4 v2, 0x5

    .line 3149
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3152
    :cond_4
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasIcdProb()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3154
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getIcdProb()I

    move-result v1

    const/4 v2, 0x6

    .line 3153
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3156
    :cond_5
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasBqeQuota()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3158
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getBqeQuota()I

    move-result v1

    const/4 v2, 0x7

    .line 3157
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3160
    :cond_6
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasBqeProb()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3162
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getBqeProb()I

    move-result v1

    const/16 v2, 0x8

    .line 3161
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3164
    :cond_7
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasMbw()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3166
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getMbw()I

    move-result v1

    const/16 v2, 0x9

    .line 3165
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3168
    :cond_8
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasTputDl()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3170
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getTputDl()I

    move-result v1

    const/16 v2, 0xa

    .line 3169
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3172
    :cond_9
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasTputSdev()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3174
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getTputSdev()I

    move-result v1

    const/16 v2, 0xb

    .line 3173
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3176
    :cond_a
    iput v0, p0, Lcom/quicinc/cne/Native$IcdResult;->cachedSize:I

    .line 3177
    return v0
.end method

.method public getTid()I
    .locals 1

    .prologue
    .line 2929
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->tid_:I

    return v0
.end method

.method public getTputDl()I
    .locals 1

    .prologue
    .line 3031
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->tputDl_:I

    return v0
.end method

.method public getTputSdev()I
    .locals 1

    .prologue
    .line 3048
    iget v0, p0, Lcom/quicinc/cne/Native$IcdResult;->tputSdev_:I

    return v0
.end method

.method public hasBqeProb()Z
    .locals 1

    .prologue
    .line 2998
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasBqeProb:Z

    return v0
.end method

.method public hasBqeQuota()Z
    .locals 1

    .prologue
    .line 2981
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasBqeQuota:Z

    return v0
.end method

.method public hasBssid()Z
    .locals 1

    .prologue
    .line 2879
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasBssid:Z

    return v0
.end method

.method public hasFlags()Z
    .locals 1

    .prologue
    .line 2913
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasFlags:Z

    return v0
.end method

.method public hasIcdProb()Z
    .locals 1

    .prologue
    .line 2964
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasIcdProb:Z

    return v0
.end method

.method public hasIcdQuota()Z
    .locals 1

    .prologue
    .line 2947
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasIcdQuota:Z

    return v0
.end method

.method public hasMbw()Z
    .locals 1

    .prologue
    .line 3015
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasMbw:Z

    return v0
.end method

.method public hasResult()Z
    .locals 1

    .prologue
    .line 2896
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasResult:Z

    return v0
.end method

.method public hasTid()Z
    .locals 1

    .prologue
    .line 2930
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasTid:Z

    return v0
.end method

.method public hasTputDl()Z
    .locals 1

    .prologue
    .line 3032
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasTputDl:Z

    return v0
.end method

.method public hasTputSdev()Z
    .locals 1

    .prologue
    .line 3049
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasTputSdev:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 3078
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
    .line 3181
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$IcdResult;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdResult;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$IcdResult;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3185
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 3186
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3190
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$IcdResult;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3191
    return-object p0

    .line 3188
    :sswitch_0
    return-object p0

    .line 3196
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdResult;

    goto :goto_0

    .line 3200
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setResult(I)Lcom/quicinc/cne/Native$IcdResult;

    goto :goto_0

    .line 3204
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setFlags(I)Lcom/quicinc/cne/Native$IcdResult;

    goto :goto_0

    .line 3208
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setTid(I)Lcom/quicinc/cne/Native$IcdResult;

    goto :goto_0

    .line 3212
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setIcdQuota(I)Lcom/quicinc/cne/Native$IcdResult;

    goto :goto_0

    .line 3216
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setIcdProb(I)Lcom/quicinc/cne/Native$IcdResult;

    goto :goto_0

    .line 3220
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setBqeQuota(I)Lcom/quicinc/cne/Native$IcdResult;

    goto :goto_0

    .line 3224
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setBqeProb(I)Lcom/quicinc/cne/Native$IcdResult;

    goto :goto_0

    .line 3228
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setMbw(I)Lcom/quicinc/cne/Native$IcdResult;

    goto :goto_0

    .line 3232
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setTputDl(I)Lcom/quicinc/cne/Native$IcdResult;

    goto :goto_0

    .line 3236
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readUInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$IcdResult;->setTputSdev(I)Lcom/quicinc/cne/Native$IcdResult;

    goto :goto_0

    .line 3186
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
    .end sparse-switch
.end method

.method public setBqeProb(I)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3000
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasBqeProb:Z

    .line 3001
    iput p1, p0, Lcom/quicinc/cne/Native$IcdResult;->bqeProb_:I

    .line 3002
    return-object p0
.end method

.method public setBqeQuota(I)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2983
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasBqeQuota:Z

    .line 2984
    iput p1, p0, Lcom/quicinc/cne/Native$IcdResult;->bqeQuota_:I

    .line 2985
    return-object p0
.end method

.method public setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2881
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasBssid:Z

    .line 2882
    iput-object p1, p0, Lcom/quicinc/cne/Native$IcdResult;->bssid_:Ljava/lang/String;

    .line 2883
    return-object p0
.end method

.method public setFlags(I)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2915
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasFlags:Z

    .line 2916
    iput p1, p0, Lcom/quicinc/cne/Native$IcdResult;->flags_:I

    .line 2917
    return-object p0
.end method

.method public setIcdProb(I)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2966
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasIcdProb:Z

    .line 2967
    iput p1, p0, Lcom/quicinc/cne/Native$IcdResult;->icdProb_:I

    .line 2968
    return-object p0
.end method

.method public setIcdQuota(I)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2949
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasIcdQuota:Z

    .line 2950
    iput p1, p0, Lcom/quicinc/cne/Native$IcdResult;->icdQuota_:I

    .line 2951
    return-object p0
.end method

.method public setMbw(I)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3017
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasMbw:Z

    .line 3018
    iput p1, p0, Lcom/quicinc/cne/Native$IcdResult;->mbw_:I

    .line 3019
    return-object p0
.end method

.method public setResult(I)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2898
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasResult:Z

    .line 2899
    iput p1, p0, Lcom/quicinc/cne/Native$IcdResult;->result_:I

    .line 2900
    return-object p0
.end method

.method public setTid(I)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2932
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasTid:Z

    .line 2933
    iput p1, p0, Lcom/quicinc/cne/Native$IcdResult;->tid_:I

    .line 2934
    return-object p0
.end method

.method public setTputDl(I)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3034
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasTputDl:Z

    .line 3035
    iput p1, p0, Lcom/quicinc/cne/Native$IcdResult;->tputDl_:I

    .line 3036
    return-object p0
.end method

.method public setTputSdev(I)Lcom/quicinc/cne/Native$IcdResult;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 3051
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$IcdResult;->hasTputSdev:Z

    .line 3052
    iput p1, p0, Lcom/quicinc/cne/Native$IcdResult;->tputSdev_:I

    .line 3053
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
    .line 3084
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasBssid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3085
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getBssid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 3087
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3088
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getResult()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3090
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasFlags()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3091
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getFlags()I

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3093
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasTid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3094
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getTid()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3096
    :cond_3
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasIcdQuota()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3097
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getIcdQuota()I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3099
    :cond_4
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasIcdProb()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3100
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getIcdProb()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3102
    :cond_5
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasBqeQuota()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3103
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getBqeQuota()I

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3105
    :cond_6
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasBqeProb()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3106
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getBqeProb()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3108
    :cond_7
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasMbw()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3109
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getMbw()I

    move-result v0

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3111
    :cond_8
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasTputDl()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3112
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getTputDl()I

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3114
    :cond_9
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->hasTputSdev()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3115
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$IcdResult;->getTputSdev()I

    move-result v0

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeUInt32(II)V

    .line 3083
    :cond_a
    return-void
.end method
