.class final enum Lcom/quicinc/cne/CNE$FeatureType;
.super Ljava/lang/Enum;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FeatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/quicinc/cne/CNE$FeatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/quicinc/cne/CNE$FeatureType;

.field public static final enum WQE:Lcom/quicinc/cne/CNE$FeatureType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 308
    new-instance v0, Lcom/quicinc/cne/CNE$FeatureType;

    const-string/jumbo v1, "WQE"

    invoke-direct {v0, v1, v2}, Lcom/quicinc/cne/CNE$FeatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/quicinc/cne/CNE$FeatureType;->WQE:Lcom/quicinc/cne/CNE$FeatureType;

    .line 307
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/quicinc/cne/CNE$FeatureType;

    sget-object v1, Lcom/quicinc/cne/CNE$FeatureType;->WQE:Lcom/quicinc/cne/CNE$FeatureType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/quicinc/cne/CNE$FeatureType;->$VALUES:[Lcom/quicinc/cne/CNE$FeatureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/quicinc/cne/CNE$FeatureType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 307
    const-class v0, Lcom/quicinc/cne/CNE$FeatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/CNE$FeatureType;

    return-object v0
.end method

.method public static values()[Lcom/quicinc/cne/CNE$FeatureType;
    .locals 1

    .prologue
    .line 307
    sget-object v0, Lcom/quicinc/cne/CNE$FeatureType;->$VALUES:[Lcom/quicinc/cne/CNE$FeatureType;

    return-object v0
.end method
