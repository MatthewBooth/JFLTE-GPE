.class public Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;
.super Ljava/lang/Object;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/BatteryMeterView$BatteryMeterDrawable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CircleBatteryMeterDrawable"
.end annotation


# instance fields
.field private mAnimOffset:I

.field private mBackPaint:Landroid/graphics/Paint;

.field private final mBoltFrame:Landroid/graphics/RectF;

.field private mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mChargeColor:I

.field private mCircleSize:I

.field private mDisposed:Z

.field private mFrontPaint:Landroid/graphics/Paint;

.field private mIsAnimating:Z

.field private mRectLeft:Landroid/graphics/RectF;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextX:F

.field private mTextY:F

.field private mWarningTextPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/res/Resources;)V
    .locals 5
    .param p2    # Landroid/content/res/Resources;

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mDisposed:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    const-string v1, "sans-serif-condensed"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mFrontPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mFrontPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mFrontPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    const v2, 0x7f070006

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mColors:[I
    invoke-static {p1}, Lcom/android/systemui/BatteryMeterView;->access$600(Lcom/android/systemui/BatteryMeterView;)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const-string v1, "sans-serif"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p1}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mChargeColor:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    const v2, 0x7f070008

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p2}, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPoints:[F

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;Lcom/android/systemui/BatteryMeterView$BatteryTracker;FLandroid/graphics/RectF;)V
    .locals 17
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    .param p3    # F
    .param p4    # Landroid/graphics/RectF;

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/16 v16, 0x1

    :goto_0
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    const/16 v13, 0x64

    :cond_0
    :goto_1
    const/high16 v4, 0x43870000

    const/high16 v5, 0x43b40000

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mAnimOffset:I

    add-int/lit16 v2, v2, 0x10e

    int-to-float v4, v2

    const v2, 0x40666666

    int-to-float v3, v13

    mul-float v5, v2, v3

    const/4 v6, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object v7, v14

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const-string v2, "?"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextY:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/16 v16, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mFrontPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v2, v13}, Lcom/android/systemui/BatteryMeterView;->getColorForLevel(I)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const/16 v13, 0x64

    goto :goto_1

    :cond_4
    move-object/from16 v0, p2

    iget-boolean v2, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->width()F

    move-result v3

    const v4, 0x404ccccd

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v9, v2

    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v4, 0x40800000

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v11, v2

    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->width()F

    move-result v3

    const v4, 0x40a66666

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v10, v2

    move-object/from16 v0, p4

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/RectF;->height()F

    move-result v3

    const/high16 v4, 0x41000000

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v9

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v11

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v10

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v2, v9, v11, v10, v8}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPoints:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPoints:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v12, 0x2

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPoints:[F

    array-length v2, v2

    if-ge v12, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPoints:[F

    aget v4, v4, v12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPoints:[F

    add-int/lit8 v6, v12, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v12, v12, 0x2

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPoints:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPoints:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I
    invoke-static {v2}, Lcom/android/systemui/BatteryMeterView;->access$1200(Lcom/android/systemui/BatteryMeterView;)I

    move-result v2

    if-le v13, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    iget-boolean v2, v2, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I
    invoke-static {v2}, Lcom/android/systemui/BatteryMeterView;->access$1200(Lcom/android/systemui/BatteryMeterView;)I

    move-result v2

    if-gt v13, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/BatteryMeterView;->access$1600(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextY:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    :cond_a
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextY:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method private initSizeBasedStuff()V
    .locals 10

    const/high16 v9, 0x40000000

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v3}, Lcom/android/systemui/BatteryMeterView;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v4}, Lcom/android/systemui/BatteryMeterView;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mCircleSize:I

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mCircleSize:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mCircleSize:I

    int-to-float v4, v4

    div-float/2addr v4, v9

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mCircleSize:I

    int-to-float v3, v3

    const/high16 v4, 0x40d00000

    div-float v2, v3, v4

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v3}, Lcom/android/systemui/BatteryMeterView;->getPaddingLeft()I

    move-result v1

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v4, v1

    div-float v5, v2, v9

    add-float/2addr v4, v5

    const/4 v5, 0x0

    div-float v6, v2, v9

    add-float/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mCircleSize:I

    int-to-float v6, v6

    div-float v7, v2, v9

    sub-float/2addr v6, v7

    int-to-float v7, v1

    add-float/2addr v6, v7

    iget v7, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mCircleSize:I

    int-to-float v7, v7

    div-float v8, v2, v9

    sub-float/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mRectLeft:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    const-string v4, "99"

    const/4 v5, 0x0

    const-string v6, "99"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mCircleSize:I

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v4}, Lcom/android/systemui/BatteryMeterView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextX:F

    iget v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mCircleSize:I

    int-to-float v3, v3

    div-float/2addr v3, v9

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v9

    add-float/2addr v3, v4

    div-float v4, v2, v9

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v4}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextY:F

    return-void
.end method

.method private loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p1    # Landroid/content/res/Resources;

    const v5, 0x7f060002

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

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

.method private updateChargeAnim(Lcom/android/systemui/BatteryMeterView$BatteryTracker;)V
    .locals 4
    .param p1    # Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->shouldIndicateCharging()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mAnimOffset:I

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p1, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->status:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mIsAnimating:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mIsAnimating:Z

    iput v2, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mAnimOffset:I

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->access$1800(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mInvalidate:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/BatteryMeterView;->access$1700(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mIsAnimating:Z

    iget v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mAnimOffset:I

    const/16 v1, 0x168

    if-le v0, v1, :cond_4

    iput v2, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mAnimOffset:I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->access$1800(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mInvalidate:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/BatteryMeterView;->access$1700(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->access$1800(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mInvalidate:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/BatteryMeterView;->access$1700(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mAnimOffset:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mAnimOffset:I

    goto :goto_1
.end method


# virtual methods
.method public onDispose()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->access$1800(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mInvalidate:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/BatteryMeterView;->access$1700(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mDisposed:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/android/systemui/BatteryMeterView$BatteryTracker;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mDisposed:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mRectLeft:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->initSizeBasedStuff()V

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->updateChargeAnim(Lcom/android/systemui/BatteryMeterView$BatteryTracker;)V

    iget v0, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mTextX:F

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->mRectLeft:Landroid/graphics/RectF;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->drawCircle(Landroid/graphics/Canvas;Lcom/android/systemui/BatteryMeterView$BatteryTracker;FLandroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterView$CircleBatteryMeterDrawable;->initSizeBasedStuff()V

    return-void
.end method
