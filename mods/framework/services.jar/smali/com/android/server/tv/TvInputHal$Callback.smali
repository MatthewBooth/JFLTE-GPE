.class public interface abstract Lcom/android/server/tv/TvInputHal$Callback;
.super Ljava/lang/Object;
.source "TvInputHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onDeviceAvailable(Landroid/media/tv/TvInputHardwareInfo;[Landroid/media/tv/TvStreamConfig;)V
.end method

.method public abstract onDeviceUnavailable(I)V
.end method

.method public abstract onFirstFrameCaptured(II)V
.end method

.method public abstract onStreamConfigurationChanged(I[Landroid/media/tv/TvStreamConfig;)V
.end method
