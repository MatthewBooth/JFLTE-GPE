.class final Lcom/android/server/telecom/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WiredHeadsetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/WiredHeadsetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WiredHeadsetBroadcastReceiver"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/WiredHeadsetManager;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/WiredHeadsetManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;->this$0:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/WiredHeadsetManager;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;-><init>(Lcom/android/server/telecom/WiredHeadsetManager;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/telecom/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;->this$0:Lcom/android/server/telecom/WiredHeadsetManager;

    const-string v4, "ACTION_HEADSET_PLUG event, plugged in: %b"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v3, v4, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/WiredHeadsetManager$WiredHeadsetBroadcastReceiver;->this$0:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-static {v1, v0}, Lcom/android/server/telecom/WiredHeadsetManager;->access$000(Lcom/android/server/telecom/WiredHeadsetManager;Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method
