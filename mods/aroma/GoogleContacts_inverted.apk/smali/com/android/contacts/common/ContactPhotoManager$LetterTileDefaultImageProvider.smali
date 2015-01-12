.class Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;
.super Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/ContactPhotoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LetterTileDefaultImageProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/common/ContactPhotoManager$1;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/ContactPhotoManager$1;

    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;-><init>()V

    return-void
.end method

.method public static getDefaultImageForContact(Landroid/content/res/Resources;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0    # Landroid/content/res/Resources;
    .param p1    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    new-instance v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;-><init>(Landroid/content/res/Resources;)V

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->identifier:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setContactDetails(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget v1, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->contactType:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setContactType(I)V

    iget v1, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->scale:F

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setScale(F)V

    iget v1, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->offset:F

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setOffset(F)V

    iget-boolean v1, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setIsCircular(Z)V

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->displayName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->setContactDetails(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V
    .locals 2
    .param p1    # Landroid/widget/ImageView;
    .param p2    # I
    .param p3    # Z
    .param p4    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p4}, Lcom/android/contacts/common/ContactPhotoManager$LetterTileDefaultImageProvider;->getDefaultImageForContact(Landroid/content/res/Resources;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
