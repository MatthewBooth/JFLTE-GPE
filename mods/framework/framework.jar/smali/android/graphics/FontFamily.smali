.class public Landroid/graphics/FontFamily;
.super Ljava/lang/Object;
.source "FontFamily.java"


# instance fields
.field public mNativePtr:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nCreateFamily(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "error creating native FontFamily"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const-string v1, "compact"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    invoke-static {p1, v0}, Landroid/graphics/FontFamily;->nCreateFamily(Ljava/lang/String;I)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    iget-wide v2, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error creating native FontFamily"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v1, "elegant"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static native nAddFont(JLjava/lang/String;)Z
.end method

.method private static native nAddFontFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;)Z
.end method

.method private static native nAddFontWeightStyle(JLjava/lang/String;IZ)Z
.end method

.method private static native nCreateFamily(Ljava/lang/String;I)J
.end method

.method private static native nUnrefFamily(J)V
.end method


# virtual methods
.method public addFont(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/FontFamily;->nAddFont(JLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Landroid/content/res/AssetManager;
    .param p2    # Ljava/lang/String;

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/FontFamily;->nAddFontFromAsset(JLandroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addFontWeightStyle(Ljava/lang/String;IZ)Z
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # Z

    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/FontFamily;->nAddFontWeightStyle(JLjava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Landroid/graphics/FontFamily;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/FontFamily;->nUnrefFamily(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
