.class public Lcom/android/dialer/widget/OverlappingPaneLayout;
.super Landroid/view/ViewGroup;
.source "OverlappingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/widget/OverlappingPaneLayout$1;,
        Lcom/android/dialer/widget/OverlappingPaneLayout$AccessibilityDelegate;,
        Lcom/android/dialer/widget/OverlappingPaneLayout$SavedState;,
        Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;,
        Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;,
        Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;
    }
.end annotation


# instance fields
.field private mCanSlide:Z

.field private mCapturableView:Landroid/view/View;

.field private final mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

.field private mFirstLayout:Z

.field private mInNestedPreScrollDownwards:Z

.field private mInNestedPreScrollUpwards:Z

.field private mInUpwardsPreFling:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mIntermediateOffset:I

.field private mIsInNestedFling:Z

.field private mIsInNestedScroll:Z

.field private mIsUnableToDrag:Z

.field private final mOverhangSize:I

.field private mPanelSlideCallbacks:Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;

.field private mPreservedOpenState:Z

.field private final mReleaseScrollSlop:I

.field private mSlideOffset:F

.field private mSlideOffsetPx:I

.field private mSlideRange:I

.field private mSlideableView:Landroid/view/View;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/widget/OverlappingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dialer/widget/OverlappingPaneLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f000000

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIntermediateOffset:I

    iput-boolean v4, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mFirstLayout:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42000000

    mul-float/2addr v1, v0

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mOverhangSize:I

    invoke-virtual {p0, v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->setWillNotDraw(Z)V

    new-instance v1, Lcom/android/dialer/widget/OverlappingPaneLayout$AccessibilityDelegate;

    invoke-direct {v1, p0}, Lcom/android/dialer/widget/OverlappingPaneLayout$AccessibilityDelegate;-><init>(Lcom/android/dialer/widget/OverlappingPaneLayout;)V

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    new-instance v1, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;-><init>(Lcom/android/dialer/widget/OverlappingPaneLayout;Lcom/android/dialer/widget/OverlappingPaneLayout$1;)V

    invoke-static {p0, v3, v1}, Lcom/android/dialer/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/android/dialer/widget/ViewDragHelper$Callback;)Lcom/android/dialer/widget/ViewDragHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

    const/high16 v2, 0x43c80000

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Lcom/android/dialer/widget/ViewDragHelper;->setMinVelocity(F)V

    invoke-virtual {p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mReleaseScrollSlop:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/dialer/widget/OverlappingPaneLayout;)Z
    .locals 1
    .param p0    # Lcom/android/dialer/widget/OverlappingPaneLayout;

    iget-boolean v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsUnableToDrag:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/dialer/widget/OverlappingPaneLayout;)I
    .locals 1
    .param p0    # Lcom/android/dialer/widget/OverlappingPaneLayout;

    iget v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffsetPx:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/dialer/widget/OverlappingPaneLayout;)I
    .locals 1
    .param p0    # Lcom/android/dialer/widget/OverlappingPaneLayout;

    iget v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideRange:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/dialer/widget/OverlappingPaneLayout;)I
    .locals 1
    .param p0    # Lcom/android/dialer/widget/OverlappingPaneLayout;

    iget v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIntermediateOffset:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/dialer/widget/OverlappingPaneLayout;)Z
    .locals 1
    .param p0    # Lcom/android/dialer/widget/OverlappingPaneLayout;

    iget-boolean v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mInNestedPreScrollDownwards:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/dialer/widget/OverlappingPaneLayout;Z)Z
    .locals 0
    .param p0    # Lcom/android/dialer/widget/OverlappingPaneLayout;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mInNestedPreScrollDownwards:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/dialer/widget/OverlappingPaneLayout;)Z
    .locals 1
    .param p0    # Lcom/android/dialer/widget/OverlappingPaneLayout;

    iget-boolean v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mInNestedPreScrollUpwards:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/dialer/widget/OverlappingPaneLayout;Z)Z
    .locals 0
    .param p0    # Lcom/android/dialer/widget/OverlappingPaneLayout;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mInNestedPreScrollUpwards:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/dialer/widget/OverlappingPaneLayout;)I
    .locals 1
    .param p0    # Lcom/android/dialer/widget/OverlappingPaneLayout;

    iget v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mReleaseScrollSlop:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/dialer/widget/OverlappingPaneLayout;)Z
    .locals 1
    .param p0    # Lcom/android/dialer/widget/OverlappingPaneLayout;

    iget-boolean v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsInNestedScroll:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/dialer/widget/OverlappingPaneLayout;)Lcom/android/dialer/widget/ViewDragHelper;
    .locals 1
    .param p0    # Lcom/android/dialer/widget/OverlappingPaneLayout;

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/dialer/widget/OverlappingPaneLayout;)F
    .locals 1
    .param p0    # Lcom/android/dialer/widget/OverlappingPaneLayout;

    iget v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffset:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/dialer/widget/OverlappingPaneLayout;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/dialer/widget/OverlappingPaneLayout;

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/dialer/widget/OverlappingPaneLayout;Z)Z
    .locals 0
    .param p0    # Lcom/android/dialer/widget/OverlappingPaneLayout;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mPreservedOpenState:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/dialer/widget/OverlappingPaneLayout;)Z
    .locals 1
    .param p0    # Lcom/android/dialer/widget/OverlappingPaneLayout;

    iget-boolean v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsInNestedFling:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/dialer/widget/OverlappingPaneLayout;Z)Z
    .locals 0
    .param p0    # Lcom/android/dialer/widget/OverlappingPaneLayout;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsInNestedFling:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/dialer/widget/OverlappingPaneLayout;)Z
    .locals 1
    .param p0    # Lcom/android/dialer/widget/OverlappingPaneLayout;

    iget-boolean v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mInUpwardsPreFling:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/dialer/widget/OverlappingPaneLayout;)Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;
    .locals 1
    .param p0    # Lcom/android/dialer/widget/OverlappingPaneLayout;

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mPanelSlideCallbacks:Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/dialer/widget/OverlappingPaneLayout;I)V
    .locals 0
    .param p0    # Lcom/android/dialer/widget/OverlappingPaneLayout;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->onPanelDragged(I)V

    return-void
.end method

.method private closePane(Landroid/view/View;I)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mFirstLayout:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->smoothSlideTo(FI)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-boolean v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mPreservedOpenState:Z

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isCapturableViewUnder(II)Z
    .locals 9
    .param p1    # I
    .param p2    # I

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mCapturableView:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mCapturableView:Landroid/view/View;

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return v6

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    goto :goto_0

    :cond_1
    new-array v4, v8, [I

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v1, v8, [I

    invoke-virtual {p0, v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getLocationOnScreen([I)V

    aget v7, v1, v6

    add-int v2, v7, p1

    aget v7, v1, v5

    add-int v3, v7, p2

    aget v7, v4, v6

    if-lt v2, v7, :cond_2

    aget v7, v4, v6

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    if-ge v2, v7, :cond_2

    aget v7, v4, v5

    if-lt v3, v7, :cond_2

    aget v7, v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    if-ge v3, v7, :cond_2

    :goto_2
    move v6, v5

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2
.end method

.method private onPanelDragged(I)V
    .locals 4
    .param p1    # I

    iget-object v3, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffset:F

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;

    iget v1, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getPaddingTop()I

    move-result v3

    add-int v2, v3, v1

    sub-int v3, p1, v2

    invoke-direct {p0, v3}, Lcom/android/dialer/widget/OverlappingPaneLayout;->updateSlideOffset(I)V

    iget-object v3, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/dialer/widget/OverlappingPaneLayout;->dispatchOnPanelSlide(Landroid/view/View;)V

    goto :goto_0
.end method

.method private openPane(Landroid/view/View;I)Z
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # I

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mFirstLayout:Z

    if-nez v1, :cond_0

    const/high16 v1, 0x3f800000

    invoke-virtual {p0, v1, p2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->smoothSlideTo(FI)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iput-boolean v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mPreservedOpenState:Z

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSlideOffset(I)V
    .locals 2
    .param p1    # I

    iput p1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffsetPx:I

    iget v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffsetPx:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideRange:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffset:F

    return-void
.end method

.method private static viewIsOpaque(Landroid/view/View;)Z
    .locals 5
    .param p0    # Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isOpaque(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1    # Landroid/view/ViewGroup$LayoutParams;

    instance-of v0, p1, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public closePane()Z
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->closePane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

    invoke-virtual {v0}, Lcom/android/dialer/widget/ViewDragHelper;->abort()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_0
.end method

.method dispatchOnPanelClosed(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mPanelSlideCallbacks:Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;

    invoke-interface {v0, p1}, Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;->onPanelClosed(Landroid/view/View;)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method dispatchOnPanelOpened(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mPanelSlideCallbacks:Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;

    invoke-interface {v0, p1}, Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;->onPanelOpened(Landroid/view/View;)V

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method dispatchOnPanelSlide(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mPanelSlideCallbacks:Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;

    iget v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffset:F

    invoke-interface {v0, p1, v1}, Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;->onPanelSlide(Landroid/view/View;F)V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # Landroid/view/View;
    .param p3    # J

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->save(I)I

    move-result v2

    iget-boolean v3, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mCanSlide:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->slideable:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    iget-object v3, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;

    invoke-direct {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1    # Landroid/util/AttributeSet;

    new-instance v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1    # Landroid/view/ViewGroup$LayoutParams;

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public isOpen()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mCanSlide:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSlideable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mCanSlide:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mFirstLayout:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1    # Landroid/view/MotionEvent;

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    iget-boolean v8, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mCanSlide:Z

    if-nez v8, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getChildCount()I

    move-result v8

    if-le v8, v9, :cond_0

    invoke-virtual {p0, v9}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v8, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v12, v12

    invoke-virtual {v8, v4, v11, v12}, Lcom/android/dialer/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v8

    if-nez v8, :cond_4

    move v8, v9

    :goto_0
    iput-boolean v8, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mPreservedOpenState:Z

    :cond_0
    iget-boolean v8, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mCanSlide:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsUnableToDrag:Z

    if-eqz v8, :cond_5

    if-eqz v0, :cond_5

    :cond_1
    iget-boolean v8, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsInNestedScroll:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

    invoke-virtual {v8}, Lcom/android/dialer/widget/ViewDragHelper;->cancel()V

    :cond_2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    :cond_3
    :goto_1
    return v10

    :cond_4
    move v8, v10

    goto :goto_0

    :cond_5
    const/4 v8, 0x3

    if-eq v0, v8, :cond_6

    if-ne v0, v9, :cond_7

    :cond_6
    iget-boolean v8, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsInNestedScroll:Z

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

    invoke-virtual {v8}, Lcom/android/dialer/widget/ViewDragHelper;->cancel()V

    goto :goto_1

    :cond_7
    packed-switch v0, :pswitch_data_0

    :cond_8
    :goto_2
    :pswitch_0
    iget-object v8, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

    invoke-virtual {v8, p1}, Lcom/android/dialer/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    move v10, v3

    goto :goto_1

    :pswitch_1
    iput-boolean v10, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsUnableToDrag:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v6, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mInitialMotionX:F

    iput v7, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mInitialMotionY:F

    goto :goto_2

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mInitialMotionX:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v8, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mInitialMotionY:F

    sub-float v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v8, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

    invoke-virtual {v8}, Lcom/android/dialer/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    int-to-float v8, v5

    cmpl-float v8, v2, v8

    if-lez v8, :cond_9

    cmpl-float v8, v1, v2

    if-gtz v8, :cond_a

    :cond_9
    float-to-int v8, v6

    float-to-int v11, v7

    invoke-direct {p0, v8, v11}, Lcom/android/dialer/widget/OverlappingPaneLayout;->isCapturableViewUnder(II)Z

    move-result v8

    if-nez v8, :cond_8

    :cond_a
    iget-boolean v8, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsInNestedScroll:Z

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

    invoke-virtual {v8}, Lcom/android/dialer/widget/ViewDragHelper;->cancel()V

    :cond_b
    iput-boolean v9, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsUnableToDrag:Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 23
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/android/dialer/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    sub-int v9, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getPaddingTop()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getPaddingBottom()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getPaddingLeft()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getChildCount()I

    move-result v4

    move/from16 v20, v17

    move/from16 v14, v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mFirstLayout:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mCanSlide:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mPreservedOpenState:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    const/high16 v21, 0x3f800000

    :goto_0
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffset:F

    :cond_0
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v4, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    const/16 v21, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    iget-boolean v0, v11, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    iget v0, v11, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->topMargin:I

    move/from16 v21, v0

    iget v0, v11, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->bottomMargin:I

    move/from16 v22, v0

    add-int v13, v21, v22

    sub-int v21, v9, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mOverhangSize:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    sub-int v21, v21, v20

    sub-int v19, v21, v13

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideRange:I

    iget v12, v11, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->topMargin:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffset:F

    move/from16 v22, v0

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v21, v18, v12

    add-int v20, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->updateSlideOffset(I)V

    :goto_3
    move/from16 v8, v20

    add-int v3, v8, v5

    move/from16 v6, v16

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    add-int v7, v6, v21

    invoke-virtual {v2, v6, v8, v7, v3}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v21

    add-int v14, v14, v21

    goto :goto_2

    :cond_3
    move/from16 v20, v14

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mFirstLayout:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    :cond_5
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/dialer/widget/OverlappingPaneLayout;->mFirstLayout:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 31
    .param p1    # I
    .param p2    # I

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v27

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v28

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    const/high16 v29, 0x40000000

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->isInEditMode()Z

    move-result v29

    if-eqz v29, :cond_4

    const/high16 v29, -0x80000000

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    const/high16 v27, 0x40000000

    :cond_0
    :goto_0
    const/16 v18, 0x0

    const/16 v20, -0x1

    sparse-switch v27, :sswitch_data_0

    :goto_1
    const/16 v26, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getPaddingTop()I

    move-result v29

    sub-int v29, v15, v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getPaddingBottom()I

    move-result v30

    sub-int v12, v29, v30

    move v14, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getChildCount()I

    move-result v6

    const/16 v29, 0x2

    move/from16 v0, v29

    if-le v6, v0, :cond_1

    const-string v29, "SlidingPaneLayout"

    const-string v30, "onMeasure: More than two child views are not supported."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v0, v6, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    :cond_2
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_3
    if-nez v27, :cond_0

    const/high16 v27, 0x40000000

    const/16 v28, 0x12c

    goto :goto_0

    :cond_4
    new-instance v29, Ljava/lang/IllegalStateException;

    const-string v30, "Width must have an exact value or MATCH_PARENT"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29

    :cond_5
    if-nez v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->isInEditMode()Z

    move-result v29

    if-eqz v29, :cond_6

    if-nez v13, :cond_0

    const/high16 v13, -0x80000000

    const/16 v15, 0x12c

    goto :goto_0

    :cond_6
    new-instance v29, Ljava/lang/IllegalStateException;

    const-string v30, "Height must not be UNSPECIFIED"

    invoke-direct/range {v29 .. v30}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v29

    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getPaddingLeft()I

    move-result v29

    sub-int v29, v28, v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getPaddingRight()I

    move-result v30

    sub-int v20, v29, v30

    move/from16 v18, v20

    goto :goto_1

    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getPaddingLeft()I

    move-result v29

    sub-int v29, v28, v29

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getPaddingRight()I

    move-result v30

    sub-int v20, v29, v30

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_8

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    add-float v26, v26, v29

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    if-eqz v29, :cond_2

    :cond_8
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->topMargin:I

    move/from16 v29, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->bottomMargin:I

    move/from16 v30, v0

    add-int v25, v29, v30

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_a

    sub-int v29, v12, v25

    const/high16 v30, -0x80000000

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    :goto_4
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_c

    const/high16 v29, -0x80000000

    move/from16 v0, v20

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    :goto_5
    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/high16 v29, -0x80000000

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    move/from16 v0, v18

    if-le v9, v0, :cond_9

    move/from16 v0, v20

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    :cond_9
    sub-int/2addr v14, v7

    if-gez v14, :cond_e

    const/16 v29, 0x1

    :goto_6
    move/from16 v0, v29

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->slideable:Z

    or-int v4, v4, v29

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->slideable:Z

    move/from16 v29, v0

    if-eqz v29, :cond_2

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_b

    sub-int v29, v12, v25

    const/high16 v30, 0x40000000

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_4

    :cond_b
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    goto :goto_4

    :cond_c
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    const/high16 v29, 0x40000000

    move/from16 v0, v20

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_5

    :cond_d
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto/16 :goto_5

    :cond_e
    const/16 v29, 0x0

    goto :goto_6

    :cond_f
    if-nez v4, :cond_10

    const/16 v29, 0x0

    cmpl-float v29, v26, v29

    if-lez v29, :cond_1e

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mOverhangSize:I

    move/from16 v29, v0

    sub-int v11, v12, v29

    const/16 v17, 0x0

    :goto_7
    move/from16 v0, v17

    if-ge v0, v6, :cond_1e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_12

    :cond_11
    :goto_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    :cond_12
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v29

    const/16 v30, 0x8

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_11

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    if-nez v29, :cond_14

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_14

    const/16 v24, 0x1

    :goto_9
    if-eqz v24, :cond_15

    const/16 v21, 0x0

    :goto_a
    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    if-eq v5, v0, :cond_19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    if-gez v29, :cond_11

    move/from16 v0, v21

    if-gt v0, v11, :cond_13

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_11

    :cond_13
    if-eqz v24, :cond_18

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_16

    const/high16 v29, -0x80000000

    move/from16 v0, v20

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    :goto_b
    const/high16 v29, 0x40000000

    move/from16 v0, v29

    invoke-static {v11, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    goto :goto_8

    :cond_14
    const/16 v24, 0x0

    goto :goto_9

    :cond_15
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    goto :goto_a

    :cond_16
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_17

    const/high16 v29, 0x40000000

    move/from16 v0, v20

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_b

    :cond_17
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_b

    :cond_18
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    const/high16 v30, 0x40000000

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_b

    :cond_19
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_11

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->height:I

    move/from16 v29, v0

    if-nez v29, :cond_1c

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/16 v30, -0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1a

    const/high16 v29, -0x80000000

    move/from16 v0, v20

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    :goto_c
    if-eqz v4, :cond_1d

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->topMargin:I

    move/from16 v29, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->bottomMargin:I

    move/from16 v30, v0

    add-int v25, v29, v30

    sub-int v23, v12, v25

    const/high16 v29, 0x40000000

    move/from16 v0, v23

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_11

    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    goto/16 :goto_8

    :cond_1a
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1b

    const/high16 v29, 0x40000000

    move/from16 v0, v20

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_c

    :cond_1b
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->width:I

    move/from16 v29, v0

    const/high16 v30, 0x40000000

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_c

    :cond_1c
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    const/high16 v30, 0x40000000

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_c

    :cond_1d
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v16

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->weight:F

    move/from16 v29, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    div-float v29, v29, v26

    move/from16 v0, v29

    float-to-int v3, v0

    add-int v29, v21, v3

    const/high16 v30, 0x40000000

    invoke-static/range {v29 .. v30}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v5, v10, v8}, Landroid/view/View;->measure(II)V

    goto/16 :goto_8

    :cond_1e
    move/from16 v21, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getPaddingLeft()I

    move-result v29

    add-int v29, v29, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getPaddingRight()I

    move-result v30

    add-int v22, v29, v30

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->setMeasuredDimension(II)V

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mCanSlide:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/dialer/widget/ViewDragHelper;->getViewDragState()I

    move-result v29

    if-eqz v29, :cond_1f

    if-nez v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/dialer/widget/ViewDragHelper;->abort()V

    :cond_1f
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 5
    .param p1    # Landroid/view/View;
    .param p2    # F
    .param p3    # F

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    cmpl-float v0, p3, v4

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffsetPx:I

    if-nez v0, :cond_3

    :cond_0
    cmpg-float v0, p3, v4

    if-gez v0, :cond_1

    iget v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffsetPx:I

    iget v3, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIntermediateOffset:I

    if-lt v0, v3, :cond_3

    :cond_1
    cmpg-float v0, p3, v4

    if-gez v0, :cond_2

    iget v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffsetPx:I

    iget v3, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideRange:I

    if-ge v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mPanelSlideCallbacks:Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;

    invoke-interface {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;->isScrollableChildUnscrolled()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :cond_3
    cmpl-float v0, p3, v4

    if-lez v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mInUpwardsPreFling:Z

    iput-boolean v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsInNestedFling:Z

    iput-boolean v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsInNestedScroll:Z

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    neg-float v3, p3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Lcom/android/dialer/widget/ViewDragHelper;->processNestedFling(Landroid/view/View;I)V

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I
    .param p4    # [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_0

    :goto_0
    return-void

    :cond_0
    if-gez p3, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mInNestedPreScrollDownwards:Z

    if-lez p3, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mInNestedPreScrollUpwards:Z

    iput-boolean v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsInNestedFling:Z

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    neg-int v3, p3

    invoke-virtual {v0, v1, v2, v3, p4}, Lcom/android/dialer/widget/ViewDragHelper;->processNestedScroll(Landroid/view/View;II[I)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 5
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsInNestedFling:Z

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    neg-int v2, p5

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/dialer/widget/ViewDragHelper;->processNestedScroll(Landroid/view/View;II[I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1    # Landroid/os/Parcelable;

    move-object v0, p1

    check-cast v0, Lcom/android/dialer/widget/OverlappingPaneLayout$SavedState;

    invoke-virtual {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$SavedState;->isOpen:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->openPane()Z

    :goto_0
    iget-boolean v1, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$SavedState;->isOpen:Z

    iput-boolean v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mPreservedOpenState:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->closePane()Z

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Lcom/android/dialer/widget/OverlappingPaneLayout$SavedState;

    invoke-direct {v0, v1}, Lcom/android/dialer/widget/OverlappingPaneLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->isSlideable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->isOpen()Z

    move-result v2

    :goto_0
    iput-boolean v2, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$SavedState;->isOpen:Z

    return-object v0

    :cond_0
    iget-boolean v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mPreservedOpenState:Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p2, p4, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mFirstLayout:Z

    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/View;
    .param p3    # I

    const/4 v1, 0x1

    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsInNestedScroll:Z

    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/dialer/widget/ViewDragHelper;->startNestedScroll(Landroid/view/View;)V

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsInNestedScroll:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsInNestedFling:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/ViewDragHelper;->stopNestedScroll(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mInNestedPreScrollDownwards:Z

    iput-boolean v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mInNestedPreScrollUpwards:Z

    iput-boolean v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsInNestedScroll:Z

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroid/view/MotionEvent;

    iget-boolean v4, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mCanSlide:Z

    if-nez v4, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v4, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

    invoke-virtual {v4, p1}, Lcom/android/dialer/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mInitialMotionX:F

    iput v3, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mInitialMotionY:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public openPane()Z
    .locals 2

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->openPane(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/View;

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mCanSlide:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mPreservedOpenState:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAllChildrenVisible()V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCapturableView(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mCapturableView:Landroid/view/View;

    return-void
.end method

.method public setIntermediatePinnedOffset(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mIntermediateOffset:I

    return-void
.end method

.method public setPanelSlideCallbacks(Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;)V
    .locals 0
    .param p1    # Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;

    iput-object p1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mPanelSlideCallbacks:Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;

    return-void
.end method

.method smoothSlideTo(FI)Z
    .locals 7
    .param p1    # F
    .param p2    # I

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mCanSlide:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getPaddingTop()I

    move-result v4

    iget v5, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->topMargin:I

    add-int v1, v4, v5

    int-to-float v4, v1

    iget v5, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideRange:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    float-to-int v2, v4

    iget-object v4, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;

    iget-object v5, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v4, v5, v6, v2}, Lcom/android/dialer/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->setAllChildrenVisible()V

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    const/4 v3, 0x1

    goto :goto_0
.end method

.method updateObscuredViewsVisibility(Landroid/view/View;)V
    .locals 19
    .param p1    # Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getPaddingTop()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getHeight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getPaddingBottom()I

    move-result v18

    sub-int v8, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getPaddingLeft()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getPaddingRight()I

    move-result v18

    sub-int v13, v17, v18

    if-eqz p1, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->viewIsOpaque(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRight()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBottom()I

    move-result v1

    :goto_0
    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getChildCount()I

    move-result v3

    :goto_1
    if-ge v9, v3, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p1

    if-ne v2, v0, :cond_2

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    move v15, v1

    move v12, v1

    move v10, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-lt v5, v10, :cond_3

    if-lt v7, v15, :cond_3

    if-gt v6, v12, :cond_3

    if-gt v4, v1, :cond_3

    const/16 v16, 0x4

    :goto_2
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_3
    const/16 v16, 0x0

    goto :goto_2
.end method
