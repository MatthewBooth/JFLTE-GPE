.class Lcom/android/contacts/common/ContactPhotoManagerImpl;
.super Lcom/android/contacts/common/ContactPhotoManager;
.source "ContactPhotoManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;,
        Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;,
        Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static mThumbnailSize:I


# instance fields
.field private final mBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mBitmapHolderCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mBitmapHolderCacheAllUnfresh:Z

.field private final mBitmapHolderCacheRedZoneBytes:I

.field private final mContext:Landroid/content/Context;

.field private final mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLoaderThread:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

.field private mLoadingRequested:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private final mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/widget/ImageView;",
            "Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "data15"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManager;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mStaleCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mFreshCacheOverwrite:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v4

    if-eqz v4, :cond_0

    const/high16 v2, 0x3f000000

    :goto_0
    const/high16 v4, 0x49d80000

    mul-float/2addr v4, v2

    float-to-int v1, v4

    new-instance v4, Lcom/android/contacts/common/ContactPhotoManagerImpl$1;

    invoke-direct {v4, p0, v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl$1;-><init>(Lcom/android/contacts/common/ContactPhotoManagerImpl;I)V

    iput-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    const v4, 0x49f42400

    mul-float/2addr v4, v2

    float-to-int v3, v4

    new-instance v4, Lcom/android/contacts/common/ContactPhotoManagerImpl$2;

    invoke-direct {v4, p0, v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$2;-><init>(Lcom/android/contacts/common/ContactPhotoManagerImpl;I)V

    iput-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    int-to-double v4, v3

    const-wide/high16 v6, 0x3fe8000000000000L

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    const-string v4, "ContactPhotoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cache adj: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08003e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sput v4, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mThumbnailSize:I

    return-void

    :cond_0
    const/high16 v2, 0x3f800000

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/util/LruCache;
    .locals 1
    .param p0    # Lcom/android/contacts/common/ContactPhotoManagerImpl;

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/common/ContactPhotoManagerImpl;)I
    .locals 1
    .param p0    # Lcom/android/contacts/common/ContactPhotoManagerImpl;

    iget v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheRedZoneBytes:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0
    .param p0    # Lcom/android/contacts/common/ContactPhotoManagerImpl;
    .param p1    # Ljava/util/Set;
    .param p2    # Ljava/util/Set;
    .param p3    # Ljava/util/Set;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/common/ContactPhotoManagerImpl;Ljava/lang/Object;[BZI)V
    .locals 0
    .param p0    # Lcom/android/contacts/common/ContactPhotoManagerImpl;
    .param p1    # Ljava/lang/Object;
    .param p2    # [B
    .param p3    # Z
    .param p4    # I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->cacheBitmap(Ljava/lang/Object;[BZI)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/common/ContactPhotoManagerImpl;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/contacts/common/ContactPhotoManagerImpl;

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cacheBitmap(Ljava/lang/Object;[BZI)V
    .locals 2
    .param p1    # Ljava/lang/Object;
    .param p2    # [B
    .param p3    # Z
    .param p4    # I

    new-instance v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    if-nez p2, :cond_1

    const/4 v1, -0x1

    :goto_0
    invoke-direct {v0, p2, v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;-><init>([BI)V

    if-nez p3, :cond_0

    invoke-static {v0, p4}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;I)V

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    return-void

    :cond_1
    invoke-static {p2}, Lcom/android/contacts/common/util/BitmapUtil;->getSmallerExtentFromBytes([B)I

    move-result v1

    goto :goto_0
.end method

.method private createAndApplyDefaultImageForUri(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
    .param p2    # Landroid/net/Uri;
    .param p3    # I
    .param p4    # Z
    .param p5    # Z
    .param p6    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    invoke-static {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->getDefaultImageRequestFromUri(Landroid/net/Uri;)Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    move-result-object v0

    iput-boolean p5, v0, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;->isCircular:Z

    invoke-virtual {p6, p1, p3, p4, v0}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    return-void
.end method

.method private getDrawableForBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # Landroid/content/res/Resources;
    .param p2    # Landroid/graphics/Bitmap;
    .param p3    # Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    # getter for: Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mIsCircular:Z
    invoke-static {p3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->access$000(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private static inflateBitmap(Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;I)V
    .locals 8
    .param p0    # Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;
    .param p1    # I

    iget v6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->originalSmallerExtent:I

    invoke-static {v6, p1}, Lcom/android/contacts/common/util/BitmapUtil;->findOptimalSampleSize(II)I

    move-result v4

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v1, :cond_0

    array-length v6, v1

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->decodedSampleSize:I

    if-ne v4, v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    iput-object v6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_0

    :cond_2
    :try_start_0
    invoke-static {v1, v4}, Lcom/android/contacts/common/util/BitmapUtil;->decodeBitmapFromBytes([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-eq v3, v5, :cond_3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    sget v7, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mThumbnailSize:I

    mul-int/lit8 v7, v7, 0x2

    if-gt v6, v7, :cond_3

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v2, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_3
    iput v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->decodedSampleSize:I

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private static isChildView(Landroid/view/View;Landroid/view/View;)Z
    .locals 1
    .param p0    # Landroid/view/View;
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->isChildView(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;Z)Z
    .locals 10
    .param p1    # Landroid/widget/ImageView;
    .param p2    # Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;
    .param p3    # Z

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    if-nez v2, :cond_0

    # getter for: Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mIsCircular:Z
    invoke-static {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->access$000(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Z

    move-result v6

    invoke-virtual {p2, p1, v6}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;Z)V

    move v6, v7

    :goto_0
    return v6

    :cond_0
    iget-object v6, v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-nez v6, :cond_1

    # getter for: Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mIsCircular:Z
    invoke-static {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->access$000(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Z

    move-result v6

    invoke-virtual {p2, p1, v6}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;Z)V

    iget-boolean v6, v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0

    :cond_1
    iget-object v6, v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-nez v6, :cond_2

    move-object v0, v8

    :goto_1
    if-nez v0, :cond_4

    iget-object v6, v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    array-length v6, v6

    const/16 v9, 0x2000

    if-ge v6, v9, :cond_3

    invoke-virtual {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v6

    invoke-static {v2, v6}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;I)V

    iget-object v0, v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    move v6, v7

    goto :goto_0

    :cond_2
    iget-object v6, v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    move-object v0, v6

    goto :goto_1

    :cond_3
    # getter for: Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mIsCircular:Z
    invoke-static {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->access$000(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Z

    move-result v6

    invoke-virtual {p2, p1, v6}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->applyDefaultImage(Landroid/widget/ImageView;Z)V

    move v6, v7

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz p3, :cond_7

    if-eqz v4, :cond_7

    const/4 v6, 0x2

    new-array v3, v6, [Landroid/graphics/drawable/Drawable;

    instance-of v6, v4, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v6, :cond_6

    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/TransitionDrawable;->getNumberOfLayers()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v7

    :goto_2
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v7, v0, p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->getDrawableForBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v3, v6

    new-instance v1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v6, 0xc8

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v6

    iget-object v7, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v7}, Landroid/util/LruCache;->maxSize()I

    move-result v7

    div-int/lit8 v7, v7, 0x6

    if-ge v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iput-object v8, v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    iget-boolean v6, v2, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto/16 :goto_0

    :cond_6
    aput-object v4, v3, v7

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {p0, v6, v0, p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->getDrawableForBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method

.method private loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)V
    .locals 2
    .param p1    # Landroid/widget/ImageView;
    .param p2    # Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->requestLoading()V

    goto :goto_0
.end method

.method private obtainPhotoIdsAndUrisToLoad(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    invoke-interface {p2}, Ljava/util/Set;->clear()V

    invoke-interface {p3}, Ljava/util/Set;->clear()V

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getRequestedExtent()I

    move-result v4

    invoke-static {v0, v4}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->inflateBitmap(Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;I)V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v4, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    if-nez v4, :cond_0

    :cond_3
    invoke-virtual {v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->isUriRequest()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p3, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    # getter for: Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->mId:J
    invoke-static {v3}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->access$100(Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    return-void
.end method

.method private processLoadedImages()V
    .locals 5

    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->loadCachedPhoto(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->softenCache()V

    iget-object v4, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->requestLoading()V

    :cond_2
    return-void
.end method

.method private requestLoading()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoadingRequested:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoadingRequested:Z

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private softenCache()V
    .locals 3

    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelPendingRequests(Landroid/view/View;)V
    .locals 7
    .param p1    # Landroid/view/View;

    if-nez p1, :cond_1

    iget-object v5, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v6

    new-array v6, v6, [Landroid/widget/ImageView;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/widget/ImageView;

    move-object v0, v4

    array-length v3, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {p1, v2}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->isChildView(Landroid/view/View;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public ensureLoaderThread()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;-><init>(Lcom/android/contacts/common/ContactPhotoManagerImpl;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->start()V

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1    # Landroid/os/Message;

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    iput-boolean v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoadingRequested:Z

    iget-boolean v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->ensureLoaderThread()V

    iget-object v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v1}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->requestLoading()V

    goto :goto_0

    :pswitch_1
    iget-boolean v1, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->processLoadedImages()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
    .locals 7
    .param p1    # Landroid/widget/ImageView;
    .param p2    # Landroid/net/Uri;
    .param p3    # I
    .param p4    # Z
    .param p5    # Z
    .param p6    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .param p7    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    if-nez p2, :cond_0

    invoke-virtual {p7, p1, p3, p4, p6}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->isDefaultImageUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->createAndApplyDefaultImageForUri(Landroid/widget/ImageView;Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V

    goto :goto_0

    :cond_1
    invoke-static {p2, p3, p4, p5, p7}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->createFromUri(Landroid/net/Uri;IZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)V

    goto :goto_0
.end method

.method public loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)V
    .locals 2
    .param p1    # Landroid/widget/ImageView;
    .param p2    # J
    .param p4    # Z
    .param p5    # Z
    .param p6    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;
    .param p7    # Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p7, p1, v0, p4, p6}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;->applyDefaultImage(Landroid/widget/ImageView;IZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-static {p2, p3, p4, p5, p7}, Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;->createFromThumbnailId(JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageProvider;)Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->loadPhotoByIdOrUri(Landroid/widget/ImageView;Lcom/android/contacts/common/ContactPhotoManagerImpl$Request;)V

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 1
    .param p1    # I

    const/16 v0, 0x3c

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->clear()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    return-void
.end method

.method public preloadPhotosInBackground()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->ensureLoaderThread()V

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mLoaderThread:Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManagerImpl$LoaderThread;->requestPreloading()V

    return-void
.end method

.method public refreshCache()V
    .locals 3

    iget-boolean v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCacheAllUnfresh:Z

    iget-object v2, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mBitmapHolderCache:Landroid/util/LruCache;

    invoke-virtual {v2}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/contacts/common/ContactPhotoManagerImpl$BitmapHolder;->fresh:Z

    goto :goto_0
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPaused:Z

    iget-object v0, p0, Lcom/android/contacts/common/ContactPhotoManagerImpl;->mPendingRequests:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/ContactPhotoManagerImpl;->requestLoading()V

    :cond_0
    return-void
.end method
