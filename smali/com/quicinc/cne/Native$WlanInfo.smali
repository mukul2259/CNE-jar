.class public final Lcom/quicinc/cne/Native$WlanInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Native.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/Native;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WlanInfo"
.end annotation


# static fields
.field public static final BSSID_FIELD_NUMBER:I = 0x7

.field public static final DNSINFO_FIELD_NUMBER:I = 0xf

.field public static final FREQBAND_FIELD_NUMBER:I = 0x3

.field public static final RATINFO_FIELD_NUMBER:I = 0x1

.field public static final RSSI_FIELD_NUMBER:I = 0x5

.field public static final SSID_FIELD_NUMBER:I = 0x6

.field public static final WIFISTATE_FIELD_NUMBER:I = 0x4


# instance fields
.field private bssid_:Ljava/lang/String;

.field private cachedSize:I

.field private dnsInfo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private freqBand_:I

.field private hasBssid:Z

.field private hasFreqBand:Z

.field private hasRatInfo:Z

.field private hasRssi:Z

.field private hasSsid:Z

.field private hasWifiState:Z

.field private ratInfo_:Lcom/quicinc/cne/Native$RatInfo;

.field private rssi_:I

.field private ssid_:Ljava/lang/String;

.field private wifiState_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1824
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1829
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->ratInfo_:Lcom/quicinc/cne/Native$RatInfo;

    .line 1849
    iput v1, p0, Lcom/quicinc/cne/Native$WlanInfo;->freqBand_:I

    .line 1866
    iput v1, p0, Lcom/quicinc/cne/Native$WlanInfo;->wifiState_:I

    .line 1883
    iput v1, p0, Lcom/quicinc/cne/Native$WlanInfo;->rssi_:I

    .line 1900
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->ssid_:Ljava/lang/String;

    .line 1917
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->bssid_:Ljava/lang/String;

    .line 1934
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1933
    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->dnsInfo_:Ljava/util/List;

    .line 2006
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->cachedSize:I

    .line 1824
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2113
    new-instance v0, Lcom/quicinc/cne/Native$WlanInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WlanInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WlanInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WlanInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
        }
    .end annotation

    .prologue
    .line 2107
    new-instance v0, Lcom/quicinc/cne/Native$WlanInfo;

    invoke-direct {v0}, Lcom/quicinc/cne/Native$WlanInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/quicinc/cne/Native$WlanInfo;->mergeFrom([B)Lcom/google/protobuf/micro/MessageMicro;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/Native$WlanInfo;

    return-object v0
.end method


# virtual methods
.method public addDnsInfo(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1950
    if-nez p1, :cond_0

    .line 1951
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1953
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->dnsInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1954
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->dnsInfo_:Ljava/util/List;

    .line 1956
    :cond_1
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->dnsInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1957
    return-object p0
.end method

.method public final clear()Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1

    .prologue
    .line 1965
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->clearRatInfo()Lcom/quicinc/cne/Native$WlanInfo;

    .line 1966
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->clearFreqBand()Lcom/quicinc/cne/Native$WlanInfo;

    .line 1967
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->clearWifiState()Lcom/quicinc/cne/Native$WlanInfo;

    .line 1968
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->clearRssi()Lcom/quicinc/cne/Native$WlanInfo;

    .line 1969
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->clearSsid()Lcom/quicinc/cne/Native$WlanInfo;

    .line 1970
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->clearBssid()Lcom/quicinc/cne/Native$WlanInfo;

    .line 1971
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->clearDnsInfo()Lcom/quicinc/cne/Native$WlanInfo;

    .line 1972
    const/4 v0, -0x1

    iput v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->cachedSize:I

    .line 1973
    return-object p0
.end method

.method public clearBssid()Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1

    .prologue
    .line 1926
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasBssid:Z

    .line 1927
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->bssid_:Ljava/lang/String;

    .line 1928
    return-object p0
.end method

.method public clearDnsInfo()Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1

    .prologue
    .line 1960
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->dnsInfo_:Ljava/util/List;

    .line 1961
    return-object p0
.end method

.method public clearFreqBand()Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1858
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasFreqBand:Z

    .line 1859
    iput v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->freqBand_:I

    .line 1860
    return-object p0
.end method

.method public clearRatInfo()Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1

    .prologue
    .line 1841
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasRatInfo:Z

    .line 1842
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->ratInfo_:Lcom/quicinc/cne/Native$RatInfo;

    .line 1843
    return-object p0
.end method

.method public clearRssi()Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1892
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasRssi:Z

    .line 1893
    iput v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->rssi_:I

    .line 1894
    return-object p0
.end method

.method public clearSsid()Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1

    .prologue
    .line 1909
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasSsid:Z

    .line 1910
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->ssid_:Ljava/lang/String;

    .line 1911
    return-object p0
.end method

.method public clearWifiState()Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1875
    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasWifiState:Z

    .line 1876
    iput v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->wifiState_:I

    .line 1877
    return-object p0
.end method

.method public getBssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1918
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->bssid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2009
    iget v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 2011
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getSerializedSize()I

    .line 2013
    :cond_0
    iget v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->cachedSize:I

    return v0
.end method

.method public getDnsInfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->dnsInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDnsInfoCount()I
    .locals 1

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->dnsInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDnsInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->dnsInfo_:Ljava/util/List;

    return-object v0
.end method

.method public getFreqBand()I
    .locals 1

    .prologue
    .line 1851
    iget v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->freqBand_:I

    return v0
.end method

.method public getRatInfo()Lcom/quicinc/cne/Native$RatInfo;
    .locals 1

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->ratInfo_:Lcom/quicinc/cne/Native$RatInfo;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 1884
    iget v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->rssi_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2018
    const/4 v3, 0x0

    .line 2019
    .local v3, "size":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasRatInfo()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2021
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v4

    .line 2020
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/lit8 v3, v4, 0x0

    .line 2023
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasFreqBand()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2025
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getFreqBand()I

    move-result v4

    const/4 v5, 0x3

    .line 2024
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2027
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasWifiState()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2029
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getWifiState()I

    move-result v4

    const/4 v5, 0x4

    .line 2028
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2031
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasRssi()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2033
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getRssi()I

    move-result v4

    const/4 v5, 0x5

    .line 2032
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeSInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2035
    :cond_3
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasSsid()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2037
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getSsid()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    .line 2036
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2039
    :cond_4
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasBssid()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2041
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getBssid()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    .line 2040
    invoke-static {v5, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2044
    :cond_5
    const/4 v0, 0x0

    .line 2045
    .local v0, "dataSize":I
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getDnsInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2046
    .local v1, "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 2049
    .end local v1    # "element":Ljava/lang/String;
    :cond_6
    add-int/2addr v3, v0

    .line 2050
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getDnsInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2052
    iput v3, p0, Lcom/quicinc/cne/Native$WlanInfo;->cachedSize:I

    .line 2053
    return v3
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1901
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->ssid_:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiState()I
    .locals 1

    .prologue
    .line 1868
    iget v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->wifiState_:I

    return v0
.end method

.method public hasBssid()Z
    .locals 1

    .prologue
    .line 1919
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasBssid:Z

    return v0
.end method

.method public hasFreqBand()Z
    .locals 1

    .prologue
    .line 1850
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasFreqBand:Z

    return v0
.end method

.method public hasRatInfo()Z
    .locals 1

    .prologue
    .line 1830
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasRatInfo:Z

    return v0
.end method

.method public hasRssi()Z
    .locals 1

    .prologue
    .line 1885
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasRssi:Z

    return v0
.end method

.method public hasSsid()Z
    .locals 1

    .prologue
    .line 1902
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasSsid:Z

    return v0
.end method

.method public hasWifiState()Z
    .locals 1

    .prologue
    .line 1867
    iget-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasWifiState:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 1977
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
    .line 2057
    invoke-virtual {p0, p1}, Lcom/quicinc/cne/Native$WlanInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WlanInfo;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2061
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2062
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2066
    invoke-virtual {p0, p1, v0}, Lcom/quicinc/cne/Native$WlanInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2067
    return-object p0

    .line 2064
    :sswitch_0
    return-object p0

    .line 2072
    :sswitch_1
    new-instance v1, Lcom/quicinc/cne/Native$RatInfo;

    invoke-direct {v1}, Lcom/quicinc/cne/Native$RatInfo;-><init>()V

    .line 2073
    .local v1, "value":Lcom/quicinc/cne/Native$RatInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2074
    invoke-virtual {p0, v1}, Lcom/quicinc/cne/Native$WlanInfo;->setRatInfo(Lcom/quicinc/cne/Native$RatInfo;)Lcom/quicinc/cne/Native$WlanInfo;

    goto :goto_0

    .line 2078
    .end local v1    # "value":Lcom/quicinc/cne/Native$RatInfo;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/quicinc/cne/Native$WlanInfo;->setFreqBand(I)Lcom/quicinc/cne/Native$WlanInfo;

    goto :goto_0

    .line 2082
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/quicinc/cne/Native$WlanInfo;->setWifiState(I)Lcom/quicinc/cne/Native$WlanInfo;

    goto :goto_0

    .line 2086
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readSInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/quicinc/cne/Native$WlanInfo;->setRssi(I)Lcom/quicinc/cne/Native$WlanInfo;

    goto :goto_0

    .line 2090
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/quicinc/cne/Native$WlanInfo;->setSsid(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanInfo;

    goto :goto_0

    .line 2094
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/quicinc/cne/Native$WlanInfo;->setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanInfo;

    goto :goto_0

    .line 2098
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/quicinc/cne/Native$WlanInfo;->addDnsInfo(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanInfo;

    goto :goto_0

    .line 2062
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
        0x32 -> :sswitch_5
        0x3a -> :sswitch_6
        0x7a -> :sswitch_7
    .end sparse-switch
.end method

.method public setBssid(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1921
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasBssid:Z

    .line 1922
    iput-object p1, p0, Lcom/quicinc/cne/Native$WlanInfo;->bssid_:Ljava/lang/String;

    .line 1923
    return-object p0
.end method

.method public setDnsInfo(ILjava/lang/String;)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1943
    if-nez p2, :cond_0

    .line 1944
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1946
    :cond_0
    iget-object v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->dnsInfo_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1947
    return-object p0
.end method

.method public setFreqBand(I)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasFreqBand:Z

    .line 1854
    iput p1, p0, Lcom/quicinc/cne/Native$WlanInfo;->freqBand_:I

    .line 1855
    return-object p0
.end method

.method public setRatInfo(Lcom/quicinc/cne/Native$RatInfo;)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1
    .param p1, "value"    # Lcom/quicinc/cne/Native$RatInfo;

    .prologue
    .line 1833
    if-nez p1, :cond_0

    .line 1834
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1836
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasRatInfo:Z

    .line 1837
    iput-object p1, p0, Lcom/quicinc/cne/Native$WlanInfo;->ratInfo_:Lcom/quicinc/cne/Native$RatInfo;

    .line 1838
    return-object p0
.end method

.method public setRssi(I)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1887
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasRssi:Z

    .line 1888
    iput p1, p0, Lcom/quicinc/cne/Native$WlanInfo;->rssi_:I

    .line 1889
    return-object p0
.end method

.method public setSsid(Ljava/lang/String;)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasSsid:Z

    .line 1905
    iput-object p1, p0, Lcom/quicinc/cne/Native$WlanInfo;->ssid_:Ljava/lang/String;

    .line 1906
    return-object p0
.end method

.method public setWifiState(I)Lcom/quicinc/cne/Native$WlanInfo;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1870
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/quicinc/cne/Native$WlanInfo;->hasWifiState:Z

    .line 1871
    iput p1, p0, Lcom/quicinc/cne/Native$WlanInfo;->wifiState_:I

    .line 1872
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1983
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasRatInfo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1984
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getRatInfo()Lcom/quicinc/cne/Native$RatInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1986
    :cond_0
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasFreqBand()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1987
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getFreqBand()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1989
    :cond_1
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasWifiState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1990
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getWifiState()I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1992
    :cond_2
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasRssi()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1993
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getRssi()I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeSInt32(II)V

    .line 1995
    :cond_3
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasSsid()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1996
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getSsid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1998
    :cond_4
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->hasBssid()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1999
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getBssid()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2001
    :cond_5
    invoke-virtual {p0}, Lcom/quicinc/cne/Native$WlanInfo;->getDnsInfoList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2002
    .local v0, "element":Ljava/lang/String;
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 1982
    .end local v0    # "element":Ljava/lang/String;
    :cond_6
    return-void
.end method
