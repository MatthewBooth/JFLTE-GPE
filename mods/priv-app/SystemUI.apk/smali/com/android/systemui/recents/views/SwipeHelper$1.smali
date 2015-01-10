.class Lcom/android/systemui/recents/views/SwipeHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/SwipeHelper;->dismissChild(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/SwipeHelper;

.field final synthetic val$canAnimViewBeDismissed:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/SwipeHelper;Landroid/view/View;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/SwipeHelper$1;->this$0:Lcom/android/systemui/recents/views/SwipeHelper;

    iput-object p2, p0, Lcom/android/systemui/recents/views/SwipeHelper$1;->val$view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/recents/views/SwipeHelper$1;->val$canAnimViewBeDismissed:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper$1;->this$0:Lcom/android/systemui/recents/views/SwipeHelper;

    iget-object v0, v0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->onChildDismissed(Landroid/view/View;)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper$1;->val$canAnimViewBeDismissed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper$1;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
