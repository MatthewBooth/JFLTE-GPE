.class final Lcom/android/server/telecom/ServiceBinder$ServiceBinderConnection;
.super Ljava/lang/Object;
.source "ServiceBinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/ServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceBinderConnection"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/ServiceBinder;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/ServiceBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/ServiceBinder$ServiceBinderConnection;->this$0:Lcom/android/server/telecom/ServiceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/ServiceBinder;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/ServiceBinder$ServiceBinderConnection;-><init>(Lcom/android/server/telecom/ServiceBinder;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    const-string v0, "Service bound %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$ServiceBinderConnection;->this$0:Lcom/android/server/telecom/ServiceBinder;

    # getter for: Lcom/android/server/telecom/ServiceBinder;->mIsBindingAborted:Z
    invoke-static {v0}, Lcom/android/server/telecom/ServiceBinder;->access$1000(Lcom/android/server/telecom/ServiceBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$ServiceBinderConnection;->this$0:Lcom/android/server/telecom/ServiceBinder;

    invoke-static {v0}, Lcom/android/server/telecom/ServiceBinder;->access$000(Lcom/android/server/telecom/ServiceBinder;)V

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$ServiceBinderConnection;->this$0:Lcom/android/server/telecom/ServiceBinder;

    const-string v1, "onServiceConnected"

    # invokes: Lcom/android/server/telecom/ServiceBinder;->logServiceDisconnected(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/ServiceBinder;->access$1100(Lcom/android/server/telecom/ServiceBinder;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$ServiceBinderConnection;->this$0:Lcom/android/server/telecom/ServiceBinder;

    # getter for: Lcom/android/server/telecom/ServiceBinder;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/telecom/ServiceBinder;->access$600(Lcom/android/server/telecom/ServiceBinder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$ServiceBinderConnection;->this$0:Lcom/android/server/telecom/ServiceBinder;

    invoke-static {v0}, Lcom/android/server/telecom/ServiceBinder;->access$700(Lcom/android/server/telecom/ServiceBinder;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$ServiceBinderConnection;->this$0:Lcom/android/server/telecom/ServiceBinder;

    # setter for: Lcom/android/server/telecom/ServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v0, p0}, Lcom/android/server/telecom/ServiceBinder;->access$202(Lcom/android/server/telecom/ServiceBinder;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$ServiceBinderConnection;->this$0:Lcom/android/server/telecom/ServiceBinder;

    # invokes: Lcom/android/server/telecom/ServiceBinder;->setBinder(Landroid/os/IBinder;)V
    invoke-static {v0, p2}, Lcom/android/server/telecom/ServiceBinder;->access$1200(Lcom/android/server/telecom/ServiceBinder;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$ServiceBinderConnection;->this$0:Lcom/android/server/telecom/ServiceBinder;

    invoke-static {v0}, Lcom/android/server/telecom/ServiceBinder;->access$900(Lcom/android/server/telecom/ServiceBinder;)V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$ServiceBinderConnection;->this$0:Lcom/android/server/telecom/ServiceBinder;

    const-string v1, "onServiceDisconnected"

    # invokes: Lcom/android/server/telecom/ServiceBinder;->logServiceDisconnected(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/ServiceBinder;->access$1100(Lcom/android/server/telecom/ServiceBinder;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$ServiceBinderConnection;->this$0:Lcom/android/server/telecom/ServiceBinder;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/telecom/ServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v0, v1}, Lcom/android/server/telecom/ServiceBinder;->access$202(Lcom/android/server/telecom/ServiceBinder;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$ServiceBinderConnection;->this$0:Lcom/android/server/telecom/ServiceBinder;

    invoke-static {v0}, Lcom/android/server/telecom/ServiceBinder;->access$000(Lcom/android/server/telecom/ServiceBinder;)V

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$ServiceBinderConnection;->this$0:Lcom/android/server/telecom/ServiceBinder;

    invoke-static {v0}, Lcom/android/server/telecom/ServiceBinder;->access$1300(Lcom/android/server/telecom/ServiceBinder;)V

    return-void
.end method
