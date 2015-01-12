.class Landroid/support/v4/view/ViewCompatJellybeanMr1;
.super Ljava/lang/Object;
.source "ViewCompatJellybeanMr1.java"


# direct methods
.method public static getLayoutDirection(Landroid/view/View;)I
    .locals 1
    .param p0    # Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public static setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0
    .param p0    # Landroid/view/View;
    .param p1    # Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    return-void
.end method
