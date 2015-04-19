.class Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vbox"
.end annotation


# instance fields
.field private mLowerIndex:I

.field private mMaxBlue:I

.field private mMaxGreen:I

.field private mMaxRed:I

.field private mMinBlue:I

.field private mMinGreen:I

.field private mMinRed:I

.field private mUpperIndex:I

.field final synthetic this$0:Landroid/support/v7/graphics/ColorCutQuantizer;


# direct methods
.method constructor <init>(Landroid/support/v7/graphics/ColorCutQuantizer;II)V
    .locals 0
    .param p2    # I
    .param p3    # I

    iput-object p1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iput p3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->fitBox()V

    return-void
.end method


# virtual methods
.method canSplit()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->getColorCount()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method findSplitPoint()I
    .locals 7

    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->getLongestColorDimension()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    iget v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v6, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    # invokes: Landroid/support/v7/graphics/ColorCutQuantizer;->modifySignificantOctet(III)V
    invoke-static {v4, v3, v5, v6}, Landroid/support/v7/graphics/ColorCutQuantizer;->access$100(Landroid/support/v7/graphics/ColorCutQuantizer;III)V

    iget-object v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    # getter for: Landroid/support/v7/graphics/ColorCutQuantizer;->mColors:[I
    invoke-static {v4}, Landroid/support/v7/graphics/ColorCutQuantizer;->access$000(Landroid/support/v7/graphics/ColorCutQuantizer;)[I

    move-result-object v4

    iget v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v6, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->sort([III)V

    iget-object v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    iget v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    iget v6, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    # invokes: Landroid/support/v7/graphics/ColorCutQuantizer;->modifySignificantOctet(III)V
    invoke-static {v4, v3, v5, v6}, Landroid/support/v7/graphics/ColorCutQuantizer;->access$100(Landroid/support/v7/graphics/ColorCutQuantizer;III)V

    invoke-virtual {p0, v3}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->midPoint(I)I

    move-result v1

    iget v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    :goto_0
    iget v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v2, v4, :cond_1

    iget-object v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    # getter for: Landroid/support/v7/graphics/ColorCutQuantizer;->mColors:[I
    invoke-static {v4}, Landroid/support/v7/graphics/ColorCutQuantizer;->access$000(Landroid/support/v7/graphics/ColorCutQuantizer;)[I

    move-result-object v4

    aget v0, v4, v2

    packed-switch v3, :pswitch_data_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    if-lt v4, v1, :cond_0

    :goto_1
    return v2

    :pswitch_1
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    if-lt v4, v1, :cond_0

    goto :goto_1

    :pswitch_2
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    if-le v4, v1, :cond_0

    goto :goto_1

    :cond_1
    iget v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method fitBox()V
    .locals 6

    const/16 v5, 0xff

    iput v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    iput v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    iput v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    const/4 v5, 0x0

    iput v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iput v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iput v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    :goto_0
    iget v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v3, v5, :cond_6

    iget-object v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    # getter for: Landroid/support/v7/graphics/ColorCutQuantizer;->mColors:[I
    invoke-static {v5}, Landroid/support/v7/graphics/ColorCutQuantizer;->access$000(Landroid/support/v7/graphics/ColorCutQuantizer;)[I

    move-result-object v5

    aget v1, v5, v3

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iget v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    if-le v4, v5, :cond_0

    iput v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    :cond_0
    iget v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    if-ge v4, v5, :cond_1

    iput v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    :cond_1
    iget v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    if-le v2, v5, :cond_2

    iput v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    :cond_2
    iget v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    if-ge v2, v5, :cond_3

    iput v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    :cond_3
    iget v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    if-le v0, v5, :cond_4

    iput v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    :cond_4
    iget v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    if-ge v0, v5, :cond_5

    iput v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method getAverageColor()Landroid/support/v7/graphics/Palette$Swatch;
    .locals 12

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x0

    iget v6, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    :goto_0
    iget v10, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    if-gt v6, v10, :cond_0

    iget-object v10, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    # getter for: Landroid/support/v7/graphics/ColorCutQuantizer;->mColors:[I
    invoke-static {v10}, Landroid/support/v7/graphics/ColorCutQuantizer;->access$000(Landroid/support/v7/graphics/ColorCutQuantizer;)[I

    move-result-object v10

    aget v2, v10, v6

    iget-object v10, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    # getter for: Landroid/support/v7/graphics/ColorCutQuantizer;->mColorPopulations:Landroid/util/SparseIntArray;
    invoke-static {v10}, Landroid/support/v7/graphics/ColorCutQuantizer;->access$200(Landroid/support/v7/graphics/ColorCutQuantizer;)Landroid/util/SparseIntArray;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    add-int/2addr v9, v3

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v10

    mul-int/2addr v10, v3

    add-int/2addr v8, v10

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v10

    mul-int/2addr v10, v3

    add-int/2addr v5, v10

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    mul-int/2addr v10, v3

    add-int/2addr v1, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    int-to-float v10, v8

    int-to-float v11, v9

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v10, v5

    int-to-float v11, v9

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v10, v1

    int-to-float v11, v9

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    new-instance v10, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-direct {v10, v7, v4, v0, v9}, Landroid/support/v7/graphics/Palette$Swatch;-><init>(IIII)V

    return-object v10
.end method

.method getColorCount()I
    .locals 2

    iget v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mLowerIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getLongestColorDimension()I
    .locals 5

    iget v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int v2, v3, v4

    iget v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int v1, v3, v4

    iget v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int v0, v3, v4

    if-lt v2, v1, :cond_0

    if-lt v2, v0, :cond_0

    const/4 v3, -0x3

    :goto_0
    return v3

    :cond_0
    if-lt v1, v2, :cond_1

    if-lt v1, v0, :cond_1

    const/4 v3, -0x2

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method getVolume()I
    .locals 3

    iget v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    return v0
.end method

.method midPoint(I)I
    .locals 2
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    iget v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :pswitch_1
    iget v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    iget v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method splitBox()Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;
    .locals 5

    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Can not split a box with only 1 color"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->findSplitPoint()I

    move-result v1

    new-instance v0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->this$0:Landroid/support/v7/graphics/ColorCutQuantizer;

    add-int/lit8 v3, v1, 0x1

    iget v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-direct {v0, v2, v3, v4}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;-><init>(Landroid/support/v7/graphics/ColorCutQuantizer;II)V

    iput v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->mUpperIndex:I

    invoke-virtual {p0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->fitBox()V

    return-object v0
.end method
