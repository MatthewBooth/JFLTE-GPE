.class public Lcom/android/systemui/FontSizeUtils;
.super Ljava/lang/Object;
.source "FontSizeUtils.java"


# direct methods
.method public static updateFontSize(Landroid/view/View;II)V
    .locals 1
    .param p0    # Landroid/view/View;
    .param p1    # I
    .param p2    # I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, p2}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method public static updateFontSize(Landroid/widget/TextView;I)V
    .locals 2
    .param p0    # Landroid/widget/TextView;
    .param p1    # I

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method
