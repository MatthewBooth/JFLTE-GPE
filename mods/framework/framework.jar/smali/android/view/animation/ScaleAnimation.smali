.class public Landroid/view/animation/ScaleAnimation;
.super Landroid/view/animation/Animation;
.source "ScaleAnimation.java"


# instance fields
.field private mFromX:F

.field private mFromXData:I

.field private mFromXType:I

.field private mFromY:F

.field private mFromYData:I

.field private mFromYType:I

.field private mPivotX:F

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYType:I

.field private mPivotYValue:F

.field private final mResources:Landroid/content/res/Resources;

.field private mToX:F

.field private mToXData:I

.field private mToXType:I

.field private mToY:F

.field private mToYData:I

.field private mToYType:I


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    return-void
.end method

.method public constructor <init>(FFFFIFIF)V
    .locals 2
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # I
    .param p6    # F
    .param p7    # I
    .param p8    # F

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iput p8, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    iput p7, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    sget-object v3, Lcom/android/internal/R$styleable;->ScaleAnimation:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    if-eqz v2, :cond_0

    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v6, :cond_4

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    :cond_0
    :goto_0
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v6, :cond_5

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    :cond_1
    :goto_1
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    if-eqz v2, :cond_2

    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v6, :cond_6

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    :cond_2
    :goto_2
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    if-eqz v2, :cond_3

    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v6, :cond_7

    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    :cond_3
    :goto_3
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-static {v3}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v3, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iget v3, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    invoke-static {v3}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v3, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    iget v3, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    return-void

    :cond_4
    iget v3, v2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iget v3, v2, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    goto :goto_0

    :cond_5
    iget v3, v2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iget v3, v2, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    goto :goto_1

    :cond_6
    iget v3, v2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iget v3, v2, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    goto :goto_2

    :cond_7
    iget v3, v2, Landroid/util/TypedValue;->type:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iget v3, v2, Landroid/util/TypedValue;->data:I

    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    goto :goto_3
.end method

.method private initializePivotPoint()V
    .locals 1

    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    :cond_0
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    :cond_1
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .param p1    # F
    .param p2    # Landroid/view/animation/Transformation;

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000

    const/high16 v1, 0x3f800000

    const/high16 v2, 0x3f800000

    invoke-virtual {p0}, Landroid/view/animation/ScaleAnimation;->getScaleFactor()F

    move-result v0

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_0

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_1

    :cond_0
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iget v5, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v1, v3, v4

    :cond_1
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_2

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_3

    :cond_2
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iget v5, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float v2, v3, v4

    :cond_3
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_4

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_4

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    :goto_0
    return-void

    :cond_4
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    mul-float/2addr v4, v0

    iget v5, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    mul-float/2addr v5, v0

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 6
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    move-object v0, p0

    move v4, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    move-object v0, p0

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    move-object v0, p0

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/ScaleAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/ScaleAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    return-void
.end method

.method resolveScale(FIIII)F
    .locals 3
    .param p1    # F
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/4 v1, 0x6

    if-ne p2, v1, :cond_1

    int-to-float v1, p4

    int-to-float v2, p5

    invoke-static {p3, v1, v2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v0

    :goto_0
    if-nez p4, :cond_2

    const/high16 p1, 0x3f800000

    :cond_0
    :goto_1
    return p1

    :cond_1
    const/4 v1, 0x5

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {p3, v1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v0

    goto :goto_0

    :cond_2
    int-to-float v1, p4

    div-float p1, v0, v1

    goto :goto_1
.end method
