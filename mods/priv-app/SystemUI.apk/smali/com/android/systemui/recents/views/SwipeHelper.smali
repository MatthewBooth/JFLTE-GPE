.class public Lcom/android/systemui/recents/views/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/SwipeHelper$Callback;
    }
.end annotation


# static fields
.field public static ALPHA_FADE_START:F

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field public mAllowSwipeTowardsEnd:Z

.field public mAllowSwipeTowardsStart:Z

.field mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDragging:Z

.field private mInitialTouchPos:F

.field private mMinAlpha:F

.field private mPagingTouchSlop:F

.field private mRtl:Z

.field private mSwipeDirection:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    const v0, 0x3e19999a

    sput v0, Lcom/android/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/recents/views/SwipeHelper$Callback;FF)V
    .locals 2
    .param p1    # I
    .param p2    # Lcom/android/systemui/recents/views/SwipeHelper$Callback;
    .param p3    # F
    .param p4    # F

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42c80000

    iput v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    const/16 v0, 0x4b

    iput v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mMinAlpha:F

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsStart:Z

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsEnd:Z

    iput-object p2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iput p1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput p3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDensityScale:F

    iput p4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mPagingTouchSlop:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/recents/views/SwipeHelper;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/systemui/recents/views/SwipeHelper;

    iget-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # F

    iget v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    goto :goto_0
.end method

.method private dismissChild(Landroid/view/View;F)V
    .locals 7
    .param p1    # Landroid/view/View;
    .param p2    # F

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    cmpg-float v4, p2, v6

    if-ltz v4, :cond_1

    cmpl-float v4, p2, v6

    if-nez v4, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    cmpg-float v4, v4, v6

    if-ltz v4, :cond_1

    :cond_0
    cmpl-float v4, p2, v6

    if-nez v4, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    cmpl-float v4, v4, v6

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    neg-float v3, v4

    :goto_0
    iget v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    cmpl-float v4, p2, v6

    if-eqz v4, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v4

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x447a0000

    mul-float/2addr v4, v5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_1
    invoke-direct {p0, p1, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/recents/views/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/systemui/recents/views/SwipeHelper$1;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/systemui/recents/views/SwipeHelper$1;-><init>(Lcom/android/systemui/recents/views/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v4, Lcom/android/systemui/recents/views/SwipeHelper$2;

    invoke-direct {v4, p0, v1, p1}, Lcom/android/systemui/recents/views/SwipeHelper$2;-><init>(Lcom/android/systemui/recents/views/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_1
.end method

.method private endSwipe(Landroid/view/VelocityTracker;)V
    .locals 14
    .param p1    # Landroid/view/VelocityTracker;

    iget v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDensityScale:F

    mul-float v4, v8, v9

    const/16 v8, 0x3e8

    invoke-virtual {p1, v8, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v7

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v5

    iget v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    iget v9, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDensityScale:F

    mul-float v3, v8, v9

    iget-object v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v8}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3fe3333333333333L

    iget-object v12, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v12}, Lcom/android/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v12

    float-to-double v12, v12

    mul-double/2addr v10, v12

    cmpl-double v8, v8, v10

    if-lez v8, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v3

    if-lez v8, :cond_4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_4

    const/4 v8, 0x0

    cmpl-float v8, v7, v8

    if-lez v8, :cond_2

    const/4 v8, 0x1

    move v9, v8

    :goto_1
    const/4 v8, 0x0

    cmpl-float v8, v6, v8

    if-lez v8, :cond_3

    const/4 v8, 0x1

    :goto_2
    if-ne v9, v8, :cond_4

    const/4 v1, 0x1

    :goto_3
    iget-object v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v9, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v8, v9}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-direct {p0, v6}, Lcom/android/systemui/recents/views/SwipeHelper;->isValidSwipeDirection(F)Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v1, :cond_0

    if-eqz v0, :cond_5

    :cond_0
    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_7

    iget-object v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v1, :cond_6

    :goto_5
    invoke-direct {p0, v8, v7}, Lcom/android/systemui/recents/views/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    :goto_6
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    move v9, v8

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    goto :goto_5

    :cond_7
    iget-object v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v9, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v8, v9}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    iget-object v8, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v8, v7}, Lcom/android/systemui/recents/views/SwipeHelper;->snapChild(Landroid/view/View;F)V

    goto :goto_6
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1    # Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private getSize(Landroid/view/View;)F
    .locals 2
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    goto :goto_0
.end method

.method private getTranslation(Landroid/view/View;)F
    .locals 1
    .param p1    # Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1    # Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method public static isLayoutRtl(Landroid/view/View;)Z
    .locals 4
    .param p0    # Landroid/view/View;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private isValidSwipeDirection(F)Z
    .locals 2
    .param p1    # F

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mRtl:Z

    if-eqz v0, :cond_1

    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsEnd:Z

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsStart:Z

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsStart:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mAllowSwipeTowardsEnd:Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setSwipeAmount(F)V
    .locals 8
    .param p1    # F

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->isValidSwipeDirection(F)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v2

    const v3, 0x3e19999a

    mul-float v1, v3, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v2

    if-ltz v3, :cond_4

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_3

    move p1, v1

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v3, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    iget-boolean v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void

    :cond_3
    neg-float p1, v1

    goto :goto_0

    :cond_4
    div-float v3, p1, v2

    float-to-double v4, v3

    const-wide v6, 0x3ff921fb54442d18L

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float p1, v1, v3

    goto :goto_0
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # F

    iget v0, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private snapChild(Landroid/view/View;F)V
    .locals 6
    .param p1    # Landroid/view/View;
    .param p2    # F

    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    invoke-interface {v3, p1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v2, 0xfa

    int-to-long v4, v2

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->linearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/systemui/recents/views/SwipeHelper$3;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/systemui/recents/views/SwipeHelper$3;-><init>(Lcom/android/systemui/recents/views/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/android/systemui/recents/views/SwipeHelper$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/systemui/recents/views/SwipeHelper$4;-><init>(Lcom/android/systemui/recents/views/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method getAlphaForOffset(Landroid/view/View;)F
    .locals 6
    .param p1    # Landroid/view/View;

    const/high16 v5, 0x3f800000

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    const v4, 0x3f266666

    mul-float v0, v4, v3

    const/high16 v2, 0x3f800000

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    sget v4, Lcom/android/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    sget v4, Lcom/android/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    sub-float v4, v1, v4

    div-float/2addr v4, v0

    sub-float v2, v5, v4

    :cond_0
    :goto_0
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mMinAlpha:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4

    :cond_1
    sget v4, Lcom/android/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    sget v4, Lcom/android/systemui/recents/views/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    div-float/2addr v4, v0

    add-float v2, v5, v4

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    return v3

    :pswitch_0
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    invoke-interface {v3, p1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-static {v3}, Lcom/android/systemui/recents/views/SwipeHelper;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mRtl:Z

    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mInitialTouchPos:F

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mInitialTouchPos:F

    sub-float v1, v2, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v3, v4}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/systemui/recents/views/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v3

    sub-float v3, v2, v3

    iput v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mInitialTouchPos:F

    goto :goto_0

    :pswitch_2
    iput-boolean v4, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mDragging:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCanCurrViewBeDimissed:Z

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mInitialTouchPos:F

    sub-float v1, v2, v3

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/SwipeHelper;->setSwipeAmount(F)V

    iget-object v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCallback:Lcom/android/systemui/recents/views/SwipeHelper$Callback;

    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v2, v3, v1}, Lcom/android/systemui/recents/views/SwipeHelper$Callback;->onSwipeChanged(Landroid/view/View;F)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/views/SwipeHelper;->endSwipe(Landroid/view/VelocityTracker;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMinAlpha(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/android/systemui/recents/views/SwipeHelper;->mMinAlpha:F

    return-void
.end method
