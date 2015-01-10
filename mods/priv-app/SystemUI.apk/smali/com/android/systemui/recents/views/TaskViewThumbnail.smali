.class public Lcom/android/systemui/recents/views/TaskViewThumbnail;
.super Landroid/view/View;
.source "TaskViewThumbnail.java"


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mBitmapAlpha:F

.field private final mBitmapRect:Landroid/graphics/RectF;

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field mClipRect:Landroid/graphics/Rect;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field private final mCornerRadius:I

.field private mDimAlpha:F

.field mDrawPaint:Landroid/graphics/Paint;

.field private mInvisible:Z

.field private final mLayoutRect:Landroid/graphics/RectF;

.field mLightingColorFilter:Landroid/graphics/LightingColorFilter;

.field private final mScaleMatrix:Landroid/graphics/Matrix;

.field private mTaskBar:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I
    .param p4    # I

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mClipRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LightingColorFilter;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLayoutRect:Landroid/graphics/RectF;

    new-instance v0, Lcom/android/systemui/recents/views/TaskViewThumbnail$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail$1;-><init>(Lcom/android/systemui/recents/views/TaskViewThumbnail;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/recents/views/TaskViewThumbnail;F)F
    .locals 0
    .param p0    # Lcom/android/systemui/recents/views/TaskViewThumbnail;
    .param p1    # F

    iput p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapAlpha:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/views/TaskViewThumbnail;)V
    .locals 0
    .param p0    # Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateFilter()V

    return-void
.end method

.method private updateBitmapScale()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLayoutRect:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method private updateFilter()V
    .locals 8

    const/16 v7, 0xff

    const/high16 v6, 0x437f0000

    const/high16 v5, 0x3f800000

    iget-boolean v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    sub-float v3, v5, v3

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapAlpha:F

    mul-float/2addr v3, v4

    mul-float/2addr v3, v6

    float-to-int v2, v3

    iget v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    sub-float v3, v5, v3

    iget v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapAlpha:F

    sub-float v4, v5, v4

    mul-float/2addr v3, v4

    mul-float/2addr v3, v6

    float-to-int v0, v3

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-static {v7, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/LightingColorFilter;->setColorMultiply(I)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    const/4 v4, 0x0

    invoke-static {v4, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/LightingColorFilter;->setColorAdd(I)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    add-int v1, v2, v0

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-static {v7, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1
.end method


# virtual methods
.method bindToScreenshot(Landroid/graphics/Bitmap;)Z
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method enableTaskBarClip(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/high16 v3, 0x3f800000

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v0, v1

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mClipRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1    # Landroid/graphics/Canvas;

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    const v0, 0x3f666666

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapAlpha:F

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateFilter()V

    return-void
.end method

.method onFocusChanged(Z)V
    .locals 5
    .param p1    # Z

    const/4 v4, 0x0

    const/16 v3, 0x96

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getAlpha()F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->startFadeAnimation(FIILjava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getAlpha()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->startFadeAnimation(FIILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLayoutRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateBitmapScale()V

    :cond_0
    return-void
.end method

.method prepareEnterRecentsAnimation(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapAlpha:F

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateFilter()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewThumbnailAlpha:F

    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapAlpha:F

    goto :goto_0
.end method

.method rebindToTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 1
    .param p1    # Lcom/android/systemui/recents/model/Task;

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setDimAlpha(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateFilter()V

    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateBitmapScale()V

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateFilter()V

    return-void

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method startFadeAnimation(FIILjava/lang/Runnable;)V
    .locals 4
    .param p1    # F
    .param p2    # I
    .param p3    # I
    .param p4    # Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapAlpha:F

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->fastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/recents/views/TaskViewThumbnail$2;

    invoke-direct {v1, p0, p4}, Lcom/android/systemui/recents/views/TaskViewThumbnail$2;-><init>(Lcom/android/systemui/recents/views/TaskViewThumbnail;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void
.end method

.method startLaunchTaskAnimation(Ljava/lang/Runnable;)V
    .locals 3
    .param p1    # Ljava/lang/Runnable;

    const/high16 v0, 0x3f800000

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarExitAnimDuration:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->startFadeAnimation(FIILjava/lang/Runnable;)V

    return-void
.end method

.method unbindFromTask()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method updateVisibility(I)V
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v1

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateFilter()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
