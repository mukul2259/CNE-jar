.class public Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;
.super Ljava/lang/Object;
.source "AndsfParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/andsf/AndsfParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AndsfData"
.end annotation


# instance fields
.field public data:Landroid/content/ContentValues;

.field extension:Lcom/quicinc/cne/andsf/Extension;

.field isrps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/quicinc/cne/andsf/IsrpDetails;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/quicinc/cne/andsf/AndsfParser;

.field time:J

.field version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/andsf/AndsfParser;)V
    .locals 1
    .param p1, "this$0"    # Lcom/quicinc/cne/andsf/AndsfParser;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->this$0:Lcom/quicinc/cne/andsf/AndsfParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->isrps:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/andsf/AndsfParser$AndsfData;->data:Landroid/content/ContentValues;

    .line 80
    return-void
.end method
