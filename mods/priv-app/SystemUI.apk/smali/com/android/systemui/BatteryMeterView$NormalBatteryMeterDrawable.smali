.class public Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;
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
    name = "NormalBatteryMeterDrawable"
.end annotation


# instance fields
.field private final mBatteryPaint:Landroid/graphics/Paint;

.field private final mBoltFrame:Landroid/graphics/RectF;

.field private final mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field private final mChargeColor:I

.field private mDisposed:Z

.field private final mFrame:Landroid/graphics/RectF;

.field private final mFramePaint:Landroid/graphics/Paint;

.field protected final mHorizontal:Z

.field private mTextHeight:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field private mWarningTextHeight:F

.field private final mWarningTextPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/systemui/BatteryMeterView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/BatteryMeterView;Landroid/content/res/Resources;Z)V
    .locals 5
    .param p2    # Landroid/content/res/Resources;
    .param p3    # Z

    const/4 v4, 0x0

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iput-boolean p3, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mDisposed:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mFrameColor:I
    invoke-static {p1}, Lcom/android/systemui/BatteryMeterView;->access$500(Lcom/android/systemui/BatteryMeterView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    const-string v1, "sans-serif-condensed"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mColors:[I
    invoke-static {p1}, Lcom/android/systemui/BatteryMeterView;->access$600(Lcom/android/systemui/BatteryMeterView;)[I

    move-result-object v2

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const-string v1, "sans-serif"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p1}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mChargeColor:I

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    const v2, 0x7f070008

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, p2}, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPoints:[F

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;Landroid/content/res/Resources;)[F
    .locals 1
    .param p0    # Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;
    .param p1    # Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v0

    return-object v0
.end method

.method private loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p1    # Landroid/content/res/Resources;

    iget-boolean v5, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    if-eqz v5, :cond_0

    const v5, 0x7f060004

    :goto_0
    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_0
    const v5, 0x7f060002

    goto :goto_0

    :cond_1
    array-length v5, v3

    new-array v4, v5, [F

    const/4 v0, 0x0

    :goto_2
    array-length v5, v3

    if-ge v0, v5, :cond_2

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

    goto :goto_2

    :cond_2
    return-object v4
.end method


# virtual methods
.method public onDispose()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/BatteryMeterView;->access$1800(Lcom/android/systemui/BatteryMeterView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mInvalidate:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/BatteryMeterView;->access$1700(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mDisposed:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/android/systemui/BatteryMeterView$BatteryTracker;)V
    .locals 35
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mDisposed:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    move/from16 v20, v0

    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_0

    move/from16 v0, v20

    int-to-float v3, v0

    const/high16 v5, 0x42c80000

    div-float v16, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v3}, Lcom/android/systemui/BatteryMeterView;->getPaddingTop()I

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mHeight:I
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$700(Lcom/android/systemui/BatteryMeterView;)I

    move-result v3

    int-to-float v3, v3

    const v6, 0x3df5c28f

    mul-float/2addr v3, v6

    float-to-int v3, v3

    :goto_1
    add-int v27, v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v3}, Lcom/android/systemui/BatteryMeterView;->getPaddingLeft()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v3}, Lcom/android/systemui/BatteryMeterView;->getPaddingRight()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v3}, Lcom/android/systemui/BatteryMeterView;->getPaddingBottom()I

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mHeight:I
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$700(Lcom/android/systemui/BatteryMeterView;)I

    move-result v3

    int-to-float v3, v3

    const v6, 0x3da3d70a

    mul-float/2addr v3, v6

    float-to-int v3, v3

    :goto_2
    add-int v23, v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mHeight:I
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$700(Lcom/android/systemui/BatteryMeterView;)I

    move-result v3

    sub-int v3, v3, v27

    sub-int v18, v3, v23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mWidth:I
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$800(Lcom/android/systemui/BatteryMeterView;)I

    move-result v3

    sub-int v3, v3, v25

    sub-int v29, v3, v26

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    if-eqz v3, :cond_6

    move/from16 v3, v29

    :goto_3
    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mButtonHeightFraction:F
    invoke-static {v5}, Lcom/android/systemui/BatteryMeterView;->access$900(Lcom/android/systemui/BatteryMeterView;)F

    move-result v5

    mul-float/2addr v3, v5

    float-to-int v15, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v29

    int-to-float v9, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    invoke-virtual {v3, v5, v6, v9, v0}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move/from16 v0, v25

    int-to-float v5, v0

    move/from16 v0, v27

    int-to-float v6, v0

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    sub-int v5, v29, v15

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move/from16 v0, v18

    int-to-float v9, v0

    const/high16 v32, 0x3e800000

    mul-float v9, v9, v32

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v6, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v32, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v33, v0

    const/high16 v34, 0x3e800000

    mul-float v33, v33, v34

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->round(F)I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    sub-float v32, v32, v33

    move/from16 v0, v32

    invoke-virtual {v3, v5, v6, v9, v0}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F
    invoke-static {v6}, Lcom/android/systemui/BatteryMeterView;->access$1000(Lcom/android/systemui/BatteryMeterView;)F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F
    invoke-static {v6}, Lcom/android/systemui/BatteryMeterView;->access$1100(Lcom/android/systemui/BatteryMeterView;)F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F
    invoke-static {v6}, Lcom/android/systemui/BatteryMeterView;->access$1100(Lcom/android/systemui/BatteryMeterView;)F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->right:F

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->right:F

    int-to-float v6, v15

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->right:F

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F
    invoke-static {v6}, Lcom/android/systemui/BatteryMeterView;->access$1000(Lcom/android/systemui/BatteryMeterView;)F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F
    invoke-static {v6}, Lcom/android/systemui/BatteryMeterView;->access$1000(Lcom/android/systemui/BatteryMeterView;)F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F
    invoke-static {v6}, Lcom/android/systemui/BatteryMeterView;->access$1100(Lcom/android/systemui/BatteryMeterView;)F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F
    invoke-static {v6}, Lcom/android/systemui/BatteryMeterView;->access$1100(Lcom/android/systemui/BatteryMeterView;)F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mChargeColor:I

    :goto_6
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v3, 0x60

    move/from16 v0, v20

    if-lt v0, v3, :cond_a

    const/high16 v16, 0x3f800000

    :cond_2
    :goto_7
    const/high16 v3, 0x3f800000

    cmpl-float v3, v16, v3

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v0, v3, Landroid/graphics/RectF;->right:F

    move/from16 v21, v0

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_9
    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    if-eqz v3, :cond_f

    const/high16 v3, 0x41100000

    :goto_a
    div-float v3, v6, v3

    add-float v11, v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    if-eqz v3, :cond_10

    const/high16 v3, 0x40900000

    :goto_b
    div-float v3, v6, v3

    add-float v14, v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    if-eqz v3, :cond_11

    const/high16 v3, 0x40c00000

    :goto_c
    div-float v3, v6, v3

    sub-float v13, v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    if-eqz v3, :cond_12

    const/high16 v3, 0x40e00000

    :goto_d
    div-float v3, v6, v3

    sub-float v10, v5, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v11

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v14

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v13

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v10

    if-eqz v3, :cond_14

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v3, v11, v14, v13, v10}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPoints:[F

    const/4 v9, 0x0

    aget v6, v6, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPoints:[F

    const/16 v32, 0x1

    aget v9, v9, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->height()F

    move-result v32

    mul-float v9, v9, v32

    add-float/2addr v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    const/16 v19, 0x2

    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPoints:[F

    array-length v3, v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPoints:[F

    aget v6, v6, v19

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPoints:[F

    add-int/lit8 v32, v19, 0x1

    aget v9, v9, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->height()F

    move-result v32

    mul-float v9, v9, v32

    add-float/2addr v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v19, v19, 0x2

    goto :goto_e

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_6
    move/from16 v3, v18

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move/from16 v0, v29

    int-to-float v6, v0

    const/high16 v9, 0x3e800000

    mul-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v32, v0

    const/high16 v33, 0x3e800000

    mul-float v32, v32, v33

    invoke-static/range {v32 .. v32}, Ljava/lang/Math;->round(F)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    sub-float v9, v9, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v32, v0

    int-to-float v0, v15

    move/from16 v33, v0

    add-float v32, v32, v33

    move/from16 v0, v32

    invoke-virtual {v3, v5, v6, v9, v0}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F
    invoke-static {v6}, Lcom/android/systemui/BatteryMeterView;->access$1000(Lcom/android/systemui/BatteryMeterView;)F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F
    invoke-static {v6}, Lcom/android/systemui/BatteryMeterView;->access$1000(Lcom/android/systemui/BatteryMeterView;)F

    move-result v6

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F
    invoke-static {v6}, Lcom/android/systemui/BatteryMeterView;->access$1100(Lcom/android/systemui/BatteryMeterView;)F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->right:F

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    int-to-float v6, v15

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->top:F

    goto/16 :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/systemui/BatteryMeterView;->getColorForLevel(I)I

    move-result v3

    goto/16 :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1200(Lcom/android/systemui/BatteryMeterView;)I

    move-result v3

    move/from16 v0, v20

    if-gt v0, v3, :cond_2

    const/16 v16, 0x0

    goto/16 :goto_7

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    goto/16 :goto_8

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x3f800000

    sub-float v6, v6, v16

    mul-float/2addr v5, v6

    sub-float v21, v3, v5

    goto/16 :goto_8

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x3f800000

    sub-float v6, v6, v16

    mul-float/2addr v5, v6

    add-float v21, v3, v5

    goto/16 :goto_8

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9

    :cond_f
    const/high16 v3, 0x40900000

    goto/16 :goto_a

    :cond_10
    const/high16 v3, 0x40c00000

    goto/16 :goto_b

    :cond_11
    const/high16 v3, 0x40e00000

    goto/16 :goto_c

    :cond_12
    const/high16 v3, 0x41200000

    goto/16 :goto_d

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPoints:[F

    const/4 v9, 0x0

    aget v6, v6, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPoints:[F

    const/16 v32, 0x1

    aget v9, v9, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/RectF;->height()F

    move-result v32

    mul-float v9, v9, v32

    add-float/2addr v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float v3, v3, v21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v5, v6

    div-float v12, v3, v5

    :goto_f
    const/4 v3, 0x0

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v5, 0x3f800000

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const v3, 0x3e99999a

    cmpg-float v3, v12, v3

    if-gtz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_15
    :goto_10
    const/16 v24, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-nez v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1200(Lcom/android/systemui/BatteryMeterView;)I

    move-result v3

    move/from16 v0, v20

    if-le v0, v3, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    iget-boolean v3, v3, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    if-eqz v3, :cond_16

    move-object/from16 v0, p2

    iget v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    const/16 v5, 0x64

    if-ne v3, v5, :cond_19

    :cond_16
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move/from16 v0, v21

    iput v0, v3, Landroid/graphics/RectF;->right:F

    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1500(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1500(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;
    invoke-static {v5}, Lcom/android/systemui/BatteryMeterView;->access$1500(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v5

    sget-object v6, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p2

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1200(Lcom/android/systemui/BatteryMeterView;)I

    move-result v3

    move/from16 v0, v20

    if-gt v0, v3, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mWidth:I
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$800(Lcom/android/systemui/BatteryMeterView;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x3f000000

    mul-float v30, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mHeight:I
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$700(Lcom/android/systemui/BatteryMeterView;)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mWarningTextHeight:F

    add-float/2addr v3, v5

    const v5, 0x3ef5c28f

    mul-float v31, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1600(Lcom/android/systemui/BatteryMeterView;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v3, v21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    div-float v12, v3, v5

    goto/16 :goto_f

    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_10

    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/systemui/BatteryMeterView;->getColorForLevel(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    if-eqz v3, :cond_1a

    const v17, 0x3f19999a

    :goto_13
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    if-eqz v3, :cond_1b

    const/high16 v22, 0x3f400000

    :goto_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    if-eqz v3, :cond_1c

    const v28, 0x3f5c28f6

    :goto_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v18

    int-to-float v5, v0

    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    const/16 v9, 0x64

    if-ne v6, v9, :cond_1d

    :goto_16
    mul-float v5, v5, v17

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mTextHeight:F

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mWidth:I
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$800(Lcom/android/systemui/BatteryMeterView;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x3f000000

    mul-float v7, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mHeight:I
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$700(Lcom/android/systemui/BatteryMeterView;)I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mTextHeight:F

    add-float/2addr v3, v5

    const v5, 0x3ef0a3d7

    mul-float v8, v3, v5

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mHorizontal:Z

    if-eqz v3, :cond_1f

    cmpl-float v3, v7, v21

    if-lez v3, :cond_1e

    const/16 v24, 0x1

    :goto_17
    if-nez v24, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1400(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;
    invoke-static {v9}, Lcom/android/systemui/BatteryMeterView;->access$1400(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v9

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;
    invoke-static {v3}, Lcom/android/systemui/BatteryMeterView;->access$1300(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # getter for: Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;
    invoke-static {v5}, Lcom/android/systemui/BatteryMeterView;->access$1400(Lcom/android/systemui/BatteryMeterView;)Landroid/graphics/Path;

    move-result-object v5

    sget-object v6, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_11

    :cond_1a
    const v17, 0x3ee66666

    goto/16 :goto_13

    :cond_1b
    const v22, 0x3f19999a

    goto/16 :goto_14

    :cond_1c
    const/high16 v28, 0x3f400000

    goto/16 :goto_15

    :cond_1d
    move/from16 v17, v22

    goto/16 :goto_16

    :cond_1e
    const/16 v24, 0x0

    goto :goto_17

    :cond_1f
    cmpl-float v3, v21, v8

    if-lez v3, :cond_20

    const/16 v24, 0x1

    :goto_18
    goto :goto_17

    :cond_20
    const/16 v24, 0x0

    goto :goto_18

    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move/from16 v0, v21

    iput v0, v3, Landroid/graphics/RectF;->top:F

    goto/16 :goto_12

    :cond_22
    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # setter for: Lcom/android/systemui/BatteryMeterView;->mHeight:I
    invoke-static {v0, p2}, Lcom/android/systemui/BatteryMeterView;->access$702(Lcom/android/systemui/BatteryMeterView;I)I

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->this$0:Lcom/android/systemui/BatteryMeterView;

    # setter for: Lcom/android/systemui/BatteryMeterView;->mWidth:I
    invoke-static {v0, p1}, Lcom/android/systemui/BatteryMeterView;->access$802(Lcom/android/systemui/BatteryMeterView;I)I

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    const/high16 v2, 0x3f400000

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView$NormalBatteryMeterDrawable;->mWarningTextHeight:F

    return-void
.end method
