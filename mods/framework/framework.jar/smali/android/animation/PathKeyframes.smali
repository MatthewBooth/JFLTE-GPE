.class Landroid/animation/PathKeyframes;
.super Ljava/lang/Object;
.source "PathKeyframes.java"

# interfaces
.implements Landroid/animation/Keyframes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/PathKeyframes$FloatKeyframesBase;,
        Landroid/animation/PathKeyframes$IntKeyframesBase;,
        Landroid/animation/PathKeyframes$SimpleKeyframes;
    }
.end annotation


# static fields
.field private static final EMPTY_KEYFRAMES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRACTION_OFFSET:I = 0x0

.field private static final NUM_COMPONENTS:I = 0x3

.field private static final X_OFFSET:I = 0x1

.field private static final Y_OFFSET:I = 0x2


# instance fields
.field private mKeyframeData:[F

.field private mTempPointF:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/animation/PathKeyframes;->EMPTY_KEYFRAMES:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 1
    .param p1    # Landroid/graphics/Path;

    const/high16 v0, 0x3f000000

    invoke-direct {p0, p1, v0}, Landroid/animation/PathKeyframes;-><init>(Landroid/graphics/Path;F)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;F)V
    .locals 2
    .param p1    # Landroid/graphics/Path;
    .param p2    # F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The path must not be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v0

    iput-object v0, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    return-void
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Landroid/animation/PathKeyframes;->EMPTY_KEYFRAMES:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static interpolate(FFF)F
    .locals 2
    .param p0    # F
    .param p1    # F
    .param p2    # F

    sub-float v0, p2, p1

    mul-float v1, v0, p0

    add-float/2addr v1, p1

    return v1
.end method

.method private interpolateInRange(FII)Landroid/graphics/PointF;
    .locals 13
    .param p1    # F
    .param p2    # I
    .param p3    # I

    mul-int/lit8 v5, p2, 0x3

    mul-int/lit8 v0, p3, 0x3

    iget-object v11, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 v12, v5, 0x0

    aget v6, v11, v12

    iget-object v11, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 v12, v0, 0x0

    aget v1, v11, v12

    sub-float v11, p1, v6

    sub-float v12, v1, v6

    div-float v4, v11, v12

    iget-object v11, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 v12, v5, 0x1

    aget v7, v11, v12

    iget-object v11, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 v12, v0, 0x1

    aget v2, v11, v12

    iget-object v11, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 v12, v5, 0x2

    aget v8, v11, v12

    iget-object v11, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    add-int/lit8 v12, v0, 0x2

    aget v3, v11, v12

    invoke-static {v4, v7, v2}, Landroid/animation/PathKeyframes;->interpolate(FFF)F

    move-result v9

    invoke-static {v4, v8, v3}, Landroid/animation/PathKeyframes;->interpolate(FFF)F

    move-result v10

    iget-object v11, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    invoke-virtual {v11, v9, v10}, Landroid/graphics/PointF;->set(FF)V

    iget-object v11, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    return-object v11
.end method

.method private pointForIndex(I)Landroid/graphics/PointF;
    .locals 6
    .param p1    # I

    mul-int/lit8 v0, p1, 0x3

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x2

    iget-object v3, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    iget-object v4, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    aget v4, v4, v1

    iget-object v5, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    aget v5, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    iget-object v3, p0, Landroid/animation/PathKeyframes;->mTempPointF:Landroid/graphics/PointF;

    return-object v3
.end method


# virtual methods
.method public clone()Landroid/animation/Keyframes;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/animation/Keyframes;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/animation/PathKeyframes;->clone()Landroid/animation/Keyframes;

    move-result-object v0

    return-object v0
.end method

.method public createXFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;
    .locals 1

    new-instance v0, Landroid/animation/PathKeyframes$1;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes$1;-><init>(Landroid/animation/PathKeyframes;)V

    return-object v0
.end method

.method public createXIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;
    .locals 1

    new-instance v0, Landroid/animation/PathKeyframes$3;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes$3;-><init>(Landroid/animation/PathKeyframes;)V

    return-object v0
.end method

.method public createYFloatKeyframes()Landroid/animation/Keyframes$FloatKeyframes;
    .locals 1

    new-instance v0, Landroid/animation/PathKeyframes$2;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes$2;-><init>(Landroid/animation/PathKeyframes;)V

    return-object v0
.end method

.method public createYIntKeyframes()Landroid/animation/Keyframes$IntKeyframes;
    .locals 1

    new-instance v0, Landroid/animation/PathKeyframes$4;

    invoke-direct {v0, p0}, Landroid/animation/PathKeyframes$4;-><init>(Landroid/animation/PathKeyframes;)V

    return-object v0
.end method

.method public getKeyframes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/animation/PathKeyframes;->EMPTY_KEYFRAMES:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    const-class v0, Landroid/graphics/PointF;

    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 9
    .param p1    # F

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000

    const/4 v6, 0x0

    iget-object v5, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    array-length v5, v5

    div-int/lit8 v4, v5, 0x3

    cmpg-float v5, p1, v6

    if-gez v5, :cond_0

    const/4 v5, 0x1

    invoke-direct {p0, p1, v8, v5}, Landroid/animation/PathKeyframes;->interpolateInRange(FII)Landroid/graphics/PointF;

    move-result-object v5

    :goto_0
    return-object v5

    :cond_0
    cmpl-float v5, p1, v7

    if-lez v5, :cond_1

    add-int/lit8 v5, v4, -0x2

    add-int/lit8 v6, v4, -0x1

    invoke-direct {p0, p1, v5, v6}, Landroid/animation/PathKeyframes;->interpolateInRange(FII)Landroid/graphics/PointF;

    move-result-object v5

    goto :goto_0

    :cond_1
    cmpl-float v5, p1, v6

    if-nez v5, :cond_2

    invoke-direct {p0, v8}, Landroid/animation/PathKeyframes;->pointForIndex(I)Landroid/graphics/PointF;

    move-result-object v5

    goto :goto_0

    :cond_2
    cmpl-float v5, p1, v7

    if-nez v5, :cond_3

    add-int/lit8 v5, v4, -0x1

    invoke-direct {p0, v5}, Landroid/animation/PathKeyframes;->pointForIndex(I)Landroid/graphics/PointF;

    move-result-object v5

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    add-int/lit8 v0, v4, -0x1

    :goto_1
    if-gt v1, v0, :cond_6

    add-int v5, v1, v0

    div-int/lit8 v2, v5, 0x2

    iget-object v5, p0, Landroid/animation/PathKeyframes;->mKeyframeData:[F

    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v6, v6, 0x0

    aget v3, v5, v6

    cmpg-float v5, p1, v3

    if-gez v5, :cond_4

    add-int/lit8 v0, v2, -0x1

    goto :goto_1

    :cond_4
    cmpl-float v5, p1, v3

    if-lez v5, :cond_5

    add-int/lit8 v1, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-direct {p0, v2}, Landroid/animation/PathKeyframes;->pointForIndex(I)Landroid/graphics/PointF;

    move-result-object v5

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, v0, v1}, Landroid/animation/PathKeyframes;->interpolateInRange(FII)Landroid/graphics/PointF;

    move-result-object v5

    goto :goto_0
.end method

.method public invalidateCache()V
    .locals 0

    return-void
.end method

.method public setEvaluator(Landroid/animation/TypeEvaluator;)V
    .locals 0
    .param p1    # Landroid/animation/TypeEvaluator;

    return-void
.end method
