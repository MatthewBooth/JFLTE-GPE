.class public Lcom/android/ex/variablespeed/VariableSpeed;
.super Ljava/lang/Object;
.source "VariableSpeed.java"

# interfaces
.implements Lcom/android/ex/variablespeed/MediaPlayerProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/variablespeed/VariableSpeed$PlaybackRunnable;
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private mAudioStreamType:I

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentPlaybackRate:F

.field private mDataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;

.field private mDuration:I

.field private mEngineInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mHasBeenReleased:Z

.field private mHasDuration:Z

.field private mHasStartedPlayback:Z

.field private mIsPrepared:Z

.field private mIsReadyToReUse:Z

.field private mPlaybackFinishedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mSkipCompletionReport:Z

.field private mStartPosition:I


# direct methods
.method private constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    iput-boolean v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mIsReadyToReUse:Z

    const/high16 v1, 0x3f800000

    iput v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mCurrentPlaybackRate:F

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mExecutor:Ljava/util/concurrent/Executor;

    :try_start_0
    invoke-static {}, Lcom/android/ex/variablespeed/VariableSpeedNative;->loadLibrary()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->reset()V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "could not load library"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "could not load library"

    invoke-direct {v1, v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/ex/variablespeed/VariableSpeed;)Ljava/lang/Object;
    .locals 1
    .param p0    # Lcom/android/ex/variablespeed/VariableSpeed;

    iget-object v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/ex/variablespeed/VariableSpeed;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0    # Lcom/android/ex/variablespeed/VariableSpeed;

    iget-object v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/ex/variablespeed/VariableSpeed;)Z
    .locals 1
    .param p0    # Lcom/android/ex/variablespeed/VariableSpeed;

    iget-boolean v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mSkipCompletionReport:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/ex/variablespeed/VariableSpeed;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0    # Lcom/android/ex/variablespeed/VariableSpeed;

    iget-object v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mPlaybackFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method private check(ZLjava/lang/String;)V
    .locals 1
    .param p1    # Z
    .param p2    # Ljava/lang/String;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/String;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static createVariableSpeed(Ljava/util/concurrent/Executor;)Lcom/android/ex/variablespeed/MediaPlayerProxy;
    .locals 2
    .param p0    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    new-instance v0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;

    new-instance v1, Lcom/android/ex/variablespeed/VariableSpeed;

    invoke-direct {v1, p0}, Lcom/android/ex/variablespeed/VariableSpeed;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v0, v1}, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;-><init>(Lcom/android/ex/variablespeed/MediaPlayerProxy;)V

    return-object v0
.end method

.method private hasEngineBeenInitialized()Z
    .locals 4

    iget-object v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mEngineInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasPlaybackFinished()Z
    .locals 4

    iget-object v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mPlaybackFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private innerSetDataSource(Lcom/android/ex/variablespeed/MediaPlayerDataSource;)V
    .locals 5
    .param p1    # Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "source"

    invoke-direct {p0, p1, v2}, Lcom/android/ex/variablespeed/VariableSpeed;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    const-string v4, "has been released, reset before use"

    invoke-direct {p0, v2, v4}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    if-nez v2, :cond_1

    :goto_1
    const-string v1, "cannot setDataSource more than once"

    invoke-direct {p0, v0, v1}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    iput-object p1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    monitor-exit v3

    return-void

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private reportException(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;

    const-string v0, "VariableSpeed"

    const-string v1, "playback error:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private stopAndStartPlayingAgain(Lcom/android/ex/variablespeed/MediaPlayerDataSource;)V
    .locals 1
    .param p1    # Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    invoke-direct {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->stopCurrentPlayback()V

    invoke-virtual {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->reset()V

    invoke-direct {p0, p1}, Lcom/android/ex/variablespeed/VariableSpeed;->innerSetDataSource(Lcom/android/ex/variablespeed/MediaPlayerDataSource;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->start()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0, v0}, Lcom/android/ex/variablespeed/VariableSpeed;->reportException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private stopCurrentPlayback()V
    .locals 5

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasStartedPlayback:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->hasPlaybackFinished()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mEngineInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    iget-object v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mPlaybackFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mSkipCompletionReport:Z

    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/ex/variablespeed/VariableSpeed;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {}, Lcom/android/ex/variablespeed/VariableSpeedNative;->stopPlayback()V

    invoke-direct {p0, v2}, Lcom/android/ex/variablespeed/VariableSpeed;->waitForLatch(Ljava/util/concurrent/CountDownLatch;)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private waitForLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 5
    .param p1    # Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x1

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/util/concurrent/TimeoutException;

    const-string v3, "waited too long"

    invoke-direct {v2, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/ex/variablespeed/VariableSpeed;->reportException(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    invoke-direct {p0, v0}, Lcom/android/ex/variablespeed/VariableSpeed;->reportException(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v3, "has been released, reset before use"

    invoke-direct {p0, v1, v3}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasStartedPlayback:Z

    if-nez v1, :cond_1

    monitor-exit v2

    :goto_1
    return v0

    :cond_0
    move v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->hasEngineBeenInitialized()Z

    move-result v1

    if-nez v1, :cond_2

    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->hasPlaybackFinished()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/ex/variablespeed/VariableSpeedNative;->getCurrentPosition()I

    move-result v0

    monitor-exit v2

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDuration:I

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getDuration()I
    .locals 3

    iget-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "has been released, reset before use"

    invoke-direct {p0, v0, v2}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasDuration:Z

    const-string v2, "you haven\'t called prepare, can\'t get the duration"

    invoke-direct {p0, v0, v2}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    iget v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDuration:I

    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isPlaying()Z
    .locals 2

    iget-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->isReadyToPlay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasStartedPlayback:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->hasPlaybackFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isReadyToPlay()Z
    .locals 2

    iget-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasDuration:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pause()V
    .locals 3

    iget-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "has been released, reset before use"

    invoke-direct {p0, v0, v2}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->stopCurrentPlayback()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public prepare()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-boolean v5, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v5, :cond_0

    move v5, v3

    :goto_0
    const-string v7, "has been released, reset before use"

    invoke-direct {p0, v5, v7}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    iget-object v5, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    if-eqz v5, :cond_1

    move v5, v3

    :goto_1
    const-string v7, "must setDataSource before you prepare"

    invoke-direct {p0, v5, v7}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mIsPrepared:Z

    if-nez v5, :cond_2

    move v5, v3

    :goto_2
    const-string v7, "cannot prepare more than once"

    invoke-direct {p0, v5, v7}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mIsPrepared:Z

    iget-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    iget v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mAudioStreamType:I

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    invoke-virtual {v1, v2}, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->setAsSourceFor(Landroid/media/MediaPlayer;)V

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v5, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-boolean v6, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasDuration:Z

    if-nez v6, :cond_3

    :goto_3
    const-string v4, "can\'t have duration, this is impossible"

    invoke-direct {p0, v3, v4}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasDuration:Z

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    iput v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDuration:I

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    return-void

    :cond_0
    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v4

    goto :goto_2

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_3
    move v3, v4

    goto :goto_3

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method public release()V
    .locals 3

    iget-object v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-eqz v1, :cond_0

    monitor-exit v2

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->stopCurrentPlayback()V

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    invoke-direct {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->hasEngineBeenInitialized()Z

    move-result v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/ex/variablespeed/VariableSpeedNative;->shutdownEngine()V

    :cond_1
    iget-object v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mIsReadyToReUse:Z

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public reset()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v4, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v4, :cond_1

    move v0, v1

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->release()V

    :cond_0
    iget-object v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-boolean v4, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mIsReadyToReUse:Z

    if-eqz v4, :cond_2

    :goto_1
    const-string v2, "to re-use, must call reset after release"

    invoke-direct {p0, v1, v2}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mIsPrepared:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasDuration:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasStartedPlayback:Z

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mEngineInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mPlaybackFinishedLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mIsReadyToReUse:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mSkipCompletionReport:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mStartPosition:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDuration:I

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public seekTo(I)V
    .locals 6
    .param p1    # I

    const/4 v0, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v3, :cond_1

    move v3, v0

    :goto_0
    const-string v5, "has been released, reset before use"

    invoke-direct {p0, v3, v5}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasDuration:Z

    const-string v5, "you can\'t seek until you have prepared"

    invoke-direct {p0, v3, v5}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasStartedPlayback:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/ex/variablespeed/VariableSpeed;->hasPlaybackFinished()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    iget v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDuration:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mStartPosition:I

    iget-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/ex/variablespeed/VariableSpeed;->stopAndStartPlayingAgain(Lcom/android/ex/variablespeed/MediaPlayerDataSource;)V

    :cond_0
    return-void

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setAudioStreamType(I)V
    .locals 2
    .param p1    # I

    iget-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mAudioStreamType:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/net/Uri;

    const-string v0, "context"

    invoke-direct {p0, p1, v0}, Lcom/android/ex/variablespeed/VariableSpeed;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intentUri"

    invoke-direct {p0, p2, v0}, Lcom/android/ex/variablespeed/VariableSpeed;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    invoke-direct {v0, p1, p2}, Lcom/android/ex/variablespeed/MediaPlayerDataSource;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-direct {p0, v0}, Lcom/android/ex/variablespeed/VariableSpeed;->innerSetDataSource(Lcom/android/ex/variablespeed/MediaPlayerDataSource;)V

    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 3
    .param p1    # Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "has been released, reset before use"

    invoke-direct {p0, v0, v2}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    iput-object p1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 3
    .param p1    # Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "has been released, reset before use"

    invoke-direct {p0, v0, v2}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVariableSpeed(F)V
    .locals 3
    .param p1    # F

    iget-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "has been released, reset before use"

    invoke-direct {p0, v0, v2}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasStartedPlayback:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/ex/variablespeed/VariableSpeedNative;->setVariableSpeed(F)V

    :cond_0
    iput p1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mCurrentPlaybackRate:F

    monitor-exit v1

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public start()V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v4, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasBeenReleased:Z

    if-nez v4, :cond_1

    :goto_0
    const-string v4, "has been released, reset before use"

    invoke-direct {p0, v2, v4}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mIsPrepared:Z

    const-string v4, "must have prepared before you can start"

    invoke-direct {p0, v2, v4}, Lcom/android/ex/variablespeed/VariableSpeed;->check(ZLjava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasStartedPlayback:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mHasStartedPlayback:Z

    new-instance v2, Lcom/android/ex/variablespeed/EngineParameters$Builder;

    invoke-direct {v2}, Lcom/android/ex/variablespeed/EngineParameters$Builder;-><init>()V

    iget v4, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mCurrentPlaybackRate:F

    invoke-virtual {v2, v4}, Lcom/android/ex/variablespeed/EngineParameters$Builder;->initialRate(F)Lcom/android/ex/variablespeed/EngineParameters$Builder;

    move-result-object v2

    iget v4, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mStartPosition:I

    invoke-virtual {v2, v4}, Lcom/android/ex/variablespeed/EngineParameters$Builder;->startPositionMillis(I)Lcom/android/ex/variablespeed/EngineParameters$Builder;

    move-result-object v2

    iget v4, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mAudioStreamType:I

    invoke-virtual {v2, v4}, Lcom/android/ex/variablespeed/EngineParameters$Builder;->audioStreamType(I)Lcom/android/ex/variablespeed/EngineParameters$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/variablespeed/EngineParameters$Builder;->build()Lcom/android/ex/variablespeed/EngineParameters;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ex/variablespeed/VariableSpeedNative;->initializeEngine(Lcom/android/ex/variablespeed/EngineParameters;)V

    invoke-static {}, Lcom/android/ex/variablespeed/VariableSpeedNative;->startPlayback()V

    iget-object v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mEngineInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v2, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/android/ex/variablespeed/VariableSpeed$PlaybackRunnable;

    iget-object v5, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    invoke-direct {v4, p0, v5}, Lcom/android/ex/variablespeed/VariableSpeed$PlaybackRunnable;-><init>(Lcom/android/ex/variablespeed/VariableSpeed;Lcom/android/ex/variablespeed/MediaPlayerDataSource;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/ex/variablespeed/VariableSpeed;->stopAndStartPlayingAgain(Lcom/android/ex/variablespeed/MediaPlayerDataSource;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/ex/variablespeed/VariableSpeed;->mDataSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
