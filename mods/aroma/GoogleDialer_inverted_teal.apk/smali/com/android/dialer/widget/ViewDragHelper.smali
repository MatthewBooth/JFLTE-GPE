.class public Lcom/android/dialer/widget/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/widget/ViewDragHelper$Callback;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private final mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

.field private mCapturedView:Landroid/view/View;

.field private mDragState:I

.field private mEdgeDragsInProgress:[I

.field private mEdgeDragsLocked:[I

.field private mEdgeSize:I

.field private mFinalScrollY:I

.field private mInitialEdgesTouched:[I

.field private mInitialMotionX:[F

.field private mInitialMotionY:[F

.field private mLastMotionX:[F

.field private mLastMotionY:[F

.field private mMaxVelocity:F

.field private mMinVelocity:F

.field private final mParentView:Landroid/view/ViewGroup;

.field private mPointersDown:I

.field private mReleaseInProgress:Z

.field private mScroller:Landroid/widget/Scroller;

.field private final mSetIdleRunnable:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mTrackingEdges:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/dialer/widget/ViewDragHelper$Callback;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Lcom/android/dialer/widget/ViewDragHelper$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mActivePointerId:I

    new-instance v2, Lcom/android/dialer/widget/ViewDragHelper$1;

    invoke-direct {v2, p0}, Lcom/android/dialer/widget/ViewDragHelper$1;-><init>(Lcom/android/dialer/widget/ViewDragHelper;)V

    iput-object v2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Parent view may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Callback may not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iput-object p2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41a00000

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f000000

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mEdgeSize:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mTouchSlop:I

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mMaxVelocity:F

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mMinVelocity:F

    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method private checkNewEdgeDrag(FFII)Z
    .locals 5
    .param p1    # F
    .param p2    # F
    .param p3    # I
    .param p4    # I

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-ne v3, p4, :cond_0

    iget v3, p0, Lcom/android/dialer/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v3, p4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/dialer/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget-object v3, p0, Lcom/android/dialer/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-eq v3, p4, :cond_0

    iget v3, p0, Lcom/android/dialer/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_1

    iget v3, p0, Lcom/android/dialer/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/high16 v3, 0x3f000000

    mul-float/2addr v3, v1

    cmpg-float v3, v0, v3

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    invoke-virtual {v3, p4}, Lcom/android/dialer/widget/ViewDragHelper$Callback;->onEdgeLock(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/dialer/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aget v4, v3, p3

    or-int/2addr v4, p4

    aput v4, v3, p3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/dialer/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v3, v3, p3

    and-int/2addr v3, p4

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/dialer/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkTouchSlop(Landroid/view/View;FF)Z
    .locals 7
    .param p1    # Landroid/view/View;
    .param p2    # F
    .param p3    # F

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/android/dialer/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_2

    move v0, v2

    :goto_1
    iget-object v4, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    invoke-virtual {v4, p1}, Lcom/android/dialer/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_3

    move v1, v2

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    mul-float v4, p2, p2

    mul-float v5, p3, p3

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/dialer/widget/ViewDragHelper;->mTouchSlop:I

    iget v6, p0, Lcom/android/dialer/widget/ViewDragHelper;->mTouchSlop:I

    mul-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_5

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/dialer/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/dialer/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_0
.end method

.method private clampMag(FFF)F
    .locals 3
    .param p1    # F
    .param p2    # F
    .param p3    # F

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v2, v0, p2

    if-gez v2, :cond_1

    move p3, v1

    :cond_0
    :goto_0
    return p3

    :cond_1
    cmpl-float v2, v0, p3

    if-lez v2, :cond_2

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_0

    neg-float p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    goto :goto_0
.end method

.method private clampMag(III)I
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v0, p2, :cond_1

    const/4 p3, 0x0

    :cond_0
    :goto_0
    return p3

    :cond_1
    if-le v0, p3, :cond_2

    if-gtz p1, :cond_0

    neg-int p3, p3

    goto :goto_0

    :cond_2
    move p3, p1

    goto :goto_0
.end method

.method private clearMotionHistory()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mLastMotionX:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mLastMotionY:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iput v2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private clearMotionHistory(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialMotionX:[F

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialMotionX:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialMotionY:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mLastMotionX:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mLastMotionY:[F

    aput v1, v0, p1

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aput v2, v0, p1

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aput v2, v0, p1

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    aput v2, v0, p1

    iget v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mPointersDown:I

    goto :goto_0
.end method

.method private computeAxisDuration(III)I
    .locals 10
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/high16 v9, 0x3f800000

    if-nez p1, :cond_0

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    iget-object v6, p0, Lcom/android/dialer/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, v5

    div-float/2addr v6, v7

    invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    int-to-float v6, v3

    int-to-float v7, v3

    invoke-direct {p0, v1}, Lcom/android/dialer/widget/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v0, v6, v7

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_1

    const/high16 v6, 0x447a0000

    int-to-float v7, p2

    div-float v7, v0, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v2, v6, 0x4

    :goto_1
    const/16 v6, 0x258

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    int-to-float v7, p3

    div-float v4, v6, v7

    add-float v6, v4, v9

    const/high16 v7, 0x43800000

    mul-float/2addr v6, v7

    float-to-int v2, v6

    goto :goto_1
.end method

.method private computeSettleDuration(Landroid/view/View;IIII)I
    .locals 14
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    iget v12, p0, Lcom/android/dialer/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/android/dialer/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p4

    invoke-direct {p0, v0, v12, v13}, Lcom/android/dialer/widget/ViewDragHelper;->clampMag(III)I

    move-result p4

    iget v12, p0, Lcom/android/dialer/widget/ViewDragHelper;->mMinVelocity:F

    float-to-int v12, v12

    iget v13, p0, Lcom/android/dialer/widget/ViewDragHelper;->mMaxVelocity:F

    float-to-int v13, v13

    move/from16 v0, p5

    invoke-direct {p0, v0, v12, v13}, Lcom/android/dialer/widget/ViewDragHelper;->clampMag(III)I

    move-result p5

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int v7, v4, v5

    add-int v6, v2, v3

    if-eqz p4, :cond_0

    int-to-float v12, v4

    int-to-float v13, v7

    div-float v9, v12, v13

    :goto_0
    if-eqz p5, :cond_1

    int-to-float v12, v5

    int-to-float v13, v7

    div-float v11, v12, v13

    :goto_1
    iget-object v12, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/android/dialer/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-direct {p0, v0, v1, v12}, Lcom/android/dialer/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v8

    iget-object v12, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    invoke-virtual {v12, p1}, Lcom/android/dialer/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I

    move-result v12

    move/from16 v0, p3

    move/from16 v1, p5

    invoke-direct {p0, v0, v1, v12}, Lcom/android/dialer/widget/ViewDragHelper;->computeAxisDuration(III)I

    move-result v10

    int-to-float v12, v8

    mul-float/2addr v12, v9

    int-to-float v13, v10

    mul-float/2addr v13, v11

    add-float/2addr v12, v13

    float-to-int v12, v12

    return v12

    :cond_0
    int-to-float v12, v2

    int-to-float v13, v6

    div-float v9, v12, v13

    goto :goto_0

    :cond_1
    int-to-float v12, v3

    int-to-float v13, v6

    div-float v11, v12, v13

    goto :goto_1
.end method

.method public static create(Landroid/view/ViewGroup;FLcom/android/dialer/widget/ViewDragHelper$Callback;)Lcom/android/dialer/widget/ViewDragHelper;
    .locals 3
    .param p0    # Landroid/view/ViewGroup;
    .param p1    # F
    .param p2    # Lcom/android/dialer/widget/ViewDragHelper$Callback;

    invoke-static {p0, p2}, Lcom/android/dialer/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Lcom/android/dialer/widget/ViewDragHelper$Callback;)Lcom/android/dialer/widget/ViewDragHelper;

    move-result-object v0

    iget v1, v0, Lcom/android/dialer/widget/ViewDragHelper;->mTouchSlop:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000

    div-float/2addr v2, p1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/android/dialer/widget/ViewDragHelper;->mTouchSlop:I

    return-object v0
.end method

.method public static create(Landroid/view/ViewGroup;Lcom/android/dialer/widget/ViewDragHelper$Callback;)Lcom/android/dialer/widget/ViewDragHelper;
    .locals 2
    .param p0    # Landroid/view/ViewGroup;
    .param p1    # Lcom/android/dialer/widget/ViewDragHelper$Callback;

    new-instance v0, Lcom/android/dialer/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/dialer/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/dialer/widget/ViewDragHelper$Callback;)V

    return-object v0
.end method

.method private dispatchViewFling(FF)V
    .locals 4
    .param p1    # F
    .param p2    # F

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p0, Lcom/android/dialer/widget/ViewDragHelper;->mReleaseInProgress:Z

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/dialer/widget/ViewDragHelper$Callback;->onViewFling(Landroid/view/View;FF)V

    iput-boolean v2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mReleaseInProgress:Z

    iget v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/dialer/widget/ViewDragHelper;->setDragState(I)V

    :cond_0
    return-void
.end method

.method private dispatchViewReleased(FF)V
    .locals 4
    .param p1    # F
    .param p2    # F

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p0, Lcom/android/dialer/widget/ViewDragHelper;->mReleaseInProgress:Z

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/dialer/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    iput-boolean v2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mReleaseInProgress:Z

    iget v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/dialer/widget/ViewDragHelper;->setDragState(I)V

    :cond_0
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1    # F

    const/high16 v0, 0x3f000000

    sub-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L

    mul-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private dragTo(IIII)V
    .locals 8
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    move v2, p1

    move v3, p2

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p3}, Lcom/android/dialer/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I

    move-result v2

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v2, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_0
    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2, p4}, Lcom/android/dialer/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I

    move-result v3

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v1, v3, v7

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    sub-int v4, v2, v6

    sub-int v5, v3, v7

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual/range {v0 .. v5}, Lcom/android/dialer/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_3
    return-void
.end method

.method private ensureMotionHistorySizeForId(I)V
    .locals 10
    .param p1    # I

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v7, v7

    if-gt v7, p1, :cond_2

    :cond_0
    add-int/lit8 v7, p1, 0x1

    new-array v3, v7, [F

    add-int/lit8 v7, p1, 0x1

    new-array v4, v7, [F

    add-int/lit8 v7, p1, 0x1

    new-array v5, v7, [F

    add-int/lit8 v7, p1, 0x1

    new-array v6, v7, [F

    add-int/lit8 v7, p1, 0x1

    new-array v2, v7, [I

    add-int/lit8 v7, p1, 0x1

    new-array v0, v7, [I

    add-int/lit8 v7, p1, 0x1

    new-array v1, v7, [I

    iget-object v7, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialMotionX:[F

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialMotionX:[F

    iget-object v8, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy([FI[FII)V

    iget-object v7, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialMotionY:[F

    iget-object v8, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy([FI[FII)V

    iget-object v7, p0, Lcom/android/dialer/widget/ViewDragHelper;->mLastMotionX:[F

    iget-object v8, p0, Lcom/android/dialer/widget/ViewDragHelper;->mLastMotionX:[F

    array-length v8, v8

    invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy([FI[FII)V

    iget-object v7, p0, Lcom/android/dialer/widget/ViewDragHelper;->mLastMotionY:[F

    iget-object v8, p0, Lcom/android/dialer/widget/ViewDragHelper;->mLastMotionY:[F

    array-length v8, v8

    invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy([FI[FII)V

    iget-object v7, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    iget-object v8, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    array-length v8, v8

    invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v7, p0, Lcom/android/dialer/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    iget-object v8, p0, Lcom/android/dialer/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    array-length v8, v8

    invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy([II[III)V

    iget-object v7, p0, Lcom/android/dialer/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    iget-object v8, p0, Lcom/android/dialer/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    array-length v8, v8

    invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_1
    iput-object v3, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialMotionX:[F

    iput-object v4, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialMotionY:[F

    iput-object v5, p0, Lcom/android/dialer/widget/ViewDragHelper;->mLastMotionX:[F

    iput-object v6, p0, Lcom/android/dialer/widget/ViewDragHelper;->mLastMotionY:[F

    iput-object v2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    iput-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    iput-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mEdgeDragsLocked:[I

    :cond_2
    return-void
.end method

.method private forceSettleCapturedViewAt(IIII)Z
    .locals 11
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v2, p1, v10

    sub-int v3, p2, v6

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0, v0}, Lcom/android/dialer/widget/ViewDragHelper;->setDragState(I)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/widget/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I

    move-result v9

    iget-object v4, p0, Lcom/android/dialer/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    move v5, v10

    move v7, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Landroid/widget/Scroller;->startScroll(IIIII)V

    add-int v0, v6, v3

    iput v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mFinalScrollY:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/dialer/widget/ViewDragHelper;->setDragState(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getEdgesTouched(II)I
    .locals 3
    .param p1    # I
    .param p2    # I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    iget v2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mEdgeSize:I

    add-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    iget v2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mEdgeSize:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    return v0
.end method

.method private releaseViewForPointerUp()V
    .locals 5

    iget-object v2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lcom/android/dialer/widget/ViewDragHelper;->mMaxVelocity:F

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/android/dialer/widget/ViewDragHelper;->mActivePointerId:I

    invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    iget v3, p0, Lcom/android/dialer/widget/ViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/android/dialer/widget/ViewDragHelper;->mMaxVelocity:F

    invoke-direct {p0, v2, v3, v4}, Lcom/android/dialer/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v0

    iget-object v2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, p0, Lcom/android/dialer/widget/ViewDragHelper;->mActivePointerId:I

    invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    iget v3, p0, Lcom/android/dialer/widget/ViewDragHelper;->mMinVelocity:F

    iget v4, p0, Lcom/android/dialer/widget/ViewDragHelper;->mMaxVelocity:F

    invoke-direct {p0, v2, v3, v4}, Lcom/android/dialer/widget/ViewDragHelper;->clampMag(FFF)F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    return-void
.end method

.method private reportNewEdgeDrags(FFI)V
    .locals 3
    .param p1    # F
    .param p2    # F
    .param p3    # I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/dialer/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    const/4 v1, 0x4

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/android/dialer/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/android/dialer/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    const/16 v1, 0x8

    invoke-direct {p0, p2, p1, p3, v1}, Lcom/android/dialer/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x8

    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mEdgeDragsInProgress:[I

    aget v2, v1, p3

    or-int/2addr v2, v0

    aput v2, v1, p3

    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, v0, p3}, Lcom/android/dialer/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V

    :cond_4
    return-void
.end method

.method private saveInitialMotion(FFI)V
    .locals 3
    .param p1    # F
    .param p2    # F
    .param p3    # I

    invoke-direct {p0, p3}, Lcom/android/dialer/widget/ViewDragHelper;->ensureMotionHistorySizeForId(I)V

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialMotionX:[F

    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mLastMotionX:[F

    aput p1, v1, p3

    aput p1, v0, p3

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialMotionY:[F

    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mLastMotionY:[F

    aput p2, v1, p3

    aput p2, v0, p3

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-direct {p0, v1, v2}, Lcom/android/dialer/widget/ViewDragHelper;->getEdgesTouched(II)I

    move-result v1

    aput v1, v0, p3

    iget v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mPointersDown:I

    const/4 v1, 0x1

    shl-int/2addr v1, p3

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mPointersDown:I

    return-void
.end method

.method private saveLastMotion(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1    # Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v4

    iget-object v5, p0, Lcom/android/dialer/widget/ViewDragHelper;->mLastMotionX:[F

    aput v3, v5, v2

    iget-object v5, p0, Lcom/android/dialer/widget/ViewDragHelper;->mLastMotionY:[F

    aput v4, v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/dialer/widget/ViewDragHelper;->cancel()V

    iget v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mDragState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v6

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v7

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    sub-int v4, v2, v6

    sub-int v5, v3, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/dialer/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/dialer/widget/ViewDragHelper;->setDragState(I)V

    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mActivePointerId:I

    invoke-direct {p0}, Lcom/android/dialer/widget/ViewDragHelper;->clearMotionHistory()V

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public captureChildView(Landroid/view/View;I)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # I

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    iput p2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mActivePointerId:I

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1, p2}, Lcom/android/dialer/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/widget/ViewDragHelper;->setDragState(I)V

    return-void
.end method

.method public continueSettling(Z)Z
    .locals 8
    .param p1    # Z

    const/4 v7, 0x2

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v7, :cond_2

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v6

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, v3, v0

    if-lez v0, :cond_4

    iget v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mFinalScrollY:I

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_0
    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v5, v3, v0

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/dialer/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    :cond_0
    if-eqz v6, :cond_1

    iget v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mFinalScrollY:I

    if-ne v3, v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    :cond_1
    if-nez v6, :cond_2

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mDragState:I

    if-ne v0, v7, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    :cond_4
    iget v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mFinalScrollY:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/dialer/widget/ViewDragHelper;->setDragState(I)V

    goto :goto_1
.end method

.method public findTopChildUnder(II)Landroid/view/View;
    .locals 5
    .param p1    # I
    .param p2    # I

    iget-object v3, p0, Lcom/android/dialer/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/dialer/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    invoke-virtual {v4, v2}, Lcom/android/dialer/widget/ViewDragHelper$Callback;->getOrderedChildIndex(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ge p2, v3, :cond_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public flingCapturedView(IIIII)V
    .locals 9
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    iget-boolean v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    const/4 v3, 0x0

    move v4, p5

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    if-gez p5, :cond_1

    :goto_0
    iput p2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mFinalScrollY:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/dialer/widget/ViewDragHelper;->setDragState(I)V

    return-void

    :cond_1
    move p2, p4

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    iget v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mTouchSlop:I

    return v0
.end method

.method public getVelocityMagnitude()I
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getViewDragState()I
    .locals 1

    iget v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mDragState:I

    return v0
.end method

.method public isCapturedViewUnder(II)Z
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/dialer/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public isViewUnder(Landroid/view/View;II)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    if-ge p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    if-lt p3, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    if-ge p3, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public predictFlingYOffset(I)I
    .locals 10
    .param p1    # I

    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalY()I

    move-result v9

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    return v9
.end method

.method public processNestedFling(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I

    iput-object p1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 v0, 0x0

    int-to-float v1, p2

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/widget/ViewDragHelper;->dispatchViewFling(FF)V

    return-void
.end method

.method public processNestedScroll(Landroid/view/View;II[I)V
    .locals 6
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I
    .param p4    # [I

    iget-object v4, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int v0, v4, p2

    iget-object v4, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    add-int v1, v4, p3

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/android/dialer/widget/ViewDragHelper;->dragTo(IIII)V

    if-eqz p4, :cond_0

    iget-object v4, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    sub-int v2, v0, v4

    iget-object v4, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int v3, v1, v4

    const/4 v4, 0x0

    sub-int v5, v2, p2

    aput v5, p4, v4

    const/4 v4, 0x1

    sub-int v5, v3, p3

    aput v5, p4, v4

    :cond_0
    return-void
.end method

.method public processTouchEvent(Landroid/view/MotionEvent;)V
    .locals 21
    .param p1    # Landroid/view/MotionEvent;

    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    if-nez v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/ViewDragHelper;->cancel()V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/dialer/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v3, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/android/dialer/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/android/dialer/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/android/dialer/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2, v15}, Lcom/android/dialer/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/android/dialer/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    move-object/from16 v19, v0

    aget v7, v19, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v19, v0

    and-int v19, v19, v7

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mTrackingEdges:I

    move/from16 v20, v0

    and-int v20, v20, v7

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Lcom/android/dialer/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto/16 :goto_0

    :cond_3
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/widget/ViewDragHelper;->isCapturedViewUnder(II)Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v15}, Lcom/android/dialer/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v12

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mLastMotionX:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v17, v19

    move/from16 v0, v19

    float-to-int v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mLastMotionY:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v20, v0

    aget v19, v19, v20

    sub-float v19, v18, v19

    move/from16 v0, v19

    float-to-int v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I

    move-result v19

    add-int v19, v19, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v20

    add-int v20, v20, v11

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/android/dialer/widget/ViewDragHelper;->dragTo(IIII)V

    invoke-direct/range {p0 .. p1}, Lcom/android/dialer/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v14

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v14, :cond_5

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialMotionX:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v5, v17, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialMotionY:[F

    move-object/from16 v19, v0

    aget v19, v19, v15

    sub-float v6, v18, v19

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v15}, Lcom/android/dialer/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/android/dialer/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_6
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v6}, Lcom/android/dialer/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Lcom/android/dialer/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-nez v19, :cond_5

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :pswitch_4
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v15, v0, :cond_b

    const/4 v13, -0x1

    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v14

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v14, :cond_a

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mActivePointerId:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v9, v0, :cond_9

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_9
    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v17

    move-object/from16 v0, p1

    invoke-static {v0, v8}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lcom/android/dialer/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/dialer/widget/ViewDragHelper;->mActivePointerId:I

    :cond_a
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v13, v0, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/widget/ViewDragHelper;->releaseViewForPointerUp()V

    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/dialer/widget/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/dialer/widget/ViewDragHelper;->releaseViewForPointerUp()V

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/widget/ViewDragHelper;->mDragState:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method setDragState(I)V
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mDragState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mDragState:I

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    invoke-virtual {v0, p1}, Lcom/android/dialer/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setEdgeTrackingEnabled(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mTrackingEdges:I

    return-void
.end method

.method public setMinVelocity(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mMinVelocity:F

    return-void
.end method

.method public settleCapturedViewAt(II)Z
    .locals 3
    .param p1    # I
    .param p2    # I

    iget-boolean v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mReleaseInProgress:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mActivePointerId:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mActivePointerId:I

    invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/dialer/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1    # Landroid/view/MotionEvent;

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/widget/ViewDragHelper;->cancel()V

    :cond_0
    iget-object v11, p0, Lcom/android/dialer/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v11, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v11

    iput-object v11, p0, Lcom/android/dialer/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v11, p0, Lcom/android/dialer/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    :pswitch_0
    iget v11, p0, Lcom/android/dialer/widget/ViewDragHelper;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    const/4 v11, 0x1

    :goto_1
    return v11

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    const/4 v11, 0x0

    invoke-static {p1, v11}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    invoke-direct {p0, v9, v10, v7}, Lcom/android/dialer/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lcom/android/dialer/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    iget-object v11, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v8, v11, :cond_3

    iget v11, p0, Lcom/android/dialer/widget/ViewDragHelper;->mDragState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    invoke-virtual {p0, v8, v7}, Lcom/android/dialer/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    :cond_3
    iget-object v11, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v4, v11, v7

    iget v11, p0, Lcom/android/dialer/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    iget v12, p0, Lcom/android/dialer/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v12, v4

    invoke-virtual {v11, v12, v7}, Lcom/android/dialer/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    :pswitch_2
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    invoke-direct {p0, v9, v10, v7}, Lcom/android/dialer/widget/ViewDragHelper;->saveInitialMotion(FFI)V

    iget v11, p0, Lcom/android/dialer/widget/ViewDragHelper;->mDragState:I

    if-nez v11, :cond_4

    iget-object v11, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialEdgesTouched:[I

    aget v4, v11, v7

    iget v11, p0, Lcom/android/dialer/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v11, v4

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    iget v12, p0, Lcom/android/dialer/widget/ViewDragHelper;->mTrackingEdges:I

    and-int/2addr v12, v4

    invoke-virtual {v11, v12, v7}, Lcom/android/dialer/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V

    goto :goto_0

    :cond_4
    iget v11, p0, Lcom/android/dialer/widget/ViewDragHelper;->mDragState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lcom/android/dialer/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    iget-object v11, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne v8, v11, :cond_2

    invoke-virtual {p0, v8, v7}, Lcom/android/dialer/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v6

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_5

    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v9

    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v10

    iget-object v11, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialMotionX:[F

    aget v11, v11, v7

    sub-float v2, v9, v11

    iget-object v11, p0, Lcom/android/dialer/widget/ViewDragHelper;->mInitialMotionY:[F

    aget v11, v11, v7

    sub-float v3, v10, v11

    invoke-direct {p0, v2, v3, v7}, Lcom/android/dialer/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V

    iget v11, p0, Lcom/android/dialer/widget/ViewDragHelper;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    :cond_5
    invoke-direct {p0, p1}, Lcom/android/dialer/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_6
    float-to-int v11, v9

    float-to-int v12, v10

    invoke-virtual {p0, v11, v12}, Lcom/android/dialer/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_7

    invoke-direct {p0, v8, v2, v3}, Lcom/android/dialer/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {p0, v8, v7}, Lcom/android/dialer/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z

    move-result v11

    if-nez v11, :cond_5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :pswitch_4
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/dialer/widget/ViewDragHelper;->clearMotionHistory(I)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/android/dialer/widget/ViewDragHelper;->cancel()V

    goto/16 :goto_0

    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mActivePointerId:I

    invoke-direct {p0, p2, p3, v1, v1}, Lcom/android/dialer/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z

    move-result v0

    return v0
.end method

.method public startNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/widget/ViewDragHelper;->setDragState(I)V

    iput-object p1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    return-void
.end method

.method public stopNestedScroll(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    invoke-direct {p0, v0, v0}, Lcom/android/dialer/widget/ViewDragHelper;->dispatchViewReleased(FF)V

    return-void
.end method

.method tryCaptureViewForDrag(Landroid/view/View;I)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mActivePointerId:I

    if-ne v1, p2, :cond_0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/widget/ViewDragHelper;->mCallback:Lcom/android/dialer/widget/ViewDragHelper$Callback;

    invoke-virtual {v1, p1, p2}, Lcom/android/dialer/widget/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iput p2, p0, Lcom/android/dialer/widget/ViewDragHelper;->mActivePointerId:I

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
