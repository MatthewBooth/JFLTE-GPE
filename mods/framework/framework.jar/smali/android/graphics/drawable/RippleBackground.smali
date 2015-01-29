.class Landroid/graphics/drawable/RippleBackground;
.super Ljava/lang/Object;
.source "RippleBackground.java"


# static fields
.field private static final GLOBAL_SPEED:F = 1.0f

.field private static final LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final WAVE_OPACITY_DECAY_VELOCITY:F = 3.0f

.field private static final WAVE_OUTER_OPACITY_ENTER_VELOCITY:F = 10.0f

.field private static final WAVE_OUTER_OPACITY_EXIT_VELOCITY_MAX:F = 4.5f

.field private static final WAVE_OUTER_OPACITY_EXIT_VELOCITY_MIN:F = 1.5f

.field private static final WAVE_OUTER_SIZE_INFLUENCE_MAX:F = 200.0f

.field private static final WAVE_OUTER_SIZE_INFLUENCE_MIN:F = 40.0f


# instance fields
.field private mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

.field private final mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

.field private final mBounds:Landroid/graphics/Rect;

.field private mCanUseHardware:Z

.field private mColorAlpha:I

.field private mColorOpaque:I

.field private mDensity:F

.field private mHardwareAnimating:Z

.field private mHasMaxRadius:Z

.field private mOuterOpacity:F

.field private mOuterRadius:F

.field private mOuterX:F

.field private mOuterY:F

.field private final mOwner:Landroid/graphics/drawable/RippleDrawable;

.field private final mPendingAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/RenderNodeAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mPropOuterPaint:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private mPropOuterRadius:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPropOuterX:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPropOuterY:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/RenderNodeAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mTempPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/RippleDrawable;
    .param p2    # Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mRunningAnimations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mPendingAnimations:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/drawable/RippleBackground;->mOuterOpacity:F

    new-instance v0, Landroid/graphics/drawable/RippleBackground$2;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/RippleBackground$2;-><init>(Landroid/graphics/drawable/RippleBackground;)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    iput-object p1, p0, Landroid/graphics/drawable/RippleBackground;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    iput-object p2, p0, Landroid/graphics/drawable/RippleBackground;->mBounds:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$000()Landroid/animation/TimeInterpolator;
    .locals 1

    sget-object v0, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$100(Landroid/graphics/drawable/RippleBackground;)Landroid/animation/AnimatorListenerAdapter;
    .locals 1
    .param p0    # Landroid/graphics/drawable/RippleBackground;

    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    return-object v0
.end method

.method static synthetic access$202(Landroid/graphics/drawable/RippleBackground;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0    # Landroid/graphics/drawable/RippleBackground;
    .param p1    # Landroid/animation/ObjectAnimator;

    iput-object p1, p0, Landroid/graphics/drawable/RippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$302(Landroid/graphics/drawable/RippleBackground;Z)Z
    .locals 0
    .param p0    # Landroid/graphics/drawable/RippleBackground;
    .param p1    # Z

    iput-boolean p1, p0, Landroid/graphics/drawable/RippleBackground;->mHardwareAnimating:Z

    return p1
.end method

.method private cancelHardwareAnimations(Z)V
    .locals 4
    .param p1    # Z

    iget-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RenderNodeAnimator;

    invoke-virtual {v3}, Landroid/view/RenderNodeAnimator;->cancel()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_1

    iget-object v3, p0, Landroid/graphics/drawable/RippleBackground;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/graphics/drawable/RippleBackground;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/graphics/drawable/RippleBackground;->mHardwareAnimating:Z

    return-void
.end method

.method private cancelSoftwareAnimations()V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method private drawHardware(Landroid/view/HardwareCanvas;)Z
    .locals 8
    .param p1    # Landroid/view/HardwareCanvas;

    const/4 v7, 0x1

    iget-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/graphics/drawable/RippleBackground;->cancelHardwareAnimations(Z)V

    iput-boolean v7, p0, Landroid/graphics/drawable/RippleBackground;->mHardwareAnimating:Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RenderNodeAnimator;

    invoke-virtual {v3, p1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/graphics/Canvas;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RenderNodeAnimator;

    invoke-virtual {v3}, Landroid/view/RenderNodeAnimator;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/graphics/drawable/RippleBackground;->mRunningAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v3, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterX:Landroid/graphics/CanvasProperty;

    iget-object v4, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterY:Landroid/graphics/CanvasProperty;

    iget-object v5, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterRadius:Landroid/graphics/CanvasProperty;

    iget-object v6, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterPaint:Landroid/graphics/CanvasProperty;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/HardwareCanvas;->drawCircle(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    return v7
.end method

.method private drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # Landroid/graphics/Paint;

    const/4 v0, 0x0

    iget v2, p0, Landroid/graphics/drawable/RippleBackground;->mColorOpaque:I

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Landroid/graphics/drawable/RippleBackground;->mColorAlpha:I

    int-to-float v2, v2

    iget v3, p0, Landroid/graphics/drawable/RippleBackground;->mOuterOpacity:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x3f000000

    add-float/2addr v2, v3

    float-to-int v1, v2

    if-lez v1, :cond_0

    iget v2, p0, Landroid/graphics/drawable/RippleBackground;->mOuterRadius:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v2, p0, Landroid/graphics/drawable/RippleBackground;->mOuterX:F

    iget v3, p0, Landroid/graphics/drawable/RippleBackground;->mOuterY:F

    iget v4, p0, Landroid/graphics/drawable/RippleBackground;->mOuterRadius:F

    invoke-virtual {p1, v2, v3, v4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private endSoftwareAnimations()V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method

.method private exitHardware(III)V
    .locals 8
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v4, p0, Landroid/graphics/drawable/RippleBackground;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Landroid/graphics/drawable/RippleBackground;->getTempPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget v4, p0, Landroid/graphics/drawable/RippleBackground;->mColorOpaque:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, p0, Landroid/graphics/drawable/RippleBackground;->mColorAlpha:I

    int-to-float v4, v4

    iget v5, p0, Landroid/graphics/drawable/RippleBackground;->mOuterOpacity:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-static {v3}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v4

    iput-object v4, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterPaint:Landroid/graphics/CanvasProperty;

    iget v4, p0, Landroid/graphics/drawable/RippleBackground;->mOuterRadius:F

    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v4

    iput-object v4, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterRadius:Landroid/graphics/CanvasProperty;

    iget v4, p0, Landroid/graphics/drawable/RippleBackground;->mOuterX:F

    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v4

    iput-object v4, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterX:Landroid/graphics/CanvasProperty;

    iget v4, p0, Landroid/graphics/drawable/RippleBackground;->mOuterY:F

    invoke-static {v4}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v4

    iput-object v4, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterY:Landroid/graphics/CanvasProperty;

    if-lez p2, :cond_1

    new-instance v2, Landroid/view/RenderNodeAnimator;

    iget-object v4, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterPaint:Landroid/graphics/CanvasProperty;

    int-to-float v5, p3

    invoke-direct {v2, v4, v6, v5}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    int-to-long v4, p2

    invoke-virtual {v2, v4, v5}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    sget-object v4, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v4}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sub-int v0, p1, p2

    if-lez v0, :cond_0

    new-instance v1, Landroid/view/RenderNodeAnimator;

    iget-object v4, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterPaint:Landroid/graphics/CanvasProperty;

    invoke-direct {v1, v4, v6, v7}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    sget-object v4, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v4}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v4, p2

    invoke-virtual {v1, v4, v5}, Landroid/view/RenderNodeAnimator;->setStartDelay(J)V

    int-to-float v4, p3

    invoke-virtual {v1, v4}, Landroid/view/RenderNodeAnimator;->setStartValue(F)V

    iget-object v4, p0, Landroid/graphics/drawable/RippleBackground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v4}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Landroid/graphics/drawable/RippleBackground;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v4, p0, Landroid/graphics/drawable/RippleBackground;->mPendingAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v6, p0, Landroid/graphics/drawable/RippleBackground;->mHardwareAnimating:Z

    iput v7, p0, Landroid/graphics/drawable/RippleBackground;->mOuterOpacity:F

    invoke-direct {p0}, Landroid/graphics/drawable/RippleBackground;->invalidateSelf()V

    return-void

    :cond_0
    iget-object v4, p0, Landroid/graphics/drawable/RippleBackground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v4}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/view/RenderNodeAnimator;

    iget-object v4, p0, Landroid/graphics/drawable/RippleBackground;->mPropOuterPaint:Landroid/graphics/CanvasProperty;

    invoke-direct {v2, v4, v6, v7}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    sget-object v4, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v4}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v4, p1

    invoke-virtual {v2, v4, v5}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    iget-object v4, p0, Landroid/graphics/drawable/RippleBackground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, v4}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private exitSoftware(III)V
    .locals 8
    .param p1    # I
    .param p2    # I
    .param p3    # I

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-lez p2, :cond_1

    const-string/jumbo v2, "outerOpacity"

    new-array v3, v6, [F

    int-to-float v4, p3

    const/high16 v5, 0x437f0000

    div-float/2addr v4, v5

    aput v4, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v2, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sub-int v0, p1, p2

    if-lez v0, :cond_0

    new-instance v2, Landroid/graphics/drawable/RippleBackground$1;

    invoke-direct {v2, p0, v0}, Landroid/graphics/drawable/RippleBackground$1;-><init>(Landroid/graphics/drawable/RippleBackground;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    iput-object v1, p0, Landroid/graphics/drawable/RippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "outerOpacity"

    new-array v3, v6, [F

    const/4 v4, 0x0

    aput v4, v3, v7

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mAnimationListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private getTempPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mTempPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mTempPaint:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mTempPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private invalidateSelf()V
    .locals 1

    iget-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/RippleBackground;->cancelSoftwareAnimations()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleBackground;->cancelHardwareAnimations(Z)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    iget-boolean v2, p0, Landroid/graphics/drawable/RippleBackground;->mCanUseHardware:Z

    if-eq v2, v0, :cond_0

    iget-boolean v2, p0, Landroid/graphics/drawable/RippleBackground;->mCanUseHardware:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/graphics/drawable/RippleBackground;->cancelHardwareAnimations(Z)V

    :cond_0
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mCanUseHardware:Z

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Landroid/graphics/drawable/RippleBackground;->mHardwareAnimating:Z

    if-eqz v2, :cond_1

    check-cast p1, Landroid/view/HardwareCanvas;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/RippleBackground;->drawHardware(Landroid/view/HardwareCanvas;)Z

    move-result v1

    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RippleBackground;->drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    move-result v1

    goto :goto_0
.end method

.method public enter()V
    .locals 4

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleBackground;->cancel()V

    const/16 v1, 0x64

    const-string/jumbo v2, "outerOpacity"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v2, Landroid/graphics/drawable/RippleBackground;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iput-object v0, p0, Landroid/graphics/drawable/RippleBackground;->mAnimOuterOpacity:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method public exit()V
    .locals 12

    const/16 v11, 0x14d

    const/high16 v10, 0x447a0000

    const/high16 v9, 0x3f800000

    const/high16 v8, 0x3f000000

    invoke-virtual {p0}, Landroid/graphics/drawable/RippleBackground;->cancel()V

    const/16 v2, 0x14d

    iget v5, p0, Landroid/graphics/drawable/RippleBackground;->mOuterRadius:F

    const/high16 v6, 0x42200000

    iget v7, p0, Landroid/graphics/drawable/RippleBackground;->mDensity:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/high16 v6, 0x43480000

    iget v7, p0, Landroid/graphics/drawable/RippleBackground;->mDensity:F

    mul-float/2addr v6, v7

    div-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6, v9}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v4

    const/high16 v5, 0x3fc00000

    const/high16 v6, 0x40900000

    invoke-static {v5, v6, v4}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v3

    const/4 v5, 0x0

    iget v6, p0, Landroid/graphics/drawable/RippleBackground;->mOuterOpacity:F

    sub-float v6, v9, v6

    mul-float/2addr v6, v10

    const/high16 v7, 0x40400000

    add-float/2addr v7, v3

    div-float/2addr v6, v7

    add-float/2addr v6, v8

    float-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v5, p0, Landroid/graphics/drawable/RippleBackground;->mColorAlpha:I

    int-to-float v5, v5

    iget v6, p0, Landroid/graphics/drawable/RippleBackground;->mOuterOpacity:F

    int-to-float v7, v0

    mul-float/2addr v7, v3

    mul-float/2addr v7, v4

    div-float/2addr v7, v10

    add-float/2addr v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v5, v8

    float-to-int v1, v5

    iget-boolean v5, p0, Landroid/graphics/drawable/RippleBackground;->mCanUseHardware:Z

    if-eqz v5, :cond_0

    invoke-direct {p0, v11, v0, v1}, Landroid/graphics/drawable/RippleBackground;->exitHardware(III)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v11, v0, v1}, Landroid/graphics/drawable/RippleBackground;->exitSoftware(III)V

    goto :goto_0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 7
    .param p1    # Landroid/graphics/Rect;

    iget v3, p0, Landroid/graphics/drawable/RippleBackground;->mOuterX:F

    float-to-int v0, v3

    iget v3, p0, Landroid/graphics/drawable/RippleBackground;->mOuterY:F

    float-to-int v1, v3

    iget v3, p0, Landroid/graphics/drawable/RippleBackground;->mOuterRadius:F

    float-to-int v3, v3

    add-int/lit8 v2, v3, 0x1

    sub-int v3, v0, v2

    sub-int v4, v1, v2

    add-int v5, v0, v2

    add-int v6, v1, v2

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getOuterOpacity()F
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/RippleBackground;->mOuterOpacity:F

    return v0
.end method

.method public isHardwareAnimating()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/drawable/RippleBackground;->mHardwareAnimating:Z

    return v0
.end method

.method public jump()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/RippleBackground;->endSoftwareAnimations()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/drawable/RippleBackground;->cancelHardwareAnimations(Z)V

    return-void
.end method

.method public onHotspotBoundsChanged()V
    .locals 4

    const/high16 v3, 0x40000000

    iget-boolean v2, p0, Landroid/graphics/drawable/RippleBackground;->mHasMaxRadius:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    iget-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Landroid/graphics/drawable/RippleBackground;->mOuterRadius:F

    :cond_0
    return-void
.end method

.method public setOuterOpacity(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Landroid/graphics/drawable/RippleBackground;->mOuterOpacity:F

    invoke-direct {p0}, Landroid/graphics/drawable/RippleBackground;->invalidateSelf()V

    return-void
.end method

.method public setup(IIF)V
    .locals 5
    .param p1    # I
    .param p2    # I
    .param p3    # F

    const/high16 v3, 0x40000000

    const/4 v4, 0x0

    const/high16 v2, -0x1000000

    or-int/2addr v2, p2

    iput v2, p0, Landroid/graphics/drawable/RippleBackground;->mColorOpaque:I

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/graphics/drawable/RippleBackground;->mColorAlpha:I

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/graphics/drawable/RippleBackground;->mHasMaxRadius:Z

    int-to-float v2, p1

    iput v2, p0, Landroid/graphics/drawable/RippleBackground;->mOuterRadius:F

    :goto_0
    iput v4, p0, Landroid/graphics/drawable/RippleBackground;->mOuterX:F

    iput v4, p0, Landroid/graphics/drawable/RippleBackground;->mOuterY:F

    iput p3, p0, Landroid/graphics/drawable/RippleBackground;->mDensity:F

    return-void

    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    iget-object v2, p0, Landroid/graphics/drawable/RippleBackground;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    iput v2, p0, Landroid/graphics/drawable/RippleBackground;->mOuterRadius:F

    goto :goto_0
.end method

.method public shouldDraw()Z
    .locals 3

    iget v1, p0, Landroid/graphics/drawable/RippleBackground;->mColorAlpha:I

    int-to-float v1, v1

    iget v2, p0, Landroid/graphics/drawable/RippleBackground;->mOuterOpacity:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v0, v1

    iget-boolean v1, p0, Landroid/graphics/drawable/RippleBackground;->mCanUseHardware:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/graphics/drawable/RippleBackground;->mHardwareAnimating:Z

    if-nez v1, :cond_1

    :cond_0
    if-lez v0, :cond_2

    iget v1, p0, Landroid/graphics/drawable/RippleBackground;->mOuterRadius:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
