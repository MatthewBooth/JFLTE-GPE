.class Lcom/android/systemui/recents/views/RecentsView$2;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;

.field final synthetic val$launchOpts:Landroid/app/ActivityOptions;

.field final synthetic val$lockToTask:Z

.field final synthetic val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field final synthetic val$task:Lcom/android/systemui/recents/model/Task;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/misc/SystemServicesProxy;Landroid/app/ActivityOptions;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iput-object p3, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iput-object p4, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$launchOpts:Landroid/app/ActivityOptions;

    iput-boolean p5, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$lockToTask:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isActive:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$launchOpts:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToFront(ILandroid/app/ActivityOptions;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$launchOpts:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$launchOpts:Landroid/app/ActivityOptions;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$lockToTask:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$ssp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->lockCurrentTask()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView$2;->val$task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewDismissed(Lcom/android/systemui/recents/model/Task;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$2;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskLaunchFailed()V

    goto :goto_0
.end method
