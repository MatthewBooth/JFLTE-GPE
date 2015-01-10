.class public Lcom/android/systemui/statusbar/SpeedBumpView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "SpeedBumpView.java"


# instance fields
.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mIsVisible:Z

.field private mLine:Lcom/android/systemui/statusbar/AlphaOptimizedView;

.field private final mSpeedBumpHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mIsVisible:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SpeedBumpView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mSpeedBumpHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SpeedBumpView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public animateDivider(ZJLjava/lang/Runnable;)V
    .locals 4
    .param p1    # Z
    .param p2    # J
    .param p4    # Ljava/lang/Runnable;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mIsVisible:Z

    if-eq p1, v1, :cond_2

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mLine:Lcom/android/systemui/statusbar/AlphaOptimizedView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/AlphaOptimizedView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mIsVisible:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    goto :goto_1
.end method

.method protected getInitialHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mSpeedBumpHeight:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mSpeedBumpHeight:I

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableView;->onFinishInflate()V

    const v0, 0x7f0e0128

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SpeedBumpView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/AlphaOptimizedView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mLine:Lcom/android/systemui/statusbar/AlphaOptimizedView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ExpandableView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mLine:Lcom/android/systemui/statusbar/AlphaOptimizedView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mLine:Lcom/android/systemui/statusbar/AlphaOptimizedView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/AlphaOptimizedView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AlphaOptimizedView;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mLine:Lcom/android/systemui/statusbar/AlphaOptimizedView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mLine:Lcom/android/systemui/statusbar/AlphaOptimizedView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/AlphaOptimizedView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AlphaOptimizedView;->setPivotY(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SpeedBumpView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/SpeedBumpView;->measureChildren(II)V

    iget v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mSpeedBumpHeight:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/SpeedBumpView;->setMeasuredDimension(II)V

    return-void
.end method

.method public performAddAnimation(JJ)V
    .locals 1
    .param p1    # J
    .param p3    # J

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/SpeedBumpView;->performVisibilityAnimation(ZJ)V

    return-void
.end method

.method public performRemoveAnimation(JFLjava/lang/Runnable;)V
    .locals 4
    .param p1    # J
    .param p3    # F
    .param p4    # Ljava/lang/Runnable;

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/SpeedBumpView;->performVisibilityAnimation(ZJ)V

    return-void
.end method

.method public performVisibilityAnimation(ZJ)V
    .locals 2
    .param p1    # Z
    .param p2    # J

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/SpeedBumpView;->animateDivider(ZJLjava/lang/Runnable;)V

    return-void
.end method

.method public setInvisible()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mLine:Lcom/android/systemui/statusbar/AlphaOptimizedView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AlphaOptimizedView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mLine:Lcom/android/systemui/statusbar/AlphaOptimizedView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AlphaOptimizedView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mLine:Lcom/android/systemui/statusbar/AlphaOptimizedView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/AlphaOptimizedView;->setScaleY(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SpeedBumpView;->mIsVisible:Z

    return-void
.end method
