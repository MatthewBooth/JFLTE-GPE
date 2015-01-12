.class public Lcom/android/contacts/common/list/ViewPagerTabStrip;
.super Landroid/widget/LinearLayout;
.source "ViewPagerTabStrip.java"


# instance fields
.field private mIndexForSelection:I

.field private final mSelectedUnderlinePaint:Landroid/graphics/Paint;

.field private mSelectedUnderlineThickness:I

.field private mSelectionOffset:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0044

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectedUnderlineThickness:I

    const v3, 0x7f09003b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x7f090036

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->setBackgroundColor(I)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->setWillNotDraw(Z)V

    return-void
.end method

.method private isRtl()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1    # Landroid/graphics/Canvas;

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildCount()I

    move-result v7

    if-lez v7, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mIndexForSelection:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getRight()I

    move-result v15

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->isRtl()Z

    move-result v10

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mIndexForSelection:I

    if-lez v1, :cond_2

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectionOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mIndexForSelection:I

    if-eqz v10, :cond_5

    const/4 v1, -0x1

    :goto_1
    add-int/2addr v1, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectionOffset:F

    int-to-float v2, v11

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectionOffset:F

    sub-float/2addr v2, v3

    int-to-float v3, v14

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v14, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectionOffset:F

    int-to-float v2, v12

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectionOffset:F

    sub-float/2addr v2, v3

    int-to-float v3, v15

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v15, v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getHeight()I

    move-result v9

    int-to-float v2, v14

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectedUnderlineThickness:I

    sub-int v1, v9, v1

    int-to-float v3, v1

    int-to-float v4, v15

    int-to-float v5, v9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectedUnderlinePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void

    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mIndexForSelection:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4

    const/4 v8, 0x1

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_1
.end method

.method onPageScrolled(IFI)V
    .locals 0
    .param p1    # I
    .param p2    # F
    .param p3    # I

    iput p1, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mIndexForSelection:I

    iput p2, p0, Lcom/android/contacts/common/list/ViewPagerTabStrip;->mSelectionOffset:F

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->invalidate()V

    return-void
.end method
