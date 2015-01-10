.class Lcom/android/systemui/recents/views/FakeShadowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "FakeShadowDrawable.java"


# static fields
.field static final COS_45:D


# instance fields
.field private mAddPaddingForCorners:Z

.field final mCardBounds:Landroid/graphics/RectF;

.field mCornerRadius:F

.field mCornerShadowPaint:Landroid/graphics/Paint;

.field mCornerShadowPath:Landroid/graphics/Path;

.field private mDirty:Z

.field mEdgeShadowPaint:Landroid/graphics/Paint;

.field final mInsetShadow:F

.field mMaxShadowSize:F

.field private mPrintedShadowClipWarning:Z

.field mRawMaxShadowSize:F

.field mRawShadowSize:F

.field private final mShadowEndColor:I

.field mShadowSize:F

.field private final mShadowStartColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->COS_45:D

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/android/systemui/recents/RecentsConfiguration;)V
    .locals 3
    .param p1    # Landroid/content/res/Resources;
    .param p2    # Lcom/android/systemui/recents/RecentsConfiguration;

    const v1, 0x7f0c00b7

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mDirty:Z

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mAddPaddingForCorners:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mPrintedShadowClipWarning:Z

    const v0, 0x7f070037

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowStartColor:I

    const v0, 0x7f070038

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowEndColor:I

    const v0, 0x7f0c00b6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mInsetShadow:F

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->setShadowSize(FF)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget v0, p2, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private buildComponents(Landroid/graphics/Rect;)V
    .locals 6
    .param p1    # Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mMaxShadowSize:F

    const/high16 v2, 0x3fc00000

    mul-float v0, v1, v2

    iget-object v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mMaxShadowSize:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mMaxShadowSize:F

    sub-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->buildShadowCorners()V

    return-void
.end method

.method private buildShadowCorners()V
    .locals 12

    new-instance v8, Landroid/graphics/RectF;

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v1, v1

    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    neg-float v0, v0

    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    neg-float v1, v1

    invoke-virtual {v9, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v1, 0x43340000

    const/high16 v2, 0x42b40000

    const/4 v3, 0x0

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v1, 0x43870000

    const/high16 v2, -0x3d4c0000

    const/4 v3, 0x0

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    add-float/2addr v1, v2

    div-float v10, v0, v1

    iget-object v7, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget v4, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    add-float/2addr v3, v4

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowStartColor:I

    aput v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowStartColor:I

    aput v6, v4, v5

    const/4 v5, 0x2

    iget v6, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowEndColor:I

    aput v6, v4, v5

    const/4 v5, 0x3

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/4 v11, 0x0

    aput v11, v5, v6

    const/4 v6, 0x1

    aput v10, v5, v6

    const/4 v6, 0x2

    const/high16 v11, 0x3f800000

    aput v11, v5, v6

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v11, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v2, v2

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    add-float/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v4, v4

    iget v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    sub-float/2addr v4, v5

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowStartColor:I

    aput v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowStartColor:I

    aput v7, v5, v6

    const/4 v6, 0x2

    iget v7, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowEndColor:I

    aput v7, v5, v6

    const/4 v6, 0x3

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000
        0x3f800000
    .end array-data
.end method

.method static calculateHorizontalPadding(FFZ)F
    .locals 6
    .param p0    # F
    .param p1    # F
    .param p2    # Z

    if-eqz p2, :cond_0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L

    sget-wide v4, Lcom/android/systemui/recents/views/FakeShadowDrawable;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float p0, v0

    :cond_0
    return p0
.end method

.method static calculateVerticalPadding(FFZ)F
    .locals 6
    .param p0    # F
    .param p1    # F
    .param p2    # Z

    const/high16 v0, 0x3fc00000

    if-eqz p2, :cond_0

    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L

    sget-wide v4, Lcom/android/systemui/recents/views/FakeShadowDrawable;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    mul-float/2addr v0, p0

    goto :goto_0
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1    # Landroid/graphics/Canvas;

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/high16 v10, 0x40000000

    iget v4, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v4, v4

    iget v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    sub-float v2, v4, v5

    iget v4, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mInsetShadow:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawShadowSize:F

    div-float/2addr v5, v10

    add-float v8, v4, v5

    iget-object v4, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v5, v10, v8

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v1

    if-lez v4, :cond_4

    move v6, v0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v5, v10, v8

    sub-float/2addr v4, v5

    cmpl-float v4, v4, v1

    if-lez v4, :cond_5

    move v7, v0

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v8

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v8

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43340000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v0, v0

    iget v4, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v8

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43870000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v7, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v8

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v8

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x42b40000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v7, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v3, v10, v8

    sub-float v3, v0, v3

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    neg-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_4
    move v6, v3

    goto/16 :goto_0

    :cond_5
    move v7, v3

    goto/16 :goto_1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;

    const/high16 v2, 0x40800000

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mDirty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->buildComponents(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mDirty:Z

    :cond_0
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawShadowSize:F

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->drawShadow(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawShadowSize:F

    neg-float v0, v0

    div-float/2addr v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1    # Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawMaxShadowSize:F

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget-boolean v4, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mAddPaddingForCorners:Z

    invoke-static {v2, v3, v4}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->calculateVerticalPadding(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawMaxShadowSize:F

    iget v3, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerRadius:F

    iget-boolean v4, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mAddPaddingForCorners:Z

    invoke-static {v2, v3, v4}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->calculateHorizontalPadding(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v2, 0x1

    return v2
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mDirty:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method setShadowSize(FF)V
    .locals 3
    .param p1    # F
    .param p2    # F

    const/4 v2, 0x1

    const/4 v1, 0x0

    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    cmpg-float v0, p2, v1

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid shadow size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    cmpl-float v0, p1, p2

    if-lez v0, :cond_2

    move p1, p2

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mPrintedShadowClipWarning:Z

    if-nez v0, :cond_2

    const-string v0, "CardView"

    const-string v1, "Shadow size is being clipped by the max shadow size. See {CardView#setMaxCardElevation}."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mPrintedShadowClipWarning:Z

    :cond_2
    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawShadowSize:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawMaxShadowSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_3

    :goto_0
    return-void

    :cond_3
    iput p1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawShadowSize:F

    iput p2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mRawMaxShadowSize:F

    const/high16 v0, 0x3fc00000

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mInsetShadow:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mShadowSize:F

    iget v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mInsetShadow:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mMaxShadowSize:F

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/FakeShadowDrawable;->mDirty:Z

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/FakeShadowDrawable;->invalidateSelf()V

    goto :goto_0
.end method
