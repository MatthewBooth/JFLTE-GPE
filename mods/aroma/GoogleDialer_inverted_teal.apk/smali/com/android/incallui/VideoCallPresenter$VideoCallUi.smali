.class public interface abstract Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
.super Ljava/lang/Object;
.source "VideoCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/Ui;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/VideoCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VideoCallUi"
.end annotation


# virtual methods
.method public abstract getDisplayVideoSurface()Landroid/view/Surface;
.end method

.method public abstract getPreviewVideoSurface()Landroid/view/Surface;
.end method

.method public abstract isActivityRestart()Z
.end method

.method public abstract isDisplayVideoSurfaceCreated()Z
.end method

.method public abstract isPreviewVideoSurfaceCreated()Z
.end method

.method public abstract setPreviewSize(II)V
.end method

.method public abstract showVideoUi(Z)V
.end method
