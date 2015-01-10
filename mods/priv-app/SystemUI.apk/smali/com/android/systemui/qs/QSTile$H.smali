.class public final Lcom/android/systemui/qs/QSTile$H;
.super Landroid/os/Handler;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSTile;Landroid/os/Looper;)V
    .locals 0
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSTile;Landroid/os/Looper;Lcom/android/systemui/qs/QSTile$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/qs/QSTile;
    .param p2    # Landroid/os/Looper;
    .param p3    # Lcom/android/systemui/qs/QSTile$1;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSTile$H;-><init>(Lcom/android/systemui/qs/QSTile;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1    # Landroid/os/Message;

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    if-ne v5, v3, :cond_0

    const-string v1, "handleSetCallback"

    iget-object v4, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/qs/QSTile$Callback;

    # invokes: Lcom/android/systemui/qs/QSTile;->handleSetCallback(Lcom/android/systemui/qs/QSTile$Callback;)V
    invoke-static {v4, v3}, Lcom/android/systemui/qs/QSTile;->access$100(Lcom/android/systemui/qs/QSTile;Lcom/android/systemui/qs/QSTile$Callback;)V

    :goto_0
    return-void

    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const-string v1, "handleClick"

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/qs/QSTile;->mAnnounceNextStateChange:Z
    invoke-static {v3, v4}, Lcom/android/systemui/qs/QSTile;->access$202(Lcom/android/systemui/qs/QSTile;Z)Z

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->handleClick()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v3, v3, Lcom/android/systemui/qs/QSTile;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v3, v3, Lcom/android/systemui/qs/QSTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v3, v0, v2}, Lcom/android/systemui/qs/QSTile$Host;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    const-string v1, "handleSecondaryClick"

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->handleSecondaryClick()V

    goto :goto_0

    :cond_2
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    const-string v1, "handleRefreshState"

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTile;->handleRefreshState(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    const-string v1, "handleShowDetail"

    iget-object v5, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_4

    :goto_1
    # invokes: Lcom/android/systemui/qs/QSTile;->handleShowDetail(Z)V
    invoke-static {v5, v3}, Lcom/android/systemui/qs/QSTile;->access$300(Lcom/android/systemui/qs/QSTile;Z)V

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_6

    const-string v1, "handleUserSwitch"

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTile;->handleUserSwitch(I)V

    goto :goto_0

    :cond_6
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_8

    const-string v1, "handleToggleStateChanged"

    iget-object v5, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_7

    :goto_2
    # invokes: Lcom/android/systemui/qs/QSTile;->handleToggleStateChanged(Z)V
    invoke-static {v5, v3}, Lcom/android/systemui/qs/QSTile;->access$400(Lcom/android/systemui/qs/QSTile;Z)V

    goto/16 :goto_0

    :cond_7
    move v3, v4

    goto :goto_2

    :cond_8
    iget v5, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_a

    const-string v1, "handleScanStateChanged"

    iget-object v5, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_9

    :goto_3
    # invokes: Lcom/android/systemui/qs/QSTile;->handleScanStateChanged(Z)V
    invoke-static {v5, v3}, Lcom/android/systemui/qs/QSTile;->access$500(Lcom/android/systemui/qs/QSTile;Z)V

    goto/16 :goto_0

    :cond_9
    move v3, v4

    goto :goto_3

    :cond_a
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_b

    const-string v1, "handleDestroy"

    iget-object v3, p0, Lcom/android/systemui/qs/QSTile$H;->this$0:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    goto/16 :goto_0

    :cond_b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
.end method
