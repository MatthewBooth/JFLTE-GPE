.class Lcom/android/phone/CardStateMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "CardStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CardStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CardStateMonitor;


# direct methods
.method constructor <init>(Lcom/android/phone/CardStateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CardStateMonitor$1;->this$0:Lcom/android/phone/CardStateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ACTION_SHUTDOWN Received"

    invoke-static {v0}, Lcom/android/phone/CardStateMonitor;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    # setter for: Lcom/android/phone/CardStateMonitor;->mIsShutDownInProgress:Z
    invoke-static {v0}, Lcom/android/phone/CardStateMonitor;->access$002(Z)Z

    :cond_0
    return-void
.end method
