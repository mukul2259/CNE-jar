.class public Lcom/quicinc/cne/andsf/DbConnection$Table;
.super Ljava/lang/Object;
.source "DbConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/andsf/DbConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Table"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/quicinc/cne/andsf/DbConnection$Table$Column;
    }
.end annotation


# instance fields
.field columns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/quicinc/cne/andsf/DbConnection$Table$Column;",
            ">;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/quicinc/cne/andsf/DbConnection;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/andsf/DbConnection;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/quicinc/cne/andsf/DbConnection;
    .param p2, "_name"    # Ljava/lang/String;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/quicinc/cne/andsf/DbConnection$Table;->this$0:Lcom/quicinc/cne/andsf/DbConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p2, p0, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/andsf/DbConnection$Table;->columns:Ljava/util/ArrayList;

    .line 207
    return-void
.end method


# virtual methods
.method public addColumn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type_"    # Ljava/lang/String;
    .param p2, "name_"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/quicinc/cne/andsf/DbConnection$Table;->columns:Ljava/util/ArrayList;

    new-instance v1, Lcom/quicinc/cne/andsf/DbConnection$Table$Column;

    invoke-direct {v1, p0, p1, p2}, Lcom/quicinc/cne/andsf/DbConnection$Table$Column;-><init>(Lcom/quicinc/cne/andsf/DbConnection$Table;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    return-void
.end method

.method public getCreateString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 229
    iget-object v3, p0, Lcom/quicinc/cne/andsf/DbConnection$Table;->columns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 230
    .local v2, "size":I
    if-lez v2, :cond_1

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "CREATE TABLE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/quicinc/cne/andsf/DbConnection$Table;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object v3, p0, Lcom/quicinc/cne/andsf/DbConnection$Table;->columns:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/quicinc/cne/andsf/DbConnection$Table$Column;

    iget-object v3, v3, Lcom/quicinc/cne/andsf/DbConnection$Table$Column;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object v3, p0, Lcom/quicinc/cne/andsf/DbConnection$Table;->columns:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/quicinc/cne/andsf/DbConnection$Table$Column;

    iget-object v3, v3, Lcom/quicinc/cne/andsf/DbConnection$Table$Column;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 239
    const-string/jumbo v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    iget-object v3, p0, Lcom/quicinc/cne/andsf/DbConnection$Table;->columns:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/quicinc/cne/andsf/DbConnection$Table$Column;

    iget-object v3, v3, Lcom/quicinc/cne/andsf/DbConnection$Table$Column;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string/jumbo v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v3, p0, Lcom/quicinc/cne/andsf/DbConnection$Table;->columns:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/quicinc/cne/andsf/DbConnection$Table$Column;

    iget-object v3, v3, Lcom/quicinc/cne/andsf/DbConnection$Table$Column;->type:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_0
    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 247
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    const-string/jumbo v3, ""

    return-object v3
.end method
