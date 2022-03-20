.class Lcom/quicinc/cne/CNE$IdGenerator;
.super Ljava/lang/Object;
.source "CNE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/CNE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdGenerator"
.end annotation


# instance fields
.field private mId:I

.field private mReusableIds:Ljava/util/Vector;

.field final synthetic this$0:Lcom/quicinc/cne/CNE;


# direct methods
.method public constructor <init>(Lcom/quicinc/cne/CNE;)V
    .locals 1
    .param p1, "this$0"    # Lcom/quicinc/cne/CNE;

    .prologue
    .line 1173
    iput-object p1, p0, Lcom/quicinc/cne/CNE$IdGenerator;->this$0:Lcom/quicinc/cne/CNE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1170
    const/4 v0, 0x0

    iput v0, p0, Lcom/quicinc/cne/CNE$IdGenerator;->mId:I

    .line 1171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/quicinc/cne/CNE$IdGenerator;->mReusableIds:Ljava/util/Vector;

    .line 1174
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/quicinc/cne/CNE$IdGenerator;->mReusableIds:Ljava/util/Vector;

    .line 1173
    return-void
.end method


# virtual methods
.method public getNextId()I
    .locals 4

    .prologue
    .line 1179
    iget-object v2, p0, Lcom/quicinc/cne/CNE$IdGenerator;->mReusableIds:Ljava/util/Vector;

    monitor-enter v2

    .line 1180
    :try_start_0
    iget-object v1, p0, Lcom/quicinc/cne/CNE$IdGenerator;->mReusableIds:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/quicinc/cne/CNE$IdGenerator;->mId:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/quicinc/cne/CNE$IdGenerator;->mId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v1

    .line 1181
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/quicinc/cne/CNE$IdGenerator;->mReusableIds:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1182
    .local v0, "id":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/quicinc/cne/CNE$IdGenerator;->mReusableIds:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 1184
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 1179
    .end local v0    # "id":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public recaptureUnusedId(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1188
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 1189
    .local v0, "oldId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/quicinc/cne/CNE$IdGenerator;->mReusableIds:Ljava/util/Vector;

    monitor-enter v2

    .line 1190
    :try_start_0
    iget-object v1, p0, Lcom/quicinc/cne/CNE$IdGenerator;->mReusableIds:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1191
    iget-object v1, p0, Lcom/quicinc/cne/CNE$IdGenerator;->mReusableIds:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 1187
    return-void

    .line 1189
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1197
    const-string/jumbo v0, "mId = [%d], mReusableIds = [%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/quicinc/cne/CNE$IdGenerator;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/quicinc/cne/CNE$IdGenerator;->mReusableIds:Ljava/util/Vector;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
