.class public final Landroid/support/v7/graphics/Palette;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/graphics/Palette$Swatch;
    }
.end annotation


# instance fields
.field private mDarkMutedSwatch:Landroid/support/v7/graphics/Palette$Swatch;

.field private mDarkVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

.field private final mHighestPopulation:I

.field private mLightMutedColor:Landroid/support/v7/graphics/Palette$Swatch;

.field private mLightVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

.field private mMutedSwatch:Landroid/support/v7/graphics/Palette$Swatch;

.field private final mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private mVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-direct {p0}, Landroid/support/v7/graphics/Palette;->findMaxPopulation()I

    move-result v0

    iput v0, p0, Landroid/support/v7/graphics/Palette;->mHighestPopulation:I

    const/high16 v1, 0x3f000000

    const v2, 0x3e99999a

    const v3, 0x3f333333

    const/high16 v4, 0x3f800000

    const v5, 0x3eb33333

    const/high16 v6, 0x3f800000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/graphics/Palette;->findColor(FFFFFF)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/graphics/Palette;->mVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    const v1, 0x3f3d70a4

    const v2, 0x3f0ccccd

    const/high16 v3, 0x3f800000

    const/high16 v4, 0x3f800000

    const v5, 0x3eb33333

    const/high16 v6, 0x3f800000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/graphics/Palette;->findColor(FFFFFF)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/graphics/Palette;->mLightVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    const v1, 0x3e851eb8

    const/4 v2, 0x0

    const v3, 0x3ee66666

    const/high16 v4, 0x3f800000

    const v5, 0x3eb33333

    const/high16 v6, 0x3f800000

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/graphics/Palette;->findColor(FFFFFF)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/graphics/Palette;->mDarkVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    const/high16 v1, 0x3f000000

    const v2, 0x3e99999a

    const v3, 0x3f333333

    const v4, 0x3e99999a

    const/4 v5, 0x0

    const v6, 0x3ecccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/graphics/Palette;->findColor(FFFFFF)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/graphics/Palette;->mMutedSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    const v1, 0x3f3d70a4

    const v2, 0x3f0ccccd

    const/high16 v3, 0x3f800000

    const v4, 0x3e99999a

    const/4 v5, 0x0

    const v6, 0x3ecccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/graphics/Palette;->findColor(FFFFFF)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/graphics/Palette;->mLightMutedColor:Landroid/support/v7/graphics/Palette$Swatch;

    const v1, 0x3e851eb8

    const/4 v2, 0x0

    const v3, 0x3ee66666

    const v4, 0x3e99999a

    const/4 v5, 0x0

    const v6, 0x3ecccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/graphics/Palette;->findColor(FFFFFF)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/graphics/Palette;->mDarkMutedSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-direct {p0}, Landroid/support/v7/graphics/Palette;->generateEmptySwatches()V

    return-void
.end method

.method private static checkBitmapParam(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0    # Landroid/graphics/Bitmap;

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitmap can not be recycled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private static checkNumberColorsParam(I)V
    .locals 2
    .param p0    # I

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numColors must be 1 of greater"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static copyHslValues(Landroid/support/v7/graphics/Palette$Swatch;)[F
    .locals 4
    .param p0    # Landroid/support/v7/graphics/Palette$Swatch;

    const/4 v3, 0x3

    const/4 v2, 0x0

    new-array v0, v3, [F

    invoke-virtual {p0}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v1

    invoke-static {v1, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static createComparisonValue(FFFFII)F
    .locals 4
    .param p0    # F
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # I
    .param p5    # I

    const/4 v0, 0x6

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-static {p0, p1}, Landroid/support/v7/graphics/Palette;->invertDiff(FF)F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x40400000

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p2, p3}, Landroid/support/v7/graphics/Palette;->invertDiff(FF)F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const/high16 v2, 0x40c00000

    aput v2, v0, v1

    const/4 v1, 0x4

    int-to-float v2, p4

    int-to-float v3, p5

    div-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x5

    const/high16 v2, 0x3f800000

    aput v2, v0, v1

    invoke-static {v0}, Landroid/support/v7/graphics/Palette;->weightedMean([F)F

    move-result v0

    return v0
.end method

.method private findColor(FFFFFF)Landroid/support/v7/graphics/Palette$Swatch;
    .locals 11
    .param p1    # F
    .param p2    # F
    .param p3    # F
    .param p4    # F
    .param p5    # F
    .param p6    # F

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v1, p0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v9}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v1

    const/4 v3, 0x1

    aget v0, v1, v3

    invoke-virtual {v9}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v1

    const/4 v3, 0x2

    aget v2, v1, v3

    cmpl-float v1, v0, p5

    if-ltz v1, :cond_0

    cmpg-float v1, v0, p6

    if-gtz v1, :cond_0

    cmpl-float v1, v2, p2

    if-ltz v1, :cond_0

    cmpg-float v1, v2, p3

    if-gtz v1, :cond_0

    invoke-direct {p0, v9}, Landroid/support/v7/graphics/Palette;->isAlreadySelected(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v9}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v4

    iget v5, p0, Landroid/support/v7/graphics/Palette;->mHighestPopulation:I

    move v1, p4

    move v3, p1

    invoke-static/range {v0 .. v5}, Landroid/support/v7/graphics/Palette;->createComparisonValue(FFFFII)F

    move-result v10

    if-eqz v7, :cond_1

    cmpl-float v1, v10, v8

    if-lez v1, :cond_0

    :cond_1
    move-object v7, v9

    move v8, v10

    goto :goto_0

    :cond_2
    return-object v7
.end method

.method private findMaxPopulation()I
    .locals 4

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static generate(Landroid/graphics/Bitmap;I)Landroid/support/v7/graphics/Palette;
    .locals 4
    .param p0    # Landroid/graphics/Bitmap;
    .param p1    # I

    invoke-static {p0}, Landroid/support/v7/graphics/Palette;->checkBitmapParam(Landroid/graphics/Bitmap;)V

    invoke-static {p1}, Landroid/support/v7/graphics/Palette;->checkNumberColorsParam(I)V

    invoke-static {p0}, Landroid/support/v7/graphics/Palette;->scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v7/graphics/ColorCutQuantizer;->fromBitmap(Landroid/graphics/Bitmap;I)Landroid/support/v7/graphics/ColorCutQuantizer;

    move-result-object v0

    if-eq v1, p0, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    new-instance v2, Landroid/support/v7/graphics/Palette;

    invoke-virtual {v0}, Landroid/support/v7/graphics/ColorCutQuantizer;->getQuantizedColors()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/graphics/Palette;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method private generateEmptySwatches()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/support/v7/graphics/Palette;->mVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/graphics/Palette;->mDarkVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/graphics/Palette;->mDarkVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-static {v1}, Landroid/support/v7/graphics/Palette;->copyHslValues(Landroid/support/v7/graphics/Palette$Swatch;)[F

    move-result-object v0

    const/high16 v1, 0x3f000000

    aput v1, v0, v4

    new-instance v1, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-static {v0}, Landroid/support/v7/graphics/ColorUtils;->HSLtoRGB([F)I

    move-result v2

    invoke-direct {v1, v2, v3}, Landroid/support/v7/graphics/Palette$Swatch;-><init>(II)V

    iput-object v1, p0, Landroid/support/v7/graphics/Palette;->mVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    :cond_0
    iget-object v1, p0, Landroid/support/v7/graphics/Palette;->mDarkVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/graphics/Palette;->mVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/graphics/Palette;->mVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-static {v1}, Landroid/support/v7/graphics/Palette;->copyHslValues(Landroid/support/v7/graphics/Palette$Swatch;)[F

    move-result-object v0

    const v1, 0x3e851eb8

    aput v1, v0, v4

    new-instance v1, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-static {v0}, Landroid/support/v7/graphics/ColorUtils;->HSLtoRGB([F)I

    move-result v2

    invoke-direct {v1, v2, v3}, Landroid/support/v7/graphics/Palette$Swatch;-><init>(II)V

    iput-object v1, p0, Landroid/support/v7/graphics/Palette;->mDarkVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    :cond_1
    return-void
.end method

.method private static invertDiff(FF)F
    .locals 2
    .param p0    # F
    .param p1    # F

    const/high16 v0, 0x3f800000

    sub-float v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private isAlreadySelected(Landroid/support/v7/graphics/Palette$Swatch;)Z
    .locals 1
    .param p1    # Landroid/support/v7/graphics/Palette$Swatch;

    iget-object v0, p0, Landroid/support/v7/graphics/Palette;->mVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/graphics/Palette;->mDarkVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/graphics/Palette;->mLightVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/graphics/Palette;->mMutedSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/graphics/Palette;->mDarkMutedSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/graphics/Palette;->mLightMutedColor:Landroid/support/v7/graphics/Palette$Swatch;

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0    # Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v2, 0x64

    if-gt v0, v2, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/high16 v2, 0x42c80000

    int-to-float v3, v0

    div-float v1, v2, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method private static varargs weightedMean([F)F
    .locals 6
    .param p0    # [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_0

    aget v3, p0, v0

    add-int/lit8 v5, v0, 0x1

    aget v4, p0, v5

    mul-float v5, v3, v4

    add-float/2addr v1, v5

    add-float/2addr v2, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    div-float v5, v1, v2

    return v5
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/support/v7/graphics/Palette;

    iget-object v3, p0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    iget-object v4, v0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    if-nez v3, :cond_4

    :cond_6
    iget-object v3, p0, Landroid/support/v7/graphics/Palette;->mDarkMutedSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/support/v7/graphics/Palette;->mDarkMutedSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    iget-object v4, v0, Landroid/support/v7/graphics/Palette;->mDarkMutedSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v3, v4}, Landroid/support/v7/graphics/Palette$Swatch;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_7
    move v1, v2

    goto :goto_0

    :cond_8
    iget-object v3, v0, Landroid/support/v7/graphics/Palette;->mDarkMutedSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-nez v3, :cond_7

    :cond_9
    iget-object v3, p0, Landroid/support/v7/graphics/Palette;->mDarkVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v3, :cond_b

    iget-object v3, p0, Landroid/support/v7/graphics/Palette;->mDarkVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    iget-object v4, v0, Landroid/support/v7/graphics/Palette;->mDarkVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v3, v4}, Landroid/support/v7/graphics/Palette$Swatch;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_a
    move v1, v2

    goto :goto_0

    :cond_b
    iget-object v3, v0, Landroid/support/v7/graphics/Palette;->mDarkVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-nez v3, :cond_a

    :cond_c
    iget-object v3, p0, Landroid/support/v7/graphics/Palette;->mLightMutedColor:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v3, :cond_e

    iget-object v3, p0, Landroid/support/v7/graphics/Palette;->mLightMutedColor:Landroid/support/v7/graphics/Palette$Swatch;

    iget-object v4, v0, Landroid/support/v7/graphics/Palette;->mLightMutedColor:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v3, v4}, Landroid/support/v7/graphics/Palette$Swatch;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    :cond_d
    move v1, v2

    goto :goto_0

    :cond_e
    iget-object v3, v0, Landroid/support/v7/graphics/Palette;->mLightMutedColor:Landroid/support/v7/graphics/Palette$Swatch;

    if-nez v3, :cond_d

    :cond_f
    iget-object v3, p0, Landroid/support/v7/graphics/Palette;->mLightVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v3, :cond_11

    iget-object v3, p0, Landroid/support/v7/graphics/Palette;->mLightVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    iget-object v4, v0, Landroid/support/v7/graphics/Palette;->mLightVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v3, v4}, Landroid/support/v7/graphics/Palette$Swatch;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    :cond_10
    move v1, v2

    goto :goto_0

    :cond_11
    iget-object v3, v0, Landroid/support/v7/graphics/Palette;->mLightVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-nez v3, :cond_10

    :cond_12
    iget-object v3, p0, Landroid/support/v7/graphics/Palette;->mMutedSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v3, :cond_14

    iget-object v3, p0, Landroid/support/v7/graphics/Palette;->mMutedSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    iget-object v4, v0, Landroid/support/v7/graphics/Palette;->mMutedSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v3, v4}, Landroid/support/v7/graphics/Palette$Swatch;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    :cond_13
    move v1, v2

    goto/16 :goto_0

    :cond_14
    iget-object v3, v0, Landroid/support/v7/graphics/Palette;->mMutedSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-nez v3, :cond_13

    :cond_15
    iget-object v3, p0, Landroid/support/v7/graphics/Palette;->mVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v3, :cond_16

    iget-object v3, p0, Landroid/support/v7/graphics/Palette;->mVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    iget-object v4, v0, Landroid/support/v7/graphics/Palette;->mVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v3, v4}, Landroid/support/v7/graphics/Palette$Swatch;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    goto/16 :goto_0

    :cond_16
    iget-object v3, v0, Landroid/support/v7/graphics/Palette;->mVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/graphics/Palette;->mVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v7/graphics/Palette;->mSwatches:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Landroid/support/v7/graphics/Palette;->mVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v7/graphics/Palette;->mVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Landroid/support/v7/graphics/Palette;->mMutedSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/graphics/Palette;->mMutedSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Landroid/support/v7/graphics/Palette;->mDarkVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v7/graphics/Palette;->mDarkVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Landroid/support/v7/graphics/Palette;->mDarkMutedSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/support/v7/graphics/Palette;->mDarkMutedSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->hashCode()I

    move-result v2

    :goto_4
    add-int v0, v3, v2

    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Landroid/support/v7/graphics/Palette;->mLightVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/support/v7/graphics/Palette;->mLightVibrantSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->hashCode()I

    move-result v2

    :goto_5
    add-int v0, v3, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/support/v7/graphics/Palette;->mLightMutedColor:Landroid/support/v7/graphics/Palette$Swatch;

    if-eqz v3, :cond_0

    iget-object v1, p0, Landroid/support/v7/graphics/Palette;->mLightMutedColor:Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette$Swatch;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    move v2, v1

    goto :goto_4

    :cond_6
    move v2, v1

    goto :goto_5
.end method
