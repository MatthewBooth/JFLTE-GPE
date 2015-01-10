.class interface abstract Lcom/android/systemui/recents/views/TaskView$TaskViewCallbacks;
.super Ljava/lang/Object;
.source "TaskView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/views/TaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TaskViewCallbacks"
.end annotation


# virtual methods
.method public abstract onTaskViewAppInfoClicked(Lcom/android/systemui/recents/views/TaskView;)V
.end method

.method public abstract onTaskViewClicked(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/Task;Z)V
.end method

.method public abstract onTaskViewClipStateChanged(Lcom/android/systemui/recents/views/TaskView;)V
.end method

.method public abstract onTaskViewDismissed(Lcom/android/systemui/recents/views/TaskView;)V
.end method

.method public abstract onTaskViewFocusChanged(Lcom/android/systemui/recents/views/TaskView;Z)V
.end method

.method public abstract onTaskViewFullScreenTransitionCompleted()V
.end method
