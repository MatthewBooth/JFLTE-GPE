.class final Lcom/android/server/telecom/ServiceBinder$Binder;
.super Ljava/lang/Object;
.source "ServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/ServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Binder"
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/ServiceBinder;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/ServiceBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/ServiceBinder$Binder;->this$0:Lcom/android/server/telecom/ServiceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final bind(Lcom/android/server/telecom/ServiceBinder$BindCallback;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$Binder;->this$0:Lcom/android/server/telecom/ServiceBinder;

    const-string v1, "bind()"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$Binder;->this$0:Lcom/android/server/telecom/ServiceBinder;

    invoke-static {v0}, Lcom/android/server/telecom/ServiceBinder;->access$000(Lcom/android/server/telecom/ServiceBinder;)V

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$Binder;->this$0:Lcom/android/server/telecom/ServiceBinder;

    # getter for: Lcom/android/server/telecom/ServiceBinder;->mCallbacks:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/server/telecom/ServiceBinder;->access$100(Lcom/android/server/telecom/ServiceBinder;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$Binder;->this$0:Lcom/android/server/telecom/ServiceBinder;

    # getter for: Lcom/android/server/telecom/ServiceBinder;->mCallbacks:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/server/telecom/ServiceBinder;->access$100(Lcom/android/server/telecom/ServiceBinder;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$Binder;->this$0:Lcom/android/server/telecom/ServiceBinder;

    # getter for: Lcom/android/server/telecom/ServiceBinder;->mCallbacks:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/server/telecom/ServiceBinder;->access$100(Lcom/android/server/telecom/ServiceBinder;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$Binder;->this$0:Lcom/android/server/telecom/ServiceBinder;

    # getter for: Lcom/android/server/telecom/ServiceBinder;->mServiceConnection:Landroid/content/ServiceConnection;
    invoke-static {v0}, Lcom/android/server/telecom/ServiceBinder;->access$200(Lcom/android/server/telecom/ServiceBinder;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/telecom/ServiceBinder$Binder;->this$0:Lcom/android/server/telecom/ServiceBinder;

    # getter for: Lcom/android/server/telecom/ServiceBinder;->mServiceAction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/telecom/ServiceBinder;->access$400(Lcom/android/server/telecom/ServiceBinder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/ServiceBinder$Binder;->this$0:Lcom/android/server/telecom/ServiceBinder;

    # getter for: Lcom/android/server/telecom/ServiceBinder;->mComponentName:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/server/telecom/ServiceBinder;->access$300(Lcom/android/server/telecom/ServiceBinder;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/ServiceBinder$ServiceBinderConnection;

    iget-object v2, p0, Lcom/android/server/telecom/ServiceBinder$Binder;->this$0:Lcom/android/server/telecom/ServiceBinder;

    invoke-direct {v1, v2, v5}, Lcom/android/server/telecom/ServiceBinder$ServiceBinderConnection;-><init>(Lcom/android/server/telecom/ServiceBinder;B)V

    iget-object v2, p0, Lcom/android/server/telecom/ServiceBinder$Binder;->this$0:Lcom/android/server/telecom/ServiceBinder;

    const-string v3, "Binding to service with intent: %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/telecom/ServiceBinder$Binder;->this$0:Lcom/android/server/telecom/ServiceBinder;

    # getter for: Lcom/android/server/telecom/ServiceBinder;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/telecom/ServiceBinder;->access$600(Lcom/android/server/telecom/ServiceBinder;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$Binder;->this$0:Lcom/android/server/telecom/ServiceBinder;

    invoke-static {v0}, Lcom/android/server/telecom/ServiceBinder;->access$700(Lcom/android/server/telecom/ServiceBinder;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$Binder;->this$0:Lcom/android/server/telecom/ServiceBinder;

    const-string v1, "Service is already bound."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$Binder;->this$0:Lcom/android/server/telecom/ServiceBinder;

    # getter for: Lcom/android/server/telecom/ServiceBinder;->mBinder:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/telecom/ServiceBinder;->access$800(Lcom/android/server/telecom/ServiceBinder;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/telecom/ServiceBinder$Binder;->this$0:Lcom/android/server/telecom/ServiceBinder;

    invoke-static {v0}, Lcom/android/server/telecom/ServiceBinder;->access$900(Lcom/android/server/telecom/ServiceBinder;)V

    goto :goto_0
.end method
