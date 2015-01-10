.class final Lcom/android/systemui/statusbar/phone/Ticker$Segment;
.super Ljava/lang/Object;
.source "Ticker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/Ticker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Segment"
.end annotation


# instance fields
.field current:I

.field first:Z

.field icon:Landroid/graphics/drawable/Drawable;

.field next:I

.field notification:Landroid/service/notification/StatusBarNotification;

.field text:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/Ticker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/Ticker;Landroid/service/notification/StatusBarNotification;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 3
    .param p2    # Landroid/service/notification/StatusBarNotification;
    .param p3    # Landroid/graphics/drawable/Drawable;
    .param p4    # Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->notification:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-interface {p4, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/Ticker;->isGraphicOrEmoji(C)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->next:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->first:Z

    return-void
.end method


# virtual methods
.method advance()Ljava/lang/CharSequence;
    .locals 12

    const/4 v9, 0x0

    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->first:Z

    iget v2, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->next:I

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v4

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v10, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/Ticker;->isGraphicOrEmoji(C)Z

    move-result v10

    if-nez v10, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lt v2, v4, :cond_1

    move-object v6, v9

    :goto_1
    return-object v6

    :cond_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-interface {v10, v2, v11}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->getLayout(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v5, :cond_4

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v7

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    add-int/lit8 v10, v5, -0x1

    if-ne v1, v10, :cond_2

    iput v4, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->next:I

    :goto_3
    invoke-virtual {p0, v8, v7, v0}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->rtrim(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v6

    if-eqz v6, :cond_3

    add-int v9, v2, v7

    iput v9, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    goto :goto_1

    :cond_2
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v3, v10}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v10

    add-int/2addr v10, v2

    iput v10, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->next:I

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iput v4, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    move-object v6, v9

    goto :goto_1
.end method

.method getLayout(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;
    .locals 8
    .param p1    # Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    # getter for: Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/Ticker;->access$000(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/TextSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextSwitcher;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    # getter for: Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/Ticker;->access$000(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/TextSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextSwitcher;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    # getter for: Lcom/android/systemui/statusbar/phone/Ticker;->mTextSwitcher:Landroid/widget/TextSwitcher;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/Ticker;->access$000(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/widget/TextSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextSwitcher;->getPaddingRight()I

    move-result v1

    sub-int v3, v0, v1

    new-instance v0, Landroid/text/StaticLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->this$0:Lcom/android/systemui/statusbar/phone/Ticker;

    # getter for: Lcom/android/systemui/statusbar/phone/Ticker;->mPaint:Landroid/text/TextPaint;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/Ticker;->access$100(Lcom/android/systemui/statusbar/phone/Ticker;)Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method getText()Ljava/lang/CharSequence;
    .locals 9

    const/4 v8, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v5, v6, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-interface {v5, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->getLayout(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v3

    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v0

    iget v5, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->next:I

    invoke-virtual {p0, v4, v3, v0}, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->rtrim(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lineCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " current="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->current:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " text="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/Ticker$Segment;->text:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method rtrim(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
    .param p2    # I
    .param p3    # I

    :goto_0
    if-le p3, p2, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/Ticker;->isGraphicOrEmoji(C)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    if-le p3, p2, :cond_1

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
