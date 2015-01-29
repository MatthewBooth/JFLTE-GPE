.class public interface abstract Landroid/hardware/soundtrigger/SoundTrigger$StatusListener;
.super Ljava/lang/Object;
.source "SoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StatusListener"
.end annotation


# virtual methods
.method public abstract onRecognition(Landroid/hardware/soundtrigger/SoundTrigger$RecognitionEvent;)V
.end method

.method public abstract onServiceDied()V
.end method

.method public abstract onServiceStateChange(I)V
.end method

.method public abstract onSoundModelUpdate(Landroid/hardware/soundtrigger/SoundTrigger$SoundModelEvent;)V
.end method
