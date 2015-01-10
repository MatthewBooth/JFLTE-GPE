.class public Lcom/android/systemui/recents/views/FixedSizeImageView;
.super Landroid/widget/ImageView;
.source "FixedSizeImageView.java"


# instance fields
.field mAllowInvalidate:Z

.field mAllowRelayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/FixedSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/FixedSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/FixedSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I
    .param p4    # I

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    move v0, v2

    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    return-void

    :cond_2
    move v0, v3

    goto :goto_0
.end method
