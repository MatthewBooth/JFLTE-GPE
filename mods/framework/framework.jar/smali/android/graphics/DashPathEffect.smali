.class public Landroid/graphics/DashPathEffect;
.super Landroid/graphics/PathEffect;
.source "DashPathEffect.java"


# direct methods
.method public constructor <init>([FF)V
    .locals 2
    .param p1    # [F
    .param p2    # F

    invoke-direct {p0}, Landroid/graphics/PathEffect;-><init>()V

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/DashPathEffect;->nativeCreate([FF)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/DashPathEffect;->native_instance:J

    return-void
.end method

.method private static native nativeCreate([FF)J
.end method
