.class public Lcom/android/systemui/qs/DataUsageGraph;
.super Landroid/view/View;
.source "DataUsageGraph.java"


# instance fields
.field private mLimitLevel:J

.field private final mMarkerWidth:I

.field private mMaxLevel:J

.field private final mOverlimitColor:I

.field private final mTmpPaint:Landroid/graphics/Paint;

.field private final mTmpRect:Landroid/graphics/RectF;

.field private final mTrackColor:I

.field private final mUsageColor:I

.field private mUsageLevel:J

.field private final mWarningColor:I

.field private mWarningLevel:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpRect:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTrackColor:I

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageColor:I

    const v1, 0x7f07000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mOverlimitColor:I

    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningColor:I

    const v1, 0x7f0c008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1    # Landroid/graphics/Canvas;

    const/4 v12, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/qs/DataUsageGraph;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/qs/DataUsageGraph;->getHeight()I

    move-result v0

    iget-wide v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    iget-wide v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    iget-wide v10, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-float v7, v5

    iget-wide v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    long-to-float v8, v8

    iget-wide v10, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMaxLevel:J

    long-to-float v9, v10

    div-float/2addr v8, v9

    mul-float v4, v7, v8

    if-eqz v1, :cond_1

    int-to-float v7, v5

    iget-wide v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    long-to-float v8, v8

    iget-wide v10, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMaxLevel:J

    long-to-float v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float v4, v7, v8

    iget v7, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    int-to-float v7, v7

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v5, v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iget v7, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    int-to-float v8, v5

    int-to-float v9, v0

    invoke-virtual {v3, v7, v12, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget v7, p0, Lcom/android/systemui/qs/DataUsageGraph;->mOverlimitColor:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_1
    int-to-float v7, v0

    invoke-virtual {v3, v12, v12, v4, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget v7, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageColor:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    int-to-float v7, v5

    iget-wide v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningLevel:J

    long-to-float v8, v8

    iget-wide v10, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMaxLevel:J

    long-to-float v9, v10

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float v6, v7, v8

    invoke-static {v6, v12}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v8, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    sub-int v8, v5, v8

    int-to-float v8, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget v7, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMarkerWidth:I

    int-to-float v7, v7

    add-float/2addr v7, v6

    int-to-float v8, v0

    invoke-virtual {v3, v6, v12, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget v7, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningColor:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    int-to-float v7, v5

    int-to-float v8, v0

    invoke-virtual {v3, v12, v12, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget v7, p0, Lcom/android/systemui/qs/DataUsageGraph;->mTrackColor:I

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public setLevels(JJJ)V
    .locals 5
    .param p1    # J
    .param p3    # J
    .param p5    # J

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningLevel:J

    invoke-static {v2, v3, p5, p6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    iget-wide v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mLimitLevel:J

    iget-wide v2, p0, Lcom/android/systemui/qs/DataUsageGraph;->mWarningLevel:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/qs/DataUsageGraph;->mUsageLevel:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/qs/DataUsageGraph;->mMaxLevel:J

    invoke-virtual {p0}, Lcom/android/systemui/qs/DataUsageGraph;->postInvalidate()V

    return-void
.end method
