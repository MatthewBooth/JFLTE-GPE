.class public Lcom/android/dialer/list/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/SwipeHelper$OnItemGestureListener;,
        Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;
    }
.end annotation


# static fields
.field public static ALPHA_FADE_START:F

.field private static DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field public static final IS_SWIPEABLE:Ljava/lang/Object;

.field private static MAX_DISMISS_VELOCITY:I

.field private static MAX_ESCAPE_ANIMATION_DURATION:I

.field private static MIN_LOCK:F

.field private static MIN_SWIPE:F

.field private static MIN_VERT:F

.field private static SNAP_ANIM_LEN:I

.field private static SWIPE_ESCAPE_VELOCITY:I

.field private static SWIPE_SCROLL_SLOP:I

.field static final TAG:Ljava/lang/String;

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private final mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

.field private mCanCurrViewBeDimissed:Z

.field private mChildSwipedFarEnoughFactor:F

.field private mChildSwipedFastEnoughFactor:F

.field private mCurrAnimView:Landroid/view/View;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDragging:Z

.field private mInitialTouchPosX:F

.field private mInitialTouchPosY:F

.field private mLastY:F

.field private mMinAlpha:F

.field private mPagingTouchSlop:F

.field private mProtected:Z

.field private mStartAlpha:F

.field private final mSwipeDirection:I

.field private final mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/dialer/list/SwipeHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/SwipeHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/dialer/list/SwipeHelper;->IS_SWIPEABLE:Ljava/lang/Object;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/dialer/list/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    const/4 v0, -0x1

    sput v0, Lcom/android/dialer/list/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:I

    const/4 v0, 0x0

    sput v0, Lcom/android/dialer/list/SwipeHelper;->ALPHA_FADE_START:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;FF)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # I
    .param p3    # Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;
    .param p4    # F
    .param p5    # F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v1, 0x3e99999a

    iput v1, p0, Lcom/android/dialer/list/SwipeHelper;->mMinAlpha:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/dialer/list/SwipeHelper;->mProtected:Z

    const v1, 0x3ecccccd

    iput v1, p0, Lcom/android/dialer/list/SwipeHelper;->mChildSwipedFarEnoughFactor:F

    const v1, 0x3d4ccccd

    iput v1, p0, Lcom/android/dialer/list/SwipeHelper;->mChildSwipedFastEnoughFactor:F

    iput-object p3, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    iput p2, p0, Lcom/android/dialer/list/SwipeHelper;->mSwipeDirection:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/list/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iput p4, p0, Lcom/android/dialer/list/SwipeHelper;->mDensityScale:F

    iput p5, p0, Lcom/android/dialer/list/SwipeHelper;->mPagingTouchSlop:F

    sget v1, Lcom/android/dialer/list/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/dialer/list/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:I

    const v1, 0x7f0a0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/dialer/list/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    const v1, 0x7f0a0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/dialer/list/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/dialer/list/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/dialer/list/SwipeHelper;->SNAP_ANIM_LEN:I

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/dialer/list/SwipeHelper;->SWIPE_SCROLL_SLOP:I

    const v1, 0x7f0b007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/android/dialer/list/SwipeHelper;->MIN_SWIPE:F

    const v1, 0x7f0b007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/android/dialer/list/SwipeHelper;->MIN_VERT:F

    const v1, 0x7f0b007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/android/dialer/list/SwipeHelper;->MIN_LOCK:F

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/list/SwipeHelper;)Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;
    .locals 1
    .param p0    # Lcom/android/dialer/list/SwipeHelper;

    iget-object v0, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/list/SwipeHelper;Landroid/view/View;)F
    .locals 1
    .param p0    # Lcom/android/dialer/list/SwipeHelper;
    .param p1    # Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/dialer/list/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/dialer/list/SwipeHelper;)F
    .locals 1
    .param p0    # Lcom/android/dialer/list/SwipeHelper;

    iget v0, p0, Lcom/android/dialer/list/SwipeHelper;->mStartAlpha:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/dialer/list/SwipeHelper;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/dialer/list/SwipeHelper;

    iget-object v0, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method private createDismissAnimation(Landroid/view/View;FI)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # F
    .param p3    # I

    invoke-direct {p0, p1, p2}, Lcom/android/dialer/list/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/list/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # F

    iget v1, p0, Lcom/android/dialer/list/SwipeHelper;->mSwipeDirection:I

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

.method private determineDuration(Landroid/view/View;FF)I
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # F
    .param p3    # F

    sget v0, Lcom/android/dialer/list/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x447a0000

    mul-float/2addr v1, v2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/dialer/list/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_0
.end method

.method private determinePos(Landroid/view/View;F)F
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # F

    const/4 v2, 0x0

    const/4 v0, 0x0

    cmpg-float v1, p2, v2

    if-ltz v1, :cond_1

    cmpl-float v1, p2, v2

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    :cond_0
    cmpl-float v1, p2, v2

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/dialer/list/SwipeHelper;->mSwipeDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/dialer/list/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v1

    neg-float v0, v1

    :goto_0
    return v0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/dialer/list/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method private dismissChild(Landroid/view/View;F)V
    .locals 7
    .param p1    # Landroid/view/View;
    .param p2    # F

    iget-object v5, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    invoke-interface {v5, p1}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    invoke-interface {v5, p1}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    invoke-direct {p0, v1, p2}, Lcom/android/dialer/list/SwipeHelper;->determinePos(Landroid/view/View;F)F

    move-result v4

    invoke-direct {p0, v1, v4, p2}, Lcom/android/dialer/list/SwipeHelper;->determineDuration(Landroid/view/View;FF)I

    move-result v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-direct {p0, v1, v4, v3}, Lcom/android/dialer/list/SwipeHelper;->createDismissAnimation(Landroid/view/View;FI)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v5, Lcom/android/dialer/list/SwipeHelper$1;

    invoke-direct {v5, p0, p1, v1}, Lcom/android/dialer/list/SwipeHelper$1;-><init>(Lcom/android/dialer/list/SwipeHelper;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Lcom/android/dialer/list/SwipeHelper$2;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/dialer/list/SwipeHelper$2;-><init>(Lcom/android/dialer/list/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private getAlphaForOffset(Landroid/view/View;)F
    .locals 6
    .param p1    # Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/dialer/list/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    const v4, 0x3f333333

    mul-float v0, v4, v3

    iget v2, p0, Lcom/android/dialer/list/SwipeHelper;->mStartAlpha:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    sget v4, Lcom/android/dialer/list/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/android/dialer/list/SwipeHelper;->mStartAlpha:F

    sget v5, Lcom/android/dialer/list/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v5, v3

    sub-float v5, v1, v5

    div-float/2addr v5, v0

    sub-float v2, v4, v5

    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/dialer/list/SwipeHelper;->mMinAlpha:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4

    :cond_1
    iget v4, p0, Lcom/android/dialer/list/SwipeHelper;->mStartAlpha:F

    sget v5, Lcom/android/dialer/list/SwipeHelper;->ALPHA_FADE_START:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    iget v4, p0, Lcom/android/dialer/list/SwipeHelper;->mStartAlpha:F

    sget v5, Lcom/android/dialer/list/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v5, v3

    add-float/2addr v5, v1

    div-float/2addr v5, v0

    add-float v2, v4, v5

    goto :goto_0
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1    # Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/android/dialer/list/SwipeHelper;->mSwipeDirection:I

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

.method private getSize(Landroid/view/View;)F
    .locals 1
    .param p1    # Landroid/view/View;

    iget v0, p0, Lcom/android/dialer/list/SwipeHelper;->mSwipeDirection:I

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

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1    # Landroid/view/VelocityTracker;

    iget v0, p0, Lcom/android/dialer/list/SwipeHelper;->mSwipeDirection:I

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

    invoke-static {p0, v0}, Lcom/android/dialer/list/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

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

    iget v0, p0, Lcom/android/dialer/list/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1    # Landroid/view/MotionEvent;

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-boolean v7, p0, Lcom/android/dialer/list/SwipeHelper;->mDragging:Z

    :goto_1
    return v7

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/android/dialer/list/SwipeHelper;->mLastY:F

    iput-boolean v7, p0, Lcom/android/dialer/list/SwipeHelper;->mDragging:Z

    iget-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    invoke-interface {v7, p1}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V

    iget-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    iget-object v8, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getAlpha()F

    move-result v7

    iput v7, p0, Lcom/android/dialer/list/SwipeHelper;->mStartAlpha:F

    iget-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    iget-object v8, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v7, v8}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/dialer/list/SwipeHelper;->mCanCurrViewBeDimissed:Z

    iget-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/android/dialer/list/SwipeHelper;->mInitialTouchPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/android/dialer/list/SwipeHelper;->mInitialTouchPosY:F

    goto :goto_0

    :pswitch_1
    iget-object v8, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v8, :cond_2

    iget v8, p0, Lcom/android/dialer/list/SwipeHelper;->mLastY:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    iget-boolean v8, p0, Lcom/android/dialer/list/SwipeHelper;->mDragging:Z

    if-nez v8, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v8, p0, Lcom/android/dialer/list/SwipeHelper;->mInitialTouchPosY:F

    sub-float v8, v2, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v8, p0, Lcom/android/dialer/list/SwipeHelper;->mInitialTouchPosX:F

    sub-float v8, v1, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v8, Lcom/android/dialer/list/SwipeHelper;->SWIPE_SCROLL_SLOP:I

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_1

    const v8, 0x3f99999a

    mul-float/2addr v8, v4

    cmpl-float v8, v5, v8

    if-lez v8, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/android/dialer/list/SwipeHelper;->mLastY:F

    iget-object v8, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    invoke-interface {v8}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->onScroll()V

    goto/16 :goto_1

    :cond_1
    iget-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/android/dialer/list/SwipeHelper;->mInitialTouchPosX:F

    sub-float v3, v6, v7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/dialer/list/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    iget-object v8, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    iget-object v9, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v8, v9}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->onBeginDrag(Landroid/view/View;)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/dialer/list/SwipeHelper;->mDragging:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget-object v8, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTranslationX()F

    move-result v8

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/android/dialer/list/SwipeHelper;->mInitialTouchPosX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/android/dialer/list/SwipeHelper;->mInitialTouchPosY:F

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/android/dialer/list/SwipeHelper;->mLastY:F

    goto/16 :goto_0

    :pswitch_2
    iput-boolean v7, p0, Lcom/android/dialer/list/SwipeHelper;->mDragging:Z

    iput-object v8, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    iput-object v8, p0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    const/high16 v7, -0x40800000

    iput v7, p0, Lcom/android/dialer/list/SwipeHelper;->mLastY:F

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1    # Landroid/view/MotionEvent;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/dialer/list/SwipeHelper;->mDragging:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/dialer/list/SwipeHelper;->mProtected:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    :cond_0
    const/16 v19, 0x0

    :goto_0
    return v19

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    const/16 v19, 0x1

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/SwipeHelper;->mInitialTouchPosX:F

    move/from16 v20, v0

    sub-float v8, v19, v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/SwipeHelper;->mInitialTouchPosY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/dialer/list/SwipeHelper;->mDragging:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    sget v19, Lcom/android/dialer/list/SwipeHelper;->MIN_VERT:F

    cmpl-float v19, v9, v19

    if-lez v19, :cond_3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v19

    sget v20, Lcom/android/dialer/list/SwipeHelper;->MIN_LOCK:F

    cmpg-float v19, v19, v20

    if-gez v19, :cond_3

    const v19, 0x3f99999a

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v20

    mul-float v19, v19, v20

    cmpl-float v19, v9, v19

    if-lez v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->onScroll()V

    const/16 v19, 0x0

    goto :goto_0

    :cond_3
    sget v14, Lcom/android/dialer/list/SwipeHelper;->MIN_SWIPE:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v19

    cmpg-float v19, v19, v14

    if-gez v19, :cond_4

    const/16 v19, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v19

    if-nez v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/dialer/list/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v16

    const v19, 0x3e19999a

    mul-float v12, v19, v16

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v19

    cmpl-float v19, v19, v16

    if-ltz v19, :cond_8

    const/16 v19, 0x0

    cmpl-float v19, v8, v19

    if-lez v19, :cond_7

    move v8, v12

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v8}, Lcom/android/dialer/list/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCanCurrViewBeDimissed:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/dialer/list/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->setAlpha(F)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/dialer/list/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_7
    neg-float v8, v12

    goto :goto_2

    :cond_8
    div-float v19, v8, v16

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3ff921fb54442d18L

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    mul-float v8, v12, v19

    goto :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    sget v19, Lcom/android/dialer/list/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/SwipeHelper;->mDensityScale:F

    move/from16 v20, v0

    mul-float v13, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    const/16 v20, 0x3e8

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    sget v19, Lcom/android/dialer/list/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/SwipeHelper;->mDensityScale:F

    move/from16 v20, v0

    mul-float v11, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/dialer/list/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/dialer/list/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTranslationX()F

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/dialer/list/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/SwipeHelper;->mChildSwipedFarEnoughFactor:F

    move/from16 v19, v0

    mul-float v19, v19, v7

    cmpl-float v19, v17, v19

    if-lez v19, :cond_a

    const/4 v5, 0x1

    :goto_3
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v19

    cmpl-float v19, v19, v11

    if-lez v19, :cond_d

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v19

    invoke-static {v15}, Ljava/lang/Math;->abs(F)F

    move-result v20

    cmpl-float v19, v19, v20

    if-lez v19, :cond_d

    const/16 v19, 0x0

    cmpl-float v19, v18, v19

    if-lez v19, :cond_b

    const/16 v19, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTranslationX()F

    move-result v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_c

    const/16 v20, 0x1

    :goto_5
    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/list/SwipeHelper;->mChildSwipedFastEnoughFactor:F

    move/from16 v19, v0

    mul-float v19, v19, v7

    cmpl-float v19, v17, v19

    if-lez v19, :cond_d

    const/4 v6, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-interface/range {v19 .. v20}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v19

    if-eqz v19, :cond_e

    if-nez v6, :cond_9

    if-eqz v5, :cond_e

    :cond_9
    const/4 v10, 0x1

    :goto_7
    if-eqz v10, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    if-eqz v6, :cond_f

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/list/SwipeHelper;->dismissChild(Landroid/view/View;F)V

    goto/16 :goto_1

    :cond_a
    const/4 v5, 0x0

    goto :goto_3

    :cond_b
    const/16 v19, 0x0

    goto :goto_4

    :cond_c
    const/16 v20, 0x0

    goto :goto_5

    :cond_d
    const/4 v6, 0x0

    goto :goto_6

    :cond_e
    const/4 v10, 0x0

    goto :goto_7

    :cond_f
    const/16 v18, 0x0

    goto :goto_8

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/list/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/list/SwipeHelper;->snapChild(Landroid/view/View;F)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public snapChild(Landroid/view/View;F)V
    .locals 6
    .param p1    # Landroid/view/View;
    .param p2    # F

    iget-object v4, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    invoke-interface {v4, p1}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    iget-object v4, p0, Lcom/android/dialer/list/SwipeHelper;->mCallback:Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;

    invoke-interface {v4, p1}, Lcom/android/dialer/list/SwipeHelper$SwipeHelperCallback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/dialer/list/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget v3, Lcom/android/dialer/list/SwipeHelper;->SNAP_ANIM_LEN:I

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/dialer/list/SwipeHelper$3;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/dialer/list/SwipeHelper$3;-><init>(Lcom/android/dialer/list/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/android/dialer/list/SwipeHelper$4;

    invoke-direct {v4, p0, v1}, Lcom/android/dialer/list/SwipeHelper$4;-><init>(Lcom/android/dialer/list/SwipeHelper;Landroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
