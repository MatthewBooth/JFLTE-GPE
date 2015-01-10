.class public Lcom/android/systemui/statusbar/DragDownHelper;
.super Ljava/lang/Object;
.source "DragDownHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field private mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

.field private mDraggedFarEnough:Z

.field private mDraggingDown:Z

.field private mHost:Landroid/view/View;

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastHeight:F

.field private mMinDragDistance:I

.field private mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

.field private final mTemp2:[I

.field private mTouchSlop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/ExpandHelper$Callback;Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/View;
    .param p3    # Lcom/android/systemui/ExpandHelper$Callback;
    .param p4    # Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mMinDragDistance:I

    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTouchSlop:F

    iput-object p3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iput-object p4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    iput-object p2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mHost:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/DragDownHelper;)Lcom/android/systemui/ExpandHelper$Callback;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/DragDownHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/DragDownHelper;)Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/DragDownHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    return-object v0
.end method

.method private cancelExpansion()V
    .locals 4

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x177

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/DragDownHelper$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/DragDownHelper$2;-><init>(Lcom/android/systemui/statusbar/DragDownHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private cancelExpansion(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 5
    .param p1    # Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getMinHeight()I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "actualHeight"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getMinHeight()I

    move-result v4

    aput v4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x177

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/DragDownHelper$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/DragDownHelper$1;-><init>(Lcom/android/systemui/statusbar/DragDownHelper;Lcom/android/systemui/statusbar/ExpandableView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private captureStartingChild(FF)V
    .locals 3
    .param p1    # F
    .param p2    # F

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/DragDownHelper;->findView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private findView(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 2
    .param p1    # F
    .param p2    # F

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mHost:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTemp2:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    add-float/2addr p2, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    return-object v0
.end method

.method private handleExpansion(FLcom/android/systemui/statusbar/ExpandableView;)V
    .locals 6
    .param p1    # F
    .param p2    # Lcom/android/systemui/statusbar/ExpandableView;

    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->isContentExpandable()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v3, 0x3f000000

    :goto_0
    mul-float v2, p1, v3

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getMinHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxHeight()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getMinHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float v1, v4, v5

    const v4, 0x3f59999a

    mul-float/2addr v1, v4

    sub-float/2addr v2, v1

    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableView;->getMinHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    float-to-int v4, v4

    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(I)V

    return-void

    :cond_2
    const v3, 0x3e19999a

    goto :goto_0
.end method

.method private stopDragging()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/DragDownHelper;->cancelExpansion(Lcom/android/systemui/statusbar/ExpandableView;)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onDragDownReset()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->cancelExpansion()V

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v3, v4

    :goto_1
    return v3

    :pswitch_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    iput v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    iput v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    goto :goto_0

    :pswitch_2
    iget v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    sub-float v0, v2, v5

    iget v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mTouchSlop:F

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    sub-float v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    iget v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/DragDownHelper;->captureStartingChild(FF)V

    iput v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    iput v1, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    iget-object v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onTouchSlopExceeded()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    if-nez v4, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    iget-object v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onDraggedDown(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->setEmptyDragAmount(F)V

    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggingDown:Z

    goto :goto_0

    :pswitch_1
    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    sub-float v4, v1, v4

    iput v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchX:F

    iget v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mInitialTouchY:F

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/DragDownHelper;->captureStartingChild(FF)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mStartingChild:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/DragDownHelper;->handleExpansion(FLcom/android/systemui/statusbar/ExpandableView;)V

    :goto_1
    iget v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    iget v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mMinDragDistance:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    if-nez v2, :cond_2

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onThresholdReached()V

    :cond_2
    :goto_2
    move v2, v3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    iget v5, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mLastHeight:F

    invoke-interface {v4, v5}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->setEmptyDragAmount(F)V

    goto :goto_1

    :cond_4
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    if-eqz v4, :cond_2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDraggedFarEnough:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/DragDownHelper;->mDragDownCallback:Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;->onDragDownReset()V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->stopDragging()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DragDownHelper;->stopDragging()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
