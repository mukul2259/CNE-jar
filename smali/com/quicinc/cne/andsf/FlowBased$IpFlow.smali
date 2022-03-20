.class public Lcom/quicinc/cne/andsf/FlowBased$IpFlow;
.super Lcom/quicinc/cne/andsf/AndsfNodeSet;
.source "FlowBased.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/quicinc/cne/andsf/FlowBased;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IpFlow"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/quicinc/cne/andsf/FlowBased;


# direct methods
.method constructor <init>(Lcom/quicinc/cne/andsf/FlowBased;Lorg/w3c/dom/Node;)V
    .locals 1
    .param p1, "this$0"    # Lcom/quicinc/cne/andsf/FlowBased;
    .param p2, "node"    # Lorg/w3c/dom/Node;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->this$0:Lcom/quicinc/cne/andsf/FlowBased;

    invoke-direct {p0}, Lcom/quicinc/cne/andsf/AndsfNodeSet;-><init>()V

    .line 134
    const-string/jumbo v0, "Handling new IpFlow"

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p2}, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->inspectChildren(Lorg/w3c/dom/Node;)V

    .line 133
    return-void
.end method


# virtual methods
.method public assignValues(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 175
    const-string/jumbo v0, "AddressType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "AddressType"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_0
    return-void

    .line 178
    :cond_0
    const-string/jumbo v0, "StartSourceIPAddress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->convertIp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_1
    const-string/jumbo v0, "EndSourceIPAddress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->convertIp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_2
    const-string/jumbo v0, "StartDestIPAddress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->convertIp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_3
    const-string/jumbo v0, "EndDestIPAddress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->convertIp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 190
    :cond_4
    const-string/jumbo v0, "ProtocolType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 191
    iget-object v0, p0, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "ProtocolType"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_5
    const-string/jumbo v0, "StartSourcePortNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 194
    invoke-virtual {p0, p1, p2}, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->convertPort(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_6
    const-string/jumbo v0, "EndSourcePortNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->convertPort(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_7
    const-string/jumbo v0, "StartDestPortNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 200
    invoke-virtual {p0, p1, p2}, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->convertPort(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_8
    const-string/jumbo v0, "EndDestPortNumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 203
    invoke-virtual {p0, p1, p2}, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->convertPort(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_9
    const-string/jumbo v0, "AppName"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 206
    iget-object v0, p0, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "AppName"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    :cond_a
    const-string/jumbo v0, "SecondaryAccessId"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 209
    iget-object v0, p0, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "SecondaryAccessId"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    :cond_b
    const-string/jumbo v0, "Direction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 212
    iget-object v0, p0, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "Direction"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :cond_c
    const-string/jumbo v0, "QoS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 215
    iget-object v0, p0, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->data:Landroid/content/ContentValues;

    const-string/jumbo v1, "QoS"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unrecognized node = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/quicinc/cne/andsf/AndsfParser;->loge(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method convertIp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 140
    const-string/jumbo v4, "\\."

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "addr":[Ljava/lang/String;
    array-length v4, v0

    if-le v4, v5, :cond_0

    .line 144
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    .line 145
    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    .line 144
    or-long/2addr v4, v6

    .line 146
    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    .line 144
    or-long/2addr v4, v6

    .line 147
    const/4 v6, 0x3

    aget-object v6, v0, v6

    .line 146
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 144
    or-long v2, v4, v6

    .line 148
    .local v2, "val":J
    iget-object v4, p0, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->data:Landroid/content/ContentValues;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Committed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for IP address "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v2    # "val":J
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Committed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for IP address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 153
    iget-object v4, p0, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->data:Landroid/content/ContentValues;

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Committed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " for IP address"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 159
    iget-object v4, p0, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->data:Landroid/content/ContentValues;

    invoke-virtual {v4, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public convertPort(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 169
    .local v0, "ival":I
    iget-object v1, p0, Lcom/quicinc/cne/andsf/FlowBased$IpFlow;->data:Landroid/content/ContentValues;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Committed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/quicinc/cne/andsf/AndsfParser;->dlogd(Ljava/lang/String;)V

    .line 167
    return-void
.end method
