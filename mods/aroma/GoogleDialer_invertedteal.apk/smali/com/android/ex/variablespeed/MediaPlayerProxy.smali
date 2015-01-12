.class public interface abstract Lcom/android/ex/variablespeed/MediaPlayerProxy;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"


# virtual methods
.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isReadyToPlay()Z
.end method

.method public abstract pause()V
.end method

.method public abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setAudioStreamType(I)V
.end method

.method public abstract setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
.end method

.method public abstract start()V
.end method
