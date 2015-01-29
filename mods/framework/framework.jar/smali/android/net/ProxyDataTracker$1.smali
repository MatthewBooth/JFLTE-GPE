.class Landroid/net/ProxyDataTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "ProxyDataTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ProxyDataTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/ProxyDataTracker;


# direct methods
.method constructor <init>(Landroid/net/ProxyDataTracker;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ProxyDataTracker$1;->this$0:Landroid/net/ProxyDataTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.net.PROXY_STATUS_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/net/ProxyDataTracker$1;->this$0:Landroid/net/ProxyDataTracker;

    # getter for: Landroid/net/ProxyDataTracker;->mIsProxyAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Landroid/net/ProxyDataTracker;->access$000(Landroid/net/ProxyDataTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const-string v2, "is_proxy_available"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Landroid/net/ProxyDataTracker$1;->this$0:Landroid/net/ProxyDataTracker;

    # getter for: Landroid/net/ProxyDataTracker;->mIsProxyAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Landroid/net/ProxyDataTracker;->access$000(Landroid/net/ProxyDataTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "reply_to_messenger_binder_bundle"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "reply_to_messenger_binder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "ProxyDataTracker"

    const-string/jumbo v2, "no messenger binder in the intent to send future requests"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/ProxyDataTracker$1;->this$0:Landroid/net/ProxyDataTracker;

    # getter for: Landroid/net/ProxyDataTracker;->mIsProxyAvailable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Landroid/net/ProxyDataTracker;->access$000(Landroid/net/ProxyDataTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Landroid/net/ProxyDataTracker$1;->this$0:Landroid/net/ProxyDataTracker;

    new-instance v2, Landroid/os/Messenger;

    const-string/jumbo v3, "reply_to_messenger_binder"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    # setter for: Landroid/net/ProxyDataTracker;->mProxyStatusService:Landroid/os/Messenger;
    invoke-static {v1, v2}, Landroid/net/ProxyDataTracker;->access$102(Landroid/net/ProxyDataTracker;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v1, p0, Landroid/net/ProxyDataTracker$1;->this$0:Landroid/net/ProxyDataTracker;

    # getter for: Landroid/net/ProxyDataTracker;->mReconnectRequested:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Landroid/net/ProxyDataTracker;->access$200(Landroid/net/ProxyDataTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/ProxyDataTracker$1;->this$0:Landroid/net/ProxyDataTracker;

    invoke-virtual {v1}, Landroid/net/ProxyDataTracker;->reconnect()Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/net/ProxyDataTracker$1;->this$0:Landroid/net/ProxyDataTracker;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string/jumbo v3, "proxy_down"

    const/4 v4, 0x0

    # invokes: Landroid/net/ProxyDataTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3, v4}, Landroid/net/ProxyDataTracker;->access$300(Landroid/net/ProxyDataTracker;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "ProxyDataTracker"

    const-string v2, "Unrecognized broadcast intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
