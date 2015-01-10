.class public Lcom/android/systemui/recents/views/TaskViewHeader;
.super Landroid/widget/FrameLayout;
.source "TaskViewHeader.java"


# static fields
.field static sHighlightPaint:Landroid/graphics/Paint;


# instance fields
.field mActivityDescription:Landroid/widget/TextView;

.field mApplicationIcon:Landroid/widget/ImageView;

.field mBackground:Landroid/graphics/drawable/RippleDrawable;

.field mBackgroundColor:I

.field mBackgroundColorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mCurrentPrimaryColor:I

.field mCurrentPrimaryColorIsDark:Z

.field mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

.field mDimFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mDimPaint:Landroid/graphics/Paint;

.field mDismissButton:Landroid/widget/ImageView;

.field mFocusAnimator:Landroid/animation/AnimatorSet;

.field mIsFullscreen:Z

.field mLightDismissDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I
    .param p4    # I

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimFilter:Landroid/graphics/PorterDuffColorFilter;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->setWillNotDraw(Z)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->setClipToOutline(Z)V

    new-instance v1, Lcom/android/systemui/recents/views/TaskViewHeader$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$1;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightDismissDrawable:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0200f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v1, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewHighlightPx:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v1, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewHighlightColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    sget-object v1, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method getSecondaryColor(IZ)I
    .locals 2
    .param p1    # I
    .param p2    # Z

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    :goto_0
    const v1, 0x3f4ccccd

    invoke-static {p1, v0, v1}, Lcom/android/systemui/recents/misc/Utilities;->getColorWithOverlay(IIF)I

    move-result v1

    return v1

    :cond_0
    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1
    .param p1    # I

    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIsFullscreen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewHighlightPx:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v9, v0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    int-to-float v5, v0

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    neg-float v1, v9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v3, v0, v9

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v4, v0, v5

    sget-object v7, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/android/systemui/recents/views/TaskViewHeader$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$2;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const v0, 0x7f0e0106

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    const v0, 0x7f0e0107

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    const v0, 0x7f0e0108

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020101

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackgroundColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020100

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->getId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackgroundColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method onTaskViewFocusChanged(Z)V
    .locals 13
    .param p1    # Z

    const/4 v3, 0x0

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColor:I

    iget-boolean v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColorIsDark:Z

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/recents/views/TaskViewHeader;->getSecondaryColor(IZ)I

    move-result v6

    const/4 v9, 0x2

    new-array v7, v9, [[I

    const/4 v9, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const v12, 0x101009e

    aput v12, v10, v11

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const v12, 0x10100a7

    aput v12, v10, v11

    aput-object v10, v7, v9

    const/4 v9, 0x2

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    const/4 v9, 0x2

    new-array v1, v9, [I

    const/4 v9, 0x0

    aput v6, v1, v9

    const/4 v9, 0x1

    aput v6, v1, v9

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    new-instance v10, Landroid/content/res/ColorStateList;

    invoke-direct {v10, v7, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v9, v5}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackgroundColor:I

    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColor:I

    iget-boolean v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColorIsDark:Z

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/recents/views/TaskViewHeader;->getSecondaryColor(IZ)I

    move-result v4

    new-instance v9, Landroid/animation/ArgbEvaluator;

    invoke-direct {v9}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v9, Lcom/android/systemui/recents/views/TaskViewHeader$3;

    invoke-direct {v9, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$3;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v9, Lcom/android/systemui/recents/views/TaskViewHeader$4;

    invoke-direct {v9, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$4;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v9, -0x1

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const-string v9, "translationZ"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x41700000

    aput v12, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x2ee

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x2ee

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    :goto_0
    return-void

    :cond_1
    if-eqz v3, :cond_2

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackgroundColor:I

    new-instance v9, Landroid/animation/ArgbEvaluator;

    invoke-direct {v9}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColor:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v9, Lcom/android/systemui/recents/views/TaskViewHeader$5;

    invoke-direct {v9, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$5;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v9, "translationZ"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x96

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    const/4 v10, 0x0

    new-array v10, v10, [I

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/views/TaskViewHeader;->setTranslationZ(F)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public rebindToTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 7
    .param p1    # Lcom/android/systemui/recents/model/Task;

    const/4 v2, 0x0

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    instance-of v1, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    :goto_1
    iget v1, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackgroundColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v3, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v1, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackgroundColor:I

    :cond_2
    iget v1, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColor:I

    iget-boolean v1, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    iput-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColorIsDark:Z

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    iget-boolean v1, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewLightTextColor:I

    :goto_2
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    iget-boolean v1, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightDismissDrawable:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b008f

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewDarkTextColor:I

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_3
.end method

.method public setDimAlpha(I)V
    .locals 3
    .param p1    # I

    const/4 v1, 0x0

    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method setIsFullscreen(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mIsFullscreen:Z

    return-void
.end method

.method setNoUserInteractionState()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method startLaunchTaskDismissAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarExitAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method startNoUserInteractionAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarEnterAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method unbindFromTask()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
