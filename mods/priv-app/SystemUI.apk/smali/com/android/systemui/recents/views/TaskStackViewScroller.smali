.class public Lcom/android/systemui/recents/views/TaskStackViewScroller;
.super Ljava/lang/Object;
.source "TaskStackViewScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;
    }
.end annotation


# instance fields
.field mCb:Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

.field mScrollAnimator:Landroid/animation/ObjectAnimator;

.field mScroller:Landroid/widget/OverScroller;

.field mStackScrollP:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/systemui/recents/RecentsConfiguration;
    .param p3    # Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    return-void
.end method


# virtual methods
.method animateBoundScroll()Landroid/animation/ObjectAnimator;
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->animateScroll(FFLjava/lang/Runnable;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    return-object v2
.end method

.method animateScroll(FFLjava/lang/Runnable;)V
    .locals 4
    .param p1    # F
    .param p2    # F
    .param p3    # Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopScroller()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->stopBoundScrollAnimation()V

    const-string v0, "stackScroll"

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskStackScrollDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/recents/views/TaskStackViewScroller$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller$1;-><init>(Lcom/android/systemui/recents/views/TaskStackViewScroller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/recents/views/TaskStackViewScroller$2;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui/recents/views/TaskStackViewScroller$2;-><init>(Lcom/android/systemui/recents/views/TaskStackViewScroller;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public boundScroll()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method computeScroll()Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->scrollRangeToProgress(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScrollRaw(F)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mCb:Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mCb:Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    invoke-interface {v1, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;->onScrollChanged(F)V

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getBoundedStackScroll(F)F
    .locals 2
    .param p1    # F

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v1, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method getScrollAmountOutOfBounds(F)F
    .locals 1
    .param p1    # F

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMinScrollP:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mMaxScrollP:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStackScroll()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    return v0
.end method

.method isScrollOutOfBounds()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getScrollAmountOutOfBounds(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isScrolling()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method progressToScrollRange(F)I
    .locals 1
    .param p1    # F

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method scrollRangeToProgress(I)F
    .locals 2
    .param p1    # I

    int-to-float v0, p1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget-object v1, v1, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mStackVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method setCallbacks(Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;)V
    .locals 0
    .param p1    # Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mCb:Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    return-void
.end method

.method public setStackScroll(F)V
    .locals 2
    .param p1    # F

    iput p1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mCb:Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mCb:Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;

    iget v1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    invoke-interface {v0, v1}, Lcom/android/systemui/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallbacks;->onScrollChanged(F)V

    :cond_0
    return-void
.end method

.method setStackScrollRaw(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mStackScrollP:F

    return-void
.end method

.method public setStackScrollToInitialState()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->mInitialScrollP:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getBoundedStackScroll(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    return-void
.end method

.method stopBoundScrollAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScrollAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method stopScroller()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskStackViewScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    :cond_0
    return-void
.end method
