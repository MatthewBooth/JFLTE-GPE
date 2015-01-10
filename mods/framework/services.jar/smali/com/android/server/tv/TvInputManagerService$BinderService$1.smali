.class Lcom/android/server/tv/TvInputManagerService$BinderService$1;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/tv/TvInputManagerService$BinderService;->registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/tv/TvInputManagerService$BinderService;

.field final synthetic val$callback:Landroid/media/tv/ITvInputManagerCallback;

.field final synthetic val$userState:Lcom/android/server/tv/TvInputManagerService$UserState;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService$BinderService;Lcom/android/server/tv/TvInputManagerService$UserState;Landroid/media/tv/ITvInputManagerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$BinderService$1;->this$1:Lcom/android/server/tv/TvInputManagerService$BinderService;

    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService$1;->val$userState:Lcom/android/server/tv/TvInputManagerService$UserState;

    iput-object p3, p0, Lcom/android/server/tv/TvInputManagerService$BinderService$1;->val$callback:Landroid/media/tv/ITvInputManagerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService$1;->this$1:Lcom/android/server/tv/TvInputManagerService$BinderService;

    iget-object v0, v0, Lcom/android/server/tv/TvInputManagerService$BinderService;->this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService$1;->val$userState:Lcom/android/server/tv/TvInputManagerService$UserState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2400(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$BinderService$1;->val$userState:Lcom/android/server/tv/TvInputManagerService$UserState;

    # getter for: Lcom/android/server/tv/TvInputManagerService$UserState;->callbackSet:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$UserState;->access$2400(Lcom/android/server/tv/TvInputManagerService$UserState;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/tv/TvInputManagerService$BinderService$1;->val$callback:Landroid/media/tv/ITvInputManagerCallback;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
