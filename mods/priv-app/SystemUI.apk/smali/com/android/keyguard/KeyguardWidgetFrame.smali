.class public Lcom/android/keyguard/KeyguardWidgetFrame;
.super Landroid/widget/FrameLayout;
.source "KeyguardWidgetFrame.java"


# static fields
.field private static final sAddBlendMode:Landroid/graphics/PorterDuffXfermode;


# instance fields
.field private mBackgroundAlpha:F

.field private mBackgroundAlphaMultiplier:F

.field private mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mBgAlphaController:Ljava/lang/Object;

.field private mContentAlpha:F

.field private mForegroundAlpha:I

.field private mForegroundGradient:Landroid/graphics/LinearGradient;

.field private final mForegroundRect:Landroid/graphics/Rect;

.field private mFrameFade:Landroid/animation/Animator;

.field private mFrameHeight:I

.field private mFrameStrokeAdjustment:I

.field private mGradientColor:I

.field private mGradientPaint:Landroid/graphics/Paint;

.field private mIsHoveringOverDeleteDropTarget:Z

.field private mIsSmall:Z

.field mLeftToRight:Z

.field private mLeftToRightGradient:Landroid/graphics/LinearGradient;

.field private mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

.field private mMaxChallengeTop:I

.field private mOverScrollAmount:F

.field private mPerformAppWidgetSizeUpdateOnBootComplete:Z

.field private mRightToLeftGradient:Landroid/graphics/LinearGradient;

.field private mSmallFrameHeight:I

.field private mSmallWidgetHeight:I

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWidgetLockedSmall:Z

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/android/keyguard/KeyguardWidgetFrame;->sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLeftToRight:Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mOverScrollAmount:F

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iput v4, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundAlpha:I

    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    const/high16 v3, 0x3f800000

    iput v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mMaxChallengeTop:I

    new-instance v3, Lcom/android/keyguard/KeyguardWidgetFrame$1;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardWidgetFrame$1;-><init>(Lcom/android/keyguard/KeyguardWidgetFrame;)V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v3, Lcom/android/keyguard/CheckLongPressHelper;

    invoke-direct {v3, p0}, Lcom/android/keyguard/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41000000

    mul-float/2addr v3, v4

    float-to-int v1, v3

    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setPadding(IIII)V

    const/high16 v3, 0x40000000

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sget v3, Lcom/android/keyguard/R$dimen;->kg_small_widget_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    sget v3, Lcom/android/keyguard/R$drawable;->kg_widget_bg_padded:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    sget v3, Lcom/android/keyguard/R$color;->kg_widget_pager_gradient:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientColor:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    sget-object v4, Lcom/android/keyguard/KeyguardWidgetFrame;->sAddBlendMode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardWidgetFrame;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardWidgetFrame;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardWidgetFrame;Z)Z
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardWidgetFrame;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardWidgetFrame;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardWidgetFrame;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->performAppWidgetSizeCallbacksIfNecessary()V

    return-void
.end method

.method private drawGradientOverlay(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawHoveringOverDeleteOverlay(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsHoveringOverDeleteDropTarget:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x66010000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_0
    return-void
.end method

.method private performAppWidgetSizeCallbacksIfNecessary()V
    .locals 9

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v7

    instance-of v1, v7, Landroid/appwidget/AppWidgetHostView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-nez v1, :cond_1

    iput-boolean v6, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mPerformAppWidgetSizeUpdateOnBootComplete:Z

    goto :goto_0

    :cond_1
    move-object v0, v7

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v8, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    float-to-int v2, v1

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    float-to-int v3, v1

    const/4 v1, 0x0

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V

    goto :goto_0
.end method

.method private setWidgetHeight(I)V
    .locals 4
    .param p1    # I

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-eq v3, p1, :cond_0

    const/4 v1, 0x1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->requestLayout()V

    :cond_1
    return-void
.end method

.method private updateGradient()V
    .locals 15

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLeftToRight:Z

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLeftToRight:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    :goto_1
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v5, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v4, v2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLeftToRightGradient:Landroid/graphics/LinearGradient;

    new-instance v7, Landroid/graphics/LinearGradient;

    iget v12, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mGradientColor:I

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v8, v3

    move v9, v2

    move v10, v1

    move v11, v2

    move v13, v6

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v7, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mRightToLeftGradient:Landroid/graphics/LinearGradient;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v1, v0

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1
.end method


# virtual methods
.method public adjustFrame(I)V
    .locals 2
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getPaddingBottom()I

    move-result v1

    add-int v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method public disableHardwareLayersForContent()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->drawBg(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->drawGradientOverlay(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;->drawHoveringOverDeleteOverlay(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected drawBg(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlphaMultiplier:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x437f0000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public enableHardwareLayersForContent()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public fadeFrame(Ljava/lang/Object;ZFI)V
    .locals 5
    .param p1    # Ljava/lang/Object;
    .param p2    # Z
    .param p3    # F
    .param p4    # I

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBgAlphaController:Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBgAlphaController:Ljava/lang/Object;

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBgAlphaController:Ljava/lang/Object;

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    :cond_2
    const-string v1, "backgroundAlpha"

    new-array v2, v4, [F

    aput p3, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v1, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v3

    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameFade:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContentAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mContentAlpha:F

    return v0
.end method

.method public getContentAppWidgetId()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    instance-of v1, v0, Lcom/android/keyguard/KeyguardStatusView;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusView;->getAppWidgetId()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSmallFrameHeight()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    return v0
.end method

.method public getWorkerHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public hideFrame(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x177

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    return-void
.end method

.method public isSmall()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    return v0
.end method

.method public onActive(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onBouncerShowing(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->cancelLongPress()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/CheckLongPressHelper;->postCheckForLongPress(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/CheckLongPressHelper;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->performAppWidgetSizeCallbacksIfNecessary()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v6, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    if-nez v0, :cond_0

    iput p2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    iget v3, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->updateGradient()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->invalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/CheckLongPressHelper;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLongPressHelper:Lcom/android/keyguard/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onUserInteraction(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->cancelLongPress()V

    return-void
.end method

.method public resetSize()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .param p1    # F

    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundAlpha:F

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->invalidate()V

    :cond_0
    return-void
.end method

.method public setContentAlpha(F)V
    .locals 1
    .param p1    # F

    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mContentAlpha:F

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setFrameHeight(I)V
    .locals 6
    .param p1    # I

    const/4 v4, 0x0

    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    iget v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameHeight:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mFrameStrokeAdjustment:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->updateGradient()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->invalidate()V

    return-void
.end method

.method setIsHoveringOverDeleteDropTarget(Z)V
    .locals 6
    .param p1    # Z

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsHoveringOverDeleteDropTarget:Z

    if-eq v2, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsHoveringOverDeleteDropTarget:Z

    if-eqz p1, :cond_1

    sget v0, Lcom/android/keyguard/R$string;->keyguard_accessibility_delete_widget_start:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->announceForAccessibility(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->invalidate()V

    :cond_0
    return-void

    :cond_1
    sget v0, Lcom/android/keyguard/R$string;->keyguard_accessibility_delete_widget_end:I

    goto :goto_0
.end method

.method public setMaxChallengeTop(I)V
    .locals 2
    .param p1    # I

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mMaxChallengeTop:I

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mMaxChallengeTop:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getPaddingTop()I

    move-result v1

    sub-int v1, p1, v1

    iput v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    goto :goto_1
.end method

.method setOverScrollAmount(FZ)V
    .locals 3
    .param p1    # F
    .param p2    # Z

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mOverScrollAmount:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mOverScrollAmount:F

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mLeftToRightGradient:Landroid/graphics/LinearGradient;

    :goto_0
    iput-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundGradient:Landroid/graphics/LinearGradient;

    const/high16 v1, 0x3f000000

    mul-float/2addr v1, p1

    const/high16 v2, 0x437f0000

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mForegroundAlpha:I

    const v1, 0x3f19999a

    const v2, 0x3ecccccc

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->invalidate()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mRightToLeftGradient:Landroid/graphics/LinearGradient;

    goto :goto_0
.end method

.method public setWidgetLockedSmall(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mWidgetLockedSmall:Z

    return-void
.end method

.method public setWorkerHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mWorkerHandler:Landroid/os/Handler;

    return-void
.end method

.method public showFrame(Ljava/lang/Object;)V
    .locals 3
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x1

    const v1, 0x3f19999a

    const/16 v2, 0x64

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    return-void
.end method

.method public shrinkWidget(Z)V
    .locals 1
    .param p1    # Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mIsSmall:Z

    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallWidgetHeight:I

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setWidgetHeight(I)V

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardWidgetFrame;->mSmallFrameHeight:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    :cond_0
    return-void
.end method
