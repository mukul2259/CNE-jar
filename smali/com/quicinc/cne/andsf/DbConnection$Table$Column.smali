.class public Lcom/quicinc/cne/andsf/DbConnection$Table$Column;
.super Ljava/lang/Object;
.source "DbConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/andsf/DbConnection$Table;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Column"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field final synthetic this$1:Lcom/quicinc/cne/andsf/DbConnection$Table;

.field type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/andsf/DbConnection$Table;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/quicinc/cne/andsf/DbConnection$Table;
    .param p2, "type_"    # Ljava/lang/String;
    .param p3, "name_"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/quicinc/cne/andsf/DbConnection$Table$Column;->this$1:Lcom/quicinc/cne/andsf/DbConnection$Table;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p2, p0, Lcom/quicinc/cne/andsf/DbConnection$Table$Column;->type:Ljava/lang/String;

    .line 220
    iput-object p3, p0, Lcom/quicinc/cne/andsf/DbConnection$Table$Column;->name:Ljava/lang/String;

    .line 218
    return-void
.end method
