.class Lcom/android/systemui/SearchPanelCircleView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SearchPanelCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SearchPanelCircleView;->setOffset(FZILandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SearchPanelCircleView;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelCircleView;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SearchPanelCircleView$6;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    iput-object p2, p0, Lcom/android/systemui/SearchPanelCircleView$6;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$6;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui/SearchPanelCircleView;->access$602(Lcom/android/systemui/SearchPanelCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$6;->val$endRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$6;->val$endRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
