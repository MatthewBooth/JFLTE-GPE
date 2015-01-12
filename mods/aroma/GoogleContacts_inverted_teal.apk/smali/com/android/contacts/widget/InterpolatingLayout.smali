.class public Lcom/android/contacts/widget/InterpolatingLayout;
.super Landroid/view/ViewGroup;
.source "InterpolatingLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mInRect:Landroid/graphics/Rect;

.field private mOutRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/InterpolatingLayout;->mInRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/InterpolatingLayout;->mOutRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/InterpolatingLayout;->mInRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/InterpolatingLayout;->mOutRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/InterpolatingLayout;->mInRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/widget/InterpolatingLayout;->mOutRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/widget/InterpolatingLayout;->generateDefaultLayoutParams()Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1    # Landroid/util/AttributeSet;

    invoke-virtual {p0, p1}, Lcom/android/contacts/widget/InterpolatingLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;
    .locals 2
    .param p1    # Landroid/util/AttributeSet;

    new-instance v0, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/contacts/widget/InterpolatingLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 17
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    const/4 v7, 0x0

    sub-int v11, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/widget/InterpolatingLayout;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/contacts/widget/InterpolatingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;

    iget v3, v8, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->gravity:I

    const/4 v12, -0x1

    if-ne v3, v12, :cond_1

    const v3, 0x800033

    :cond_1
    iget v12, v8, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingLeft:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_2

    iget v12, v8, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingRight:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_3

    :cond_2
    iget v12, v8, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingLeft:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    :goto_2
    iget v12, v8, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->narrowPaddingRight:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    :goto_3
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v1, v6, v12, v10, v13}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    invoke-virtual {v8, v11}, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->resolveLeftMargin(I)I

    move-result v5

    invoke-virtual {v8, v11}, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->resolveRightMargin(I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/widget/InterpolatingLayout;->mInRect:Landroid/graphics/Rect;

    add-int v13, v7, v5

    iget v14, v8, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->topMargin:I

    sub-int v15, p4, v9

    iget v0, v8, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->bottomMargin:I

    move/from16 v16, v0

    sub-int v16, p5, v16

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/widget/InterpolatingLayout;->mInRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/widget/InterpolatingLayout;->mOutRect:Landroid/graphics/Rect;

    invoke-static {v3, v12, v13, v14, v15}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/widget/InterpolatingLayout;->mOutRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/widget/InterpolatingLayout;->mOutRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/widget/InterpolatingLayout;->mOutRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/contacts/widget/InterpolatingLayout;->mOutRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v12, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/widget/InterpolatingLayout;->mOutRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int v7, v12, v9

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v8, v11}, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->resolveLeftPadding(I)I

    move-result v6

    goto :goto_2

    :cond_5
    invoke-virtual {v8, v11}, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->resolveRightPadding(I)I

    move-result v10

    goto :goto_3

    :cond_6
    return-void
.end method

.method protected onMeasure(II)V
    .locals 19
    .param p1    # I
    .param p2    # I

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    const/16 v16, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/widget/InterpolatingLayout;->getChildCount()I

    move-result v8

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v8, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/contacts/widget/InterpolatingLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;

    iget v0, v12, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->width:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    if-eqz v9, :cond_1

    new-instance v17, Ljava/lang/RuntimeException;

    const-string v18, "Interpolating layout allows at most one child with layout_width=\'match_parent\'"

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_1
    move-object v9, v3

    :goto_2
    invoke-virtual {v12, v14}, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->resolveLeftMargin(I)I

    move-result v17

    invoke-virtual {v12, v14}, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->resolveRightMargin(I)I

    move-result v18

    add-int v17, v17, v18

    add-int v16, v16, v17

    goto :goto_1

    :cond_2
    invoke-virtual {v12, v14}, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->resolveWidth(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    const/high16 v17, 0x40000000

    move/from16 v0, v17

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    :goto_3
    iget v0, v12, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->height:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_1

    iget v0, v12, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->height:I

    move/from16 v17, v0

    const/high16 v18, 0x40000000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    :goto_4
    invoke-virtual {v3, v7, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v16, v16, v17

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_2

    :pswitch_0
    const/4 v7, 0x0

    goto :goto_3

    :pswitch_1
    const/4 v4, 0x0

    goto :goto_4

    :pswitch_2
    iget v0, v12, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    sub-int v17, v13, v17

    iget v0, v12, Lcom/android/contacts/widget/InterpolatingLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    const/high16 v18, 0x40000000

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_4

    :cond_3
    if-eqz v9, :cond_4

    sub-int v15, v14, v16

    if-lez v15, :cond_5

    const/high16 v17, 0x40000000

    move/from16 v0, v17

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    :goto_5
    move/from16 v0, p2

    invoke-virtual {v9, v5, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v16, v16, v17

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    :cond_4
    move/from16 v0, v16

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/contacts/widget/InterpolatingLayout;->resolveSize(II)I

    move-result v17

    move/from16 v0, p2

    invoke-static {v10, v0}, Lcom/android/contacts/widget/InterpolatingLayout;->resolveSize(II)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/widget/InterpolatingLayout;->setMeasuredDimension(II)V

    return-void

    :cond_5
    const/4 v5, 0x0

    goto :goto_5

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
