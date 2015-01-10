.class Lcom/android/systemui/recents/views/TaskViewHeader$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskViewHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/TaskViewHeader;->onTaskViewFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/TaskViewHeader;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader$3;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader$3;->this$0:Lcom/android/systemui/recents/views/TaskViewHeader;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    return-void
.end method
