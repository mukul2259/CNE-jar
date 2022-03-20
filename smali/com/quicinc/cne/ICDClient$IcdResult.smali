.class final enum Lcom/quicinc/cne/ICDClient$IcdResult;
.super Ljava/lang/Enum;
.source "ICDClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/ICDClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "IcdResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/quicinc/cne/ICDClient$IcdResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/quicinc/cne/ICDClient$IcdResult;

.field public static final enum ICD_RESULT_FAILURE:Lcom/quicinc/cne/ICDClient$IcdResult;

.field public static final enum ICD_RESULT_PASS_NOT_STORE:Lcom/quicinc/cne/ICDClient$IcdResult;

.field public static final enum ICD_RESULT_SUCCESS:Lcom/quicinc/cne/ICDClient$IcdResult;

.field public static final enum ICD_RESULT_TIMEOUT:Lcom/quicinc/cne/ICDClient$IcdResult;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    new-instance v0, Lcom/quicinc/cne/ICDClient$IcdResult;

    const-string/jumbo v1, "ICD_RESULT_SUCCESS"

    const-string/jumbo v2, "ICD Sucess"

    invoke-direct {v0, v1, v3, v2}, Lcom/quicinc/cne/ICDClient$IcdResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_SUCCESS:Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 97
    new-instance v0, Lcom/quicinc/cne/ICDClient$IcdResult;

    const-string/jumbo v1, "ICD_RESULT_PASS_NOT_STORE"

    const-string/jumbo v2, "ICD Pass Do not store in memory"

    invoke-direct {v0, v1, v4, v2}, Lcom/quicinc/cne/ICDClient$IcdResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_PASS_NOT_STORE:Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 98
    new-instance v0, Lcom/quicinc/cne/ICDClient$IcdResult;

    const-string/jumbo v1, "ICD_RESULT_FAILURE"

    const-string/jumbo v2, "ICD failure"

    invoke-direct {v0, v1, v5, v2}, Lcom/quicinc/cne/ICDClient$IcdResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_FAILURE:Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 99
    new-instance v0, Lcom/quicinc/cne/ICDClient$IcdResult;

    const-string/jumbo v1, "ICD_RESULT_TIMEOUT"

    const-string/jumbo v2, "ICD request Timed out"

    invoke-direct {v0, v1, v6, v2}, Lcom/quicinc/cne/ICDClient$IcdResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_TIMEOUT:Lcom/quicinc/cne/ICDClient$IcdResult;

    .line 95
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/quicinc/cne/ICDClient$IcdResult;

    sget-object v1, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_SUCCESS:Lcom/quicinc/cne/ICDClient$IcdResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_PASS_NOT_STORE:Lcom/quicinc/cne/ICDClient$IcdResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_FAILURE:Lcom/quicinc/cne/ICDClient$IcdResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/quicinc/cne/ICDClient$IcdResult;->ICD_RESULT_TIMEOUT:Lcom/quicinc/cne/ICDClient$IcdResult;

    aput-object v1, v0, v6

    sput-object v0, Lcom/quicinc/cne/ICDClient$IcdResult;->$VALUES:[Lcom/quicinc/cne/ICDClient$IcdResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 102
    iput-object p3, p0, Lcom/quicinc/cne/ICDClient$IcdResult;->name:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/quicinc/cne/ICDClient$IcdResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 95
    const-class v0, Lcom/quicinc/cne/ICDClient$IcdResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/ICDClient$IcdResult;

    return-object v0
.end method

.method public static values()[Lcom/quicinc/cne/ICDClient$IcdResult;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/quicinc/cne/ICDClient$IcdResult;->$VALUES:[Lcom/quicinc/cne/ICDClient$IcdResult;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/quicinc/cne/ICDClient$IcdResult;->name:Ljava/lang/String;

    return-object v0
.end method
