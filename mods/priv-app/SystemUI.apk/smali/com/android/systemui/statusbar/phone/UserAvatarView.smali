.class public Lcom/android/systemui/statusbar/phone/UserAvatarView;
.super Landroid/view/View;
.source "UserAvatarView.java"


# instance fields
.field private mActiveFrameColor:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mFrameColor:I

.field private mFramePadding:F

.field private final mFramePaint:Landroid/graphics/Paint;

.field private mFrameWidth:F

.field private mScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I
    .param p4    # I

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mFramePaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mBitmapPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawMatrix:Landroid/graphics/Matrix;

    const/high16 v4, 0x3f800000

    iput v4, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mScale:F

    sget-object v4, Lcom/android/systemui/R$styleable;->UserAvatarView:[I

    invoke-virtual {p1, p2, v4, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_0
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setFrameWidth(F)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setFramePadding(F)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setActiveFrameColor(I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {v1, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setFrameColor(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public configureBounds()V
    .locals 13

    const/4 v12, 0x0

    const/high16 v11, 0x40000000

    const/high16 v9, 0x3f800000

    const/high16 v10, 0x3f000000

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mPaddingRight:I

    sub-int v6, v7, v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mPaddingTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mPaddingBottom:I

    sub-int v5, v7, v8

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    :goto_0
    int-to-float v7, v6

    int-to-float v8, v1

    div-float/2addr v7, v8

    int-to-float v8, v5

    int-to-float v9, v0

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    int-to-float v7, v6

    int-to-float v8, v1

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    mul-float/2addr v7, v10

    add-float/2addr v7, v10

    float-to-int v7, v7

    int-to-float v2, v7

    int-to-float v7, v5

    int-to-float v8, v0

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    mul-float/2addr v7, v10

    add-float/2addr v7, v10

    float-to-int v7, v7

    int-to-float v3, v7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iput v4, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mScale:F

    :cond_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    int-to-float v7, v6

    iget v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mFrameWidth:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v11

    sub-float/2addr v7, v8

    float-to-int v6, v7

    int-to-float v7, v5

    iget v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mFrameWidth:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v11

    sub-float/2addr v7, v8

    float-to-int v5, v7

    move v1, v6

    move v0, v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v12, v12, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->invalidate()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;

    const/4 v9, 0x0

    const/high16 v11, 0x3f800000

    const/high16 v10, 0x40000000

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->isActivated()Z

    move-result v8

    if-eqz v8, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mActiveFrameColor:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v6, v8, v10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v4, v8, v10

    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_3

    iget v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mScale:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mPaddingLeft:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mPaddingTop:I

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v3, v8, v10

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v1, v8, v10

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mFrameWidth:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mScale:F

    div-float/2addr v8, v9

    sub-float v8, v2, v8

    add-float/2addr v8, v11

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v1, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mFramePaint:Landroid/graphics/Paint;

    iget v9, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mFrameWidth:F

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mFramePadding:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mFrameWidth:F

    sub-float/2addr v8, v9

    div-float/2addr v8, v10

    add-float/2addr v8, v5

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v4, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mFrameColor:I

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mScale:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mPaddingLeft:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mPaddingTop:I

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mFrameWidth:F

    sub-float/2addr v8, v11

    iget v9, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mFrameWidth:F

    sub-float/2addr v9, v11

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->configureBounds()V

    return-void
.end method

.method public setActiveFrameColor(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mActiveFrameColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->invalidate()V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1    # Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mBitmapPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, p1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->configureBounds()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->configureBounds()V

    :cond_2
    if-eqz p1, :cond_3

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mBitmap:Landroid/graphics/Bitmap;

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->configureBounds()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->invalidate()V

    return-void
.end method

.method public setFrameColor(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mFrameColor:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->invalidate()V

    return-void
.end method

.method public setFramePadding(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mFramePadding:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->invalidate()V

    return-void
.end method

.method public setFrameWidth(F)V
    .locals 0
    .param p1    # F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mFrameWidth:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/UserAvatarView;->invalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UserAvatarView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
