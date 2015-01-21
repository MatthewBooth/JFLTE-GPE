.class public Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;
.super Ljava/lang/Object;
.source "SingleThreadedMediaPlayerProxy.java"

# interfaces
.implements Lcom/android/ex/variablespeed/MediaPlayerProxy;


# instance fields
.field private final mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;


# direct methods
.method public constructor <init>(Lcom/android/ex/variablespeed/MediaPlayerProxy;)V
    .locals 0
    .param p1    # Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    return-void
.end method


# virtual methods
.method public declared-synchronized getCurrentPosition()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->getCurrentPosition()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDuration()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->getDuration()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPlaying()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->isPlaying()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isReadyToPlay()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->isReadyToPlay()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->prepare()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekTo(I)V
    .locals 1
    .param p1    # I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0, p1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->seekTo(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAudioStreamType(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0, p1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->setAudioStreamType(I)V

    return-void
.end method

.method public declared-synchronized setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0, p1, p2}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnCompletionListener;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0, p1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1
    .param p1    # Landroid/media/MediaPlayer$OnErrorListener;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0, p1}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setVariableSpeed(F)V
    .locals 1
    .param p1    # F

    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    check-cast v0, Lcom/android/ex/variablespeed/VariableSpeed;

    invoke-virtual {v0, p1}, Lcom/android/ex/variablespeed/VariableSpeed;->setVariableSpeed(F)V

    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/ex/variablespeed/SingleThreadedMediaPlayerProxy;->mDelegate:Lcom/android/ex/variablespeed/MediaPlayerProxy;

    invoke-interface {v0}, Lcom/android/ex/variablespeed/MediaPlayerProxy;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
