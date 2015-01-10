.class public Lcom/android/keyguard/SlidingChallengeLayout;
.super Landroid/view/ViewGroup;
.source "SlidingChallengeLayout.java"

# interfaces
.implements Lcom/android/keyguard/ChallengeLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;,
        Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;
    }
.end annotation


# static fields
.field static final HANDLE_ALPHA:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/keyguard/SlidingChallengeLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final sHandleFadeInterpolator:Landroid/view/animation/Interpolator;

.field private static final sMotionInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivePointerId:I

.field private mBlockDrag:Z

.field private mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

.field private mChallengeBottomBound:I

.field private mChallengeInteractiveExternal:Z

.field private mChallengeInteractiveInternal:Z

.field private mChallengeOffset:F

.field private mChallengeShowing:Z

.field private mChallengeShowingTargetState:Z

.field private mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDragHandleClosedAbove:I

.field private mDragHandleClosedBelow:I

.field private mDragHandleEdgeSlop:I

.field private mDragHandleOpenAbove:I

.field private mDragHandleOpenBelow:I

.field private mDragging:Z

.field private mEdgeCaptured:Z

.field private mEnableChallengeDragging:Z

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private final mExpandChallengeClickListener:Landroid/view/View$OnClickListener;

.field private mExpandChallengeView:Landroid/view/View;

.field private mFader:Landroid/animation/ObjectAnimator;

.field mFrameAnimationTarget:F

.field private mGestureStartChallengeBottom:I

.field private mGestureStartX:F

.field private mGestureStartY:F

.field mHandleAlpha:F

.field private mHandleAnimation:Landroid/animation/ObjectAnimator;

.field private mHasGlowpad:Z

.field private mHasLayout:Z

.field private final mInsets:Landroid/graphics/Rect;

.field private mIsBouncing:Z

.field private mMaxVelocity:I

.field private mMinVelocity:I

.field private final mScrimClickListener:Landroid/view/View$OnClickListener;

.field private mScrimView:Landroid/view/View;

.field private mScrollListener:Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

.field private mScrollState:I

.field private final mScroller:Landroid/widget/Scroller;

.field private mTouchSlop:I

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWasChallengeShowing:Z

.field private mWidgetsView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/keyguard/SlidingChallengeLayout$1;

    const-string v1, "handleAlpha"

    invoke-direct {v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/keyguard/SlidingChallengeLayout;->HANDLE_ALPHA:Landroid/util/Property;

    new-instance v0, Lcom/android/keyguard/SlidingChallengeLayout$2;

    invoke-direct {v0}, Lcom/android/keyguard/SlidingChallengeLayout$2;-><init>()V

    sput-object v0, Lcom/android/keyguard/SlidingChallengeLayout;->sMotionInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/keyguard/SlidingChallengeLayout$3;

    invoke-direct {v0}, Lcom/android/keyguard/SlidingChallengeLayout$3;-><init>()V

    sput-object v0, Lcom/android/keyguard/SlidingChallengeLayout;->sHandleFadeInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/SlidingChallengeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/SlidingChallengeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v8, 0x0

    const/high16 v7, 0x41000000

    const/4 v6, 0x0

    const/high16 v5, 0x3f000000

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v3, 0x3f800000

    iput v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    iput-boolean v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    iput-boolean v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowingTargetState:Z

    iput-boolean v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mWasChallengeShowing:Z

    iput-boolean v8, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    const/4 v3, 0x1

    iput v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mFrameAnimationTarget:F

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iput-boolean v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeInteractiveExternal:Z

    iput-boolean v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    new-instance v3, Lcom/android/keyguard/SlidingChallengeLayout$4;

    invoke-direct {v3, p0}, Lcom/android/keyguard/SlidingChallengeLayout$4;-><init>(Lcom/android/keyguard/SlidingChallengeLayout;)V

    iput-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEndScrollRunnable:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/keyguard/SlidingChallengeLayout$5;

    invoke-direct {v3, p0}, Lcom/android/keyguard/SlidingChallengeLayout$5;-><init>(Lcom/android/keyguard/SlidingChallengeLayout;)V

    iput-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimClickListener:Landroid/view/View$OnClickListener;

    new-instance v3, Lcom/android/keyguard/SlidingChallengeLayout$6;

    invoke-direct {v3, p0}, Lcom/android/keyguard/SlidingChallengeLayout$6;-><init>(Lcom/android/keyguard/SlidingChallengeLayout;)V

    iput-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeClickListener:Landroid/view/View$OnClickListener;

    new-instance v3, Landroid/widget/Scroller;

    sget-object v4, Lcom/android/keyguard/SlidingChallengeLayout;->sMotionInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v3, p1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mMinVelocity:I

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mMaxVelocity:I

    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/keyguard/R$dimen;->kg_edge_swipe_region_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mTouchSlop:I

    iget v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mTouchSlop:I

    iget v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mTouchSlop:I

    mul-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mTouchSlopSquare:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v3, v7, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleClosedAbove:I

    mul-float v3, v6, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleClosedBelow:I

    mul-float v3, v7, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleOpenAbove:I

    mul-float v3, v6, v0

    add-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleOpenBelow:I

    sget v3, Lcom/android/keyguard/R$dimen;->kg_widget_pager_bottom_padding:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    invoke-virtual {p0, v8}, Lcom/android/keyguard/SlidingChallengeLayout;->setWillNotDraw(Z)V

    const/16 v3, 0x300

    invoke-virtual {p0, v3}, Lcom/android/keyguard/SlidingChallengeLayout;->setSystemUiVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/SlidingChallengeLayout;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/keyguard/SlidingChallengeLayout;

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/SlidingChallengeLayout;Z)V
    .locals 0
    .param p0    # Lcom/android/keyguard/SlidingChallengeLayout;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/keyguard/SlidingChallengeLayout;->onFadeStart(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/SlidingChallengeLayout;Z)V
    .locals 0
    .param p0    # Lcom/android/keyguard/SlidingChallengeLayout;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/keyguard/SlidingChallengeLayout;->onFadeEnd(Z)V

    return-void
.end method

.method private cancelTransitionsInProgress()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->completeChallengeScroll()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private crossedDragHandle(FFF)Z
    .locals 6
    .param p1    # F
    .param p2    # F
    .param p3    # F

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->getTop()I

    move-result v0

    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    move v1, v3

    :goto_0
    iget-boolean v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getDragHandleSizeAbove()I

    move-result v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    cmpg-float v5, p3, v5

    if-gez v5, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getDragHandleSizeBelow()I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-lez v5, :cond_1

    move v2, v3

    :goto_1
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    :goto_2
    return v3

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getDragHandleSizeBelow()I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    cmpl-float v5, p3, v5

    if-lez v5, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getDragHandleSizeAbove()I

    move-result v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    cmpg-float v5, p2, v5

    if-gez v5, :cond_3

    move v2, v3

    :goto_3
    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_3

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method private enableHardwareLayerForChallengeView()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private getChallengeAlpha()F
    .locals 3

    const/high16 v2, 0x3f800000

    iget v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    sub-float v0, v1, v2

    mul-float v1, v0, v0

    mul-float/2addr v1, v0

    add-float/2addr v1, v2

    return v1
.end method

.method private getChallengeBottom()I
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getBottom()I

    move-result v0

    goto :goto_0
.end method

.method private getChallengeMargin(Z)I
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHasGlowpad:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    goto :goto_0
.end method

.method private getDragHandleSizeAbove()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleOpenAbove:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleClosedAbove:I

    goto :goto_0
.end method

.method private getDragHandleSizeBelow()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleOpenBelow:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleClosedBelow:I

    goto :goto_0
.end method

.method private getLayoutBottom()I
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v2, v3

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    iget v0, v2, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method private getMaxChallengeBottom()I
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->getMeasuredHeight()I

    move-result v0

    add-int v2, v1, v0

    iget v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method private getMinChallengeBottom()I
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v0

    return v0
.end method

.method private isChallengeInteractionBlocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeInteractiveExternal:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEdgeSwipeBeginEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-ltz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragHandleEdgeSlop:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isInChallengeView(FF)Z
    .locals 1
    .param p1    # F
    .param p2    # F

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->isPointInView(FFLandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private isInDragHandle(FF)Z
    .locals 1
    .param p1    # F
    .param p2    # F

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->isPointInView(FFLandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private isPointInView(FFLandroid/view/View;)Z
    .locals 2
    .param p1    # F
    .param p2    # F
    .param p3    # Landroid/view/View;

    const/4 v0, 0x0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeChildMeasureSpec(II)I
    .locals 3
    .param p1    # I
    .param p2    # I

    packed-switch p2, :pswitch_data_0

    const/high16 v0, 0x40000000

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    return v2

    :pswitch_0
    const/high16 v0, -0x80000000

    move v1, p1

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x40000000

    move v1, p1

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private moveChallengeTo(I)Z
    .locals 8
    .param p1    # I

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-nez v4, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v1

    iget-object v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardSecurityContainer;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getMinChallengeBottom()I

    move-result v4

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getMaxChallengeBottom()I

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/high16 v4, 0x3f800000

    sub-int v5, p1, v1

    int-to-float v5, v5

    iget v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    sub-int v6, v0, v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float v2, v4, v5

    iput v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-nez v4, :cond_2

    invoke-direct {p0, v3}, Lcom/android/keyguard/SlidingChallengeLayout;->setChallengeShowing(Z)V

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardSecurityContainer;->getHeight()I

    move-result v6

    sub-int v6, p1, v6

    iget-object v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardSecurityContainer;->getRight()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->layout(IIII)V

    iget-object v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getChallengeAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardSecurityContainer;->getTop()I

    move-result v5

    invoke-interface {v4, v2, v5}, Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;->onScrollPositionChanged(FI)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->postInvalidateOnAnimation()V

    goto :goto_0
.end method

.method private onFadeEnd(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    invoke-direct {p0, p1}, Lcom/android/keyguard/SlidingChallengeLayout;->setChallengeShowing(Z)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getMaxChallengeBottom()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->moveChallengeTo(I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->setLayerType(ILandroid/graphics/Paint;)V

    iput-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    return-void
.end method

.method private onFadeStart(Z)V
    .locals 1
    .param p1    # Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->enableHardwareLayerForChallengeView()V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getMinChallengeBottom()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->moveChallengeTo(I)Z

    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    return-void
.end method

.method private resetTouch()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    iput-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragging:Z

    return-void
.end method

.method private sendInitialListenerUpdates()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getTop()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    iget v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    invoke-interface {v1, v2, v0}, Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;->onScrollPositionChanged(FI)V

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    iget v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollState:I

    invoke-interface {v1, v2}, Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;->onScrollStateChanged(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setChallengeShowing(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->requestAccessibilityFocus()Z

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_accessibility_unlock_area_expanded:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_accessibility_unlock_area_collapsed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private shouldEnableChallengeDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEnableChallengeDragging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showChallenge(I)V
    .locals 5
    .param p1    # I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mMinVelocity:I

    if-le v3, v4, :cond_1

    if-gez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(ZI)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    const/high16 v4, 0x3f000000

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_2

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private showChallenge(ZI)V
    .locals 3
    .param p1    # Z
    .param p2    # I

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->setChallengeShowing(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-eqz v1, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowingTargetState:Z

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v0

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {p0, v0, p2}, Lcom/android/keyguard/SlidingChallengeLayout;->animateChallengeTo(II)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    iget v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    sub-int v0, v1, v2

    goto :goto_1
.end method


# virtual methods
.method animateChallengeTo(II)V
    .locals 13
    .param p1    # I
    .param p2    # I

    const/4 v1, 0x0

    const/high16 v12, 0x3f800000

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->cancelTransitionsInProgress()V

    iput-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->enableHardwareLayerForChallengeView()V

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getBottom()I

    move-result v2

    sub-int v4, p1, v2

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->completeChallengeScroll()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getHeight()I

    move-result v7

    div-int/lit8 v10, v7, 0x2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v12

    int-to-float v3, v7

    div-float/2addr v0, v3

    invoke-static {v12, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    int-to-float v0, v10

    int-to-float v3, v10

    invoke-virtual {p0, v9}, Lcom/android/keyguard/SlidingChallengeLayout;->distanceInfluenceForSnapDuration(F)F

    move-result v11

    mul-float/2addr v3, v11

    add-float v8, v0, v3

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-lez p2, :cond_2

    const/high16 v0, 0x447a0000

    int-to-float v3, p2

    div-float v3, v8, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v5, v0, 0x4

    :goto_1
    const/16 v0, 0x258

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->postInvalidateOnAnimation()V

    goto :goto_0

    :cond_2
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v3, v7

    div-float v6, v0, v3

    add-float v0, v6, v12

    const/high16 v3, 0x42c80000

    mul-float/2addr v0, v3

    float-to-int v5, v0

    goto :goto_1
.end method

.method animateHandle(Z)V
    .locals 4
    .param p1    # Z

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000

    :goto_0
    iget v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHandleAlpha:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/keyguard/SlidingChallengeLayout;->HANDLE_ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    sget-object v2, Lcom/android/keyguard/SlidingChallengeLayout;->sHandleFadeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHandleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1    # Landroid/view/ViewGroup$LayoutParams;

    instance-of v0, p1, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    return v0
.end method

.method completeChallengeScroll()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowingTargetState:Z

    invoke-direct {p0, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->setChallengeShowing(Z)V

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000

    :goto_0
    iput v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    invoke-virtual {p0, v2}, Lcom/android/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeInteractiveInternal:Z

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->setLayerType(ILandroid/graphics/Paint;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->computeScroll()V

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v0, :cond_1

    const-string v0, "SlidingChallengeLayout"

    const-string v1, "Challenge view missing in computeScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->moveChallengeTo(I)Z

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mWidgetsView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/keyguard/SlidingChallengeLayout;->isEdgeSwipeBeginEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    iget-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mWidgetsView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int v1, v2, v3

    iput-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    :cond_2
    if-nez v1, :cond_3

    iget-boolean v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    if-nez v2, :cond_3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :cond_3
    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    :cond_4
    iput-boolean v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEdgeCaptured:Z

    :cond_5
    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
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

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public fadeChallenge(Z)V
    .locals 6
    .param p1    # Z

    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->cancelTransitionsInProgress()V

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000

    :goto_0
    if-eqz p1, :cond_2

    const/16 v1, 0xa0

    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const-string v3, "alpha"

    const/4 v4, 0x1

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/keyguard/SlidingChallengeLayout$9;

    invoke-direct {v3, p0, p1}, Lcom/android/keyguard/SlidingChallengeLayout$9;-><init>(Lcom/android/keyguard/SlidingChallengeLayout;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mFader:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x64

    goto :goto_1
.end method

.method public fadeInChallenge()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->fadeChallenge(Z)V

    return-void
.end method

.method public fadeOutChallenge()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->fadeChallenge(Z)V

    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    invoke-direct {v0}, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1    # Landroid/util/AttributeSet;

    new-instance v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1    # Landroid/view/ViewGroup$LayoutParams;

    instance-of v0, p1, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    check-cast p1, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getBouncerAnimationDuration()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public getMaxChallengeTop()I
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->getMeasuredHeight()I

    move-result v0

    sub-int v2, v1, v0

    iget-object v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    goto :goto_0
.end method

.method public hideBouncer()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getSystemUiVisibility()I

    move-result v1

    const v2, -0x2000001

    and-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->setSystemUiVisibility(I)V

    iget-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mWasChallengeShowing:Z

    if-nez v1, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    :cond_2
    iput-boolean v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    const-string v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v1, Lcom/android/keyguard/SlidingChallengeLayout$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/SlidingChallengeLayout$8;-><init>(Lcom/android/keyguard/SlidingChallengeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/16 v2, 0xfa

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->hideBouncer(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    invoke-interface {v1, v5}, Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;->onBouncerStateChanged(Z)V

    goto :goto_0
.end method

.method public isBouncing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    return v0
.end method

.method public isChallengeOverlapping()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    return v0
.end method

.method public isChallengeShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1    # Landroid/view/MotionEvent;

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    iget-boolean v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    if-nez v5, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeInteractionBlocked()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iput v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    iput-boolean v8, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragging:Z

    :cond_3
    iget-boolean v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragging:Z

    return v5

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    iput-boolean v8, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->resetTouch()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-boolean v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v5, :cond_7

    iget v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    if-ne v5, v7, :cond_7

    iget v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    invoke-direct {p0, v3, v4, v5}, Lcom/android/keyguard/SlidingChallengeLayout;->crossedDragHandle(FFF)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->shouldEnableChallengeDragging()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    invoke-direct {p0, v3, v4}, Lcom/android/keyguard/SlidingChallengeLayout;->isInChallengeView(FF)Z

    move-result v5

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    iput v3, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartX:F

    iput v4, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getChallengeBottom()I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartChallengeBottom:I

    iput-boolean v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragging:Z

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->enableHardwareLayerForChallengeView()V

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    iget-boolean v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v5, :cond_6

    invoke-direct {p0, v3, v4}, Lcom/android/keyguard/SlidingChallengeLayout;->isInChallengeView(FF)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->shouldEnableChallengeDragging()Z

    move-result v5

    if-eqz v5, :cond_6

    iput-boolean v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 27
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getPaddingLeft()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getPaddingTop()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getPaddingRight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getPaddingBottom()I

    move-result v15

    sub-int v21, p4, p2

    sub-int v10, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getChildCount()I

    move-result v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/keyguard/SlidingChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v22

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    iget v0, v14, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    add-int v22, v16, v21

    sub-int v22, v22, v17

    div-int/lit8 v5, v22, 0x2

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    div-int/lit8 v22, v8, 0x2

    sub-int v13, v5, v22

    sub-int v22, v10, v15

    iget v0, v14, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->bottomMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v12, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    move/from16 v22, v0

    sub-int v22, v7, v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x3f800000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeOffset:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v4, v12, v22

    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getChallengeAlpha()F

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    sub-int v22, v4, v7

    add-int v23, v13, v8

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v13, v0, v1, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_1
    iget v0, v14, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    move/from16 v22, v0

    const/16 v23, 0x6

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    add-int v22, v16, v21

    sub-int v22, v22, v17

    div-int/lit8 v5, v22, 0x2

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    sub-int v13, v5, v22

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    add-int v19, v13, v22

    sub-int v22, v10, v15

    iget v0, v14, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->bottomMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v4, v22, v23

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    sub-int v20, v4, v22

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v6, v13, v0, v1, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    :cond_2
    iget v0, v14, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getMeasuredWidth()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getMeasuredHeight()I

    move-result v25

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    :cond_3
    iget v0, v14, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->leftMargin:I

    move/from16 v22, v0

    add-int v22, v22, v16

    iget v0, v14, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->topMargin:I

    move/from16 v23, v0

    add-int v23, v23, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v23, v23, v24

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    add-int v24, v24, v16

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    add-int v25, v25, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    move/from16 v22, v0

    if-nez v22, :cond_5

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 27
    .param p1    # I
    .param p2    # I

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x40000000

    if-ne v2, v3, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x40000000

    if-eq v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "SlidingChallengeLayout must be measured with an exact size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v24

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1, v15}, Lcom/android/keyguard/SlidingChallengeLayout;->setMeasuredDimension(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v2, v15, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int v17, v2, v3

    const/high16 v2, 0x40000000

    move/from16 v0, v17

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    move-object/from16 v22, v0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getChildCount()I

    move-result v13

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v0, v13, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "There may only be one child with layout_isChallenge=\"true\""

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    instance-of v2, v8, Lcom/android/keyguard/KeyguardSecurityContainer;

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Challenge must be a KeyguardSecurityContainer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object v2, v8

    check-cast v2, Lcom/android/keyguard/KeyguardSecurityContainer;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    move-object/from16 v0, v21

    if-eq v2, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->setVisibility(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-nez v2, :cond_5

    sget v2, Lcom/android/keyguard/R$id;->keyguard_selector_view:I

    invoke-virtual {v8, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mHasGlowpad:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/keyguard/SlidingChallengeLayout;->getChallengeMargin(Z)I

    move-result v2

    move-object/from16 v0, v19

    iput v2, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, v19

    iput v2, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->leftMargin:I

    :cond_5
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_6
    const/4 v2, 0x4

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    :cond_8
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "There may only be one child with layout_childType=\"expandChallengeHandle\""

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    move-object/from16 v0, v22

    if-eq v2, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-eqz v2, :cond_a

    const/4 v2, 0x4

    :goto_4
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    :cond_b
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/keyguard/SlidingChallengeLayout;->setScrimView(Landroid/view/View;)V

    goto :goto_3

    :cond_c
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mWidgetsView:Landroid/view/View;

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_f

    move/from16 v6, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getRootView()Landroid/view/View;

    move-result-object v23

    if-eqz v23, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v25, v2, v3

    sub-int v14, v25, v17

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->maxHeight:I

    sub-int v20, v2, v14

    if-lez v20, :cond_e

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/SlidingChallengeLayout;->makeChildMeasureSpec(II)I

    move-result v6

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/keyguard/SlidingChallengeLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_f
    const/16 v16, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v0, v13, :cond_14

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_11

    :cond_10
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eq v8, v2, :cond_10

    move/from16 v9, p1

    move/from16 v11, v18

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getRootView()Landroid/view/View;

    move-result-object v23

    if-eqz v23, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v25, v2, v3

    const/high16 v2, 0x40000000

    move/from16 v0, v26

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/high16 v2, 0x40000000

    move/from16 v0, v25

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    :cond_12
    :goto_7
    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/keyguard/SlidingChallengeLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_6

    :cond_13
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/keyguard/SlidingChallengeLayout$LayoutParams;->childType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_12

    move/from16 v9, p1

    move/from16 v11, p2

    goto :goto_7

    :cond_14
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1    # I
    .param p2    # Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1    # Landroid/view/MotionEvent;

    const/4 v9, 0x0

    const/4 v10, 0x1

    iget-object v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return v10

    :pswitch_1
    iput-boolean v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    goto :goto_0

    :pswitch_2
    iget-boolean v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragging:Z

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeInteractionBlocked()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-direct {p0, v9}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->resetTouch()V

    goto :goto_0

    :pswitch_3
    iget v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    if-ne v7, v8, :cond_1

    :pswitch_4
    iget-boolean v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragging:Z

    if-eqz v7, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeInteractionBlocked()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    iget v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mMaxVelocity:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v8, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    invoke-virtual {v7, v8}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v7

    float-to-int v7, v7

    invoke-direct {p0, v7}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->resetTouch()V

    goto :goto_0

    :pswitch_5
    iget-boolean v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragging:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-nez v7, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/SlidingChallengeLayout;->isInDragHandle(FF)Z

    move-result v7

    if-nez v7, :cond_4

    iget v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    invoke-direct {p0, v5, v6, v7}, Lcom/android/keyguard/SlidingChallengeLayout;->crossedDragHandle(FFF)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/SlidingChallengeLayout;->isInChallengeView(FF)Z

    move-result v7

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollState:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    :cond_4
    iget v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_6

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeInteractionBlocked()Z

    move-result v7

    if-nez v7, :cond_6

    iput v5, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartX:F

    iput v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getChallengeBottom()I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartChallengeBottom:I

    iput-boolean v10, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragging:Z

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->enableHardwareLayerForChallengeView()V

    :cond_5
    iget-boolean v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mDragging:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0, v10}, Lcom/android/keyguard/SlidingChallengeLayout;->setScrollState(I)V

    iget v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-gez v3, :cond_7

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->resetTouch()V

    invoke-direct {p0, v9}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(I)V

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartY:F

    sub-float v7, v6, v7

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getLayoutBottom()I

    move-result v8

    iget v9, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeBottomBound:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v7, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mGestureStartChallengeBottom:I

    float-to-int v8, v4

    add-int/2addr v7, v8

    invoke-direct {p0, v7}, Lcom/android/keyguard/SlidingChallengeLayout;->moveChallengeTo(I)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->hideBouncer()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public setChallengeInteractive(Z)V
    .locals 1
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeInteractiveExternal:Z

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setEnableChallengeDragging(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mEnableChallengeDragging:Z

    return-void
.end method

.method public setHandleAlpha(F)V
    .locals 1
    .param p1    # F

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mExpandChallengeView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setOnBouncerStateChangedListener(Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    iput-object p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    return-void
.end method

.method public setOnChallengeScrolledListener(Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;)V
    .locals 1
    .param p1    # Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    iput-object p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mHasLayout:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->sendInitialListenerUpdates()V

    :cond_0
    return-void
.end method

.method setScrimView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method setScrollState(I)V
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollState:I

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->animateHandle(Z)V

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrollListener:Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;

    invoke-interface {v0, p1}, Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;->onScrollStateChanged(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showBouncer()V
    .locals 7

    const/4 v6, 0x1

    iget-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/SlidingChallengeLayout;->getSystemUiVisibility()I

    move-result v1

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->setSystemUiVisibility(I)V

    iget-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeShowing:Z

    iput-boolean v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mWasChallengeShowing:Z

    iput-boolean v6, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mIsBouncing:Z

    invoke-virtual {p0, v6}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v6, [F

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v1, Lcom/android/keyguard/SlidingChallengeLayout$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/SlidingChallengeLayout$7;-><init>(Lcom/android/keyguard/SlidingChallengeLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mChallengeView:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/16 v2, 0xfa

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showBouncer(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBouncerListener:Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;

    invoke-interface {v1, v6}, Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;->onBouncerStateChanged(Z)V

    goto :goto_0
.end method

.method public showChallenge(Z)V
    .locals 1
    .param p1    # Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(ZI)V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/SlidingChallengeLayout;->mBlockDrag:Z

    :cond_0
    return-void
.end method
