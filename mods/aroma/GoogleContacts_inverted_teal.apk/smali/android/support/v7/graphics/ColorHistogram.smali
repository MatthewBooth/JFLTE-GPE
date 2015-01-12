.class final Landroid/support/v7/graphics/ColorHistogram;
.super Ljava/lang/Object;
.source "ColorHistogram.java"


# instance fields
.field private final mColorCounts:[I

.field private final mColors:[I

.field private final mNumberColors:I


# direct methods
.method constructor <init>([I)V
    .locals 1
    .param p1    # [I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    invoke-static {p1}, Landroid/support/v7/graphics/ColorHistogram;->countDistinctColors([I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/graphics/ColorHistogram;->mNumberColors:I

    iget v0, p0, Landroid/support/v7/graphics/ColorHistogram;->mNumberColors:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/graphics/ColorHistogram;->mColors:[I

    iget v0, p0, Landroid/support/v7/graphics/ColorHistogram;->mNumberColors:I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v7/graphics/ColorHistogram;->mColorCounts:[I

    invoke-direct {p0, p1}, Landroid/support/v7/graphics/ColorHistogram;->countFrequencies([I)V

    return-void
.end method

.method private static countDistinctColors([I)I
    .locals 5
    .param p0    # [I

    array-length v3, p0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    array-length v0, p0

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    const/4 v3, 0x0

    aget v1, p0, v3

    const/4 v2, 0x1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget v3, p0, v2

    if-eq v3, v1, :cond_2

    aget v1, p0, v2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private countFrequencies([I)V
    .locals 6
    .param p1    # [I

    const/4 v5, 0x1

    array-length v3, p1

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    aget v0, p1, v3

    iget-object v3, p0, Landroid/support/v7/graphics/ColorHistogram;->mColors:[I

    aput v0, v3, v1

    iget-object v3, p0, Landroid/support/v7/graphics/ColorHistogram;->mColorCounts:[I

    aput v5, v3, v1

    array-length v3, p1

    if-eq v3, v5, :cond_0

    const/4 v2, 0x1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget v3, p1, v2

    if-ne v3, v0, :cond_2

    iget-object v3, p0, Landroid/support/v7/graphics/ColorHistogram;->mColorCounts:[I

    aget v4, v3, v1

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    aget v0, p1, v2

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Landroid/support/v7/graphics/ColorHistogram;->mColors:[I

    aput v0, v3, v1

    iget-object v3, p0, Landroid/support/v7/graphics/ColorHistogram;->mColorCounts:[I

    aput v5, v3, v1

    goto :goto_1
.end method


# virtual methods
.method getColorCounts()[I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/graphics/ColorHistogram;->mColorCounts:[I

    return-object v0
.end method

.method getColors()[I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/graphics/ColorHistogram;->mColors:[I

    return-object v0
.end method

.method getNumberOfColors()I
    .locals 1

    iget v0, p0, Landroid/support/v7/graphics/ColorHistogram;->mNumberColors:I

    return v0
.end method
