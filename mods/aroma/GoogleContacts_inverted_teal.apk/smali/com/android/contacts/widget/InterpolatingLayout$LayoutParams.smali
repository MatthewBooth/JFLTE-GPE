.class public final Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "InterpolatingLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/widget/InterpolatingLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LayoutParams"
.end annotation


# instance fields
.field private leftMarginConstant:I

.field private leftMarginMultiplier:F

.field private leftPaddingConstant:I

.field private leftPaddingMultiplier:F

.field public narrowMarginLeft:I

.field public narrowMarginRight:I

.field public narrowPaddingLeft:I

.field public narrowPaddingRight:I

.field public narrowParentWidth:I

.field public narrowWidth:I

.field private rightMarginConstant:I

.field private rightMarginMultiplier:F

.field private rightPaddingConstant:I

.field private rightPaddingMultiplier:F

.field public wideMarginLeft:I

.field public wideMarginRight:I

.field public widePaddingLeft:I

.field public widePaddingRight:I

.field public wideParentWidth:I

.field public wideWidth:I

.field private widthConstant:I

.field private widthMultiplier:F


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v4, -0x1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v1, Lcom/android/contacts/R$styleable;->InterpolatingLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowWidth:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowMarginLeft:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingLeft:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowMarginRight:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingRight:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideParentWidth:I

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideWidth:I

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideMarginLeft:I

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->widePaddingLeft:I

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideMarginRight:I

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->widePaddingRight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowWidth:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideWidth:I

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowWidth:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideParentWidth:I

    iget v3, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->widthMultiplier:F

    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->widthMultiplier:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->widthConstant:I

    :cond_0
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowMarginLeft:I

    if-eq v1, v4, :cond_1

    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideMarginLeft:I

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowMarginLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideParentWidth:I

    iget v3, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftMarginMultiplier:F

    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowMarginLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftMarginMultiplier:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftMarginConstant:I

    :cond_1
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingLeft:I

    if-eq v1, v4, :cond_2

    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->widePaddingLeft:I

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideParentWidth:I

    iget v3, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftPaddingMultiplier:F

    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingLeft:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftPaddingMultiplier:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftPaddingConstant:I

    :cond_2
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowMarginRight:I

    if-eq v1, v4, :cond_3

    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideMarginRight:I

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowMarginRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideParentWidth:I

    iget v3, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightMarginMultiplier:F

    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowMarginRight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightMarginMultiplier:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightMarginConstant:I

    :cond_3
    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingRight:I

    if-eq v1, v4, :cond_4

    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->widePaddingRight:I

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingRight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->wideParentWidth:I

    iget v3, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightPaddingMultiplier:F

    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingRight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowParentWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightPaddingMultiplier:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightPaddingConstant:I

    :cond_4
    return-void
.end method


# virtual methods
.method public resolveLeftMargin(I)I
    .locals 3
    .param p1    # I

    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowMarginLeft:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftMargin:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftMarginMultiplier:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftMarginConstant:I

    add-int v0, v1, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resolveLeftPadding(I)I
    .locals 3
    .param p1    # I

    int-to-float v1, p1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftPaddingMultiplier:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->leftPaddingConstant:I

    add-int v0, v1, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public resolveRightMargin(I)I
    .locals 3
    .param p1    # I

    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowMarginRight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightMargin:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightMarginMultiplier:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightMarginConstant:I

    add-int v0, v1, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resolveRightPadding(I)I
    .locals 3
    .param p1    # I

    int-to-float v1, p1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightPaddingMultiplier:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->rightPaddingConstant:I

    add-int v0, v1, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public resolveWidth(I)I
    .locals 3
    .param p1    # I

    iget v1, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->width:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->widthMultiplier:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->widthConstant:I

    add-int v0, v1, v2

    if-gtz v0, :cond_0

    const/4 v0, -0x2

    goto :goto_0
.end method
