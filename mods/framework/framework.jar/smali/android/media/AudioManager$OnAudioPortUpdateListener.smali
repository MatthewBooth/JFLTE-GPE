.class public interface abstract Landroid/media/AudioManager$OnAudioPortUpdateListener;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAudioPortUpdateListener"
.end annotation


# virtual methods
.method public abstract onAudioPatchListUpdate([Landroid/media/AudioPatch;)V
.end method

.method public abstract onAudioPortListUpdate([Landroid/media/AudioPort;)V
.end method

.method public abstract onServiceDied()V
.end method
