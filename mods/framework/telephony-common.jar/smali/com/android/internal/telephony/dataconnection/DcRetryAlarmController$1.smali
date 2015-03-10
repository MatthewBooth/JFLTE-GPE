.class Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;
.super Landroid/content/BroadcastReceiver;
.source "DcRetryAlarmController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const v4, 0x7fffffff

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: ignore empty action=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->access$000(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mActionRetry:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->access$100(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "what"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mActionRetry:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->access$100(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has no INTENT_RETRY_ALRAM_WHAT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string v3, "tag"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mActionRetry:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->access$100(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has no INTENT_RETRY_ALRAM_TAG"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string v3, "what"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "tag"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sendMessage(what:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->access$200(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->getWhatToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->access$000(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;
    invoke-static {v3}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->access$200(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->mDc:Lcom/android/internal/telephony/dataconnection/DataConnection;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->access$200(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;)Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v1, v5}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController$1;->this$0:Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: unknown action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;->access$000(Lcom/android/internal/telephony/dataconnection/DcRetryAlarmController;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
