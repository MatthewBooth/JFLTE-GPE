.class Landroid/gesture/Instance;
.super Ljava/lang/Object;
.source "Instance.java"


# static fields
.field private static final ORIENTATIONS:[F

.field private static final PATCH_SAMPLE_SIZE:I = 0x10

.field private static final SEQUENCE_SAMPLE_SIZE:I = 0x10


# instance fields
.field final id:J

.field final label:Ljava/lang/String;

.field final vector:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/gesture/Instance;->ORIENTATIONS:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f490fdb
        0x3fc90fdb
        0x4016cbe4
        0x40490fdb
        0x0
        -0x40b6f025
        -0x4036f025
        -0x3fe9341c
        -0x3fb6f025
    .end array-data
.end method

.method private constructor <init>(J[FLjava/lang/String;)V
    .locals 1
    .param p1    # J
    .param p3    # [F
    .param p4    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/gesture/Instance;->id:J

    iput-object p3, p0, Landroid/gesture/Instance;->vector:[F

    iput-object p4, p0, Landroid/gesture/Instance;->label:Ljava/lang/String;

    return-void
.end method

.method static createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;
    .locals 4
    .param p0    # I
    .param p1    # I
    .param p2    # Landroid/gesture/Gesture;
    .param p3    # Ljava/lang/String;

    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    invoke-static {p1, p2}, Landroid/gesture/Instance;->temporalSampler(ILandroid/gesture/Gesture;)[F

    move-result-object v1

    new-instance v0, Landroid/gesture/Instance;

    invoke-virtual {p2}, Landroid/gesture/Gesture;->getID()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1, p3}, Landroid/gesture/Instance;-><init>(J[FLjava/lang/String;)V

    invoke-direct {v0}, Landroid/gesture/Instance;->normalize()V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p2}, Landroid/gesture/Instance;->spatialSampler(Landroid/gesture/Gesture;)[F

    move-result-object v1

    new-instance v0, Landroid/gesture/Instance;

    invoke-virtual {p2}, Landroid/gesture/Gesture;->getID()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1, p3}, Landroid/gesture/Instance;-><init>(J[FLjava/lang/String;)V

    goto :goto_0
.end method

.method private normalize()V
    .locals 8

    iget-object v2, p0, Landroid/gesture/Instance;->vector:[F

    const/4 v4, 0x0

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget v5, v2, v0

    aget v6, v2, v0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    float-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget v5, v2, v0

    div-float/2addr v5, v1

    aput v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static spatialSampler(Landroid/gesture/Gesture;)[F
    .locals 2
    .param p0    # Landroid/gesture/Gesture;

    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/gesture/GestureUtils;->spatialSampling(Landroid/gesture/Gesture;IZ)[F

    move-result-object v0

    return-object v0
.end method

.method private static temporalSampler(ILandroid/gesture/Gesture;)[F
    .locals 14
    .param p0    # I
    .param p1    # Landroid/gesture/Gesture;

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-virtual {p1}, Landroid/gesture/Gesture;->getStrokes()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/gesture/GestureStroke;

    const/16 v8, 0x10

    invoke-static {v7, v8}, Landroid/gesture/GestureUtils;->temporalSampling(Landroid/gesture/GestureStroke;I)[F

    move-result-object v6

    invoke-static {v6}, Landroid/gesture/GestureUtils;->computeCentroid([F)[F

    move-result-object v1

    aget v7, v6, v13

    aget v8, v1, v13

    sub-float/2addr v7, v8

    float-to-double v8, v7

    aget v7, v6, v12

    aget v10, v1, v12

    sub-float/2addr v7, v10

    float-to-double v10, v7

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    double-to-float v5, v8

    neg-float v0, v5

    if-eq p0, v13, :cond_1

    sget-object v7, Landroid/gesture/Instance;->ORIENTATIONS:[F

    array-length v2, v7

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    sget-object v7, Landroid/gesture/Instance;->ORIENTATIONS:[F

    aget v7, v7, v4

    sub-float v3, v7, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    move v0, v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    aget v7, v1, v12

    neg-float v7, v7

    aget v8, v1, v13

    neg-float v8, v8

    invoke-static {v6, v7, v8}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    invoke-static {v6, v0}, Landroid/gesture/GestureUtils;->rotate([FF)[F

    return-object v6
.end method
