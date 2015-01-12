.class public Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;
.super Landroid/text/style/CharacterStyle;
.source "EditStyledText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarqueeSpan"
.end annotation


# instance fields
.field private mMarqueeColor:I

.field private mType:I


# direct methods
.method private getMarqueeColor(II)I
    .locals 8
    .param p1    # I
    .param p2    # I

    const v5, 0xffffff

    const/16 v0, 0x80

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    if-nez v1, :cond_0

    const/16 v1, 0x80

    :cond_0
    packed-switch p1, :pswitch_data_0

    const-string v6, "EditStyledText"

    const-string v7, "--- getMarqueeColor: got illigal marquee ID."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :pswitch_0
    return v5

    :pswitch_1
    if-le v4, v0, :cond_1

    div-int/lit8 v4, v4, 0x2

    :goto_1
    invoke-static {v1, v4, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    goto :goto_0

    :cond_1
    rsub-int v5, v4, 0xff

    div-int/lit8 v4, v5, 0x2

    goto :goto_1

    :pswitch_2
    if-le v3, v0, :cond_2

    div-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_2
    rsub-int v5, v3, 0xff

    div-int/lit8 v3, v5, 0x2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public resetColor(I)V
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mType:I

    invoke-direct {p0, v0, p1}, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->getMarqueeColor(II)I

    move-result v0

    iput v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mMarqueeColor:I

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;

    iget v0, p0, Lcom/android/ex/editstyledtext/EditStyledText$EditStyledTextSpans$MarqueeSpan;->mMarqueeColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    return-void
.end method
