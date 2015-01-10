.class public interface abstract Lcom/android/systemui/SwipeHelper$Callback;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SwipeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract canChildBeDismissed(Landroid/view/View;)Z
.end method

.method public abstract getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
.end method

.method public abstract getChildContentView(Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract getFalsingThresholdFactor()F
.end method

.method public abstract isAntiFalsingNeeded()Z
.end method

.method public abstract onBeginDrag(Landroid/view/View;)V
.end method

.method public abstract onChildDismissed(Landroid/view/View;)V
.end method

.method public abstract onChildSnappedBack(Landroid/view/View;)V
.end method

.method public abstract onDragCancelled(Landroid/view/View;)V
.end method

.method public abstract updateSwipeProgress(Landroid/view/View;ZF)Z
.end method
