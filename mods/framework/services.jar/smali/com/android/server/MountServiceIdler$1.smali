.class Lcom/android/server/MountServiceIdler$1;
.super Ljava/lang/Object;
.source "MountServiceIdler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountServiceIdler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountServiceIdler;


# direct methods
.method constructor <init>(Lcom/android/server/MountServiceIdler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "MountServiceIdler"

    const-string v1, "Got mount service completion callback"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    # getter for: Lcom/android/server/MountServiceIdler;->mFinishCallback:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->access$000(Lcom/android/server/MountServiceIdler;)Ljava/lang/Runnable;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    # getter for: Lcom/android/server/MountServiceIdler;->mStarted:Z
    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->access$100(Lcom/android/server/MountServiceIdler;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    iget-object v2, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    # getter for: Lcom/android/server/MountServiceIdler;->mJobParams:Landroid/app/job/JobParameters;
    invoke-static {v2}, Lcom/android/server/MountServiceIdler;->access$200(Lcom/android/server/MountServiceIdler;)Landroid/app/job/JobParameters;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/MountServiceIdler;->jobFinished(Landroid/app/job/JobParameters;Z)V

    iget-object v0, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/MountServiceIdler;->mStarted:Z
    invoke-static {v0, v2}, Lcom/android/server/MountServiceIdler;->access$102(Lcom/android/server/MountServiceIdler;Z)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/MountServiceIdler$1;->this$0:Lcom/android/server/MountServiceIdler;

    invoke-static {v0}, Lcom/android/server/MountServiceIdler;->scheduleIdlePass(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
