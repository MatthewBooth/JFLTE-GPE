.class Lcom/android/systemui/recents/views/SwipeHelper$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/SwipeHelper;->snapChild(Landroid/view/View;F)V
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
.method constructor <init>(Lcom/android/systemui/recents/views/SwipeHelper;ZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/SwipeHelper$4;->this$0:Lcom/android/systemui/recents/views/SwipeHelper;

    iput-boolean p2, p0, Lcom/android/systemui/recents/views/SwipeHelper$4;->val$canAnimViewBeDismissed:Z

    iput-object p3, p0, Lcom/android/systemui/recents/views/SwipeHelper$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper$4;->val$canAnimViewBeDismissed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper$4;->val$view:Landroid/view/View;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper$4;->this$0:Lcom/android/systemui/recents/views/SwipeHelper;

    iget-object v0, v0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper$4;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->onSnapBackCompleted(Landroid/view/View;)V

    return-void
.end method
