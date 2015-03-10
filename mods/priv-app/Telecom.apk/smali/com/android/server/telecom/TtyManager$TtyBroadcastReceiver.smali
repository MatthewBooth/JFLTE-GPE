.class final Lcom/android/server/telecom/TtyManager$TtyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TtyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/TtyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TtyBroadcastReceiver"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/TtyManager;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/TtyManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/TtyManager$TtyBroadcastReceiver;->this$0:Lcom/android/server/telecom/TtyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/TtyManager;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/TtyManager$TtyBroadcastReceiver;-><init>(Lcom/android/server/telecom/TtyManager;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/TtyManager$TtyBroadcastReceiver;->this$0:Lcom/android/server/telecom/TtyManager;

    const-string v2, "onReceive, action: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.telecom.intent.extra.TTY_PREFERRED"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/telecom/TtyManager$TtyBroadcastReceiver;->this$0:Lcom/android/server/telecom/TtyManager;

    # getter for: Lcom/android/server/telecom/TtyManager;->mPreferredTtyMode:I
    invoke-static {v1}, Lcom/android/server/telecom/TtyManager;->access$100(Lcom/android/server/telecom/TtyManager;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/TtyManager$TtyBroadcastReceiver;->this$0:Lcom/android/server/telecom/TtyManager;

    # setter for: Lcom/android/server/telecom/TtyManager;->mPreferredTtyMode:I
    invoke-static {v1, v0}, Lcom/android/server/telecom/TtyManager;->access$102(Lcom/android/server/telecom/TtyManager;I)I

    iget-object v0, p0, Lcom/android/server/telecom/TtyManager$TtyBroadcastReceiver;->this$0:Lcom/android/server/telecom/TtyManager;

    # invokes: Lcom/android/server/telecom/TtyManager;->updateCurrentTtyMode()V
    invoke-static {v0}, Lcom/android/server/telecom/TtyManager;->access$200(Lcom/android/server/telecom/TtyManager;)V

    :cond_0
    return-void
.end method
