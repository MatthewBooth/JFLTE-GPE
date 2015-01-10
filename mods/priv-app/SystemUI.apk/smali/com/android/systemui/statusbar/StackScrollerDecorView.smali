.class public abstract Lcom/android/systemui/statusbar/StackScrollerDecorView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "StackScrollerDecorView.java"


# instance fields
.field private mAnimating:Z

.field protected mContent:Landroid/view/View;

.field private mIsVisible:Z

.field private mWillBeGone:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/StackScrollerDecorView;Z)Z
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/StackScrollerDecorView;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mAnimating:Z

    return p1
.end method

.method private animateText(ZLjava/lang/Runnable;)V
    .locals 6
    .param p1    # Z
    .param p2    # Ljava/lang/Runnable;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsVisible:Z

    if-eq p1, v2, :cond_3

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000

    :goto_0
    if-eqz p1, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    :goto_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mAnimating:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x104

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/StackScrollerDecorView$1;

    invoke-direct {v3, p0, p2}, Lcom/android/systemui/statusbar/StackScrollerDecorView$1;-><init>(Lcom/android/systemui/statusbar/StackScrollerDecorView;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsVisible:Z

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method protected abstract findContentView()Landroid/view/View;
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->findContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setInvisible()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ExpandableView;->onLayout(ZIIII)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public performAddAnimation(JJ)V
    .locals 1
    .param p1    # J
    .param p3    # J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->performVisibilityAnimation(Z)V

    return-void
.end method

.method public performRemoveAnimation(JFLjava/lang/Runnable;)V
    .locals 1
    .param p1    # J
    .param p3    # F
    .param p4    # Ljava/lang/Runnable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->performVisibilityAnimation(Z)V

    return-void
.end method

.method public performVisibilityAnimation(Z)V
    .locals 1
    .param p1    # Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->animateText(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public performVisibilityAnimation(ZLjava/lang/Runnable;)V
    .locals 0
    .param p1    # Z
    .param p2    # Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->animateText(ZLjava/lang/Runnable;)V

    return-void
.end method

.method public setInvisible()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mIsVisible:Z

    return-void
.end method

.method public setWillBeGone(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mWillBeGone:Z

    return-void
.end method

.method public willBeGone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StackScrollerDecorView;->mWillBeGone:Z

    return v0
.end method
