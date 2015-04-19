.class public Lcom/android/contacts/widget/QuickContactImageView;
.super Landroid/widget/ImageView;
.source "QuickContactImageView.java"


# instance fields
.field private mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mIsBusiness:Z

.field private mOriginalDrawable:Landroid/graphics/drawable/Drawable;

.field private mTintColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/widget/QuickContactImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/widget/QuickContactImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/contacts/widget/QuickContactImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I
    .param p4    # I

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/widget/QuickContactImageView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isBasedOffLetterTile()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/widget/QuickContactImageView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    return v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1    # Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    :goto_0
    iput-object p1, p0, Lcom/android/contacts/widget/QuickContactImageView;->mOriginalDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/contacts/widget/QuickContactImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget v1, p0, Lcom/android/contacts/widget/QuickContactImageView;->mTintColor:I

    invoke-virtual {p0, v1}, Lcom/android/contacts/widget/QuickContactImageView;->setTint(I)V

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    instance-of v1, p1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/contacts/widget/QuickContactImageView;->mIsBusiness:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/widget/QuickContactImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/widget/QuickContactImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Does not support this type of drawable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setIsBusiness(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/widget/QuickContactImageView;->mIsBusiness:Z

    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/contacts/widget/QuickContactImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/widget/QuickContactImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/widget/QuickContactImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/widget/QuickContactImageView;->setBackgroundColor(I)V

    :goto_0
    iput p1, p0, Lcom/android/contacts/widget/QuickContactImageView;->mTintColor:I

    invoke-virtual {p0}, Lcom/android/contacts/widget/QuickContactImageView;->postInvalidate()V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/widget/QuickContactImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
