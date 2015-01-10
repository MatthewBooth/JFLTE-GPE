.class public final Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "DynamicAutoBrightnessConfig"
.end annotation


# instance fields
.field protected mBrightnessLevels:[I

.field protected mBrightnessValueSlope:[D

.field protected mBrightnessValues:[I

.field protected mHighHysteresisLevels:[I

.field protected mHighHysteresisSlope:[D

.field protected mHighHysteresisValues:[I

.field private mIsTablet:Z

.field protected mLowHysteresisLevels:[I

.field protected mLowHysteresisSlope:[D

.field protected mLowHysteresisValues:[I

.field protected mLowLimitAtHighestAutoBrightnessLevel:I

.field protected mMinimumBrightnessStepValue:I

.field protected mMinimumExpressiveBrightnessValues:[I

.field protected mValueOfVirtualZeroCandela:I

.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method protected constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowLimitAtHighestAutoBrightnessLevel:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mIsTablet:Z

    return-void
.end method

.method private getSlope(IIIIZ)D
    .locals 10
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # Z

    const-wide v8, 0x3f847ae147ae147bL

    const-wide/16 v0, 0x0

    if-eq p1, p3, :cond_0

    if-ne p2, p4, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    if-eqz p5, :cond_2

    int-to-double v2, p3

    add-double/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    int-to-double v4, p1

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    sub-int v4, p4, p2

    int-to-double v4, v4

    div-double v0, v2, v4

    goto :goto_0

    :cond_2
    sub-int v2, p4, p2

    int-to-double v2, v2

    int-to-double v4, p3

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->log10(D)D

    move-result-wide v4

    int-to-double v6, p1

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    div-double v0, v2, v4

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 2

    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getDynamicAutoBrightnessHighHysteresis(F)F
    .locals 12
    .param p1    # F

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    array-length v3, v3

    if-lt v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    aget v3, v3, v1

    int-to-float v2, v3

    :goto_1
    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlope:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v4, v3, v4

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    const-wide/high16 v4, 0x4024000000000000L

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlope:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v6, v3, v6

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    add-int/lit8 v8, v1, -0x1

    aget v3, v3, v8

    int-to-float v3, v3

    sub-float v3, p1, v3

    float-to-double v8, v3

    mul-double/2addr v6, v8

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    add-int/lit8 v8, v1, -0x1

    aget v3, v3, v8

    int-to-double v8, v3

    const-wide v10, 0x3f847ae147ae147bL

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v3, v4

    int-to-float v2, v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v2, v3

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "DisplayPowerController"

    const-string v4, "[DAB] getDynamicAutoBrightnessHighHysteresis"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v2, 0x459c4000

    goto :goto_1
.end method

.method protected getDynamicAutoBrightnessLowHysteresis(F)F
    .locals 12
    .param p1    # F

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v1, 0x1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    aget v3, v3, v1

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    array-length v3, v3

    if-lt v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    int-to-float v2, v3

    :goto_1
    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlope:[D

    add-int/lit8 v4, v1, -0x1

    aget-wide v4, v3, v4

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    const-wide/high16 v4, 0x4024000000000000L

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlope:[D

    add-int/lit8 v6, v1, -0x1

    aget-wide v6, v3, v6

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    add-int/lit8 v8, v1, -0x1

    aget v3, v3, v8

    int-to-float v3, v3

    sub-float v3, p1, v3

    float-to-double v8, v3

    mul-double/2addr v6, v8

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    add-int/lit8 v8, v1, -0x1

    aget v3, v3, v8

    int-to-double v8, v3

    const-wide v10, 0x3f847ae147ae147bL

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v3, v4

    int-to-float v2, v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v2, v3

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v3, "DisplayPowerController"

    const-string v4, "[DAB] getDynamicAutoBrightnessLowHysteresis"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v2, 0x459c4000

    goto :goto_1
.end method

.method protected getDynamicAutoBrightnessValue(F)F
    .locals 12
    .param p1    # F

    const-wide v10, 0x3f847ae147ae147bL

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v2, 0x1

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    aget v3, v3, v2

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    array-length v3, v3

    if-lt v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    int-to-float v0, v3

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlope:[D

    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v3, v4

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlope:[D

    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v3, v4

    float-to-double v6, p1

    add-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    add-int/lit8 v8, v2, -0x1

    aget v3, v3, v8

    int-to-double v8, v3

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->log10(D)D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    add-int/lit8 v6, v2, -0x1

    aget v3, v3, v6

    int-to-double v6, v3

    add-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v0, v3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-float v0, v3

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "DisplayPowerController"

    const-string v4, "[DAB] getDynamicAutoBrightnessValue"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/high16 v0, 0x437f0000

    goto :goto_1
.end method

.method protected getFinalDynamicAutoBrightnessValue(FF)I
    .locals 8
    .param p1    # F
    .param p2    # F

    const/4 v7, 0x2

    const/4 v6, 0x0

    float-to-int v1, p2

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-result-object v2

    iget v0, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    const v2, 0x459c4000

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowLimitAtHighestAutoBrightnessLevel:I

    if-ge v1, v2, :cond_0

    const-string v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DAB] finalBrightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowLimitAtHighestAutoBrightnessLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowLimitAtHighestAutoBrightnessLevel:I

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mIsTablet:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    float-to-double v2, v0

    const-wide v4, -0x4026666666666666L

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    aget v2, v2, v6

    if-le v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    aget v1, v2, v6

    :cond_1
    :goto_0
    return v1

    :cond_2
    float-to-double v2, v0

    const-wide v4, 0x3fd999999999999aL

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    aget v2, v2, v7

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    aget v1, v2, v7

    goto :goto_0
.end method

.method protected initDynamicAutoBrightnessSlopeTables()V
    .locals 12

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    array-length v0, v0

    add-int/lit8 v10, v0, -0x1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    array-length v0, v0

    add-int/lit8 v8, v0, -0x1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    array-length v0, v0

    add-int/lit8 v9, v0, -0x1

    new-array v0, v10, [D

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlope:[D

    new-array v0, v8, [D

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlope:[D

    new-array v0, v9, [D

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlope:[D

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v10, :cond_0

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisSlope:[D

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValueSlope:[D

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v11, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v9, :cond_2

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisSlope:[D

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    aget v1, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    aget v2, v0, v7

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    add-int/lit8 v3, v7, 0x1

    aget v3, v0, v3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    add-int/lit8 v4, v7, 0x1

    aget v4, v0, v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->getSlope(IIIIZ)D

    move-result-wide v0

    aput-wide v0, v11, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :catch_0
    move-exception v6

    const-string v0, "DisplayPowerController"

    const-string v1, "[DAB] initDynamicAutoBrightnessSlopeTables"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method protected initializeProperties()V
    .locals 3

    const-string v1, "DisplayPowerController"

    const-string v2, "[DAB] Load SEC Auto-brightness setting"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$1200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowLimitAtHighestAutoBrightnessLevel:I

    const v1, 0x10e0078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mValueOfVirtualZeroCandela:I

    const v1, 0x107003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisLevels:[I

    const v1, 0x107003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mLowHysteresisValues:[I

    const v1, 0x1070040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessLevels:[I

    const v1, 0x1070041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mBrightnessValues:[I

    const v1, 0x1070042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisLevels:[I

    const v1, 0x1070043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mHighHysteresisValues:[I

    const v1, 0x107003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumExpressiveBrightnessValues:[I

    const v1, 0x10e0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->mMinimumBrightnessStepValue:I

    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$DynamicAutoBrightnessConfig;->initDynamicAutoBrightnessSlopeTables()V

    return-void
.end method
