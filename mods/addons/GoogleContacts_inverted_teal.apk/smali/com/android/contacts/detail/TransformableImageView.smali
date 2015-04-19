.class public Lcom/android/contacts/detail/TransformableImageView;
.super Landroid/widget/ImageView;
.source "TransformableImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;

    const/high16 v11, 0x3f000000

    invoke-virtual {p0}, Lcom/android/contacts/detail/TransformableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v9, p0, Lcom/android/contacts/detail/TransformableImageView;->mPaddingLeft:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/contacts/detail/TransformableImageView;->mPaddingTop:I

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p0}, Lcom/android/contacts/detail/TransformableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/contacts/detail/TransformableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/contacts/detail/TransformableImageView;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/android/contacts/detail/TransformableImageView;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/contacts/detail/TransformableImageView;->mPaddingRight:I

    sub-int v8, v9, v10

    invoke-virtual {p0}, Lcom/android/contacts/detail/TransformableImageView;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/android/contacts/detail/TransformableImageView;->mPaddingTop:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/contacts/detail/TransformableImageView;->mPaddingBottom:I

    sub-int v7, v9, v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    mul-int v9, v2, v7

    mul-int v10, v8, v0

    if-le v9, v10, :cond_1

    int-to-float v9, v7

    int-to-float v10, v0

    div-float v6, v9, v10

    int-to-float v9, v8

    int-to-float v10, v2

    mul-float/2addr v10, v6

    sub-float/2addr v9, v10

    mul-float v3, v9, v11

    :goto_1
    invoke-virtual {v1, v6, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    add-float v9, v3, v11

    float-to-int v9, v9

    int-to-float v9, v9

    add-float v10, v4, v11

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {p0}, Lcom/android/contacts/detail/TransformableImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_1
    int-to-float v9, v8

    int-to-float v10, v2

    div-float v6, v9, v10

    int-to-float v9, v7

    int-to-float v10, v0

    mul-float/2addr v10, v6

    sub-float/2addr v9, v10

    mul-float v4, v9, v11

    goto :goto_1
.end method
