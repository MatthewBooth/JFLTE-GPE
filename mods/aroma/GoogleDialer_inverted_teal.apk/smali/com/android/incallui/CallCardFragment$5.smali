.class Lcom/android/incallui/CallCardFragment$5;
.super Ljava/lang/Object;
.source "CallCardFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->setCallCardVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;

.field final synthetic val$isLayoutRtl:Z

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$spaceBesideCallCard:F

.field final synthetic val$videoView:Landroid/view/View;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;Landroid/view/ViewTreeObserver;ZZLandroid/view/View;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    iput-object p2, p0, Lcom/android/incallui/CallCardFragment$5;->val$observer:Landroid/view/ViewTreeObserver;

    iput-boolean p3, p0, Lcom/android/incallui/CallCardFragment$5;->val$isLayoutRtl:Z

    iput-boolean p4, p0, Lcom/android/incallui/CallCardFragment$5;->val$visible:Z

    iput-object p5, p0, Lcom/android/incallui/CallCardFragment$5;->val$videoView:Landroid/view/View;

    iput p6, p0, Lcom/android/incallui/CallCardFragment$5;->val$spaceBesideCallCard:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 10

    const/high16 v9, 0x40000000

    const/high16 v5, 0x3f800000

    const/high16 v6, -0x40800000

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$5;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$5;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mIsLandscape:Z
    invoke-static {v4}, Lcom/android/incallui/CallCardFragment;->access$100(Lcom/android/incallui/CallCardFragment;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/incallui/CallCardFragment;->access$200(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v1, v4

    iget-boolean v4, p0, Lcom/android/incallui/CallCardFragment$5;->val$isLayoutRtl:Z

    if-eqz v4, :cond_2

    move v4, v5

    :goto_0
    mul-float/2addr v1, v4

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/incallui/CallCardFragment;->access$200(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v4

    iget-boolean v8, p0, Lcom/android/incallui/CallCardFragment$5;->val$visible:Z

    if-eqz v8, :cond_3

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-boolean v4, p0, Lcom/android/incallui/CallCardFragment$5;->val$visible:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$5;->val$videoView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v8, p0, Lcom/android/incallui/CallCardFragment$5;->val$spaceBesideCallCard:F

    div-float/2addr v8, v9

    sub-float v3, v4, v8

    iget-boolean v4, p0, Lcom/android/incallui/CallCardFragment$5;->val$isLayoutRtl:Z

    if-eqz v4, :cond_4

    move v4, v6

    :goto_2
    mul-float/2addr v3, v4

    :cond_1
    :goto_3
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$5;->val$videoView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v8, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v8, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mVideoAnimationDuration:I
    invoke-static {v8}, Lcom/android/incallui/CallCardFragment;->access$300(Lcom/android/incallui/CallCardFragment;)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mIsLandscape:Z
    invoke-static {v4}, Lcom/android/incallui/CallCardFragment;->access$100(Lcom/android/incallui/CallCardFragment;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_4
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/incallui/CallCardFragment;->access$200(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    sget-object v8, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    iget-object v8, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mVideoAnimationDuration:I
    invoke-static {v8}, Lcom/android/incallui/CallCardFragment;->access$300(Lcom/android/incallui/CallCardFragment;)I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v4, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v8, Lcom/android/incallui/CallCardFragment$5$1;

    invoke-direct {v8, p0}, Lcom/android/incallui/CallCardFragment$5$1;-><init>(Lcom/android/incallui/CallCardFragment$5;)V

    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mIsLandscape:Z
    invoke-static {v4}, Lcom/android/incallui/CallCardFragment;->access$100(Lcom/android/incallui/CallCardFragment;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/incallui/CallCardFragment;->access$200(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v1, v4

    iget-boolean v4, p0, Lcom/android/incallui/CallCardFragment$5;->val$isLayoutRtl:Z

    if-eqz v4, :cond_8

    :goto_5
    mul-float/2addr v1, v5

    iget-boolean v4, p0, Lcom/android/incallui/CallCardFragment$5;->val$visible:Z

    if-eqz v4, :cond_9

    :goto_6
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_7
    const/4 v4, 0x1

    return v4

    :cond_2
    move v4, v6

    goto/16 :goto_0

    :cond_3
    move v1, v7

    goto/16 :goto_1

    :cond_4
    move v4, v5

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/incallui/CallCardFragment;->access$200(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v8

    iget-boolean v4, p0, Lcom/android/incallui/CallCardFragment$5;->val$visible:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/incallui/CallCardFragment;->access$200(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    :goto_8
    invoke-virtual {v8, v4}, Landroid/view/View;->setTranslationY(F)V

    iget-boolean v4, p0, Lcom/android/incallui/CallCardFragment$5;->val$visible:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$5;->val$videoView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v8, p0, Lcom/android/incallui/CallCardFragment$5;->val$spaceBesideCallCard:F

    div-float/2addr v8, v9

    sub-float v3, v4, v8

    goto/16 :goto_3

    :cond_6
    move v4, v7

    goto :goto_8

    :cond_7
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_4

    :cond_8
    move v5, v6

    goto :goto_5

    :cond_9
    move v7, v1

    goto :goto_6

    :cond_a
    iget-boolean v4, p0, Lcom/android/incallui/CallCardFragment$5;->val$visible:Z

    if-eqz v4, :cond_b

    :goto_9
    invoke-virtual {v0, v7}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_7

    :cond_b
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/incallui/CallCardFragment;->access$200(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v7, v4

    goto :goto_9
.end method
