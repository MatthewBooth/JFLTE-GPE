.class final Lcom/android/server/telecom/ConnectionServiceWrapper$4;
.super Ljava/lang/Object;
.source "ConnectionServiceWrapper.java"

# interfaces
.implements Lcom/android/server/telecom/ServiceBinder$BindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/ConnectionServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

.field private synthetic val$callback:Lcom/android/internal/telecom/RemoteServiceCallback;

.field private synthetic val$currentSimService:Lcom/android/server/telecom/ConnectionServiceWrapper;

.field private synthetic val$simServiceBinders:Ljava/util/List;

.field private synthetic val$simServiceComponentNames:Ljava/util/List;

.field private synthetic val$simServices:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/server/telecom/ConnectionServiceWrapper;Ljava/util/List;Ljava/util/List;Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$4;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    iput-object p2, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$4;->val$currentSimService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    iput-object p3, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$4;->val$simServiceComponentNames:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$4;->val$simServiceBinders:Ljava/util/List;

    iput-object p5, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$4;->val$callback:Lcom/android/internal/telecom/RemoteServiceCallback;

    iput-object p6, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$4;->val$simServices:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure()V
    .locals 4

    const-string v0, "Failed simService %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$4;->val$currentSimService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v3}, Lcom/android/server/telecom/ConnectionServiceWrapper;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$4;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$4;->val$callback:Lcom/android/internal/telecom/RemoteServiceCallback;

    # invokes: Lcom/android/server/telecom/ConnectionServiceWrapper;->noRemoteServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$900(Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/internal/telecom/RemoteServiceCallback;)V

    return-void
.end method

.method public final onSuccess()V
    .locals 4

    const-string v0, "Adding simService %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$4;->val$currentSimService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v3}, Lcom/android/server/telecom/ConnectionServiceWrapper;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$4;->val$simServiceComponentNames:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$4;->val$currentSimService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-virtual {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$4;->val$simServiceBinders:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$4;->val$currentSimService:Lcom/android/server/telecom/ConnectionServiceWrapper;

    # getter for: Lcom/android/server/telecom/ConnectionServiceWrapper;->mServiceInterface:Lcom/android/internal/telecom/IConnectionService;
    invoke-static {v1}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$800(Lcom/android/server/telecom/ConnectionServiceWrapper;)Lcom/android/internal/telecom/IConnectionService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/IConnectionService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$4;->val$simServiceComponentNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$4;->val$simServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$4;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    iget-object v1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$4;->val$callback:Lcom/android/internal/telecom/RemoteServiceCallback;

    iget-object v2, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$4;->val$simServiceComponentNames:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$4;->val$simServiceBinders:Ljava/util/List;

    # invokes: Lcom/android/internal/telecom/RemoteServiceCallback;->onResult(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/telecom/ConnectionServiceWrapper;->access$1000(Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/internal/telecom/RemoteServiceCallback;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method
