.class Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;
.super Landroid/widget/FrameLayout;
.source "ContactTileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ContactTileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactTileRow"
.end annotation


# instance fields
.field private mItemViewType:I

.field private mLayoutResId:I

.field final synthetic this$0:Lcom/android/contacts/common/list/ContactTileAdapter;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/list/ContactTileAdapter;Landroid/content/Context;I)V
    .locals 1
    .param p2    # Landroid/content/Context;
    .param p3    # I

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput p3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    # invokes: Lcom/android/contacts/common/list/ContactTileAdapter;->getLayoutResourceId(I)I
    invoke-static {p1, v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$000(Lcom/android/contacts/common/list/ContactTileAdapter;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mLayoutResId:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->setImportantForAccessibility(I)V

    return-void
.end method

.method private addTileFromEntry(Lcom/android/contacts/common/list/ContactEntry;IZ)V
    .locals 7
    .param p1    # Lcom/android/contacts/common/list/ContactEntry;
    .param p2    # I
    .param p3    # Z

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v4

    if-gt v4, p2, :cond_0

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mLayoutResId:I

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactTileView;

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mWhitespaceStartEnd:I
    invoke-static {v4}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$100(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mWhitespaceStartEnd:I
    invoke-static {v5}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$100(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v5

    invoke-virtual {v1, v4, v3, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactTileView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;
    invoke-static {v4}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$200(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/ContactTileView;->setPhotoManager(Lcom/android/contacts/common/ContactPhotoManager;)V

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;
    invoke-static {v4}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$300(Lcom/android/contacts/common/list/ContactTileAdapter;)Lcom/android/contacts/common/list/ContactTileView$Listener;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/list/ContactTileView;->setListener(Lcom/android/contacts/common/list/ContactTileView$Listener;)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->addView(Landroid/view/View;)V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactTileView;->loadFromContact(Lcom/android/contacts/common/list/ContactEntry;)V

    iget v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v4, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactTileView;

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v4}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$400(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v5}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$400(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v0, v4, v3, v5, v3}, Lcom/android/contacts/common/list/ContactTileView;->setPaddingRelative(IIII)V

    goto :goto_1

    :pswitch_2
    if-eqz p3, :cond_1

    const/16 v3, 0x8

    :cond_1
    invoke-virtual {v0, v3}, Lcom/android/contacts/common/list/ContactTileView;->setHorizontalDividerVisibility(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onLayoutForTiles()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v3

    iget-object v5, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mWhitespaceStartEnd:I
    invoke-static {v5}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$100(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v5

    iget-object v6, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v6}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$400(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v6, v6, 0x2

    sub-int v1, v5, v6

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v1, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onMeasureForTiles(I)V
    .locals 11
    .param p1    # I

    const/4 v9, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v7, v9}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v8, v8, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    add-int/lit8 v8, v8, -0x1

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mPaddingInPixels:I
    invoke-static {v10}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$400(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v10

    mul-int/2addr v8, v10

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    # getter for: Lcom/android/contacts/common/list/ContactTileAdapter;->mWhitespaceStartEnd:I
    invoke-static {v10}, Lcom/android/contacts/common/list/ContactTileAdapter;->access$100(Lcom/android/contacts/common/list/ContactTileAdapter;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x2

    add-int v6, v8, v10

    sub-int v8, v7, v6

    iget-object v10, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v10, v10, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    div-int v4, v8, v10

    iget-object v8, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v8, v8, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    mul-int/2addr v8, v4

    sub-int v8, v7, v8

    sub-int v5, v8, v6

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v10

    add-int/2addr v10, v8

    if-ge v3, v5, :cond_1

    const/4 v8, 0x1

    :goto_2
    add-int v2, v10, v8

    const/high16 v8, 0x40000000

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v0, v8, v10}, Landroid/view/View;->measure(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move v8, v9

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v9}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->setMeasuredDimension(II)V

    goto :goto_0
.end method


# virtual methods
.method public configureRow(Ljava/util/ArrayList;Z)V
    .locals 5
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/common/list/ContactEntry;",
            ">;Z)V"
        }
    .end annotation

    iget v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/common/list/ContactEntry;

    move-object v2, v3

    :goto_2
    invoke-direct {p0, v2, v1, p2}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->addTileFromEntry(Lcom/android/contacts/common/list/ContactEntry;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->this$0:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget v0, v3, Lcom/android/contacts/common/list/ContactTileAdapter;->mColumnCount:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->onLayoutForTiles()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1    # I
    .param p2    # I

    iget v0, p0, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->mItemViewType:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ContactTileAdapter$ContactTileRow;->onMeasureForTiles(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
