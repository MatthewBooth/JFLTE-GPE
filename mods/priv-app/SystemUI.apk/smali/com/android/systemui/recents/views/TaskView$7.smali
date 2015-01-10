.class Lcom/android/systemui/recents/views/TaskView$7;
.super Ljava/lang/Object;
.source "TaskView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskView;

.field final synthetic val$ctx:Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskView$7;->this$0:Lcom/android/systemui/recents/views/TaskView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskView$7;->val$ctx:Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskView$7;->val$ctx:Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    iget-object v0, v0, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    return-void
.end method
