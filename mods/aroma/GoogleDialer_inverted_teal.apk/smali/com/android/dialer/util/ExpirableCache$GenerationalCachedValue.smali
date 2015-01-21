.class Lcom/android/dialer/util/ExpirableCache$GenerationalCachedValue;
.super Ljava/lang/Object;
.source "ExpirableCache.java"

# interfaces
.implements Lcom/android/dialer/util/ExpirableCache$CachedValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/util/ExpirableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenerationalCachedValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/dialer/util/ExpirableCache$CachedValue",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final mCacheGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mGeneration:I

.field public final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 1
    .param p2    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/util/ExpirableCache$GenerationalCachedValue;->mValue:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/dialer/util/ExpirableCache$GenerationalCachedValue;->mCacheGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lcom/android/dialer/util/ExpirableCache$GenerationalCachedValue;->mCacheGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, p0, Lcom/android/dialer/util/ExpirableCache$GenerationalCachedValue;->mGeneration:I

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/dialer/util/ExpirableCache$GenerationalCachedValue;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public isExpired()Z
    .locals 2

    iget v0, p0, Lcom/android/dialer/util/ExpirableCache$GenerationalCachedValue;->mGeneration:I

    iget-object v1, p0, Lcom/android/dialer/util/ExpirableCache$GenerationalCachedValue;->mCacheGeneration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
