.class final Landroid/hardware/LegacySensorManager$LmsFilter;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LmsFilter"
.end annotation


# static fields
.field private static final COUNT:I = 0xc

.field private static final PREDICTION_RATIO:F = 0.33333334f

.field private static final PREDICTION_TIME:F = 0.08f

.field private static final SENSORS_RATE_MS:I = 0x14


# instance fields
.field private mIndex:I

.field private mT:[J

.field private mV:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    new-array v0, v1, [J

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    const/16 v0, 0xc

    iput v0, p0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    return-void
.end method


# virtual methods
.method public filter(JF)F
    .locals 25
    .param p1    # J
    .param p3    # F

    move/from16 v16, p3

    const v15, 0x3089705f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    move/from16 v19, v0

    aget v17, v18, v19

    sub-float v18, v16, v17

    const/high16 v19, 0x43340000

    cmpl-float v18, v18, v19

    if-lez v18, :cond_2

    const/high16 v18, 0x43b40000

    sub-float v16, v16, v18

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    move/from16 v18, v0

    const/16 v19, 0x18

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    const/16 v18, 0xc

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    move/from16 v19, v0

    aput v16, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    move/from16 v19, v0

    aput-wide p1, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0xc

    aput v16, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0xc

    aput-wide p1, v18, v19

    const/4 v6, 0x0

    move v5, v6

    move v4, v6

    move v3, v6

    move v2, v6

    const/4 v13, 0x0

    :goto_1
    const/16 v18, 0xb

    move/from16 v0, v18

    if-ge v13, v0, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mIndex:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    sub-int v14, v18, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mV:[F

    move-object/from16 v18, v0

    aget v8, v18, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, v14

    const-wide/16 v20, 0x2

    div-long v18, v18, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    move-object/from16 v20, v0

    add-int/lit8 v21, v14, 0x1

    aget-wide v20, v20, v21

    const-wide/16 v22, 0x2

    div-long v20, v20, v22

    add-long v18, v18, v20

    sub-long v18, v18, p1

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3089705f

    mul-float v7, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/LegacySensorManager$LmsFilter;->mT:[J

    move-object/from16 v20, v0

    add-int/lit8 v21, v14, 0x1

    aget-wide v20, v20, v21

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x3089705f

    mul-float v11, v18, v19

    mul-float/2addr v11, v11

    mul-float v18, v8, v11

    add-float v2, v2, v18

    mul-float v18, v7, v11

    mul-float v18, v18, v7

    add-float v3, v3, v18

    mul-float v18, v7, v11

    add-float v4, v4, v18

    mul-float v18, v7, v11

    mul-float v18, v18, v8

    add-float v5, v5, v18

    add-float/2addr v6, v11

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    sub-float v18, v17, v16

    const/high16 v19, 0x43340000

    cmpl-float v18, v18, v19

    if-lez v18, :cond_0

    const/high16 v18, 0x43b40000

    add-float v16, v16, v18

    goto/16 :goto_0

    :cond_3
    mul-float v18, v2, v3

    mul-float v19, v4, v5

    add-float v18, v18, v19

    mul-float v19, v6, v3

    mul-float v20, v4, v4

    add-float v19, v19, v20

    div-float v10, v18, v19

    mul-float v18, v6, v10

    sub-float v18, v18, v2

    div-float v9, v18, v4

    const v18, 0x3da3d70a

    mul-float v18, v18, v9

    add-float v12, v10, v18

    const v18, 0x3b360b61

    mul-float v12, v12, v18

    const/16 v18, 0x0

    cmpl-float v18, v12, v18

    if-ltz v18, :cond_6

    move/from16 v18, v12

    :goto_2
    const/high16 v19, 0x3f000000

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_4

    const/high16 v18, 0x3f000000

    add-float v18, v18, v12

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v12, v18

    const/high16 v19, 0x3f800000

    add-float v12, v18, v19

    :cond_4
    const/16 v18, 0x0

    cmpg-float v18, v12, v18

    if-gez v18, :cond_5

    const/high16 v18, 0x3f800000

    add-float v12, v12, v18

    :cond_5
    const/high16 v18, 0x43b40000

    mul-float v12, v12, v18

    return v12

    :cond_6
    neg-float v0, v12

    move/from16 v18, v0

    goto :goto_2
.end method
