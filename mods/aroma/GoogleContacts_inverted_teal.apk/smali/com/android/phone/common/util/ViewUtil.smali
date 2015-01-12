.class public Lcom/android/phone/common/util/ViewUtil;
.super Ljava/lang/Object;
.source "ViewUtil.java"


# static fields
.field private static final OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/phone/common/util/ViewUtil$1;

    invoke-direct {v0}, Lcom/android/phone/common/util/ViewUtil$1;-><init>()V

    sput-object v0, Lcom/android/phone/common/util/ViewUtil;->OVAL_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    return-void
.end method

.method public static resizeText(Landroid/widget/TextView;II)V
    .locals 6
    .param p0    # Landroid/widget/TextView;
    .param p1    # I
    .param p2    # I

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    int-to-float v3, p1

    invoke-virtual {p0, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    int-to-float v3, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    div-float v1, v3, v4

    const/high16 v3, 0x3f800000

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_0

    int-to-float v3, p2

    int-to-float v4, p1

    mul-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {p0, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method
