.class public interface abstract Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/SwipeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SwipeHelperCallback"
.end annotation


# virtual methods
.method public abstract canChildBeDismissed(Landroid/view/View;)Z
.end method

.method public abstract getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
.end method

.method public abstract getChildContentView(Landroid/view/View;)Landroid/view/View;
.end method

.method public abstract onBeginDrag(Landroid/view/View;)V
.end method

.method public abstract onChildDismissed(Landroid/view/View;)V
.end method

.method public abstract onDragCancelled(Landroid/view/View;)V
.end method

.method public abstract onScroll()V
.end method
