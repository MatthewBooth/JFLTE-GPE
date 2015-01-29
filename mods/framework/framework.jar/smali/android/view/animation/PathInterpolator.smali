.class public Landroid/view/animation/PathInterpolator;
.super Ljava/lang/Object;
.source "PathInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final PRECISION:F = 0.002f


# instance fields
.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1    # F
    .param p2    # F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Landroid/view/animation/PathInterpolator;->initQuad(FF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/animation/PathInterpolator;->initCubic(FFFF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1    # Landroid/content/res/Resources;
    .param p2    # Landroid/content/res/Resources$Theme;
    .param p3    # Landroid/util/AttributeSet;

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/internal/R$styleable;->PathInterpolator:[I

    invoke-virtual {p2, p3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->PathInterpolator:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 0
    .param p1    # Landroid/graphics/Path;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private initCubic(FFFF)V
    .locals 7
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F

    const/high16 v5, 0x3f800000

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 13
    .param p1    # Landroid/graphics/Path;

    const/high16 v12, 0x3f800000

    const/4 v11, 0x0

    const v10, 0x3b03126f

    invoke-virtual {p1, v10}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v5

    array-length v10, v5

    div-int/lit8 v4, v10, 0x3

    const/4 v10, 0x1

    aget v10, v5, v10

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    const/4 v10, 0x2

    aget v10, v5, v10

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    array-length v10, v5

    add-int/lit8 v10, v10, -0x2

    aget v10, v5, v10

    cmpl-float v10, v10, v12

    if-nez v10, :cond_0

    array-length v10, v5

    add-int/lit8 v10, v10, -0x1

    aget v10, v5, v10

    cmpl-float v10, v10, v12

    if-eqz v10, :cond_1

    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "The Path must start at (0,0) and end at (1,1)"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1
    new-array v10, v4, [F

    iput-object v10, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    new-array v10, v4, [F

    iput-object v10, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    move v1, v0

    :goto_0
    if-ge v3, v4, :cond_4

    add-int/lit8 v0, v1, 0x1

    aget v2, v5, v1

    add-int/lit8 v1, v0, 0x1

    aget v8, v5, v0

    add-int/lit8 v0, v1, 0x1

    aget v9, v5, v1

    cmpl-float v10, v2, v6

    if-nez v10, :cond_2

    cmpl-float v10, v8, v7

    if-eqz v10, :cond_2

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "The Path cannot have discontinuity in the X axis."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_2
    cmpg-float v10, v8, v7

    if-gez v10, :cond_3

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "The Path cannot loop back on itself."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_3
    iget-object v10, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aput v8, v10, v3

    iget-object v10, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aput v9, v10, v3

    move v7, v8

    move v6, v2

    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    return-void
.end method

.method private initQuad(FF)V
    .locals 3
    .param p1    # F
    .param p2    # F

    const/high16 v2, 0x3f800000

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, p1, p2, v2, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;)V
    .locals 14
    .param p1    # Landroid/content/res/TypedArray;

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v8, Landroid/view/InflateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The path is null, which is created from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    invoke-direct {p0, v2}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Landroid/view/InflateException;

    const-string/jumbo v9, "pathInterpolator requires the controlX1 attribute"

    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    invoke-virtual {p1, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-nez v8, :cond_3

    new-instance v8, Landroid/view/InflateException;

    const-string/jumbo v9, "pathInterpolator requires the controlY1 attribute"

    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    invoke-virtual {p1, v10, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-virtual {p1, v11, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    invoke-virtual {p1, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    invoke-virtual {p1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eq v0, v1, :cond_4

    new-instance v8, Landroid/view/InflateException;

    const-string/jumbo v9, "pathInterpolator requires both controlX2 and controlY2 for cubic Beziers."

    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    if-nez v0, :cond_5

    invoke-direct {p0, v4, v6}, Landroid/view/animation/PathInterpolator;->initQuad(FF)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v12, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    invoke-virtual {p1, v13, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    invoke-direct {p0, v4, v6, v5, v7}, Landroid/view/animation/PathInterpolator;->initCubic(FFFF)V

    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 11
    .param p1    # F

    const/high16 v9, 0x3f800000

    const/4 v8, 0x0

    cmpg-float v10, p1, v8

    if-gtz v10, :cond_0

    :goto_0
    return v8

    :cond_0
    cmpl-float v10, p1, v9

    if-ltz v10, :cond_1

    move v8, v9

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    iget-object v9, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    array-length v9, v9

    add-int/lit8 v0, v9, -0x1

    :goto_1
    sub-int v9, v0, v4

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    add-int v9, v4, v0

    div-int/lit8 v3, v9, 0x2

    iget-object v9, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v9, v9, v3

    cmpg-float v9, p1, v9

    if-gez v9, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    iget-object v9, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v9, v9, v0

    iget-object v10, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v10, v10, v4

    sub-float v7, v9, v10

    cmpl-float v8, v7, v8

    if-nez v8, :cond_4

    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aget v8, v8, v4

    goto :goto_0

    :cond_4
    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v8, v8, v4

    sub-float v6, p1, v8

    div-float v2, v6, v7

    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aget v5, v8, v4

    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aget v1, v8, v0

    sub-float v8, v1, v5

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    goto :goto_0
.end method
