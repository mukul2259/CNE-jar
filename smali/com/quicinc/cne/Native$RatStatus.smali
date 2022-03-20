.class public final Lcom/quicinc/cne/Native$RatStatus;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RatStatus"
.end annotation


# static fields
.field public static final IPADDRV6_FIELD_NUMBER:I = 0x4

.field public static final IPADDR_FIELD_NUMBER:I = 0x3

.field public static final RATSTATUS_FIELD_NUMBER:I = 0x2

.field public static final RAT_FIELD_NUMBER:I = 0x1


# instance fields
.field private cachedSize:I

.field private hasIpAddr:Z

.field private hasIpAddrV6:Z

.field private hasRat:Z

.field private hasRatStatus:Z

.field private ipAddrV6_:Ljava/lang/String;

.field private ipAddr_:Ljava/lang/String;

.field private ratStatus_:I

.field private rat_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 778
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 783
    iput v0, p0, Lcom/quicinc/cne/Native$RatStatus;->rat_:I

    .line 800
    iput v0, p0, Lcom/quicinc/cne/Native$RatStatus;->ratStatus_:I

    .line 817
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatStatus;->ipAddr_:Ljava/lang/String;

    .line 834
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatStatus;->ipAddrV6_:Ljava/lang/String;

    .line 878
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$RatStatus;->cachedSize:I

    .line 778
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RatStatus;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 954
    new-instance v0, Lcom/quicinc/cne/Native$RatStatus;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$RatStatus;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$RatStatus;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RatStatus;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$RatStatus;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 948
    new-instance v0, Lcom/quicinc/cne/Native$RatStatus;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$RatStatus;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$RatStatus;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$RatStatus;

    return-object v0
.end method


# virtual methods
.method public final clear()Lcom/quicinc/cne/Native$RatStatus;
    .locals 1

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->clearRat()Lcom/quicinc/cne/Native$RatStatus;

    .line 850
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->clearRatStatus()Lcom/quicinc/cne/Native$RatStatus;

    .line 851
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->clearIpAddr()Lcom/quicinc/cne/Native$RatStatus;

    .line 852
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->clearIpAddrV6()Lcom/quicinc/cne/Native$RatStatus;

    .line 853
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$RatStatus;->cachedSize:I

    .line 854
    return-object p0
.end method

.method public clearIpAddr()Lcom/quicinc/cne/Native$RatStatus;
    .locals 1

    .prologue
    .line 826
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasIpAddr:Z

    .line 827
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatStatus;->ipAddr_:Ljava/lang/String;

    .line 828
    return-object p0
.end method

.method public clearIpAddrV6()Lcom/quicinc/cne/Native$RatStatus;
    .locals 1

    .prologue
    .line 843
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasIpAddrV6:Z

    .line 844
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$RatStatus;->ipAddrV6_:Ljava/lang/String;

    .line 845
    return-object p0
.end method

.method public clearRat()Lcom/quicinc/cne/Native$RatStatus;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 792
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasRat:Z

    .line 793
    iput v0, p0, Lcom/quicinc/cne/Native$RatStatus;->rat_:I

    .line 794
    return-object p0
.end method

.method public clearRatStatus()Lcom/quicinc/cne/Native$RatStatus;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 809
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasRatStatus:Z

    .line 810
    iput v0, p0, Lcom/quicinc/cne/Native$RatStatus;->ratStatus_:I

    .line 811
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 881
    iget v0, p0, Lcom/quicinc/cne/Native$RatStatus;->cachedSize:I

    if-gez v0, :cond_0

    .line 883
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->getSerializedSize()I

    .line 885
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$RatStatus;->cachedSize:I

    return v0
.end method

.method public getIpAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/quicinc/cne/Native$RatStatus;->ipAddr_:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddrV6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/quicinc/cne/Native$RatStatus;->ipAddrV6_:Ljava/lang/String;

    return-object v0
.end method

.method public getRat()I
    .locals 1

    .prologue
    .line 785
    iget v0, p0, Lcom/quicinc/cne/Native$RatStatus;->rat_:I

    return v0
.end method

.method public getRatStatus()I
    .locals 1

    .prologue
    .line 802
    iget v0, p0, Lcom/quicinc/cne/Native$RatStatus;->ratStatus_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 890
    const/4 v0, 0x0

    .line 891
    .local v0, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->hasRat()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 893
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->getRat()I

    move-result v1

    const/4 v2, 0x1

    .line 892
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x0

    .line 895
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->hasRatStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 897
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->getRatStatus()I

    move-result v1

    const/4 v2, 0x2

    .line 896
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 899
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->hasIpAddr()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 901
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->getIpAddr()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    .line 900
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 903
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->hasIpAddrV6()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 905
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->getIpAddrV6()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    .line 904
    invoke-static {v2, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 907
    :cond_3
    iput v0, p0, Lcom/quicinc/cne/Native$RatStatus;->cachedSize:I

    .line 908
    return v0
.end method

.method public hasIpAddr()Z
    .locals 1

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasIpAddr:Z

    return v0
.end method

.method public hasIpAddrV6()Z
    .locals 1

    .prologue
    .line 836
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasIpAddrV6:Z

    return v0
.end method

.method public hasRat()Z
    .locals 1

    .prologue
    .line 784
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasRat:Z

    return v0
.end method

.method public hasRatStatus()Z
    .locals 1

    .prologue
    .line 801
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasRatStatus:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 858
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
    .line 912
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$RatStatus;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RatStatus;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$RatStatus;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 916
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 917
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 921
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$RatStatus;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 922
    return-object p0

    .line 919
    :sswitch_0
    return-object p0

    .line 927
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatStatus;->setRat(I)Lcom/quicinc/cne/Native$RatStatus;

    goto :goto_0

    .line 931
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatStatus;->setRatStatus(I)Lcom/quicinc/cne/Native$RatStatus;

    goto :goto_0

    .line 935
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatStatus;->setIpAddr(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatStatus;

    goto :goto_0

    .line 939
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$RatStatus;->setIpAddrV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatStatus;

    goto :goto_0

    .line 917
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setIpAddr(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatStatus;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasIpAddr:Z

    .line 822
    iput-object p1, p0, Lcom/quicinc/cne/Native$RatStatus;->ipAddr_:Ljava/lang/String;

    .line 823
    return-object p0
.end method

.method public setIpAddrV6(Ljava/lang/String;)Lcom/quicinc/cne/Native$RatStatus;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 838
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasIpAddrV6:Z

    .line 839
    iput-object p1, p0, Lcom/quicinc/cne/Native$RatStatus;->ipAddrV6_:Ljava/lang/String;

    .line 840
    return-object p0
.end method

.method public setRat(I)Lcom/quicinc/cne/Native$RatStatus;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 787
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasRat:Z

    .line 788
    iput p1, p0, Lcom/quicinc/cne/Native$RatStatus;->rat_:I

    .line 789
    return-object p0
.end method

.method public setRatStatus(I)Lcom/quicinc/cne/Native$RatStatus;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 804
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$RatStatus;->hasRatStatus:Z

    .line 805
    iput p1, p0, Lcom/quicinc/cne/Native$RatStatus;->ratStatus_:I

    .line 806
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
    .line 864
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->hasRat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->getRat()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 867
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->hasRatStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 868
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->getRatStatus()I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 870
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->hasIpAddr()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 871
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->getIpAddr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 873
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->hasIpAddrV6()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 874
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$RatStatus;->getIpAddrV6()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 863
    :cond_3
    return-void
.end method
