.class public Lcom/android/internal/widget/multiwaveview/PointCloud;
.super Ljava/lang/Object;
.source "PointCloud.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/multiwaveview/PointCloud$Point;,
        Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;,
        Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;
    }
.end annotation


# static fields
.field private static final INNER_POINTS:I = 0x8

.field private static final MAX_POINT_SIZE:F = 4.0f

.field private static final MIN_POINT_SIZE:F = 2.0f

.field private static final PI:F = 3.1415927f

.field private static final TAG:Ljava/lang/String; = "PointCloud"


# instance fields
.field glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

.field private mCenterX:F

.field private mCenterY:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mOuterRadius:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPointCloud:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/multiwaveview/PointCloud$Point;",
            ">;"
        }
    .end annotation
.end field

.field private mScale:F

.field waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/16 v1, 0xff

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mScale:F

    new-instance v0, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;-><init>(Lcom/android/internal/widget/multiwaveview/PointCloud;)V

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    new-instance v0, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;-><init>(Lcom/android/internal/widget/multiwaveview/PointCloud;)V

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method private static hypot(FF)F
    .locals 2
    .param p0    # F
    .param p1    # F

    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method private interp(FFF)F
    .locals 1
    .param p1    # F
    .param p2    # F
    .param p3    # F

    sub-float v0, p2, p1

    mul-float/2addr v0, p3

    add-float/2addr v0, p1

    return v0
.end method

.method private static max(FF)F
    .locals 1
    .param p0    # F
    .param p1    # F

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    :goto_0
    return p0

    :cond_0
    move p0, p1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1    # Landroid/graphics/Canvas;

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->save(I)I

    iget v10, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mScale:F

    iget v11, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mScale:F

    iget v12, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mCenterX:F

    iget v13, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mCenterY:F

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->scale(FFFF)V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_2

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/multiwaveview/PointCloud$Point;

    const/high16 v10, 0x40800000

    const/high16 v11, 0x40000000

    iget v12, v4, Lcom/android/internal/widget/multiwaveview/PointCloud$Point;->radius:F

    iget v13, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mOuterRadius:F

    div-float/2addr v12, v13

    invoke-direct {p0, v10, v11, v12}, Lcom/android/internal/widget/multiwaveview/PointCloud;->interp(FFF)F

    move-result v5

    iget v10, v4, Lcom/android/internal/widget/multiwaveview/PointCloud$Point;->x:F

    iget v11, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mCenterX:F

    add-float v7, v10, v11

    iget v10, v4, Lcom/android/internal/widget/multiwaveview/PointCloud$Point;->y:F

    iget v11, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mCenterY:F

    add-float v8, v10, v11

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/multiwaveview/PointCloud;->getAlphaForPoint(Lcom/android/internal/widget/multiwaveview/PointCloud$Point;)I

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v10, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->save(I)I

    iget-object v10, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f000000

    mul-float v1, v10, v11

    iget-object v10, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x3f000000

    mul-float v2, v10, v11

    const/high16 v10, 0x40800000

    div-float v9, v5, v10

    invoke-virtual {p1, v9, v9, v7, v8}, Landroid/graphics/Canvas;->scale(FFFF)V

    sub-float v10, v7, v1

    sub-float v11, v8, v2

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v10, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v10, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_1
    iget-object v10, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v10, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v5, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlphaForPoint(Lcom/android/internal/widget/multiwaveview/PointCloud$Point;)I
    .locals 13
    .param p1    # Lcom/android/internal/widget/multiwaveview/PointCloud$Point;

    const/4 v12, 0x0

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    # getter for: Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->x:F
    invoke-static {v6}, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->access$000(Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;)F

    move-result v6

    iget v7, p1, Lcom/android/internal/widget/multiwaveview/PointCloud$Point;->x:F

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    # getter for: Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->y:F
    invoke-static {v7}, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->access$100(Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;)F

    move-result v7

    iget v8, p1, Lcom/android/internal/widget/multiwaveview/PointCloud$Point;->y:F

    sub-float/2addr v7, v8

    invoke-static {v6, v7}, Lcom/android/internal/widget/multiwaveview/PointCloud;->hypot(FF)F

    move-result v3

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    # getter for: Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->radius:F
    invoke-static {v6}, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->access$200(Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;)F

    move-result v6

    cmpg-float v6, v3, v6

    if-gez v6, :cond_0

    const v6, 0x3f490fdb

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    # getter for: Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->radius:F
    invoke-static {v7}, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->access$200(Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;)F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;

    # getter for: Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->alpha:F
    invoke-static {v6}, Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;->access$300(Lcom/android/internal/widget/multiwaveview/PointCloud$GlowManager;)F

    move-result v6

    float-to-double v8, v0

    const-wide/high16 v10, 0x4024000000000000L

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v7, v8

    invoke-static {v12, v7}, Lcom/android/internal/widget/multiwaveview/PointCloud;->max(FF)F

    move-result v7

    mul-float v2, v6, v7

    :cond_0
    iget v6, p1, Lcom/android/internal/widget/multiwaveview/PointCloud$Point;->x:F

    iget v7, p1, Lcom/android/internal/widget/multiwaveview/PointCloud$Point;->y:F

    invoke-static {v6, v7}, Lcom/android/internal/widget/multiwaveview/PointCloud;->hypot(FF)F

    move-result v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    # getter for: Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->radius:F
    invoke-static {v6}, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->access$400(Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;)F

    move-result v6

    const/high16 v7, 0x40000000

    mul-float/2addr v6, v7

    cmpg-float v6, v4, v6

    if-gez v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    # getter for: Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->radius:F
    invoke-static {v6}, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->access$400(Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;)F

    move-result v6

    sub-float v1, v4, v6

    const v6, 0x3fc90fdb

    mul-float/2addr v6, v1

    iget-object v7, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    # getter for: Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->radius:F
    invoke-static {v7}, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->access$400(Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;)F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    iget-object v6, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;

    # getter for: Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->alpha:F
    invoke-static {v6}, Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;->access$500(Lcom/android/internal/widget/multiwaveview/PointCloud$WaveManager;)F

    move-result v6

    float-to-double v8, v0

    const-wide/high16 v10, 0x4018000000000000L

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v7, v8

    invoke-static {v12, v7}, Lcom/android/internal/widget/multiwaveview/PointCloud;->max(FF)F

    move-result v7

    mul-float v5, v6, v7

    :cond_1
    invoke-static {v2, v5}, Lcom/android/internal/widget/multiwaveview/PointCloud;->max(FF)F

    move-result v6

    const/high16 v7, 0x437f0000

    mul-float/2addr v6, v7

    float-to-int v6, v6

    return v6
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mScale:F

    return v0
.end method

.method public makePointCloud(FF)V
    .locals 17
    .param p1    # F
    .param p2    # F

    const/4 v15, 0x0

    cmpl-float v15, p1, v15

    if-nez v15, :cond_1

    const-string v15, "PointCloud"

    const-string v16, "Must specify an inner radius"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/multiwaveview/PointCloud;->mOuterRadius:F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    sub-float v10, p2, p1

    const v15, 0x40c90fdb

    mul-float v15, v15, p1

    const/high16 v16, 0x41000000

    div-float v7, v15, v16

    div-float v15, v10, v7

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v15, v3

    div-float v6, v10, v15

    move/from16 v12, p1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v3, :cond_0

    const v15, 0x40c90fdb

    mul-float v4, v15, v12

    div-float v15, v4, v7

    float-to-int v11, v15

    const v8, 0x3fc90fdb

    const v15, 0x40c90fdb

    int-to-float v0, v11

    move/from16 v16, v0

    div-float v5, v15, v16

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v11, :cond_2

    invoke-static {v8}, Landroid/util/FloatMath;->cos(F)F

    move-result v15

    mul-float v13, v12, v15

    invoke-static {v8}, Landroid/util/FloatMath;->sin(F)F

    move-result v15

    mul-float v14, v12, v15

    add-float/2addr v8, v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mPointCloud:Ljava/util/ArrayList;

    new-instance v16, Lcom/android/internal/widget/multiwaveview/PointCloud$Point;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13, v14, v12}, Lcom/android/internal/widget/multiwaveview/PointCloud$Point;-><init>(Lcom/android/internal/widget/multiwaveview/PointCloud;FFF)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    add-float/2addr v12, v6

    goto :goto_0
.end method

.method public setCenter(FF)V
    .locals 0
    .param p1    # F
    .param p2    # F

    iput p1, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mCenterX:F

    iput p2, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mCenterY:F

    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/android/internal/widget/multiwaveview/PointCloud;->mScale:F

    return-void
.end method
