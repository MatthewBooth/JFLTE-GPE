.class public Lcom/android/systemui/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SwipeHelper$LongPressListener;,
        Lcom/android/systemui/SwipeHelper$Callback;
    }
.end annotation


# static fields
.field public static SWIPE_PROGRESS_FADE_START:F

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field private mCallback:Lcom/android/systemui/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mCurrAnimView:Landroid/view/View;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDragging:Z

.field private mFalsingThreshold:I

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mHandler:Landroid/os/Handler;

.field private mInitialTouchPos:F

.field private mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

.field private mLongPressSent:Z

.field private mLongPressTimeout:J

.field private mMaxSwipeProgress:F

.field private mMinSwipeProgress:F

.field private mPagingTouchSlop:F

.field private mSwipeDirection:I

.field private final mTmpPos:[I

.field private mTouchAboveFalsingThreshold:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchLongPress:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/SwipeHelper$Callback;Landroid/content/Context;)V
    .locals 2
    .param p1    # I
    .param p2    # Lcom/android/systemui/SwipeHelper$Callback;
    .param p3    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42c80000

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    const/16 v0, 0x190

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    iput-object p2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    const v0, 0x10c000f

    invoke-static {p3, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SwipeHelper;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/systemui/SwipeHelper;

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/SwipeHelper;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/SwipeHelper;

    iget-boolean v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/SwipeHelper;Z)Z
    .locals 0
    .param p0    # Lcom/android/systemui/SwipeHelper;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/SwipeHelper;)[I
    .locals 1
    .param p0    # Lcom/android/systemui/SwipeHelper;

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mTmpPos:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$LongPressListener;
    .locals 1
    .param p0    # Lcom/android/systemui/SwipeHelper;

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/SwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;
    .locals 1
    .param p0    # Lcom/android/systemui/SwipeHelper;

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V
    .locals 0
    .param p0    # Lcom/android/systemui/SwipeHelper;
    .param p1    # Landroid/view/View;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # F

    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    const-string v1, "translationX"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "translationY"

    goto :goto_0
.end method

.method private getFalsingThreshold()I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/SwipeHelper$Callback;->getFalsingThresholdFactor()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/SwipeHelper;->mFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1    # Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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
    .locals 1
    .param p1    # Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private getSwipeProgressForOffset(Landroid/view/View;)F
    .locals 6
    .param p1    # Landroid/view/View;

    const/high16 v5, 0x3f800000

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    const/high16 v4, 0x3f000000

    mul-float v0, v4, v3

    const/high16 v2, 0x3f800000

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    sget v4, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    sget v4, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    mul-float/2addr v4, v3

    sub-float v4, v1, v4

    div-float/2addr v4, v0

    sub-float v2, v5, v4

    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4

    :cond_1
    sget v4, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    sget v4, Lcom/android/systemui/SwipeHelper;->SWIPE_PROGRESS_FADE_START:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    div-float/2addr v4, v0

    add-float v2, v5, v4

    goto :goto_0
.end method

.method private getTranslation(Landroid/view/View;)F
    .locals 1
    .param p1    # Landroid/view/View;

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

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

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5
    .param p0    # Landroid/view/View;

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v0}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 6
    .param p0    # Landroid/view/View;
    .param p1    # Landroid/graphics/RectF;

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # F

    iget v0, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private updateSwipeProgressFromOffset(Landroid/view/View;Z)V
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Z

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSwipeProgressForOffset(Landroid/view/View;)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v2, p1, p2, v1}, Lcom/android/systemui/SwipeHelper$Callback;->updateSwipeProgress(Landroid/view/View;ZF)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    move v0, v1

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getSwipeProgressForOffset(Landroid/view/View;)F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public dismissChild(Landroid/view/View;F)V
    .locals 9
    .param p1    # Landroid/view/View;
    .param p2    # F

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v7, v4

    invoke-virtual/range {v0 .. v8}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJ)V

    return-void
.end method

.method public dismissChild(Landroid/view/View;FLjava/lang/Runnable;JZJ)V
    .locals 8
    .param p1    # Landroid/view/View;
    .param p2    # F
    .param p3    # Ljava/lang/Runnable;
    .param p4    # J
    .param p6    # Z
    .param p7    # J

    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v6, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v6, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    const/4 v6, 0x0

    cmpg-float v6, p2, v6

    if-ltz v6, :cond_1

    const/4 v6, 0x0

    cmpl-float v6, p2, v6

    if-nez v6, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v6

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    cmpl-float v6, p2, v6

    if-nez v6, :cond_3

    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    iget v6, p0, Lcom/android/systemui/SwipeHelper;->mSwipeDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v6

    neg-float v3, v6

    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, p7, v6

    if-nez v6, :cond_5

    iget v6, p0, Lcom/android/systemui/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    int-to-long v4, v6

    const/4 v6, 0x0

    cmpl-float v6, p2, v6

    if-eqz v6, :cond_4

    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v6

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x447a0000

    mul-float/2addr v6, v7

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :goto_1
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz p6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_2
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v6, 0x0

    cmp-long v6, p4, v6

    if-lez v6, :cond_2

    invoke-virtual {v0, p4, p5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_2
    new-instance v6, Lcom/android/systemui/SwipeHelper$2;

    invoke-direct {v6, p0, p1, p3, v1}, Lcom/android/systemui/SwipeHelper$2;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v6, Lcom/android/systemui/SwipeHelper$3;

    invoke-direct {v6, p0, v1, v2}, Lcom/android/systemui/SwipeHelper$3;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    goto :goto_0

    :cond_4
    iget v6, p0, Lcom/android/systemui/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    int-to-long v4, v6

    goto :goto_1

    :cond_5
    move-wide v4, p7

    goto :goto_1

    :cond_6
    sget-object v6, Lcom/android/systemui/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1    # Landroid/view/MotionEvent;

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-eqz v6, :cond_2

    :cond_1
    move v4, v5

    :cond_2
    move v5, v4

    :goto_1
    return v5

    :pswitch_0
    iput-boolean v4, p0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    iput-boolean v4, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    iput-boolean v4, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v6, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v7}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v7}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v6, :cond_3

    new-instance v6, Lcom/android/systemui/SwipeHelper$1;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/SwipeHelper$1;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/MotionEvent;)V

    iput-object v6, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v8, p0, Lcom/android/systemui/SwipeHelper;->mLongPressTimeout:J

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    iget v6, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    sub-float v2, v3, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v6, v7}, Lcom/android/systemui/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    iput-boolean v5, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v7}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v7

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    goto/16 :goto_0

    :pswitch_2
    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-eqz v6, :cond_5

    :cond_4
    move v1, v5

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    iput-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    iput-object v7, p0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    iput-boolean v4, p0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    invoke-virtual {p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_5
    move v1, v4

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/SwipeHelper;->mLongPressSent:Z

    if-eqz v15, :cond_0

    const/4 v15, 0x1

    :goto_0
    return v15

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/SwipeHelper;->mDragging:Z

    if-nez v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p1

    invoke-interface {v15, v0}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v15, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/SwipeHelper;->removeLongPressCallback()V

    const/4 v15, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_3
    :goto_1
    const/4 v15, 0x1

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v15, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mInitialTouchPos:F

    move/from16 v16, v0

    sub-float v6, v15, v16

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/SwipeHelper;->getFalsingThreshold()I

    move-result v15

    int-to-float v15, v15

    cmpl-float v15, v2, v15

    if-ltz v15, :cond_4

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v15

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v13

    const v15, 0x3e19999a

    mul-float v10, v15, v13

    cmpl-float v15, v2, v13

    if-ltz v15, :cond_7

    const/4 v15, 0x0

    cmpl-float v15, v6, v15

    if-lez v15, :cond_6

    move v6, v10

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v6}, Lcom/android/systemui/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/SwipeHelper;->mCanCurrViewBeDimissed:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/systemui/SwipeHelper;->updateSwipeProgressFromOffset(Landroid/view/View;Z)V

    goto :goto_1

    :cond_6
    neg-float v6, v10

    goto :goto_2

    :cond_7
    div-float v15, v6, v13

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide v18, 0x3ff921fb54442d18L

    mul-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v15, v0

    mul-float v6, v10, v15

    goto :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    move/from16 v16, v0

    mul-float v11, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v16, 0x3e8

    move/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    move/from16 v16, v0

    mul-float v8, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v15

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v15

    float-to-double v0, v15

    move-wide/from16 v16, v0

    const-wide v18, 0x3fd999999999999aL

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v15

    float-to-double v0, v15

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    cmpl-double v15, v16, v18

    if-lez v15, :cond_9

    const/4 v4, 0x1

    :goto_3
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpl-float v15, v15, v8

    if-lez v15, :cond_c

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v15

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v16

    cmpl-float v15, v15, v16

    if-lez v15, :cond_c

    const/4 v15, 0x0

    cmpl-float v15, v14, v15

    if-lez v15, :cond_a

    const/4 v15, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v16

    const/16 v17, 0x0

    cmpl-float v16, v16, v17

    if-lez v16, :cond_b

    const/16 v16, 0x1

    :goto_5
    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    const/4 v5, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v15}, Lcom/android/systemui/SwipeHelper$Callback;->isAntiFalsingNeeded()Z

    move-result v15

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/SwipeHelper;->mTouchAboveFalsingThreshold:Z

    if-nez v15, :cond_d

    const/4 v9, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_e

    if-nez v9, :cond_e

    if-nez v5, :cond_8

    if-eqz v4, :cond_e

    :cond_8
    const/4 v7, 0x1

    :goto_8
    if-eqz v7, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v5, :cond_f

    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_9
    const/4 v4, 0x0

    goto :goto_3

    :cond_a
    const/4 v15, 0x0

    goto :goto_4

    :cond_b
    const/16 v16, 0x0

    goto :goto_5

    :cond_c
    const/4 v5, 0x0

    goto :goto_6

    :cond_d
    const/4 v9, 0x0

    goto :goto_7

    :cond_e
    const/4 v7, 0x0

    goto :goto_8

    :cond_f
    const/4 v14, 0x0

    goto :goto_9

    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/SwipeHelper;->snapChild(Landroid/view/View;F)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeLongPressCallback()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/SwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public setDensityScale(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mDensityScale:F

    return-void
.end method

.method public setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V
    .locals 0
    .param p1    # Lcom/android/systemui/SwipeHelper$LongPressListener;

    iput-object p1, p0, Lcom/android/systemui/SwipeHelper;->mLongPressListener:Lcom/android/systemui/SwipeHelper$LongPressListener;

    return-void
.end method

.method public setMaxSwipeProgress(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mMaxSwipeProgress:F

    return-void
.end method

.method public setMinSwipeProgress(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mMinSwipeProgress:F

    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/android/systemui/SwipeHelper;->mPagingTouchSlop:F

    return-void
.end method

.method public snapChild(Landroid/view/View;F)V
    .locals 6
    .param p1    # Landroid/view/View;
    .param p2    # F

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/SwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, v1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/16 v3, 0x96

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/systemui/SwipeHelper$4;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/systemui/SwipeHelper$4;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/android/systemui/SwipeHelper$5;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/systemui/SwipeHelper$5;-><init>(Lcom/android/systemui/SwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
