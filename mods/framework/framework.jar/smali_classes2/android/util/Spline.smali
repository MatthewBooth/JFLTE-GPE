.class public abstract Landroid/util/Spline;
.super Ljava/lang/Object;
.source "Spline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Spline$LinearSpline;,
        Landroid/util/Spline$MonotoneCubicSpline;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLinearSpline([F[F)Landroid/util/Spline;
    .locals 1
    .param p0    # [F
    .param p1    # [F

    new-instance v0, Landroid/util/Spline$LinearSpline;

    invoke-direct {v0, p0, p1}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    return-object v0
.end method

.method public static createMonotoneCubicSpline([F[F)Landroid/util/Spline;
    .locals 1
    .param p0    # [F
    .param p1    # [F

    new-instance v0, Landroid/util/Spline$MonotoneCubicSpline;

    invoke-direct {v0, p0, p1}, Landroid/util/Spline$MonotoneCubicSpline;-><init>([F[F)V

    return-object v0
.end method

.method public static createSpline([F[F)Landroid/util/Spline;
    .locals 2
    .param p0    # [F
    .param p1    # [F

    invoke-static {p0}, Landroid/util/Spline;->isStrictlyIncreasing([F)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The control points must all have strictly increasing X values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Landroid/util/Spline;->isMonotonic([F)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0, p1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_0
.end method

.method private static isMonotonic([F)Z
    .locals 6
    .param p0    # [F

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    array-length v4, p0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "There must be at least two control points."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    aget v2, p0, v3

    const/4 v1, 0x1

    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_3

    aget v0, p0, v1

    cmpg-float v4, v0, v2

    if-gez v4, :cond_2

    :goto_1
    return v3

    :cond_2
    move v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private static isStrictlyIncreasing([F)Z
    .locals 6
    .param p0    # [F

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    array-length v4, p0

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "There must be at least two control points."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    aget v2, p0, v3

    const/4 v1, 0x1

    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_3

    aget v0, p0, v1

    cmpg-float v4, v0, v2

    if-gtz v4, :cond_2

    :goto_1
    return v3

    :cond_2
    move v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public abstract interpolate(F)F
.end method
