.class final Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TtyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TtyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TtyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TtyManager;


# direct methods
.method private constructor <init>(Lcom/android/services/telephony/TtyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;->this$0:Lcom/android/services/telephony/TtyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/services/telephony/TtyManager;Lcom/android/services/telephony/TtyManager$1;)V
    .locals 0
    .param p1    # Lcom/android/services/telephony/TtyManager;
    .param p2    # Lcom/android/services/telephony/TtyManager$1;

    invoke-direct {p0, p1}, Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;-><init>(Lcom/android/services/telephony/TtyManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;->this$0:Lcom/android/services/telephony/TtyManager;

    const-string v3, "onReceive, action: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.telecom.intent.extra.CURRENT_TTY_MODE"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;->this$0:Lcom/android/services/telephony/TtyManager;

    # invokes: Lcom/android/services/telephony/TtyManager;->updateTtyMode(I)V
    invoke-static {v2, v1}, Lcom/android/services/telephony/TtyManager;->access$400(Lcom/android/services/telephony/TtyManager;I)V

    :cond_0
    return-void
.end method
