.class Landroid/support/v4/widget/EdgeEffectCompatIcs;
.super Ljava/lang/Object;
.source "EdgeEffectCompatIcs.java"


# direct methods
.method public static draw(Ljava/lang/Object;Landroid/graphics/Canvas;)Z
    .locals 1
    .param p0    # Ljava/lang/Object;
    .param p1    # Landroid/graphics/Canvas;

    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    return v0
.end method

.method public static finish(Ljava/lang/Object;)V
    .locals 0
    .param p0    # Ljava/lang/Object;

    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->finish()V

    return-void
.end method

.method public static isFinished(Ljava/lang/Object;)Z
    .locals 1
    .param p0    # Ljava/lang/Object;

    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    return v0
.end method

.method public static newEdgeEffect(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p0    # Landroid/content/Context;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static onPull(Ljava/lang/Object;F)Z
    .locals 1
    .param p0    # Ljava/lang/Object;
    .param p1    # F

    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    const/4 v0, 0x1

    return v0
.end method

.method public static onRelease(Ljava/lang/Object;)Z
    .locals 2
    .param p0    # Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    return v1
.end method

.method public static setSize(Ljava/lang/Object;II)V
    .locals 0
    .param p0    # Ljava/lang/Object;
    .param p1    # I
    .param p2    # I

    check-cast p0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method
