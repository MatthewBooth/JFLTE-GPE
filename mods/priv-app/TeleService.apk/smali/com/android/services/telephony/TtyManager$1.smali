.class Lcom/android/services/telephony/TtyManager$1;
.super Landroid/os/Handler;
.source "TtyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TtyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TtyManager;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TtyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1    # Landroid/os/Message;

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string v3, "got setTtyMode response"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string v3, "setTTYMode exception: %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    # getter for: Lcom/android/services/telephony/TtyManager;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v2}, Lcom/android/services/telephony/TtyManager;->access$100(Lcom/android/services/telephony/TtyManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {p0, v8}, Lcom/android/services/telephony/TtyManager$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string v3, "got queryTTYMode response"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string v3, "queryTTYMode exception: %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v2, v2, v6

    # invokes: Lcom/android/services/telephony/TtyManager;->phoneModeToTelecomMode(I)I
    invoke-static {v2}, Lcom/android/services/telephony/TtyManager;->access$200(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    # getter for: Lcom/android/services/telephony/TtyManager;->mTtyMode:I
    invoke-static {v2}, Lcom/android/services/telephony/TtyManager;->access$300(Lcom/android/services/telephony/TtyManager;)I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string v3, "setting TTY mode failed, attempted %d, got: %d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    # getter for: Lcom/android/services/telephony/TtyManager;->mTtyMode:I
    invoke-static {v5}, Lcom/android/services/telephony/TtyManager;->access$300(Lcom/android/services/telephony/TtyManager;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/services/telephony/TtyManager$1;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string v3, "setting TTY mode to %d succeeded"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
