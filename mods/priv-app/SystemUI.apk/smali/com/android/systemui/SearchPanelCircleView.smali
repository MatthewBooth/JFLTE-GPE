.class public Lcom/android/systemui/SearchPanelCircleView;
.super Landroid/widget/FrameLayout;
.source "SearchPanelCircleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SearchPanelCircleView$Ripple;
    }
.end annotation


# instance fields
.field private mAnimatingOut:Z

.field private final mAppearInterpolator:Landroid/view/animation/Interpolator;

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mBaseMargin:I

.field private mCircleAnimationEndValue:F

.field private mCircleAnimator:Landroid/animation/ValueAnimator;

.field private mCircleHidden:Z

.field private final mCircleMinSize:I

.field private final mCircleRect:Landroid/graphics/Rect;

.field private mCircleSize:F

.field private mCircleUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mClipToOutline:Z

.field private final mDisappearInterpolator:Landroid/view/animation/Interpolator;

.field private mDraggedFarEnough:Z

.field private mFadeOutAnimator:Landroid/animation/ValueAnimator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mHorizontal:Z

.field private mLogo:Landroid/widget/ImageView;

.field private final mMaxElevation:I

.field private mOffset:F

.field private mOffsetAnimatingIn:Z

.field private mOffsetAnimator:Landroid/animation/ValueAnimator;

.field private mOffsetUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mOutlineAlpha:F

.field private final mRipplePaint:Landroid/graphics/Paint;

.field private mRipples:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/SearchPanelCircleView$Ripple;",
            ">;"
        }
    .end annotation
.end field

.field private final mStaticOffset:I

.field private final mStaticRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/SearchPanelCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/SearchPanelCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/SearchPanelCircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I
    .param p4    # I

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mBackgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mRipplePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticRect:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mRipples:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/SearchPanelCircleView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelCircleView$1;-><init>(Lcom/android/systemui/SearchPanelCircleView;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/android/systemui/SearchPanelCircleView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelCircleView$2;-><init>(Lcom/android/systemui/SearchPanelCircleView;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/android/systemui/SearchPanelCircleView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelCircleView$3;-><init>(Lcom/android/systemui/SearchPanelCircleView;)V

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/android/systemui/SearchPanelCircleView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelCircleView$4;-><init>(Lcom/android/systemui/SearchPanelCircleView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelCircleView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelCircleView;->setWillNotDraw(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleMinSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mBaseMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c00a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mMaxElevation:I

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mContext:Landroid/content/Context;

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mContext:Landroid/content/Context;

    const v1, 0x10c000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mContext:Landroid/content/Context;

    const v1, 0x10c000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mRipplePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mRipplePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SearchPanelCircleView;F)V
    .locals 0
    .param p0    # Lcom/android/systemui/SearchPanelCircleView;
    .param p1    # F

    invoke-direct {p0, p1}, Lcom/android/systemui/SearchPanelCircleView;->applyCircleSize(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/SearchPanelCircleView;)V
    .locals 0
    .param p0    # Lcom/android/systemui/SearchPanelCircleView;

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->updateElevation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/SearchPanelCircleView;)V
    .locals 0
    .param p0    # Lcom/android/systemui/SearchPanelCircleView;

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->addRipple()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/SearchPanelCircleView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0    # Lcom/android/systemui/SearchPanelCircleView;

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/SearchPanelCircleView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0    # Lcom/android/systemui/SearchPanelCircleView;

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/SearchPanelCircleView;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/systemui/SearchPanelCircleView;

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mRipples:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/SearchPanelCircleView;)V
    .locals 0
    .param p0    # Lcom/android/systemui/SearchPanelCircleView;

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->updateClipping()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/SearchPanelCircleView;)Landroid/graphics/Paint;
    .locals 1
    .param p0    # Lcom/android/systemui/SearchPanelCircleView;

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mRipplePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/SearchPanelCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0    # Lcom/android/systemui/SearchPanelCircleView;
    .param p1    # Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/SearchPanelCircleView;)F
    .locals 1
    .param p0    # Lcom/android/systemui/SearchPanelCircleView;

    iget v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleSize:F

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/SearchPanelCircleView;)Landroid/graphics/Rect;
    .locals 1
    .param p0    # Lcom/android/systemui/SearchPanelCircleView;

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/SearchPanelCircleView;)F
    .locals 1
    .param p0    # Lcom/android/systemui/SearchPanelCircleView;

    iget v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mOutlineAlpha:F

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/SearchPanelCircleView;F)F
    .locals 0
    .param p0    # Lcom/android/systemui/SearchPanelCircleView;
    .param p1    # F

    iput p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mOutlineAlpha:F

    return p1
.end method

.method static synthetic access$602(Lcom/android/systemui/SearchPanelCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0    # Lcom/android/systemui/SearchPanelCircleView;
    .param p1    # Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/SearchPanelCircleView;)Landroid/graphics/Paint;
    .locals 1
    .param p0    # Lcom/android/systemui/SearchPanelCircleView;

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mBackgroundPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/SearchPanelCircleView;)Landroid/widget/ImageView;
    .locals 1
    .param p0    # Lcom/android/systemui/SearchPanelCircleView;

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mLogo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/SearchPanelCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0    # Lcom/android/systemui/SearchPanelCircleView;
    .param p1    # Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private addRipple()V
    .locals 9

    const/high16 v8, 0x3f800000

    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mRipples:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mHorizontal:Z

    if-eqz v6, :cond_1

    const/high16 v4, 0x3f400000

    const/high16 v5, 0x3f000000

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    sub-float v7, v8, v4

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float v0, v6, v7

    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    sub-float v7, v8, v5

    mul-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    mul-float/2addr v7, v5

    add-float v1, v6, v7

    iget v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleSize:F

    iget v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleMinSize:I

    int-to-float v7, v7

    const/high16 v8, 0x3fa00000

    mul-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const/high16 v7, 0x3f400000

    mul-float v2, v6, v7

    new-instance v3, Lcom/android/systemui/SearchPanelCircleView$Ripple;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/android/systemui/SearchPanelCircleView$Ripple;-><init>(Lcom/android/systemui/SearchPanelCircleView;FFF)V

    invoke-virtual {v3}, Lcom/android/systemui/SearchPanelCircleView$Ripple;->start()V

    goto :goto_0

    :cond_1
    const/high16 v4, 0x3f000000

    const/high16 v5, 0x3f400000

    goto :goto_1
.end method

.method private applyCircleSize(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleSize:F

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->updateLayout()V

    return-void
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleSize:F

    const/high16 v3, 0x40000000

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRipples(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mRipples:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mRipples:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/SearchPanelCircleView$Ripple;

    invoke-virtual {v1, p1}, Lcom/android/systemui/SearchPanelCircleView$Ripple;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private performExitFadeOutAnimation(IILjava/lang/Runnable;)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # Ljava/lang/Runnable;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x437f0000

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/SearchPanelCircleView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/SearchPanelCircleView$7;-><init>(Lcom/android/systemui/SearchPanelCircleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/SearchPanelCircleView$8;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui/SearchPanelCircleView$8;-><init>(Lcom/android/systemui/SearchPanelCircleView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private rubberband(F)F
    .locals 4
    .param p1    # F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3fe3333340000000L

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private setOffset(FZILandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 7
    .param p1    # F
    .param p2    # Z
    .param p3    # I
    .param p4    # Landroid/view/animation/Interpolator;
    .param p5    # Ljava/lang/Runnable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    if-nez p2, :cond_1

    iput p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffset:F

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->updateLayout()V

    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffset:F

    aput v4, v3, v2

    aput p1, v3, v1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/systemui/SearchPanelCircleView$6;

    invoke-direct {v4, p0, p5}, Lcom/android/systemui/SearchPanelCircleView$6;-><init>(Lcom/android/systemui/SearchPanelCircleView;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p4, :cond_3

    move-object v0, p4

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    int-to-long v4, p3

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    cmpl-float v3, p1, v6

    if-eqz v3, :cond_5

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimatingIn:Z

    goto :goto_0

    :cond_3
    cmpl-float v3, p1, v6

    if-nez v3, :cond_4

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method private updateCircleRect()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffset:F

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/SearchPanelCircleView;->updateCircleRect(Landroid/graphics/Rect;FZ)V

    return-void
.end method

.method private updateCircleRect(Landroid/graphics/Rect;FZ)V
    .locals 6
    .param p1    # Landroid/graphics/Rect;
    .param p2    # F
    .param p3    # Z

    const/high16 v5, 0x40000000

    if-eqz p3, :cond_0

    iget v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleMinSize:I

    int-to-float v0, v3

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mHorizontal:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v4, v0, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/SearchPanelCircleView;->mBaseMargin:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, p2

    float-to-int v1, v3

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    div-float/2addr v3, v5

    float-to-int v2, v3

    :goto_1
    int-to-float v3, v1

    add-float/2addr v3, v0

    float-to-int v3, v3

    int-to-float v4, v2

    add-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleSize:F

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    float-to-int v3, v3

    div-int/lit8 v1, v3, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v4, v0, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/SearchPanelCircleView;->mBaseMargin:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float/2addr v3, p2

    float-to-int v2, v3

    goto :goto_1
.end method

.method private updateClipping()V
    .locals 3

    iget v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleSize:F

    iget v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleMinSize:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mRipples:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mClipToOutline:Z

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelCircleView;->setClipToOutline(Z)V

    iput-boolean v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mClipToOutline:Z

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateElevation()V
    .locals 4

    iget v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffset:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    int-to-float v3, v3

    div-float v1, v2, v3

    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float v1, v2, v3

    iget v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mMaxElevation:I

    int-to-float v2, v2

    mul-float v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelCircleView;->setElevation(F)V

    return-void
.end method

.method private updateLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->updateCircleRect()V

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->updateLogo()V

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->invalidateOutline()V

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->invalidate()V

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->updateClipping()V

    return-void
.end method

.method private updateLogo()V
    .locals 10

    const v9, 0x3e99999a

    const/high16 v8, 0x40000000

    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleRect:Landroid/graphics/Rect;

    :goto_1
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    iget-object v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    sub-float v4, v6, v7

    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v8

    iget-object v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    sub-float v5, v6, v7

    iget v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffset:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    int-to-float v7, v7

    div-float v3, v6, v7

    if-nez v1, :cond_3

    iget-boolean v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mHorizontal:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    mul-float/2addr v6, v9

    add-float/2addr v4, v6

    :goto_2
    const/high16 v6, 0x3f800000

    sub-float v0, v6, v3

    const/high16 v6, 0x3f000000

    sub-float v6, v0, v6

    mul-float/2addr v6, v8

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_3
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticRect:Landroid/graphics/Rect;

    goto :goto_1

    :cond_2
    iget v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    goto :goto_2

    :cond_3
    iget v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffset:F

    iget v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    goto :goto_3
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAnimatingOut()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mAnimatingOut:Z

    return v0
.end method

.method public isAnimationRunning(Z)Z
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimatingIn:Z

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/SearchPanelCircleView;->drawBackground(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/SearchPanelCircleView;->drawRipples(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0e0138

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelCircleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mLogo:Landroid/widget/ImageView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mLogo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/ImageView;->layout(IIII)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/SearchPanelCircleView;->updateCircleRect(Landroid/graphics/Rect;FZ)V

    :cond_0
    return-void
.end method

.method public performOnAnimationFinished(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/SearchPanelCircleView$10;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/SearchPanelCircleView$10;-><init>(Lcom/android/systemui/SearchPanelCircleView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mDraggedFarEnough:Z

    iput-boolean v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mAnimatingOut:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleHidden:Z

    iput-boolean v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mClipToOutline:Z

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mBackgroundPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mOutlineAlpha:F

    return-void
.end method

.method public setAnimatingOut(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mAnimatingOut:Z

    return-void
.end method

.method public setCircleSize(F)V
    .locals 6
    .param p1    # F

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v4, v2

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/SearchPanelCircleView;->setCircleSize(FZLjava/lang/Runnable;ILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setCircleSize(FZLjava/lang/Runnable;ILandroid/view/animation/Interpolator;)V
    .locals 10
    .param p1    # F
    .param p2    # Z
    .param p3    # Ljava/lang/Runnable;
    .param p4    # I
    .param p5    # Landroid/view/animation/Interpolator;

    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v6, :cond_1

    const/4 v4, 0x1

    :goto_0
    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-eqz v4, :cond_3

    iget v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimationEndValue:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_3

    const/4 v0, 0x1

    :goto_2
    if-nez p2, :cond_0

    if-nez v1, :cond_0

    if-eqz v0, :cond_8

    :cond_0
    if-eqz v4, :cond_5

    iget v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimationEndValue:F

    cmpl-float v6, p1, v6

    if-nez v6, :cond_4

    :goto_3
    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleSize:F

    aput v8, v6, v7

    const/4 v7, 0x1

    aput p1, v6, v7

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    iget-object v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    iget-object v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/android/systemui/SearchPanelCircleView$5;

    invoke-direct {v7, p0, p3}, Lcom/android/systemui/SearchPanelCircleView$5;-><init>(Lcom/android/systemui/SearchPanelCircleView;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz p5, :cond_6

    move-object v2, p5

    :goto_4
    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    int-to-long v8, p4

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    iput p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimationEndValue:F

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    cmpl-float v6, p1, v6

    if-nez v6, :cond_7

    iget-object v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mDisappearInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_4

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mAppearInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_4

    :cond_8
    if-eqz v4, :cond_9

    iget v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimationEndValue:F

    sub-float v3, p1, v6

    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x2

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v3, v7, v8

    const/4 v8, 0x1

    aput p1, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    iget-object v6, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    iget-object v7, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    iput p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleAnimationEndValue:F

    goto/16 :goto_3

    :cond_9
    invoke-direct {p0, p1}, Lcom/android/systemui/SearchPanelCircleView;->applyCircleSize(F)V

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->updateElevation()V

    goto/16 :goto_3
.end method

.method public setDragDistance(F)V
    .locals 3
    .param p1    # F

    iget-boolean v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mAnimatingOut:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleHidden:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mDraggedFarEnough:Z

    if-eqz v1, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleMinSize:I

    int-to-float v1, v1

    invoke-direct {p0, p1}, Lcom/android/systemui/SearchPanelCircleView;->rubberband(F)F

    move-result v2

    add-float v0, v1, v2

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelCircleView;->setCircleSize(F)V

    :cond_1
    return-void
.end method

.method public setDraggedFarEnough(Z)V
    .locals 4
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mDraggedFarEnough:Z

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleHidden:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->startEnterAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->addRipple()V

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mDraggedFarEnough:Z

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lcom/android/systemui/SearchPanelCircleView$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/SearchPanelCircleView$9;-><init>(Lcom/android/systemui/SearchPanelCircleView;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/SearchPanelCircleView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/SearchPanelCircleView;->startAbortAnimation(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setHorizontal(Z)V
    .locals 3
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/SearchPanelCircleView;->mHorizontal:Z

    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    int-to-float v1, v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/SearchPanelCircleView;->updateCircleRect(Landroid/graphics/Rect;FZ)V

    invoke-direct {p0}, Lcom/android/systemui/SearchPanelCircleView;->updateLayout()V

    return-void
.end method

.method public setOffset(F)V
    .locals 6
    .param p1    # F

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move v3, v2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/SearchPanelCircleView;->setOffset(FZILandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startAbortAnimation(Ljava/lang/Runnable;)V
    .locals 11
    .param p1    # Ljava/lang/Runnable;

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mAnimatingOut:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p0

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/SearchPanelCircleView;->setCircleSize(FZLjava/lang/Runnable;ILandroid/view/animation/Interpolator;)V

    move-object v5, p0

    move v6, v1

    move v7, v2

    move v8, v4

    move-object v9, v3

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/SearchPanelCircleView;->setOffset(FZILandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleHidden:Z

    goto :goto_0
.end method

.method public startEnterAnimation()V
    .locals 11

    const/16 v4, 0x32

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mAnimatingOut:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/SearchPanelCircleView;->applyCircleSize(F)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/SearchPanelCircleView;->setOffset(F)V

    iget v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleMinSize:I

    int-to-float v1, v0

    move-object v0, p0

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/SearchPanelCircleView;->setCircleSize(FZLjava/lang/Runnable;ILandroid/view/animation/Interpolator;)V

    iget v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mStaticOffset:I

    int-to-float v6, v0

    move-object v5, p0

    move v7, v2

    move v8, v4

    move-object v9, v3

    move-object v10, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/SearchPanelCircleView;->setOffset(FZILandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mCircleHidden:Z

    goto :goto_0
.end method

.method public startExitAnimation(Ljava/lang/Runnable;)V
    .locals 9
    .param p1    # Ljava/lang/Runnable;

    iget-boolean v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mHorizontal:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000

    div-float v6, v0, v2

    iget v0, p0, Lcom/android/systemui/SearchPanelCircleView;->mBaseMargin:I

    int-to-float v0, v0

    sub-float v1, v6, v0

    const/4 v2, 0x1

    const/16 v3, 0x32

    iget-object v4, p0, Lcom/android/systemui/SearchPanelCircleView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/SearchPanelCircleView;->setOffset(FZILandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v7, v0

    invoke-virtual {p0}, Lcom/android/systemui/SearchPanelCircleView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v8, v0

    float-to-double v2, v7

    float-to-double v4, v8

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x32

    iget-object v5, p0, Lcom/android/systemui/SearchPanelCircleView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/SearchPanelCircleView;->setCircleSize(FZLjava/lang/Runnable;ILandroid/view/animation/Interpolator;)V

    const/16 v0, 0x32

    const/16 v2, 0x12c

    invoke-direct {p0, v0, v2, p1}, Lcom/android/systemui/SearchPanelCircleView;->performExitFadeOutAnimation(IILjava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
