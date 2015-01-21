.class public final Lcom/android/dialer/util/AsyncTaskExecutors;
.super Ljava/lang/Object;
.source "AsyncTaskExecutors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;,
        Lcom/android/dialer/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;
    }
.end annotation


# static fields
.field private static mInjectedAsyncTaskExecutorFactory:Lcom/android/dialer/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/dialer/util/AsyncTaskExecutors;->mInjectedAsyncTaskExecutorFactory:Lcom/android/dialer/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCalledFromUiThread()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "submit method must be called from ui thread, was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static createAsyncTaskExecutor()Lcom/android/dialer/util/AsyncTaskExecutor;
    .locals 3

    const-class v1, Lcom/android/dialer/util/AsyncTaskExecutors;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/dialer/util/AsyncTaskExecutors;->mInjectedAsyncTaskExecutorFactory:Lcom/android/dialer/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/dialer/util/AsyncTaskExecutors;->mInjectedAsyncTaskExecutorFactory:Lcom/android/dialer/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;

    invoke-interface {v0}, Lcom/android/dialer/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;->createAsyncTaskExeuctor()Lcom/android/dialer/util/AsyncTaskExecutor;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/dialer/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;

    sget-object v2, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v2}, Lcom/android/dialer/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static createThreadPoolExecutor()Lcom/android/dialer/util/AsyncTaskExecutor;
    .locals 3

    const-class v1, Lcom/android/dialer/util/AsyncTaskExecutors;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/dialer/util/AsyncTaskExecutors;->mInjectedAsyncTaskExecutorFactory:Lcom/android/dialer/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/dialer/util/AsyncTaskExecutors;->mInjectedAsyncTaskExecutorFactory:Lcom/android/dialer/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;

    invoke-interface {v0}, Lcom/android/dialer/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;->createAsyncTaskExeuctor()Lcom/android/dialer/util/AsyncTaskExecutor;

    move-result-object v0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/dialer/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v2}, Lcom/android/dialer/util/AsyncTaskExecutors$SimpleAsyncTaskExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setFactoryForTest(Lcom/android/dialer/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;)V
    .locals 2
    .param p0    # Lcom/android/dialer/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;

    const-class v1, Lcom/android/dialer/util/AsyncTaskExecutors;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/android/dialer/util/AsyncTaskExecutors;->mInjectedAsyncTaskExecutorFactory:Lcom/android/dialer/util/AsyncTaskExecutors$AsyncTaskExecutorFactory;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
