.class final Lcom/android/ex/variablespeed/VariableSpeed$PlaybackRunnable;
.super Ljava/lang/Object;
.source "VariableSpeed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/variablespeed/VariableSpeed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PlaybackRunnable"
.end annotation


# instance fields
.field private final mInnerSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;

.field final synthetic this$0:Lcom/android/ex/variablespeed/VariableSpeed;


# direct methods
.method public constructor <init>(Lcom/android/ex/variablespeed/VariableSpeed;Lcom/android/ex/variablespeed/MediaPlayerDataSource;)V
    .locals 0
    .param p2    # Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    iput-object p1, p0, Lcom/android/ex/variablespeed/VariableSpeed$PlaybackRunnable;->this$0:Lcom/android/ex/variablespeed/VariableSpeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/ex/variablespeed/VariableSpeed$PlaybackRunnable;->mInnerSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    iget-object v3, p0, Lcom/android/ex/variablespeed/VariableSpeed$PlaybackRunnable;->mInnerSource:Lcom/android/ex/variablespeed/MediaPlayerDataSource;

    invoke-virtual {v3}, Lcom/android/ex/variablespeed/MediaPlayerDataSource;->playNative()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/android/ex/variablespeed/VariableSpeed$PlaybackRunnable;->this$0:Lcom/android/ex/variablespeed/VariableSpeed;

    # getter for: Lcom/android/ex/variablespeed/VariableSpeed;->lock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/ex/variablespeed/VariableSpeed;->access$000(Lcom/android/ex/variablespeed/VariableSpeed;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Lcom/android/ex/variablespeed/VariableSpeed$PlaybackRunnable;->this$0:Lcom/android/ex/variablespeed/VariableSpeed;

    # getter for: Lcom/android/ex/variablespeed/VariableSpeed;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;
    invoke-static {v3}, Lcom/android/ex/variablespeed/VariableSpeed;->access$100(Lcom/android/ex/variablespeed/VariableSpeed;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v3, p0, Lcom/android/ex/variablespeed/VariableSpeed$PlaybackRunnable;->this$0:Lcom/android/ex/variablespeed/VariableSpeed;

    # getter for: Lcom/android/ex/variablespeed/VariableSpeed;->mSkipCompletionReport:Z
    invoke-static {v3}, Lcom/android/ex/variablespeed/VariableSpeed;->access$200(Lcom/android/ex/variablespeed/VariableSpeed;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/ex/variablespeed/VariableSpeed$PlaybackRunnable;->this$0:Lcom/android/ex/variablespeed/VariableSpeed;

    # getter for: Lcom/android/ex/variablespeed/VariableSpeed;->mPlaybackFinishedLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v3}, Lcom/android/ex/variablespeed/VariableSpeed;->access$300(Lcom/android/ex/variablespeed/VariableSpeed;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    const-string v3, "VariableSpeed"

    const-string v4, "error playing audio"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
