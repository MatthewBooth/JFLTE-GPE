.class final Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;
.super Ljava/lang/Object;
.source "LockPatternUtilsCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtilsCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheKey"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field userId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/LockPatternUtilsCache$1;)V
    .locals 0
    .param p1    # Lcom/android/internal/widget/LockPatternUtilsCache$1;

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;
    .locals 3

    new-instance v0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    invoke-direct {v0}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;-><init>()V

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->key:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->set(Ljava/lang/String;I)Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;

    iget v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->userId:I

    iget v3, v0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->userId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->userId:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public set(Ljava/lang/String;I)Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->key:Ljava/lang/String;

    iput p2, p0, Lcom/android/internal/widget/LockPatternUtilsCache$CacheKey;->userId:I

    return-object p0
.end method
