.class public Lcom/android/systemui/recents/misc/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field private static sPropertyMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    :try_start_0
    const-string v2, "android.view.GLES20Canvas"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "setProperty"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/recents/misc/Utilities;->sPropertyMethod:Ljava/lang/reflect/Method;

    sget-object v2, Lcom/android/systemui/recents/misc/Utilities;->sPropertyMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/systemui/recents/misc/Utilities;->sPropertyMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method

.method public static computeContrastBetweenColors(II)F
    .locals 12
    .param p0    # I
    .param p1    # I

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000

    div-float v3, v8, v9

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000

    div-float v1, v8, v9

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000

    div-float v0, v8, v9

    const v8, 0x3d20e411

    cmpg-float v8, v3, v8

    if-gez v8, :cond_0

    const v8, 0x414eb852

    div-float/2addr v3, v8

    :goto_0
    const v8, 0x3d20e411

    cmpg-float v8, v1, v8

    if-gez v8, :cond_1

    const v8, 0x414eb852

    div-float/2addr v1, v8

    :goto_1
    const v8, 0x3d20e411

    cmpg-float v8, v0, v8

    if-gez v8, :cond_2

    const v8, 0x414eb852

    div-float/2addr v0, v8

    :goto_2
    const v8, 0x3e59b3d0

    mul-float/2addr v8, v3

    const v9, 0x3f371759

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    const v9, 0x3d93dd98

    mul-float/2addr v9, v0

    add-float v2, v8, v9

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000

    div-float v7, v8, v9

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000

    div-float v5, v8, v9

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x437f0000

    div-float v4, v8, v9

    const v8, 0x3d20e411

    cmpg-float v8, v7, v8

    if-gez v8, :cond_3

    const v8, 0x414eb852

    div-float/2addr v7, v8

    :goto_3
    const v8, 0x3d20e411

    cmpg-float v8, v5, v8

    if-gez v8, :cond_4

    const v8, 0x414eb852

    div-float/2addr v5, v8

    :goto_4
    const v8, 0x3d20e411

    cmpg-float v8, v4, v8

    if-gez v8, :cond_5

    const v8, 0x414eb852

    div-float/2addr v4, v8

    :goto_5
    const v8, 0x3e59b3d0

    mul-float/2addr v8, v7

    const v9, 0x3f371759

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    const v9, 0x3d93dd98

    mul-float/2addr v9, v4

    add-float v6, v8, v9

    const v8, 0x3d4ccccd

    add-float/2addr v8, v6

    const v9, 0x3d4ccccd

    add-float/2addr v9, v2

    div-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    return v8

    :cond_0
    const v8, 0x3d6147ae

    add-float/2addr v8, v3

    const v9, 0x3f870a3d

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x4003333340000000L

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v3, v8

    goto/16 :goto_0

    :cond_1
    const v8, 0x3d6147ae

    add-float/2addr v8, v1

    const v9, 0x3f870a3d

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x4003333340000000L

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v1, v8

    goto/16 :goto_1

    :cond_2
    const v8, 0x3d6147ae

    add-float/2addr v8, v0

    const v9, 0x3f870a3d

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x4003333340000000L

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v0, v8

    goto/16 :goto_2

    :cond_3
    const v8, 0x3d6147ae

    add-float/2addr v8, v7

    const v9, 0x3f870a3d

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x4003333340000000L

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v7, v8

    goto/16 :goto_3

    :cond_4
    const v8, 0x3d6147ae

    add-float/2addr v8, v5

    const v9, 0x3f870a3d

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x4003333340000000L

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v5, v8

    goto/16 :goto_4

    :cond_5
    const v8, 0x3d6147ae

    add-float/2addr v8, v4

    const v9, 0x3f870a3d

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide v10, 0x4003333340000000L

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v4, v8

    goto/16 :goto_5
.end method

.method public static getColorWithOverlay(IIF)I
    .locals 5
    .param p0    # I
    .param p1    # I
    .param p2    # F

    const/high16 v4, 0x3f800000

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    sub-float v1, v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    sub-float v2, v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    sub-float v3, v4, p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static isDocument(Landroid/content/Intent;)Z
    .locals 3
    .param p0    # Landroid/content/Intent;

    const/high16 v2, 0x80000

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    and-int v1, v0, v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static mapCoordInDescendentToSelf(Landroid/view/View;Landroid/view/View;[FZ)F
    .locals 11
    .param p0    # Landroid/view/View;
    .param p1    # Landroid/view/View;
    .param p2    # [F
    .param p3    # Z

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x2

    new-array v3, v7, [F

    aget v7, p2, v9

    aput v7, v3, v9

    aget v7, p2, v10

    aput v7, v3, v10

    move-object v5, p0

    :goto_0
    if-eq v5, p1, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v4, 0x3f800000

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    if-ne v6, p0, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    aget v7, v3, v9

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    aput v7, v3, v9

    aget v7, v3, v10

    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    aput v7, v3, v10

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v7, v3, v9

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v3, v9

    aget v7, v3, v10

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v3, v10

    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v7

    mul-float/2addr v4, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    aget v7, v3, v9

    aput v7, p2, v9

    aget v7, v3, v10

    aput v7, p2, v10

    return v4
.end method

.method public static mapCoordInSelfToDescendent(Landroid/view/View;Landroid/view/View;[FLandroid/graphics/Matrix;)F
    .locals 12
    .param p0    # Landroid/view/View;
    .param p1    # Landroid/view/View;
    .param p2    # [F
    .param p3    # Landroid/graphics/Matrix;

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x2

    new-array v5, v8, [F

    aget v8, p2, v10

    aput v8, v5, v10

    aget v8, p2, v11

    aput v8, v5, v11

    move-object v7, p0

    :goto_0
    if-eq v7, p1, :cond_0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/high16 v6, 0x3f800000

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget-object v8, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {p3, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-ltz v3, :cond_3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-lez v3, :cond_2

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    move-object v4, v8

    :goto_2
    aget v8, v5, v10

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v5, v10

    aget v8, v5, v11

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v5, v11

    if-eqz v4, :cond_1

    aget v8, v5, v10

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v5, v10

    aget v8, v5, v11

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v5, v11

    invoke-virtual {v4}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v8, p3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p3, v5}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {v4}, Landroid/view/View;->getScaleX()F

    move-result v8

    mul-float/2addr v6, v8

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    aget v8, v5, v10

    aput v8, p2, v10

    aget v8, v5, v11

    aput v8, p2, v11

    return v6
.end method

.method public static scaleRectAboutCenter(Landroid/graphics/Rect;F)V
    .locals 5
    .param p0    # Landroid/graphics/Rect;
    .param p1    # F

    const/high16 v4, 0x3f000000

    const/high16 v2, 0x3f800000

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    neg-int v2, v0

    neg-int v3, v1

    invoke-virtual {p0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget v2, p0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    return-void
.end method

.method public static setShadowProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/recents/misc/Utilities;->sPropertyMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
