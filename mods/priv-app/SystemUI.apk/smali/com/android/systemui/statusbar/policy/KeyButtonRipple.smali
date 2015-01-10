.class public Lcom/android/systemui/statusbar/policy/KeyButtonRipple;
.super Landroid/graphics/drawable/Drawable;
.source "KeyButtonRipple.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyButtonRipple$LogInterpolator;
    }
.end annotation


# instance fields
.field private final mAlphaExitInterpolator:Landroid/view/animation/Interpolator;

.field private final mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mBottomProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawingHardwareGlow:Z

.field private mGlowAlpha:F

.field private mGlowScale:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mLeftProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxWidth:I

.field private mPaintProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private mPressed:Z

.field private mRightProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRipplePaint:Landroid/graphics/Paint;

.field private final mRunningAnimations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mRxProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRyProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportHardware:Z

.field private final mTargetView:Landroid/view/View;

.field private final mTmpArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTopProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/View;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$LogInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$LogInterpolator;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAlphaExitInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mMaxWidth:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTargetView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)Ljava/util/HashSet;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPressed:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;Z)Z
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/KeyButtonRipple;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDrawingHardwareGlow:Z

    return p1
.end method

.method private cancelAnimations()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private drawHardware(Landroid/view/HardwareCanvas;)V
    .locals 8
    .param p1    # Landroid/view/HardwareCanvas;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDrawingHardwareGlow:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/view/HardwareCanvas;->drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    :cond_0
    return-void
.end method

.method private drawSoftware(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v2, 0x437f0000

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v0, v1

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v12, v1

    cmpl-float v1, v17, v12

    if-lez v1, :cond_1

    const/4 v13, 0x1

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    mul-float v11, v1, v2

    const/high16 v1, 0x3f000000

    mul-float v14, v11, v1

    const/high16 v1, 0x3f000000

    mul-float v9, v17, v1

    const/high16 v1, 0x3f000000

    mul-float v10, v12, v1

    if-eqz v13, :cond_2

    move v15, v14

    :goto_1
    if-eqz v13, :cond_3

    move/from16 v16, v10

    :goto_2
    if-eqz v13, :cond_4

    move v6, v10

    :goto_3
    sub-float v2, v9, v15

    sub-float v3, v10, v16

    add-float v4, v9, v15

    add-float v5, v10, v16

    move-object/from16 v1, p1

    move v7, v6

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    move v15, v9

    goto :goto_1

    :cond_3
    move/from16 v16, v14

    goto :goto_2

    :cond_4
    move v6, v9

    goto :goto_3
.end method

.method private enterHardware()V
    .locals 10

    const-wide/16 v8, 0x15e

    const/high16 v7, 0x40000000

    const/4 v6, 0x0

    const v5, 0x3faccccd

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->cancelAnimations()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDrawingHardwareGlow:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setExtendStart(Landroid/graphics/CanvasProperty;)V

    new-instance v1, Landroid/view/RenderNodeAnimator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendStart()Landroid/graphics/CanvasProperty;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    invoke-virtual {v1, v8, v9}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setExtendEnd(Landroid/graphics/CanvasProperty;)V

    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendEnd()Landroid/graphics/CanvasProperty;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-direct {v0, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    invoke-virtual {v0, v8, v9}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v6}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    :goto_0
    iput v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    const v2, 0x3e4ccccd

    iput v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v4, 0x437f0000

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->start()V

    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->invalidateSelf()V

    return-void

    :cond_0
    invoke-static {v6}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    goto :goto_0
.end method

.method private enterSoftware()V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->cancelAnimations()V

    const v1, 0x3e4ccccd

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    const-string v1, "glowScale"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x3faccccd
    .end array-data
.end method

.method private exitHardware()V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAlphaExitInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->invalidateSelf()V

    return-void
.end method

.method private exitSoftware()V
    .locals 5

    const-string v1, "glowAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAlphaExitInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getExtendEnd()Landroid/graphics/CanvasProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    goto :goto_0
.end method

.method private getExtendSize()I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0
.end method

.method private getExtendStart()Landroid/graphics/CanvasProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    goto :goto_0
.end method

.method private getRipplePaint()Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private getRippleSize()I
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mMaxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0
.end method

.method private isHorizontal()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setExtendEnd(Landroid/graphics/CanvasProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    goto :goto_0
.end method

.method private setExtendStart(Landroid/graphics/CanvasProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    goto :goto_0
.end method

.method private setPressedHardware(Z)V
    .locals 0
    .param p1    # Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->enterHardware()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->exitHardware()V

    goto :goto_0
.end method

.method private setPressedSoftware(Z)V
    .locals 0
    .param p1    # Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->enterSoftware()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->exitSoftware()V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSupportHardware:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSupportHardware:Z

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/HardwareCanvas;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->drawHardware(Landroid/view/HardwareCanvas;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->drawSoftware(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getGlowAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    return v0
.end method

.method public getGlowScale()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1    # [I

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget v2, p1, v0

    const v3, 0x10100a7

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPressed:Z

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setPressed(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPressed:Z

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setGlowAlpha(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->invalidateSelf()V

    return-void
.end method

.method public setGlowScale(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->invalidateSelf()V

    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSupportHardware:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setPressedHardware(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setPressedSoftware(Z)V

    goto :goto_0
.end method
