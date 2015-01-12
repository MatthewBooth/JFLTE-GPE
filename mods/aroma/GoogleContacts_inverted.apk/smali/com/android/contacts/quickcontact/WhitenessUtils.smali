.class public Lcom/android/contacts/quickcontact/WhitenessUtils;
.super Ljava/lang/Object;
.source "WhitenessUtils.java"


# direct methods
.method private static calculateXyzLuma(I)F
    .locals 3
    .param p0    # I

    const v0, 0x3e59b3d0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x3f371759

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const v1, 0x3d93dd98

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x437f0000

    div-float/2addr v0, v1

    return v0
.end method

.method public static isBitmapWhiteAtTopOrBottom(Landroid/graphics/Bitmap;)Z
    .locals 13
    .param p0    # Landroid/graphics/Bitmap;

    const-string v2, "isBitmapWhiteAtTopOrBottom"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/android/contacts/quickcontact/WhitenessUtils;->scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v1, v2, [I

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_0
    int-to-float v2, v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e4ccccd

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f2b851e

    mul-float/2addr v2, v3

    float-to-int v11, v2

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v11, v2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v2, v12

    add-int/2addr v2, v11

    aget v8, v1, v2

    invoke-static {v8}, Lcom/android/contacts/quickcontact/WhitenessUtils;->isWhite(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v10, v10, 0x1

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x3ea8f5c3

    mul-float/2addr v2, v3

    const v3, 0x3e4ccccd

    mul-float/2addr v2, v3

    float-to-int v9, v2

    int-to-float v2, v10

    int-to-float v3, v9

    div-float/2addr v2, v3

    const v3, 0x3dcccccd

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_2
    return v2

    :cond_3
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f4ccccd

    mul-float/2addr v2, v3

    float-to-int v12, v2

    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ge v12, v2, :cond_6

    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ge v11, v2, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int/2addr v2, v12

    add-int/2addr v2, v11

    aget v8, v1, v2

    invoke-static {v8}, Lcom/android/contacts/quickcontact/WhitenessUtils;->isWhite(I)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v10, v10, 0x1

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    const v3, 0x3e4ccccd

    mul-float/2addr v2, v3

    float-to-int v9, v2

    int-to-float v2, v10

    int-to-float v3, v9

    div-float/2addr v2, v3

    const v3, 0x3dcccccd

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    const/4 v2, 0x1

    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2
.end method

.method private static isWhite(I)Z
    .locals 2
    .param p0    # I

    invoke-static {p0}, Lcom/android/contacts/quickcontact/WhitenessUtils;->calculateXyzLuma(I)F

    move-result v0

    const v1, 0x3f666666

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0    # Landroid/graphics/Bitmap;

    const/16 v0, 0x64

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v3, 0x64

    if-gt v1, v3, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/high16 v3, 0x42c80000

    int-to-float v4, v1

    div-float v2, v3, v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method
