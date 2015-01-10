.class public Lcom/android/systemui/statusbar/ScrimView;
.super Landroid/view/View;
.source "ScrimView.java"


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mDrawAsSrc:Z

.field private mIsEmpty:Z

.field private mScrimColor:I

.field private mViewAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I
    .param p4    # I

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mIsEmpty:Z

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    new-instance v0, Lcom/android/systemui/statusbar/ScrimView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ScrimView$1;-><init>(Lcom/android/systemui/statusbar/ScrimView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/android/systemui/statusbar/ScrimView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ScrimView$2;-><init>(Lcom/android/systemui/statusbar/ScrimView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/ScrimView;F)F
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/ScrimView;
    .param p1    # F

    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/ScrimView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/ScrimView;
    .param p1    # Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method


# virtual methods
.method public animateViewAlpha(FJLandroid/view/animation/Interpolator;)V
    .locals 4
    .param p1    # F
    .param p2    # J
    .param p4    # Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public getScrimColor()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mScrimColor:I

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mIsEmpty:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    if-eqz v2, :cond_2

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mScrimColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    return-void

    :cond_2
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0
.end method

.method public setDrawAsSrc(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    return-void
.end method

.method public setScrimColor(I)V
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mScrimColor:I

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mIsEmpty:Z

    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mScrimColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
