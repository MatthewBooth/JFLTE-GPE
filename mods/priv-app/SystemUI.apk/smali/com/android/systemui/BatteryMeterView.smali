.class public Lcom/android/systemui/BatteryMeterView;
.super Landroid/view/View;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterView$1;,
        Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryPaint:Landroid/graphics/Paint;

.field private final mBoltFrame:Landroid/graphics/RectF;

.field private final mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field private mButtonHeightFraction:F

.field private final mChargeColor:I

.field private final mClipPath:Landroid/graphics/Path;

.field private final mColors:[I

.field private final mCriticalLevel:I

.field private mDemoMode:Z

.field private mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

.field private final mFrame:Landroid/graphics/RectF;

.field private final mFramePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mPowerSaveEnabled:Z

.field private final mShapePath:Landroid/graphics/Path;

.field mShowPercent:Z

.field private mSubpixelSmoothingLeft:F

.field private mSubpixelSmoothingRight:F

.field private mTextHeight:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextPath:Landroid/graphics/Path;

.field mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field private final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    new-instance v8, Landroid/graphics/Path;

    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    new-instance v8, Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$1;)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    new-instance v8, Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$1;)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v8, 0x0

    const v9, 0x7f070006

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    const/high16 v8, 0x7f060000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    const v8, 0x7f060001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    mul-int/lit8 v8, v0, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    mul-int/lit8 v9, v5, 0x2

    const/4 v10, 0x0

    invoke-virtual {v6, v5, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    aput v10, v8, v9

    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    mul-int/lit8 v9, v5, 0x2

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v2, v5, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v10

    aput v10, v8, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "status_bar_show_battery_percent"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    const v8, 0x7f0b0117

    invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x10e003d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0002

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mButtonHeightFraction:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0003

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0004

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    const-string v8, "sans-serif-condensed"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    const-string v8, "sans-serif"

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070007

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/BatteryMeterView;->mChargeColor:I

    new-instance v8, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    const v9, 0x7f070008

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v7}, Lcom/android/systemui/BatteryMeterView;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    return-void

    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method private getColorForLevel(I)I
    .locals 5
    .param p1    # I

    iget-boolean v3, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSaveEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v0, v3, v4

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    aget v2, v3, v1

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    add-int/lit8 v4, v1, 0x1

    aget v0, v3, v4

    if-le p1, v2, :cond_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p0    # Landroid/content/res/Resources;

    const v5, 0x7f060002

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    return-object v4
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/os/Bundle;

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-nez v2, :cond_1

    const-string v2, "enter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget v3, v3, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    iput v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-boolean v3, v3, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    iput-boolean v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_2

    const-string v2, "exit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v4, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_0

    const-string v2, "battery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "level"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "plugged"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 32
    .param p1    # Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    move-object/from16 v26, v0

    :goto_0
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    move/from16 v19, v0

    const/4 v3, -0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    move-object/from16 v26, v0

    goto :goto_0

    :cond_2
    move/from16 v0, v19

    int-to-float v3, v0

    const/high16 v5, 0x42c80000

    div-float v16, v3, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingTop()I

    move-result v25

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingLeft()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingRight()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingBottom()I

    move-result v21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    sub-int v3, v3, v25

    sub-int v17, v3, v21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    sub-int v3, v3, v23

    sub-int v27, v3, v24

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonHeightFraction:F

    mul-float/2addr v3, v5

    float-to-int v15, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v27

    int-to-float v9, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-virtual {v3, v5, v6, v9, v0}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move/from16 v0, v23

    int-to-float v5, v0

    move/from16 v0, v25

    int-to-float v6, v0

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move/from16 v0, v27

    int-to-float v6, v0

    const/high16 v9, 0x3e800000

    mul-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x3e800000

    mul-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v9, v9, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v30, v0

    int-to-float v0, v15

    move/from16 v31, v0

    add-float v30, v30, v31

    move/from16 v0, v30

    invoke-virtual {v3, v5, v6, v9, v0}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    int-to-float v6, v15

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v26

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mChargeColor:I

    :goto_2
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0x60

    move/from16 v0, v19

    if-lt v0, v3, :cond_6

    const/high16 v16, 0x3f800000

    :cond_3
    :goto_3
    const/high16 v3, 0x3f800000

    cmpl-float v3, v16, v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, v26

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40900000

    div-float/2addr v5, v6

    add-float v11, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x40c00000

    div-float/2addr v5, v6

    add-float v14, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40e00000

    div-float/2addr v5, v6

    sub-float v13, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x41200000

    div-float/2addr v5, v6

    sub-float v10, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v11

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v14

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v13

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v10

    if-eqz v3, :cond_9

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v3, v11, v14, v13, v10}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    const/4 v9, 0x0

    aget v6, v6, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    const/16 v30, 0x1

    aget v9, v9, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/RectF;->height()F

    move-result v30

    mul-float v9, v9, v30

    add-float/2addr v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    const/16 v18, 0x2

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    array-length v3, v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    aget v6, v6, v18

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    add-int/lit8 v30, v18, 0x1

    aget v9, v9, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/RectF;->height()F

    move-result v30

    mul-float v9, v9, v30

    add-float/2addr v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v18, v18, 0x2

    goto :goto_5

    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/BatteryMeterView;->getColorForLevel(I)I

    move-result v3

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    move/from16 v0, v19

    if-gt v0, v3, :cond_3

    const/16 v16, 0x0

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x3f800000

    sub-float v6, v6, v16

    mul-float/2addr v5, v6

    add-float v20, v3, v5

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    const/4 v9, 0x0

    aget v6, v6, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    const/16 v30, 0x1

    aget v9, v9, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/RectF;->height()F

    move-result v30

    mul-float v9, v9, v30

    add-float/2addr v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v3, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    div-float v12, v3, v5

    const/4 v3, 0x0

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v5, 0x3f800000

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const v3, 0x3e99999a

    cmpg-float v3, v12, v3

    if-gtz v3, :cond_c

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    const/4 v5, 0x4

    if-eq v3, v5, :cond_a

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_a
    :goto_6
    const/16 v22, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v26

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    move/from16 v0, v19

    if-le v0, v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    if-eqz v3, :cond_b

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    const/16 v5, 0x64

    if-ne v3, v5, :cond_d

    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move/from16 v0, v20

    iput v0, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, v26

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    move/from16 v0, v19

    if-gt v0, v3, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    int-to-float v3, v3

    const/high16 v5, 0x3f000000

    mul-float v28, v3, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextHeight:F

    add-float/2addr v3, v5

    const v5, 0x3ef5c28f

    mul-float v29, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    const/4 v5, 0x4

    if-eq v3, v5, :cond_a

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->health:I

    const/4 v5, 0x5

    if-eq v3, v5, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/BatteryMeterView;->getColorForLevel(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v17

    int-to-float v6, v0

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    const/16 v9, 0x64

    if-ne v3, v9, :cond_e

    const v3, 0x3ec28f5c

    :goto_8
    mul-float/2addr v3, v6

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextHeight:F

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    int-to-float v3, v3

    const/high16 v5, 0x3f000000

    mul-float v7, v3, v5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/BatteryMeterView;->mTextHeight:F

    add-float/2addr v3, v5

    const v5, 0x3ef0a3d7

    mul-float v8, v3, v5

    cmpl-float v3, v20, v8

    if-lez v3, :cond_f

    const/16 v22, 0x1

    :goto_9
    if-nez v22, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_7

    :cond_e
    const/high16 v3, 0x3f000000

    goto :goto_8

    :cond_f
    const/16 v22, 0x0

    goto :goto_9

    :cond_10
    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0
    .param p1    # I
    .param p2    # Z
    .param p3    # Z

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    return-void
.end method

.method public onPowerSaveChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSaveEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->invalidate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    const/high16 v2, 0x3f400000

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextHeight:F

    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSaveEnabled:Z

    return-void
.end method
