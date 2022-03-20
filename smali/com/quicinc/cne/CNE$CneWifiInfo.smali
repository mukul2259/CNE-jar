.class Lcom/quicinc/cne/CNE$CneWifiInfo;
.super Lcom/quicinc/cne/CNE$CneRatInfo;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CneWifiInfo"
.end annotation


# instance fields
.field bssid:Ljava/lang/String;

.field dnsInfo:[Ljava/lang/String;

.field freqBand:Lcom/quicinc/cne/CNE$FreqBand;

.field rssi:I

.field ssid:Ljava/lang/String;

.field final synthetic this$0:Lcom/quicinc/cne/CNE;

.field wifiState:I


# direct methods
.method static synthetic -wrap0(Lcom/quicinc/cne/CNE$CneWifiInfo;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->setWifiInfo(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/quicinc/cne/CNE$CneWifiInfo;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->setWifiState(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/quicinc/cne/CNE$CneWifiInfo;Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->updateLinkProperties(Landroid/net/LinkProperties;)V

    return-void
.end method

.method public constructor <init>(Lcom/quicinc/cne/CNE;)V
    .locals 4
    .param p1, "this$0"    # Lcom/quicinc/cne/CNE;

    .prologue
    const/4 v3, 0x4

    .line 610
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->this$0:Lcom/quicinc/cne/CNE;

    .line 611
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE$CneRatInfo;-><init>(Lcom/quicinc/cne/CNE;)V

    .line 612
    const/4 v1, 0x0

    iput v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->rssi:I

    .line 613
    iput v3, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->wifiState:I

    .line 614
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ssid:Ljava/lang/String;

    .line 615
    const-string/jumbo v1, "00:00:00:00:00:00"

    iput-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->bssid:Ljava/lang/String;

    .line 616
    sget-object v1, Lcom/quicinc/cne/CNE$FreqBand;->_2GHz:Lcom/quicinc/cne/CNE$FreqBand;

    iput-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->freqBand:Lcom/quicinc/cne/CNE$FreqBand;

    .line 617
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->dnsInfo:[Ljava/lang/String;

    .line 618
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 619
    iget-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->dnsInfo:[Ljava/lang/String;

    const-string/jumbo v2, "0.0.0.0"

    aput-object v2, v1, v0

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 621
    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->networkType:I

    .line 622
    const/16 v1, 0x65

    iput v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->subType:I

    .line 610
    return-void
.end method

.method private maybeUpdateAddrInfo(Ljava/net/InetAddress;Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 675
    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_2

    .line 676
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 677
    :cond_1
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ifNameV4:Ljava/lang/String;

    .line 678
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ipAddrV4:Ljava/lang/String;

    goto :goto_0

    .line 680
    :cond_2
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ifNameV6:Ljava/lang/String;

    .line 683
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ipAddrV6:Ljava/lang/String;

    goto :goto_0
.end method

.method private resetWifiInfo()V
    .locals 3

    .prologue
    .line 626
    invoke-super {p0}, Lcom/quicinc/cne/CNE$CneRatInfo;->resetRatInfo()V

    .line 627
    const/4 v1, 0x0

    iput v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->rssi:I

    .line 628
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ssid:Ljava/lang/String;

    .line 629
    const-string/jumbo v1, "00:00:00:00:00:00"

    iput-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->bssid:Ljava/lang/String;

    .line 630
    sget-object v1, Lcom/quicinc/cne/CNE$FreqBand;->_2GHz:Lcom/quicinc/cne/CNE$FreqBand;

    iput-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->freqBand:Lcom/quicinc/cne/CNE$FreqBand;

    .line 631
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 632
    iget-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->dnsInfo:[Ljava/lang/String;

    const-string/jumbo v2, "0.0.0.0"

    aput-object v2, v1, v0

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
    :cond_0
    const-string/jumbo v1, "CORE"

    const-string/jumbo v2, "Wifi Info Reset"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->-wrap16(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    return-void
.end method

.method private setWifiInfo(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 770
    if-nez p1, :cond_0

    .line 771
    const-string/jumbo v8, "CORE"

    const-string/jumbo v9, "set wifi info given null intent"

    invoke-static {v8, v9}, Lcom/quicinc/cne/CNE;->-wrap17(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    return-void

    .line 775
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 776
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v8, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 777
    const-string/jumbo v8, "newRssi"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-direct {p0, v8}, Lcom/quicinc/cne/CNE$CneWifiInfo;->updateRSSI(I)V

    .line 769
    .end local v0    # "action":Ljava/lang/String;
    :goto_0
    return-void

    .line 778
    .restart local v0    # "action":Ljava/lang/String;
    :cond_1
    const-string/jumbo v8, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 780
    const-string/jumbo v8, "linkProperties"

    .line 779
    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    .line 781
    .local v3, "lp":Landroid/net/LinkProperties;
    invoke-direct {p0, v3}, Lcom/quicinc/cne/CNE$CneWifiInfo;->updateLinkProperties(Landroid/net/LinkProperties;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 807
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "lp":Landroid/net/LinkProperties;
    :catch_0
    move-exception v4

    .line 808
    .local v4, "nexp":Ljava/lang/NullPointerException;
    const-string/jumbo v8, "CORE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setWifiInfo(): Null Pointer Exception"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 782
    .end local v4    # "nexp":Ljava/lang/NullPointerException;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string/jumbo v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 783
    const-string/jumbo v8, "networkInfo"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 784
    .local v5, "ni":Landroid/net/NetworkInfo;
    invoke-direct {p0, v5}, Lcom/quicinc/cne/CNE$CneWifiInfo;->updateNetworkInfo(Landroid/net/NetworkInfo;)Z

    move-result v6

    .line 785
    .local v6, "reset":Z
    if-eqz v6, :cond_3

    .line 786
    const-string/jumbo v8, "CORE"

    const-string/jumbo v9, "WifiInfo was reset, abandoning update"

    invoke-static {v8, v9}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 809
    .end local v0    # "action":Ljava/lang/String;
    .end local v5    # "ni":Landroid/net/NetworkInfo;
    .end local v6    # "reset":Z
    :catch_1
    move-exception v1

    .line 810
    .local v1, "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v8, "CORE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setWifiInfo(): array out of bound exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 789
    .end local v1    # "ex":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v5    # "ni":Landroid/net/NetworkInfo;
    .restart local v6    # "reset":Z
    :cond_3
    :try_start_2
    const-string/jumbo v8, "linkProperties"

    .line 788
    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/LinkProperties;

    .line 790
    .restart local v3    # "lp":Landroid/net/LinkProperties;
    invoke-direct {p0, v3}, Lcom/quicinc/cne/CNE$CneWifiInfo;->updateLinkProperties(Landroid/net/LinkProperties;)V

    .line 791
    const-string/jumbo v8, "wifiInfo"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiInfo;

    .line 792
    .local v7, "wi":Landroid/net/wifi/WifiInfo;
    invoke-direct {p0, v7}, Lcom/quicinc/cne/CNE$CneWifiInfo;->updateWifiInfo(Landroid/net/wifi/WifiInfo;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 811
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "lp":Landroid/net/LinkProperties;
    .end local v5    # "ni":Landroid/net/NetworkInfo;
    .end local v6    # "reset":Z
    .end local v7    # "wi":Landroid/net/wifi/WifiInfo;
    :catch_2
    move-exception v2

    .line 812
    .local v2, "ex":Ljava/lang/Exception;
    const-string/jumbo v8, "CORE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setWifiInfo(): caught unexpected exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/quicinc/cne/CNE;->-wrap22(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 798
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "action":Ljava/lang/String;
    :cond_4
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 799
    const-string/jumbo v8, "wifi_state"

    iget v9, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->wifiState:I

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->wifiState:I

    .line 800
    const-string/jumbo v8, "CORE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "newWifiState: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->wifiState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 801
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "wifi_disconnect_in_progress"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 802
    const/4 v8, 0x0

    iput v8, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->wifiState:I

    .line 803
    const-string/jumbo v8, "CORE"

    const-string/jumbo v9, "Received early wifi disable notification, setting wifiState to DISABLING "

    invoke-static {v8, v9}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 805
    :cond_6
    const-string/jumbo v8, "CORE"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Asked to set wifi info with unknown action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/quicinc/cne/CNE;->-wrap19(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method

.method private setWifiState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 765
    const-string/jumbo v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set wifi state to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->-wrap28(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iput p1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->wifiState:I

    .line 764
    return-void
.end method

.method private updateBSSID(Ljava/lang/String;)V
    .locals 1
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    .line 726
    if-eqz p1, :cond_0

    .line 727
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->bssid:Ljava/lang/String;

    .line 725
    :goto_0
    return-void

    .line 729
    :cond_0
    const-string/jumbo v0, "00:00:00:00:00:00"

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->bssid:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateDnsInfo(Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "addrs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/net/InetAddress;>;"
    const/4 v8, 0x4

    const/4 v7, 0x2

    .line 638
    if-nez p1, :cond_1

    .line 639
    const-string/jumbo v5, "CORE"

    const-string/jumbo v6, "update dns info given null Collection"

    invoke-static {v5, v6}, Lcom/quicinc/cne/CNE;->-wrap17(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v8, :cond_2

    .line 643
    iget-object v5, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->dnsInfo:[Ljava/lang/String;

    const-string/jumbo v6, "0.0.0.0"

    aput-object v6, v5, v2

    .line 642
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 647
    :cond_2
    const/4 v2, 0x0

    .line 648
    const/4 v3, 0x0

    .line 649
    .local v3, "v4AddrCnt":I
    const/4 v4, 0x0

    .line 650
    .local v4, "v6AddrCnt":I
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "addr$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 651
    .local v0, "addr":Ljava/net/InetAddress;
    if-lt v2, v8, :cond_3

    .line 652
    const-string/jumbo v5, "CORE"

    const-string/jumbo v6, "getDns: Max dns addrs reached"

    invoke-static {v5, v6}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 655
    :cond_3
    instance-of v5, v0, Ljava/net/Inet6Address;

    if-eqz v5, :cond_5

    .line 656
    if-lt v4, v7, :cond_4

    .line 657
    const-string/jumbo v5, "CORE"

    const-string/jumbo v6, "getDns: Max IPV6 dns addrs reached"

    invoke-static {v5, v6}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 660
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 668
    :goto_3
    iget-object v5, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->dnsInfo:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 669
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 662
    :cond_5
    if-lt v3, v7, :cond_6

    .line 663
    const-string/jumbo v5, "CORE"

    const-string/jumbo v6, "getDns: Max IPV4 dns addrs reached"

    invoke-static {v5, v6}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 666
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private updateFreqBand(Landroid/net/wifi/WifiInfo;)V
    .locals 2
    .param p1, "wi"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 742
    if-nez p1, :cond_0

    .line 743
    const-string/jumbo v0, "CORE"

    const-string/jumbo v1, "update frequency band given null wi"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->-wrap17(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :goto_0
    return-void

    .line 745
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/quicinc/cne/CNE$FreqBand;->_5GHz:Lcom/quicinc/cne/CNE$FreqBand;

    :goto_1
    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->freqBand:Lcom/quicinc/cne/CNE$FreqBand;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/quicinc/cne/CNE$FreqBand;->_2GHz:Lcom/quicinc/cne/CNE$FreqBand;

    goto :goto_1
.end method

.method private updateLinkProperties(Landroid/net/LinkProperties;)V
    .locals 7
    .param p1, "lp"    # Landroid/net/LinkProperties;

    .prologue
    .line 689
    if-nez p1, :cond_0

    .line 690
    const-string/jumbo v4, "CORE"

    const-string/jumbo v5, "update link properties given null lp"

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->-wrap17(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    :goto_0
    return-void

    .line 692
    :cond_0
    const-string/jumbo v4, "CORE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Updating link properties: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v3

    .line 694
    .local v3, "linkAddresses":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/LinkAddress;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "linkAddress$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 695
    .local v1, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 696
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-direct {p0, v0, p1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->maybeUpdateAddrInfo(Ljava/net/InetAddress;Landroid/net/LinkProperties;)V

    goto :goto_1

    .line 698
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "linkAddress":Landroid/net/LinkAddress;
    :cond_1
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/quicinc/cne/CNE$CneWifiInfo;->updateDnsInfo(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private updateNetworkInfo(Landroid/net/NetworkInfo;)Z
    .locals 4
    .param p1, "ni"    # Landroid/net/NetworkInfo;

    .prologue
    .line 710
    const/4 v0, 0x0

    .line 711
    .local v0, "ret_val":Z
    if-nez p1, :cond_1

    .line 712
    const-string/jumbo v1, "CORE"

    const-string/jumbo v2, "update network info given null ni"

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->-wrap17(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :cond_0
    :goto_0
    return v0

    .line 714
    :cond_1
    const-string/jumbo v1, "CORE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Updating network info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->this$0:Lcom/quicinc/cne/CNE;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/quicinc/cne/CNE;->-wrap10(Lcom/quicinc/cne/CNE;Landroid/net/NetworkInfo$State;)I

    move-result v1

    iput v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->networkState:I

    .line 716
    iget v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->networkState:I

    iget-object v2, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->this$0:Lcom/quicinc/cne/CNE;

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->-wrap10(Lcom/quicinc/cne/CNE;Landroid/net/NetworkInfo$State;)I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 717
    iget v1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->networkState:I

    iget-object v2, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->this$0:Lcom/quicinc/cne/CNE;

    sget-object v3, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    invoke-static {v2, v3}, Lcom/quicinc/cne/CNE;->-wrap10(Lcom/quicinc/cne/CNE;Landroid/net/NetworkInfo$State;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 718
    :cond_2
    invoke-direct {p0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->resetWifiInfo()V

    .line 719
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateRSSI(I)V
    .locals 3
    .param p1, "in"    # I

    .prologue
    .line 703
    const-string/jumbo v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Updating RSSI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->-wrap16(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    if-eqz p1, :cond_0

    .line 705
    iput p1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->rssi:I

    .line 702
    :cond_0
    return-void
.end method

.method private updateSSID(Ljava/lang/String;)V
    .locals 1
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    .line 734
    if-nez p1, :cond_0

    .line 735
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ssid:Ljava/lang/String;

    .line 733
    :goto_0
    return-void

    .line 737
    :cond_0
    iput-object p1, p0, Lcom/quicinc/cne/CNE$CneWifiInfo;->ssid:Ljava/lang/String;

    goto :goto_0
.end method

.method private updateWifiInfo(Landroid/net/wifi/WifiInfo;)V
    .locals 3
    .param p1, "wi"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 750
    if-nez p1, :cond_0

    .line 754
    const-string/jumbo v0, "CORE"

    const-string/jumbo v1, "update wifi info given null wi"

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->-wrap16(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :goto_0
    return-void

    .line 756
    :cond_0
    const-string/jumbo v0, "CORE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Updating wifi info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/quicinc/cne/CNE;->-wrap18(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->updateBSSID(Ljava/lang/String;)V

    .line 758
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->updateSSID(Ljava/lang/String;)V

    .line 759
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/quicinc/cne/CNE$CneWifiInfo;->updateRSSI(I)V

    .line 760
    invoke-direct {p0, p1}, Lcom/quicinc/cne/CNE$CneWifiInfo;->updateFreqBand(Landroid/net/wifi/WifiInfo;)V

    goto :goto_0
.end method
