.class public final Landroid/emoji/EmojiFactory;
.super Ljava/lang/Object;
.source "EmojiFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/emoji/EmojiFactory$CustomLinkedHashMap;
    }
.end annotation


# instance fields
.field private mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mNativeEmojiFactory:J

.field private sCacheSize:I


# direct methods
.method private constructor <init>(JLjava/lang/String;)V
    .locals 1
    .param p1    # J
    .param p3    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Landroid/emoji/EmojiFactory;->sCacheSize:I

    iput-wide p1, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    iput-object p3, p0, Landroid/emoji/EmojiFactory;->mName:Ljava/lang/String;

    new-instance v0, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;

    invoke-direct {v0, p0}, Landroid/emoji/EmojiFactory$CustomLinkedHashMap;-><init>(Landroid/emoji/EmojiFactory;)V

    iput-object v0, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Landroid/emoji/EmojiFactory;)I
    .locals 1
    .param p0    # Landroid/emoji/EmojiFactory;

    iget v0, p0, Landroid/emoji/EmojiFactory;->sCacheSize:I

    return v0
.end method

.method private native nativeDestructor(J)V
.end method

.method private native nativeGetAndroidPuaFromVendorSpecificPua(JI)I
.end method

.method private native nativeGetAndroidPuaFromVendorSpecificSjis(JC)I
.end method

.method private native nativeGetBitmapFromAndroidPua(JI)Landroid/graphics/Bitmap;
.end method

.method private native nativeGetMaximumAndroidPua(J)I
.end method

.method private native nativeGetMaximumVendorSpecificPua(J)I
.end method

.method private native nativeGetMinimumAndroidPua(J)I
.end method

.method private native nativeGetMinimumVendorSpecificPua(J)I
.end method

.method private native nativeGetVendorSpecificPuaFromAndroidPua(JI)I
.end method

.method private native nativeGetVendorSpecificSjisFromAndroidPua(JI)I
.end method

.method public static native newAvailableInstance()Landroid/emoji/EmojiFactory;
.end method

.method public static native newInstance(Ljava/lang/String;)Landroid/emoji/EmojiFactory;
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v0, v1}, Landroid/emoji/EmojiFactory;->nativeDestructor(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAndroidPuaFromVendorSpecificPua(I)I
    .locals 2
    .param p1    # I

    iget-wide v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v0, v1, p1}, Landroid/emoji/EmojiFactory;->nativeGetAndroidPuaFromVendorSpecificPua(JI)I

    move-result v0

    return v0
.end method

.method public getAndroidPuaFromVendorSpecificPua(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1    # Ljava/lang/String;

    const/4 v10, 0x0

    if-nez p1, :cond_0

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_0
    iget-wide v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v8, v9}, Landroid/emoji/EmojiFactory;->nativeGetMinimumVendorSpecificPua(J)I

    move-result v5

    iget-wide v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v8, v9}, Landroid/emoji/EmojiFactory;->nativeGetMaximumVendorSpecificPua(J)I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v8

    new-array v1, v8, [I

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt v5, v0, :cond_1

    if-gt v0, v4, :cond_1

    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificPua(I)I

    move-result v6

    if-lez v6, :cond_1

    aput v6, v1, v7

    :goto_2
    const/4 v8, 0x1

    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    aput v0, v1, v7

    goto :goto_2

    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1, v10, v7}, Ljava/lang/String;-><init>([III)V

    goto :goto_0
.end method

.method public getAndroidPuaFromVendorSpecificSjis(C)I
    .locals 2
    .param p1    # C

    iget-wide v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v0, v1, p1}, Landroid/emoji/EmojiFactory;->nativeGetAndroidPuaFromVendorSpecificSjis(JC)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;
    .locals 6
    .param p1    # I

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    iget-wide v4, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v4, v5, p1}, Landroid/emoji/EmojiFactory;->nativeGetBitmapFromAndroidPua(JI)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    iget-wide v4, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v4, v5, p1}, Landroid/emoji/EmojiFactory;->nativeGetBitmapFromAndroidPua(JI)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v3, p0, Landroid/emoji/EmojiFactory;->mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public declared-synchronized getBitmapFromVendorSpecificPua(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # I

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificPua(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBitmapFromVendorSpecificSjis(C)Landroid/graphics/Bitmap;
    .locals 1
    .param p1    # C

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/emoji/EmojiFactory;->getAndroidPuaFromVendorSpecificSjis(C)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaximumAndroidPua()I
    .locals 2

    iget-wide v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v0, v1}, Landroid/emoji/EmojiFactory;->nativeGetMaximumAndroidPua(J)I

    move-result v0

    return v0
.end method

.method public getMinimumAndroidPua()I
    .locals 2

    iget-wide v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v0, v1}, Landroid/emoji/EmojiFactory;->nativeGetMinimumAndroidPua(J)I

    move-result v0

    return v0
.end method

.method public getVendorSpecificPuaFromAndroidPua(I)I
    .locals 2
    .param p1    # I

    iget-wide v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v0, v1, p1}, Landroid/emoji/EmojiFactory;->nativeGetVendorSpecificPuaFromAndroidPua(JI)I

    move-result v0

    return v0
.end method

.method public getVendorSpecificPuaFromAndroidPua(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1    # Ljava/lang/String;

    const/4 v10, 0x0

    if-nez p1, :cond_0

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_0
    iget-wide v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v8, v9}, Landroid/emoji/EmojiFactory;->nativeGetMinimumAndroidPua(J)I

    move-result v5

    iget-wide v8, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v8, v9}, Landroid/emoji/EmojiFactory;->nativeGetMaximumAndroidPua(J)I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->codePointCount(II)I

    move-result v8

    new-array v1, v8, [I

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    if-gt v5, v0, :cond_1

    if-gt v0, v4, :cond_1

    invoke-virtual {p0, v0}, Landroid/emoji/EmojiFactory;->getVendorSpecificPuaFromAndroidPua(I)I

    move-result v6

    if-lez v6, :cond_1

    aput v6, v1, v7

    :goto_2
    const/4 v8, 0x1

    invoke-virtual {p1, v2, v8}, Ljava/lang/String;->offsetByCodePoints(II)I

    move-result v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    aput v0, v1, v7

    goto :goto_2

    :cond_2
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v1, v10, v7}, Ljava/lang/String;-><init>([III)V

    goto :goto_0
.end method

.method public getVendorSpecificSjisFromAndroidPua(I)I
    .locals 2
    .param p1    # I

    iget-wide v0, p0, Landroid/emoji/EmojiFactory;->mNativeEmojiFactory:J

    invoke-direct {p0, v0, v1, p1}, Landroid/emoji/EmojiFactory;->nativeGetVendorSpecificSjisFromAndroidPua(JI)I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/emoji/EmojiFactory;->mName:Ljava/lang/String;

    return-object v0
.end method
