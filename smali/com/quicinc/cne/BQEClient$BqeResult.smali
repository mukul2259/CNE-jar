.class final enum Lcom/quicinc/cne/BQEClient$BqeResult;
.super Ljava/lang/Enum;
.source "BQEClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/BQEClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BqeResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/quicinc/cne/BQEClient$BqeResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/quicinc/cne/BQEClient$BqeResult;

.field public static final enum BQE_RESULT_CONTINUE:Lcom/quicinc/cne/BQEClient$BqeResult;

.field public static final enum BQE_RESULT_FAILURE:Lcom/quicinc/cne/BQEClient$BqeResult;

.field public static final enum BQE_RESULT_SUCCESS:Lcom/quicinc/cne/BQEClient$BqeResult;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v0, Lcom/quicinc/cne/BQEClient$BqeResult;

    const-string/jumbo v1, "BQE_RESULT_CONTINUE"

    const-string/jumbo v2, "BQE Result Continue Estimation"

    invoke-direct {v0, v1, v3, v2}, Lcom/quicinc/cne/BQEClient$BqeResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_CONTINUE:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 72
    new-instance v0, Lcom/quicinc/cne/BQEClient$BqeResult;

    const-string/jumbo v1, "BQE_RESULT_FAILURE"

    const-string/jumbo v2, "BQE Result failure, Stop Estimation"

    invoke-direct {v0, v1, v4, v2}, Lcom/quicinc/cne/BQEClient$BqeResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_FAILURE:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 73
    new-instance v0, Lcom/quicinc/cne/BQEClient$BqeResult;

    const-string/jumbo v1, "BQE_RESULT_SUCCESS"

    const-string/jumbo v2, "BQE Result Success, Stop Estimation"

    invoke-direct {v0, v1, v5, v2}, Lcom/quicinc/cne/BQEClient$BqeResult;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_SUCCESS:Lcom/quicinc/cne/BQEClient$BqeResult;

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/quicinc/cne/BQEClient$BqeResult;

    sget-object v1, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_CONTINUE:Lcom/quicinc/cne/BQEClient$BqeResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_FAILURE:Lcom/quicinc/cne/BQEClient$BqeResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/quicinc/cne/BQEClient$BqeResult;->BQE_RESULT_SUCCESS:Lcom/quicinc/cne/BQEClient$BqeResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/quicinc/cne/BQEClient$BqeResult;->$VALUES:[Lcom/quicinc/cne/BQEClient$BqeResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 76
    iput-object p3, p0, Lcom/quicinc/cne/BQEClient$BqeResult;->name:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/quicinc/cne/BQEClient$BqeResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    const-class v0, Lcom/quicinc/cne/BQEClient$BqeResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/quicinc/cne/BQEClient$BqeResult;

    return-object v0
.end method

.method public static values()[Lcom/quicinc/cne/BQEClient$BqeResult;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/quicinc/cne/BQEClient$BqeResult;->$VALUES:[Lcom/quicinc/cne/BQEClient$BqeResult;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/quicinc/cne/BQEClient$BqeResult;->name:Ljava/lang/String;

    return-object v0
.end method
