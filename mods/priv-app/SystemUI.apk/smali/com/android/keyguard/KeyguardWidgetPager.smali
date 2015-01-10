.class public Lcom/android/keyguard/KeyguardWidgetPager;
.super Lcom/android/keyguard/PagedView;
.source "KeyguardWidgetPager.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;
.implements Lcom/android/keyguard/PagedView$PageSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardWidgetPager$ZInterpolator;,
        Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;
    }
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F

.field protected static OVERSCROLL_MAX_ROTATION:F


# instance fields
.field private BOUNCER_SCALE_FACTOR:F

.field private mAddWidgetView:Landroid/view/View;

.field private final mBackgroundWorkerHandler:Landroid/os/Handler;

.field private final mBackgroundWorkerThread:Landroid/os/HandlerThread;

.field private mBouncerZoomInOutDuration:I

.field private mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

.field private mCenterSmallWidgetsVertically:Z

.field protected mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

.field private mHasMeasure:Z

.field private mLastHeightMeasureSpec:I

.field private mLastWidthMeasureSpec:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPage:I

.field protected mScreenCenter:I

.field protected mShowingInitialHints:Z

.field protected mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

.field private mWidgetToResetAfterFadeOut:I

.field mZInterpolator:Lcom/android/keyguard/KeyguardWidgetPager$ZInterpolator;

.field showHintsAfterLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x461c4000

    sput v0, Lcom/android/keyguard/KeyguardWidgetPager;->CAMERA_DISTANCE:F

    const/high16 v0, 0x41f00000

    sput v0, Lcom/android/keyguard/KeyguardWidgetPager;->OVERSCROLL_MAX_ROTATION:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardWidgetPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/keyguard/KeyguardWidgetPager$ZInterpolator;

    const/high16 v1, 0x3f000000

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager$ZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZInterpolator:Lcom/android/keyguard/KeyguardWidgetPager$ZInterpolator;

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->showHintsAfterLayout:Z

    iput v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mShowingInitialHints:Z

    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    const v0, 0x3f2b851f

    iput v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->setImportantForAccessibility(I)V

    :cond_0
    invoke-virtual {p0, p0}, Lcom/android/keyguard/KeyguardWidgetPager;->setPageSwitchListener(Lcom/android/keyguard/PagedView$PageSwitchListener;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KeyguardWidgetPager Worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardWidgetPager;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardWidgetPager;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardWidgetPager;

    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardWidgetPager;I)I
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardWidgetPager;
    .param p1    # I

    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardWidgetPager;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->updateWidgetFramesImportantForAccessibility()V

    return-void
.end method

.method private captureUserInteraction(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->onUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private enforceKeyguardWidgetFrame(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    instance-of v0, p1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KeyguardWidgetPager children must be KeyguardWidgetFrames"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static findClockInHierarchy(Landroid/view/View;)I
    .locals 5
    .param p0    # Landroid/view/View;

    instance-of v4, p0, Landroid/widget/TextClock;

    if-eqz v4, :cond_1

    check-cast p0, Landroid/widget/TextClock;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getClockFlags(Landroid/widget/TextClock;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/KeyguardWidgetPager;->findClockInHierarchy(Landroid/view/View;)I

    move-result v4

    or-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getClockFlags(Landroid/widget/TextClock;)I
    .locals 6
    .param p0    # Landroid/widget/TextClock;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/TextClock;->getTimeZone()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v2, 0x6b

    :goto_1
    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v4

    if-eqz v4, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    const/16 v4, 0x6d

    invoke-static {v1, v4}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v4

    if-eqz v4, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    move v4, v0

    goto :goto_0

    :cond_3
    const/16 v2, 0x68

    goto :goto_1
.end method

.method private updatePageAlphaValues(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method private updateWidgetFrameImportantForAccessibility(Lcom/android/keyguard/KeyguardWidgetFrame;)V
    .locals 2
    .param p1    # Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setImportantForAccessibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setImportantForAccessibility(I)V

    goto :goto_0
.end method

.method private updateWidgetFramesImportantForAccessibility()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->updateWidgetFrameImportantForAccessibility(Lcom/android/keyguard/KeyguardWidgetFrame;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private userActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;->onUserActivityTimeoutChanged()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;->userActivity()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # I

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/PagedView;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/PagedView;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/PagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Lcom/android/keyguard/PagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addWidget(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    return-void
.end method

.method public addWidget(Landroid/view/View;I)V
    .locals 12
    .param p1    # Landroid/view/View;
    .param p2    # I

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v11, 0x0

    instance-of v7, p1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-nez v7, :cond_3

    new-instance v3, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v7, 0x30

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v3, p1, v5}, Lcom/android/keyguard/KeyguardWidgetFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    instance-of v7, p1, Landroid/appwidget/AppWidgetHostView;

    if-eqz v7, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    iget v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_2

    invoke-virtual {v3, v11}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetLockedSmall(Z)V

    :cond_0
    :goto_0
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWorkerHandler(Landroid/os/Handler;)V

    if-ne p2, v8, :cond_4

    invoke-virtual {p0, v3, v6}, Lcom/android/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    if-ne p1, v3, :cond_5

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/keyguard/R$string;->keyguard_accessibility_widget:I

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->updateWidgetFrameImportantForAccessibility(Lcom/android/keyguard/KeyguardWidgetFrame;)V

    return-void

    :cond_2
    invoke-virtual {v3, v9}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetLockedSmall(Z)V

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCenterSmallWidgetsVertically:Z

    if-eqz v7, :cond_0

    const/16 v7, 0x11

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_3
    move-object v3, p1

    check-cast v3, Lcom/android/keyguard/KeyguardWidgetFrame;

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3, p2, v6}, Lcom/android/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_5
    move-object v1, p1

    goto :goto_2
.end method

.method animateOutlinesAndSidePages(Z)V
    .locals 1
    .param p1    # Z

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(ZI)V

    return-void
.end method

.method animateOutlinesAndSidePages(ZI)V
    .locals 13
    .param p1    # Z
    .param p2    # I

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, -0x1

    if-ne p2, v9, :cond_1

    if-eqz p1, :cond_2

    const/16 p2, 0x64

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v5

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v4, :cond_6

    if-eqz p1, :cond_3

    iget v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    invoke-virtual {p0, v9, v8, v11}, Lcom/android/keyguard/KeyguardWidgetPager;->getAlphaForPage(IIZ)F

    move-result v6

    :goto_2
    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    const-string v9, "contentAlpha"

    new-array v10, v11, [F

    aput v6, v10, v12

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    new-array v9, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v9, v12

    invoke-static {v3, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_5

    iget v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    invoke-virtual {p0, v9, v8, v11}, Lcom/android/keyguard/KeyguardWidgetPager;->getOutlineAlphaForPage(IIZ)F

    move-result v7

    :goto_3
    invoke-virtual {v3, p0, p1, v7, p2}, Lcom/android/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/16 p2, 0x177

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    if-ne v8, v5, :cond_4

    const/high16 v6, 0x3f800000

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    :cond_6
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    iget-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    int-to-long v10, p2

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/android/keyguard/KeyguardWidgetPager$3;

    invoke-direct {v10, p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager$3;-><init>(Lcom/android/keyguard/KeyguardWidgetPager;Z)V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method boundByReorderablePages(Z[I)V
    .locals 4
    .param p1    # Z
    .param p2    # [I

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    :goto_0
    aget v0, p2, v3

    aget v1, p2, v2

    if-lt v0, v1, :cond_0

    aget v0, p2, v3

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    aget v0, p2, v3

    add-int/lit8 v0, v0, -0x1

    aput v0, p2, v3

    goto :goto_0

    :cond_0
    :goto_1
    aget v0, p2, v2

    aget v1, p2, v3

    if-gt v0, v1, :cond_1

    aget v0, p2, v2

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v0

    if-nez v0, :cond_1

    aget v0, p2, v2

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, v2

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected disablePageContentLayers()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->disableHardwareLayersForContent()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected enablePageContentLayers()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->enableHardwareLayersForContent()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAlphaForPage(IIZ)F
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->isWarping()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageWarpIndex()I

    move-result v2

    if-ne p2, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-nez p3, :cond_0

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCurrentPage:I

    if-eq p2, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getOutlineAlphaForPage(IIZ)F
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardWidgetPager;->getAlphaForPage(IIZ)F

    move-result v0

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserActivityTimeout()J
    .locals 6

    iget v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/keyguard/KeyguardStatusView;

    if-nez v3, :cond_0

    instance-of v3, v2, Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    if-nez v3, :cond_0

    const-wide/16 v4, 0x7530

    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method public getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    return-object v0
.end method

.method public getWidgetPageIndex(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;

    instance-of v0, p1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public getWidgetToResetOnPageFadeOut()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return v0
.end method

.method hideOutlinesAndSidePages()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(Z)V

    return-void
.end method

.method isCameraPage(I)Z
    .locals 2
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/keyguard/CameraWidgetFrame;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isOverScrollChild(IF)Z
    .locals 6
    .param p1    # I
    .param p2    # F

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mOverScrollX:I

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mOverScrollX:I

    iget v4, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mMaxScrollX:I

    if-le v3, v4, :cond_3

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    if-nez p1, :cond_1

    cmpg-float v3, p2, v5

    if-ltz v3, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_4

    cmpl-float v3, p2, v5

    if-lez v3, :cond_4

    :cond_2
    :goto_1
    return v1

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public isWidgetPage(I)Z
    .locals 4
    .param p1    # I

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v3

    if-lt p1, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v3, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onAddView(Landroid/view/View;I)V
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # I

    move-object v2, p1

    check-cast v2, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mTempVisiblePagesRange:[I

    array-length v2, v2

    new-array v1, v2, [I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getVisiblePages([I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->boundByReorderablePages(Z[I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v2, p1}, Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;->onAddView(Landroid/view/View;)V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/keyguard/KeyguardWidgetPager$2;

    invoke-direct {v3, p0, v0, p2, v1}, Lcom/android/keyguard/KeyguardWidgetPager$2;-><init>(Lcom/android/keyguard/KeyguardWidgetPager;II[I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/PagedView;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    return-void
.end method

.method public onBouncerStateChanged(Z)V
    .locals 0
    .param p1    # Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->zoomOutToBouncer()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->zoomInFromBouncer()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/PagedView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    return-void
.end method

.method protected onEndReordering()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/PagedView;->onEndReordering()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->hideOutlinesAndSidePages()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->captureUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/keyguard/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1    # Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardViewStateManager;->isChallengeShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardViewStateManager;->isChallengeOverlapping()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->startReordering()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1    # I
    .param p2    # I

    const/4 v9, 0x1

    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLastWidthMeasureSpec:I

    iput p2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLastHeightMeasureSpec:I

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-virtual {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->getMaxChallengeTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getPaddingTop()I

    move-result v8

    sub-int v4, v7, v8

    invoke-virtual {v6}, Lcom/android/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->setMaxChallengeTop(I)V

    if-eqz v0, :cond_0

    iget v8, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCurrentPage:I

    if-ne v3, v8, :cond_0

    iget-boolean v8, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    if-nez v8, :cond_0

    invoke-virtual {v2, v9}, Lcom/android/keyguard/KeyguardWidgetFrame;->shrinkWidget(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/PagedView;->onMeasure(II)V

    iput-boolean v9, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageBeginMoving()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->showOutlinesAndSidePages()V

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->userActivity()V

    return-void
.end method

.method public onPageBeginWarp()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->showOutlinesAndSidePages()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageBeginWarp()V

    return-void
.end method

.method protected onPageEndMoving()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageEndMoving()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->hideOutlinesAndSidePages()V

    :cond_1
    return-void
.end method

.method public onPageEndWarp()V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageWarpIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v3

    if-ne v2, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(ZI)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageEndWarp()V

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .locals 10
    .param p1    # Landroid/view/View;
    .param p2    # I

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_0

    move-object v5, p1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/keyguard/KeyguardStatusView;

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/keyguard/KeyguardWidgetPager;->findClockInHierarchy(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    const/4 v4, 0x1

    :cond_1
    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getSystemUiVisibility()I

    move-result v6

    const/high16 v7, 0x800000

    or-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardWidgetPager;->setSystemUiVisibility(I)V

    :goto_0
    iget v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    if-eq v6, p2, :cond_4

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    iput p2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mPage:I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->userActivity()V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3, v8}, Lcom/android/keyguard/KeyguardWidgetFrame;->onActive(Z)V

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v9}, Lcom/android/keyguard/KeyguardWidgetFrame;->onActive(Z)V

    invoke-virtual {v1, v9}, Lcom/android/keyguard/KeyguardWidgetFrame;->setImportantForAccessibility(I)V

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->requestAccessibilityFocus()Z

    :cond_3
    iget-object v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v6, 0x1000

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_4
    iget-object v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v6, p1, p2}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageSwitched(Landroid/view/View;I)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getSystemUiVisibility()I

    move-result v6

    const v7, -0x800001

    and-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardWidgetPager;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardViewStateManager;->onPageSwitching(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public onRemoveView(Landroid/view/View;Z)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Z

    move-object v1, p1

    check-cast v1, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v1, p1, p2}, Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;->onRemoveView(Landroid/view/View;Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/keyguard/KeyguardWidgetPager$1;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager$1;-><init>(Lcom/android/keyguard/KeyguardWidgetPager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRemoveViewAnimationCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;->onRemoveViewAnimationCompleted()V

    :cond_0
    return-void
.end method

.method protected onStartReordering()V
    .locals 0

    invoke-super {p0}, Lcom/android/keyguard/PagedView;->onStartReordering()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->enablePageContentLayers()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->reorderStarting()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->captureUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/keyguard/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->showPagingFeedback()V

    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .param p1    # F

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->acceleratedOverScroll(F)V

    return-void
.end method

.method public removeWidget(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    instance-of v2, p1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->removeView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const-string v2, "KeyguardWidgetPager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeWidget() can\'t find:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected reorderStarting()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->showOutlinesAndSidePages()V

    return-void
.end method

.method protected screenScrolled(I)V
    .locals 10
    .param p1    # I

    const/4 v7, 0x0

    const/4 v9, 0x0

    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->updatePageAlphaValues(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mDragView:Landroid/view/View;

    if-ne v5, v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_0

    invoke-virtual {p0, p1, v5, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    iget v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mDensity:F

    sget v8, Lcom/android/keyguard/KeyguardWidgetPager;->CAMERA_DISTANCE:F

    mul-float/2addr v6, v8

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardWidgetFrame;->setCameraDistance(F)V

    invoke-virtual {p0, v1, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->isOverScrollChild(IF)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v2, v6

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v3, v6

    invoke-virtual {v5, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->setPivotX(F)V

    invoke-virtual {v5, v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->setPivotY(F)V

    sget v6, Lcom/android/keyguard/KeyguardWidgetPager;->OVERSCROLL_MAX_ROTATION:F

    neg-float v6, v6

    mul-float/2addr v6, v4

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v6, v4, v9

    if-gez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v5, v8, v6}, Lcom/android/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    :goto_3
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardWidgetFrame;->getAlpha()F

    move-result v0

    cmpl-float v6, v0, v9

    if-nez v6, :cond_4

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v6, v7

    goto :goto_2

    :cond_3
    invoke-virtual {v5, v9}, Lcom/android/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    invoke-virtual {v5, v9, v7}, Lcom/android/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardWidgetFrame;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v7}, Lcom/android/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .param p1    # I

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/PagedView;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method setAddWidgetEnabled(Z)V
    .locals 3
    .param p1    # Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;I)V

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLastWidthMeasureSpec:I

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLastHeightMeasureSpec:I

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->measure(II)V

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    sget v1, Lcom/android/keyguard/R$id;->keyguard_add_widget:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method setBouncerAnimationDuration(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    return-void
.end method

.method public setCallbacks(Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    return-void
.end method

.method setCurrentPage(I)V
    .locals 1
    .param p1    # I

    invoke-super {p0, p1}, Lcom/android/keyguard/PagedView;->setCurrentPage(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->updateChildrenContentAlpha(F)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->updateWidgetFramesImportantForAccessibility()V

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1    # Lcom/android/internal/widget/LockPatternUtils;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZ)V
    .locals 1
    .param p1    # I
    .param p2    # Z

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardWidgetFrame;->setIsHoveringOverDeleteDropTarget(Z)V

    return-void
.end method

.method public setViewStateManager(Lcom/android/keyguard/KeyguardViewStateManager;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/KeyguardViewStateManager;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    return-void
.end method

.method public setWidgetToResetOnPageFadeOut(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return-void
.end method

.method protected shouldSetTopAlignedPivotForWidget(I)Z
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/keyguard/PagedView;->shouldSetTopAlignedPivotForWidget(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method showOutlinesAndSidePages()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(Z)V

    return-void
.end method

.method public showPagingFeedback()V
    .locals 0

    return-void
.end method

.method updateChildrenContentAlpha(F)V
    .locals 5
    .param p1    # F

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    iget v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mCurrentPage:I

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    const/high16 v3, 0x3f800000

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method zoomInFromBouncer()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    cmpg-float v1, v1, v5

    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_2

    :cond_1
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    instance-of v1, v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardWidgetFrame;->onBouncerShowing(Z)V

    :cond_3
    return-void
.end method

.method zoomOutToBouncer()V
    .locals 9

    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->shouldSetTopAlignedPivotForWidget(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_2

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    iget v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    aput v6, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "scaleY"

    new-array v5, v7, [F

    iget v6, p0, Lcom/android/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    aput v6, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc00000

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardWidgetPager;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    instance-of v2, v1, Lcom/android/keyguard/KeyguardWidgetFrame;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v1, v7}, Lcom/android/keyguard/KeyguardWidgetFrame;->onBouncerShowing(Z)V

    :cond_3
    return-void
.end method
