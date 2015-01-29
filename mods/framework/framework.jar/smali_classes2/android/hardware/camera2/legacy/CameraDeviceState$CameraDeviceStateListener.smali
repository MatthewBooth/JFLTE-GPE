.class public interface abstract Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;
.super Ljava/lang/Object;
.source "CameraDeviceState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/CameraDeviceState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraDeviceStateListener"
.end annotation


# virtual methods
.method public abstract onBusy()V
.end method

.method public abstract onCaptureResult(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/RequestHolder;)V
.end method

.method public abstract onCaptureStarted(Landroid/hardware/camera2/legacy/RequestHolder;J)V
.end method

.method public abstract onConfiguring()V
.end method

.method public abstract onError(ILandroid/hardware/camera2/legacy/RequestHolder;)V
.end method

.method public abstract onIdle()V
.end method
