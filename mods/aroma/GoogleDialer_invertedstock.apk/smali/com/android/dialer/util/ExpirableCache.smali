.class public Lcom/android/dialer/util/ExpirableCache;
.super Ljava/lang/Object;
.source "ExpirableCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/util/ExpirableCache$GenerationalCachedValue;,
        Lcom/android/dialer/util/ExpirableCache$CachedValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<TK;",
            "Lcom/android/dialer/util/ExpirableCache$CachedValue",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private final mGeneration:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method private constructor <init>(Landroid/util/LruCache;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LruCache",
            "<TK;",
            "Lcom/android/dialer/util/ExpirableCache$CachedValue",
            "<TV;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/util/ExpirableCache;->mCache:Landroid/util/LruCache;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/dialer/util/ExpirableCache;->mGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static create(I)Lcom/android/dialer/util/ExpirableCache;
    .locals 1
    .param p0    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/android/dialer/util/ExpirableCache",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p0}, Landroid/util/LruCache;-><init>(I)V

    invoke-static {v0}, Lcom/android/dialer/util/ExpirableCache;->create(Landroid/util/LruCache;)Lcom/android/dialer/util/ExpirableCache;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/util/LruCache;)Lcom/android/dialer/util/ExpirableCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/LruCache",
            "<TK;",
            "Lcom/android/dialer/util/ExpirableCache$CachedValue",
            "<TV;>;>;)",
            "Lcom/android/dialer/util/ExpirableCache",
            "<TK;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/dialer/util/ExpirableCache;

    invoke-direct {v0, p0}, Lcom/android/dialer/util/ExpirableCache;-><init>(Landroid/util/LruCache;)V

    return-object v0
.end method


# virtual methods
.method public expireAll()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/util/ExpirableCache;->mGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/dialer/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/dialer/util/ExpirableCache$CachedValue;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/dialer/util/ExpirableCache$CachedValue;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Lcom/android/dialer/util/ExpirableCache$CachedValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getCachedValue(Ljava/lang/Object;)Lcom/android/dialer/util/ExpirableCache$CachedValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/android/dialer/util/ExpirableCache$CachedValue",
            "<TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dialer/util/ExpirableCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/util/ExpirableCache$CachedValue;

    return-object v0
.end method

.method public getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/dialer/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/dialer/util/ExpirableCache$CachedValue;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/android/dialer/util/ExpirableCache$CachedValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public newCachedValue(Ljava/lang/Object;)Lcom/android/dialer/util/ExpirableCache$CachedValue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lcom/android/dialer/util/ExpirableCache$CachedValue",
            "<TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/dialer/util/ExpirableCache$GenerationalCachedValue;

    iget-object v1, p0, Lcom/android/dialer/util/ExpirableCache;->mGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p1, v1}, Lcom/android/dialer/util/ExpirableCache$GenerationalCachedValue;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dialer/util/ExpirableCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {p0, p2}, Lcom/android/dialer/util/ExpirableCache;->newCachedValue(Ljava/lang/Object;)Lcom/android/dialer/util/ExpirableCache$CachedValue;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
