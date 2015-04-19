.class final Landroid/support/v7/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# direct methods
.method static HSLtoRGB([F)I
    .locals 13
    .param p0    # [F

    const/4 v10, 0x0

    aget v3, p0, v10

    const/4 v10, 0x1

    aget v8, p0, v10

    const/4 v10, 0x2

    aget v5, p0, v10

    const/high16 v10, 0x3f800000

    const/high16 v11, 0x40000000

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f800000

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    mul-float v1, v10, v8

    const/high16 v10, 0x3f000000

    mul-float/2addr v10, v1

    sub-float v6, v5, v10

    const/high16 v10, 0x3f800000

    const/high16 v11, 0x42700000

    div-float v11, v3, v11

    const/high16 v12, 0x40000000

    rem-float/2addr v11, v12

    const/high16 v12, 0x3f800000

    sub-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    sub-float/2addr v10, v11

    mul-float v9, v1, v10

    float-to-int v10, v3

    div-int/lit8 v4, v10, 0x3c

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    packed-switch v4, :pswitch_data_0

    :goto_0
    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v11, v7}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v10, 0x0

    const/16 v11, 0xff

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v7, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    return v10

    :pswitch_0
    const/high16 v10, 0x437f0000

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/high16 v10, 0x437f0000

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v10, 0x437f0000

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const/high16 v10, 0x437f0000

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/high16 v10, 0x437f0000

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v10, 0x437f0000

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :pswitch_2
    const/high16 v10, 0x437f0000

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/high16 v10, 0x437f0000

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v10, 0x437f0000

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :pswitch_3
    const/high16 v10, 0x437f0000

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/high16 v10, 0x437f0000

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v10, 0x437f0000

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto/16 :goto_0

    :pswitch_4
    const/high16 v10, 0x437f0000

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/high16 v10, 0x437f0000

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v10, 0x437f0000

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto/16 :goto_0

    :pswitch_5
    const/high16 v10, 0x437f0000

    add-float v11, v1, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    const/high16 v10, 0x437f0000

    mul-float/2addr v10, v6

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/high16 v10, 0x437f0000

    add-float v11, v9, v6

    mul-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method static RGBtoHSL(III[F)V
    .locals 12
    .param p0    # I
    .param p1    # I
    .param p2    # I
    .param p3    # [F

    int-to-float v9, p0

    const/high16 v10, 0x437f0000

    div-float v7, v9, v10

    int-to-float v9, p1

    const/high16 v10, 0x437f0000

    div-float v2, v9, v10

    int-to-float v9, p2

    const/high16 v10, 0x437f0000

    div-float v0, v9, v10

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    sub-float v1, v5, v6

    add-float v9, v5, v6

    const/high16 v10, 0x40000000

    div-float v4, v9, v10

    cmpl-float v9, v5, v6

    if-nez v9, :cond_0

    const/4 v8, 0x0

    move v3, v8

    :goto_0
    const/4 v9, 0x0

    const/high16 v10, 0x42700000

    mul-float/2addr v10, v3

    const/high16 v11, 0x43b40000

    rem-float/2addr v10, v11

    aput v10, p3, v9

    const/4 v9, 0x1

    aput v8, p3, v9

    const/4 v9, 0x2

    aput v4, p3, v9

    return-void

    :cond_0
    cmpl-float v9, v5, v7

    if-nez v9, :cond_1

    sub-float v9, v2, v0

    div-float/2addr v9, v1

    const/high16 v10, 0x40c00000

    rem-float v3, v9, v10

    :goto_1
    const/high16 v9, 0x3f800000

    const/high16 v10, 0x40000000

    mul-float/2addr v10, v4

    const/high16 v11, 0x3f800000

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v9, v10

    div-float v8, v1, v9

    goto :goto_0

    :cond_1
    cmpl-float v9, v5, v2

    if-nez v9, :cond_2

    sub-float v9, v0, v7

    div-float/2addr v9, v1

    const/high16 v10, 0x40000000

    add-float v3, v9, v10

    goto :goto_1

    :cond_2
    sub-float v9, v7, v2

    div-float/2addr v9, v1

    const/high16 v10, 0x40800000

    add-float v3, v9, v10

    goto :goto_1
.end method
