.class public abstract Lcom/quicinc/cne/ICNEManager$Stub;
.super Landroid/os/Binder;
.source "ICNEManager.java"

# interfaces
.implements Lcom/quicinc/cne/ICNEManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/ICNEManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quicinc/cne/ICNEManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.quicinc.cne.ICNEManager"

.field static final TRANSACTION_getIWLANEnabled:I = 0x3

.field static final TRANSACTION_getNSRMEnabled:I = 0x5

.field static final TRANSACTION_getPolicyVersion:I = 0x8

.field static final TRANSACTION_getWQEEnabled:I = 0x1

.field static final TRANSACTION_setIWLANEnabled:I = 0x4

.field static final TRANSACTION_setNSRMEnabled:I = 0x6

.field static final TRANSACTION_setWQEEnabled:I = 0x2

.field static final TRANSACTION_updatePolicy:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "com.quicinc.cne.ICNEManager"

    invoke-virtual {p0, p0, v0}, Lcom/quicinc/cne/ICNEManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/quicinc/cne/ICNEManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "com.quicinc.cne.ICNEManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/quicinc/cne/ICNEManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/quicinc/cne/ICNEManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/quicinc/cne/ICNEManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/quicinc/cne/ICNEManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    .line 46
    :sswitch_0
    const-string/jumbo v7, "com.quicinc.cne.ICNEManager"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v8

    .line 51
    :sswitch_1
    const-string/jumbo v7, "com.quicinc.cne.ICNEManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/quicinc/cne/ICNEManager$Stub;->getWQEEnabled(Ljava/lang/String;)I

    move-result v5

    .line 55
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return v8

    .line 61
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":I
    :sswitch_2
    const-string/jumbo v7, "com.quicinc.cne.ICNEManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    .line 65
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/quicinc/cne/ICNEManager$Stub;->setWQEEnabled(ZLjava/lang/String;)I

    move-result v5

    .line 67
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    return v8

    .line 63
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_0

    .line 73
    .end local v2    # "_arg0":Z
    :sswitch_3
    const-string/jumbo v9, "com.quicinc.cne.ICNEManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 76
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/quicinc/cne/ICNEManager$Stub;->getIWLANEnabled(Ljava/lang/String;)Z

    move-result v6

    .line 77
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v6, :cond_1

    move v7, v8

    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return v8

    .line 83
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Z
    :sswitch_4
    const-string/jumbo v7, "com.quicinc.cne.ICNEManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    .line 87
    .restart local v2    # "_arg0":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 88
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v3}, Lcom/quicinc/cne/ICNEManager$Stub;->setIWLANEnabled(ZLjava/lang/String;)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    return v8

    .line 85
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_1

    .line 94
    .end local v2    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v7, "com.quicinc.cne.ICNEManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/quicinc/cne/ICNEManager$Stub;->getNSRMEnabled(Ljava/lang/String;)I

    move-result v5

    .line 98
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    return v8

    .line 104
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v5    # "_result":I
    :sswitch_6
    const-string/jumbo v7, "com.quicinc.cne.ICNEManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 108
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 109
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcom/quicinc/cne/ICNEManager$Stub;->setNSRMEnabled(ILjava/lang/String;)I

    move-result v5

    .line 110
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    return v8

    .line 116
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":I
    :sswitch_7
    const-string/jumbo v7, "com.quicinc.cne.ICNEManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 122
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v3, v4}, Lcom/quicinc/cne/ICNEManager$Stub;->updatePolicy(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 124
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    return v8

    .line 130
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":I
    :sswitch_8
    const-string/jumbo v7, "com.quicinc.cne.ICNEManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 135
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcom/quicinc/cne/ICNEManager$Stub;->getPolicyVersion(ILjava/lang/String;)I

    move-result v5

    .line 136
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return v8

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
