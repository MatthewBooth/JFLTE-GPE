.class public Lcom/android/contacts/common/util/MaterialColorMapUtils;
.super Ljava/lang/Object;
.source "MaterialColorMapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    }
.end annotation


# instance fields
.field private final sPrimaryColors:Landroid/content/res/TypedArray;

.field private final sSecondaryColors:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1    # Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x7f0c0000

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    const v0, 0x7f0c0001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils;->sSecondaryColors:Landroid/content/res/TypedArray;

    return-void
.end method

.method public static getDefaultPrimaryAndSecondaryColors(Landroid/content/res/Resources;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 3
    .param p0    # Landroid/content/res/Resources;

    const v2, 0x7f07001f

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v2, 0x7f070020

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    new-instance v2, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    invoke-direct {v2, v0, v1}, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;-><init>(II)V

    return-object v2
.end method

.method public static hue(I)F
    .locals 11
    .param p0    # I

    shr-int/lit8 v10, p0, 0x10

    and-int/lit16 v7, v10, 0xff

    shr-int/lit8 v10, p0, 0x8

    and-int/lit16 v6, v10, 0xff

    and-int/lit16 v2, p0, 0xff

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    if-ne v1, v8, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    sub-int v10, v1, v8

    int-to-float v9, v10

    sub-int v10, v1, v7

    int-to-float v10, v10

    div-float v5, v10, v9

    sub-int v10, v1, v6

    int-to-float v10, v10

    div-float v4, v10, v9

    sub-int v10, v1, v2

    int-to-float v10, v10

    div-float v3, v10, v9

    if-ne v7, v1, :cond_2

    sub-float v0, v3, v4

    :goto_1
    const/high16 v10, 0x40c00000

    div-float/2addr v0, v10

    const/4 v10, 0x0

    cmpg-float v10, v0, v10

    if-gez v10, :cond_0

    const/high16 v10, 0x3f800000

    add-float/2addr v0, v10

    goto :goto_0

    :cond_2
    if-ne v6, v1, :cond_3

    const/high16 v10, 0x40000000

    add-float/2addr v10, v5

    sub-float v0, v10, v3

    goto :goto_1

    :cond_3
    const/high16 v10, 0x40800000

    add-float/2addr v10, v4

    sub-float v0, v10, v5

    goto :goto_1
.end method


# virtual methods
.method public calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 11
    .param p1    # I

    const/4 v10, 0x0

    const-string v7, "calculatePrimaryAndSecondaryColor"

    invoke-static {v7}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/contacts/common/util/MaterialColorMapUtils;->hue(I)F

    move-result v0

    const v5, 0x7f7fffff

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_1

    iget-object v7, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v7, v3, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    invoke-static {v6}, Lcom/android/contacts/common/util/MaterialColorMapUtils;->hue(I)F

    move-result v1

    sub-float v7, v1, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v7, v2, v5

    if-gez v7, :cond_0

    move v5, v2

    move v4, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v7, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    iget-object v8, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils;->sPrimaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v8, v4, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    iget-object v9, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils;->sSecondaryColors:Landroid/content/res/TypedArray;

    invoke-virtual {v9, v4, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    invoke-direct {v7, v8, v9}, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;-><init>(II)V

    return-object v7
.end method
