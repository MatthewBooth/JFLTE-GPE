.class public interface abstract Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
.super Ljava/lang/Object;
.source "DragDownHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/DragDownHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DragDownCallback"
.end annotation


# virtual methods
.method public abstract onDragDownReset()V
.end method

.method public abstract onDraggedDown(Landroid/view/View;)Z
.end method

.method public abstract onThresholdReached()V
.end method

.method public abstract onTouchSlopExceeded()V
.end method

.method public abstract setEmptyDragAmount(F)V
.end method
