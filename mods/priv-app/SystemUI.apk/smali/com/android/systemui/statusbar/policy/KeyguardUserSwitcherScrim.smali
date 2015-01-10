.class public Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;
.super Landroid/graphics/drawable/Drawable;
.source "KeyguardUserSwitcherScrim.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private mAlpha:I

.field private mDarkColor:I

.field private mLayoutWidth:I

.field private mRadialGradientPaint:Landroid/graphics/Paint;

.field private mTop:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mRadialGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mDarkColor:I

    return-void
.end method

.method private updatePaint()V
    .locals 12

    const/4 v11, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mLayoutWidth:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mLayoutWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40200000

    mul-float v3, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_1

    move v7, v6

    :goto_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mRadialGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RadialGradient;

    if-eqz v7, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mLayoutWidth:I

    int-to-float v1, v1

    :goto_2
    new-array v4, v11, [I

    iget v5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mDarkColor:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    iget v10, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mAlpha:I

    mul-int/2addr v5, v10

    int-to-float v5, v5

    const/high16 v10, 0x437f0000

    div-float/2addr v5, v10

    float-to-int v5, v5

    invoke-static {v5, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    aput v5, v4, v8

    aput v8, v4, v6

    new-array v5, v11, [F

    iget v10, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mLayoutWidth:I

    int-to-float v10, v10

    const/high16 v11, 0x3f400000

    mul-float/2addr v10, v11

    div-float/2addr v10, v3

    invoke-static {v2, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    aput v10, v5, v8

    const/high16 v8, 0x3f800000

    aput v8, v5, v6

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    :cond_1
    move v7, v8

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;

    const/high16 v3, 0x40200000

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v4, v0, v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mTop:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v7, v0, v3

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mTop:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x3f800000

    div-float v1, v7, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    if-eqz v8, :cond_1

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    sub-float v1, v0, v4

    :goto_1
    if-eqz v8, :cond_2

    iget v0, v6, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mRadialGradientPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget v0, v6, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    add-float v3, v0, v4

    goto :goto_2
.end method

.method public getAlpha()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mAlpha:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I
    .param p6    # I
    .param p7    # I
    .param p8    # I
    .param p9    # I

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    :cond_0
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mLayoutWidth:I

    iput p3, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mTop:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->updatePaint()V

    :cond_1
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->mAlpha:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->updatePaint()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherScrim;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;

    return-void
.end method
