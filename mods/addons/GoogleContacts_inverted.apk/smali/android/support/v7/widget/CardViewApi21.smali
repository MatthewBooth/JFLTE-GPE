.class Landroid/support/v7/widget/CardViewApi21;
.super Ljava/lang/Object;
.source "CardViewApi21.java"

# interfaces
.implements Landroid/support/v7/widget/CardViewImpl;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxElevation(Landroid/support/v7/widget/CardViewDelegate;)F
    .locals 1
    .param p1    # Landroid/support/v7/widget/CardViewDelegate;

    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RoundRectDrawable;

    check-cast v0, Landroid/support/v7/widget/RoundRectDrawable;

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawable;->getPadding()F

    move-result v0

    return v0
.end method

.method public getMinHeight(Landroid/support/v7/widget/CardViewDelegate;)F
    .locals 2
    .param p1    # Landroid/support/v7/widget/CardViewDelegate;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->getRadius(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v0

    const/high16 v1, 0x40000000

    mul-float/2addr v0, v1

    return v0
.end method

.method public getMinWidth(Landroid/support/v7/widget/CardViewDelegate;)F
    .locals 2
    .param p1    # Landroid/support/v7/widget/CardViewDelegate;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->getRadius(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v0

    const/high16 v1, 0x40000000

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRadius(Landroid/support/v7/widget/CardViewDelegate;)F
    .locals 1
    .param p1    # Landroid/support/v7/widget/CardViewDelegate;

    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RoundRectDrawable;

    check-cast v0, Landroid/support/v7/widget/RoundRectDrawable;

    invoke-virtual {v0}, Landroid/support/v7/widget/RoundRectDrawable;->getRadius()F

    move-result v0

    return v0
.end method

.method public initStatic()V
    .locals 0

    return-void
.end method

.method public initialize(Landroid/support/v7/widget/CardViewDelegate;Landroid/content/Context;IFFF)V
    .locals 3
    .param p1    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2    # Landroid/content/Context;
    .param p3    # I
    .param p4    # F
    .param p5    # F
    .param p6    # F

    new-instance v0, Landroid/support/v7/widget/RoundRectDrawable;

    invoke-direct {v0, p3, p4}, Landroid/support/v7/widget/RoundRectDrawable;-><init>(IF)V

    invoke-interface {p1, v0}, Landroid/support/v7/widget/CardViewDelegate;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v1, p1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {v1, p5}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0, p1, p6}, Landroid/support/v7/widget/CardViewApi21;->setMaxElevation(Landroid/support/v7/widget/CardViewDelegate;F)V

    return-void
.end method

.method public setMaxElevation(Landroid/support/v7/widget/CardViewDelegate;F)V
    .locals 3
    .param p1    # Landroid/support/v7/widget/CardViewDelegate;
    .param p2    # F

    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RoundRectDrawable;

    check-cast v0, Landroid/support/v7/widget/RoundRectDrawable;

    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getUseCompatPadding()Z

    move-result v1

    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/support/v7/widget/RoundRectDrawable;->setPadding(FZZ)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V

    return-void
.end method

.method public updatePadding(Landroid/support/v7/widget/CardViewDelegate;)V
    .locals 6
    .param p1    # Landroid/support/v7/widget/CardViewDelegate;

    const/4 v5, 0x0

    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getUseCompatPadding()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {p1, v5, v5, v5, v5}, Landroid/support/v7/widget/CardViewDelegate;->setShadowPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->getMaxElevation(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/CardViewApi21;->getRadius(Landroid/support/v7/widget/CardViewDelegate;)F

    move-result v2

    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v4

    invoke-static {v0, v2, v4}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    invoke-interface {p1}, Landroid/support/v7/widget/CardViewDelegate;->getPreventCornerOverlap()Z

    move-result v4

    invoke-static {v0, v2, v4}, Landroid/support/v7/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-interface {p1, v1, v3, v1, v3}, Landroid/support/v7/widget/CardViewDelegate;->setShadowPadding(IIII)V

    goto :goto_0
.end method
