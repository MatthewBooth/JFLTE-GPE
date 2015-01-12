.class final Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
.super Ljava/lang/Object;
.source "ContactPhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/ContactPhotoManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Request"
.end annotation


# instance fields
.field private final mDarkTheme:Z

.field private final mDefaultProvider:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

.field private final mId:J

.field private final mIsCircular:Z

.field private final mRequestedExtent:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(JLandroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
    .locals 1
    .param p1    # J
    .param p3    # Landroid/net/Uri;
    .param p4    # I
    .param p5    # Z
    .param p6    # Z
    .param p7    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    iput-object p3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    iput-boolean p5, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mDarkTheme:Z

    iput-boolean p6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mIsCircular:Z

    iput p4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    iput-object p7, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mDefaultProvider:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Z
    .locals 1
    .param p0    # Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    iget-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mIsCircular:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)J
    .locals 2
    .param p0    # Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    iget-wide v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    return-wide v0
.end method

.method public static createFromThumbnailId(JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    .locals 10
    .param p0    # J
    .param p2    # Z
    .param p3    # Z
    .param p4    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    new-instance v1, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-wide v2, p0

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;-><init>(JLandroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    return-object v1
.end method

.method public static createFromUri(Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    .locals 9
    .param p0    # Landroid/net/Uri;
    .param p1    # I
    .param p2    # Z
    .param p3    # Z
    .param p4    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    new-instance v1, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    const-wide/16 v2, 0x0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;-><init>(JLandroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    return-object v1
.end method


# virtual methods
.method public applyDefaultImage(Landroid/widget/ImageView;Z)V
    .locals 4
    .param p1    # Landroid/widget/ImageView;
    .param p2    # Z

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/android/contacts/common/ContactPhotoManager;->isBusinessContactUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_CIRCULAR_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    :goto_0
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mDefaultProvider:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    iget v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    iget-boolean v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mDarkTheme:Z

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_CIRCULAR_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/android/contacts/common/ContactPhotoManager;->isBusinessContactUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_DEFAULT_BUSINESS_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    :goto_1
    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->EMPTY_DEFAULT_IMAGE_REQUEST:Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    goto :goto_1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    iget-wide v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    iget-wide v6, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    iget v4, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    iget-object v4, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getRequestedExtent()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    iget-wide v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mId:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mRequestedExtent:I

    add-int v1, v2, v3

    mul-int/lit8 v3, v1, 0x1f

    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v1, v3, v2

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isUriRequest()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
