.class public Landroid/graphics/RegionIterator;
.super Ljava/lang/Object;
.source "RegionIterator.java"


# instance fields
.field private final mNativeIter:J


# direct methods
.method public constructor <init>(Landroid/graphics/Region;)V
    .locals 2
    .param p1    # Landroid/graphics/Region;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/Region;->ni()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/RegionIterator;->nativeConstructor(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:J

    return-void
.end method

.method private static native nativeConstructor(J)J
.end method

.method private static native nativeDestructor(J)V
.end method

.method private static native nativeNext(JLandroid/graphics/Rect;)Z
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:J

    invoke-static {v0, v1}, Landroid/graphics/RegionIterator;->nativeDestructor(J)V

    return-void
.end method

.method public final next(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1    # Landroid/graphics/Rect;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The Rect must be provided"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Landroid/graphics/RegionIterator;->mNativeIter:J

    invoke-static {v0, v1, p1}, Landroid/graphics/RegionIterator;->nativeNext(JLandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method
