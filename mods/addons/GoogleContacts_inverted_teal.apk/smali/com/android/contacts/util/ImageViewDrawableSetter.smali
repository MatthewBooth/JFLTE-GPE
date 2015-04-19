.class public Lcom/android/contacts/util/ImageViewDrawableSetter;
.super Ljava/lang/Object;
.source "ImageViewDrawableSetter.java"


# instance fields
.field private mCompressed:[B

.field private mContact:Lcom/android/contacts/common/model/Contact;

.field private mDurationInMillis:I

.field private mPreviousDrawable:Landroid/graphics/drawable/Drawable;

.field private mTarget:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mDurationInMillis:I

    return-void
.end method

.method private decodedBitmapDrawable([B)Landroid/graphics/drawable/BitmapDrawable;
    .locals 5
    .param p1    # [B

    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v3
.end method

.method private defaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->isDisplayNameFromOrganization()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    :goto_0
    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Lcom/android/contacts/common/ContactPhotoManager;->getDefaultAvatarDrawableForContact(Landroid/content/res/Resources;ZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    :cond_1
    new-instance v1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/common/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {v4}, Lcom/android/contacts/common/model/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method private previousBitmap()Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected setCompressedImage([B)Landroid/graphics/Bitmap;
    .locals 5
    .param p1    # [B

    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    :cond_0
    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->defaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    iput-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/contacts/util/ImageViewDrawableSetter;->decodedBitmapDrawable([B)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mDurationInMillis:I

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    iput-object v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->previousBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    aput-object v4, v0, v3

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget v3, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mDurationInMillis:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_2
.end method

.method protected setTarget(Landroid/widget/ImageView;)V
    .locals 2
    .param p1    # Landroid/widget/ImageView;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mTarget:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mCompressed:[B

    iput-object v1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mPreviousDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method public setupContactPhoto(Lcom/android/contacts/common/model/Contact;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # Lcom/android/contacts/common/model/Contact;
    .param p2    # Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/contacts/util/ImageViewDrawableSetter;->mContact:Lcom/android/contacts/common/model/Contact;

    invoke-virtual {p0, p2}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setTarget(Landroid/widget/ImageView;)V

    invoke-virtual {p1}, Lcom/android/contacts/common/model/Contact;->getPhotoBinaryData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setCompressedImage([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
