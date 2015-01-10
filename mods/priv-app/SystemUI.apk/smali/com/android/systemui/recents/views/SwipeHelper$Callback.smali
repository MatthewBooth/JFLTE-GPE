.class public interface abstract Lcom/android/systemui/recents/views/SwipeHelper$Callback;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/SwipeHelper;
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

.method public abstract onBeginDrag(Landroid/view/View;)V
.end method

.method public abstract onChildDismissed(Landroid/view/View;)V
.end method

.method public abstract onDragCancelled(Landroid/view/View;)V
.end method

.method public abstract onSnapBackCompleted(Landroid/view/View;)V
.end method

.method public abstract onSwipeChanged(Landroid/view/View;F)V
.end method
