.class public Lcom/android/contacts/common/list/PinnedHeaderListView;
.super Lcom/android/contacts/common/list/AutoScrollListView;
.source "PinnedHeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/PinnedHeaderListView$1;,
        Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;,
        Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

.field private mAnimating:Z

.field private mAnimationDuration:I

.field private mAnimationTargetTime:J

.field private mBounds:Landroid/graphics/RectF;

.field private mHeaderPaddingStart:I

.field private mHeaderTouched:Z

.field private mHeaderWidth:I

.field private mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

.field private mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollState:I

.field private mScrollToSectionOnHeaderTouch:Z

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    const v1, 0x1010074

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/list/PinnedHeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/common/list/AutoScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iput-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mScrollToSectionOnHeaderTouch:Z

    iput-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderTouched:Z

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationDuration:I

    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;J)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
    .param p2    # Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;
    .param p3    # J

    const/4 v7, 0x0

    iget-boolean v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v4, :cond_0

    iget-wide v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetTime:J

    sub-long/2addr v4, p3

    long-to-int v1, v4

    if-gtz v1, :cond_3

    iget v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    iput v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget-boolean v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    iput-boolean v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    const/4 v4, 0x0

    iput-boolean v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    :cond_0
    :goto_0
    iget-boolean v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_2

    iget-object v3, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-static {p0}, Lcom/android/contacts/common/util/ViewUtil;->isViewLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int v2, v4, v5

    :goto_1
    int-to-float v4, v2

    iget v5, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mBounds:Landroid/graphics/RectF;

    iget v5, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->alpha:I

    const/16 v6, 0x1f

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    :cond_1
    invoke-virtual {v3, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    return-void

    :cond_3
    iget v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    iget v5, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    iget v6, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    sub-int/2addr v5, v6

    mul-int/2addr v5, v1

    iget v6, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationDuration:I

    div-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    goto :goto_1
.end method

.method private ensurePinnedHeaderLayout(I)V
    .locals 8
    .param p1    # I

    const/high16 v7, 0x40000000

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, p1

    iget-object v3, v5, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v5, :cond_1

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    :goto_0
    if-eqz v2, :cond_2

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_2

    iget v5, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_1
    invoke-virtual {v3, v4, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, p1

    iput v0, v5, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v3, v6, v6, v5, v0}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void

    :cond_1
    iget v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderWidth:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_0

    :cond_2
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_1
.end method

.method private invalidateIfAnimating()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimating:Z

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimating:Z

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->invalidate()V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private smoothScrollToPartition(I)Z
    .locals 6
    .param p1    # I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v5, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->getScrollPositionForHeader(I)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_3

    iget-object v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v4, v1

    iget-boolean v4, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v4

    add-int/2addr v4, v3

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v2, v5}, Lcom/android/contacts/common/list/PinnedHeaderListView;->smoothScrollToPositionFromTop(III)V

    const/4 v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1    # Landroid/graphics/Canvas;

    iget-boolean v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimating:Z

    if-eqz v12, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    const/4 v11, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getBottom()I

    move-result v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_1
    iget v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v8, v12, :cond_4

    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v7, v12, v8

    iget-boolean v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v12, :cond_0

    const/4 v6, 0x1

    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    if-ge v12, v0, :cond_2

    iget v0, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_2
    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v12, :cond_3

    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    :cond_3
    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v13, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int v9, v12, v13

    if-le v9, v11, :cond_0

    move v11, v9

    goto :goto_2

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    :cond_5
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    if-eqz v6, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-lez v12, :cond_6

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v12

    if-nez v12, :cond_6

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    const/4 v13, 0x0

    aget-object v4, v12, v13

    if-eqz v4, :cond_6

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    :goto_3
    iget v12, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    :cond_6
    iget v8, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    :cond_7
    :goto_4
    add-int/lit8 v8, v8, -0x1

    if-ltz v8, :cond_a

    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v7, v12, v8

    iget-boolean v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v12, :cond_7

    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-eqz v12, :cond_8

    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    :cond_8
    invoke-direct {p0, p1, v7, v2, v3}, Lcom/android/contacts/common/list/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;J)V

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    goto :goto_3

    :cond_a
    const/4 v8, 0x0

    :goto_5
    iget v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v8, v12, :cond_c

    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v7, v12, v8

    iget-boolean v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v12, :cond_b

    iget v12, v7, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    invoke-direct {p0, p1, v7, v2, v3}, Lcom/android/contacts/common/list/PinnedHeaderListView;->drawHeader(Landroid/graphics/Canvas;Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;J)V

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_c
    invoke-direct {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->invalidateIfAnimating()V

    return-void
.end method

.method public getPinnedHeaderHeight(I)I
    .locals 1
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPositionAt(I)I
    .locals 2
    .param p1    # I

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingLeft()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->pointToPosition(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :goto_0
    return v0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    if-gtz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->getTopFadingEdgeStrength()F

    move-result v0

    goto :goto_0
.end method

.method public getTotalTopPinnedHeaderHeight()I
    .locals 4

    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v2, v1

    iget-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v2, :cond_0

    iget v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v3, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v2, v3

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1    # Landroid/view/MotionEvent;

    const/4 v6, 0x0

    const/4 v5, 0x1

    iput-boolean v6, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderTouched:Z

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget v7, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mScrollState:I

    if-nez v7, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    :cond_2
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    iget-object v7, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v7, v1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingLeft()I

    move-result v2

    iget-boolean v7, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v7, :cond_2

    iget v7, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    if-gt v7, v4, :cond_2

    iget v7, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v8, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v7, v8

    if-le v7, v4, :cond_2

    if-lt v3, v2, :cond_2

    iget-object v7, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v2

    if-lt v7, v3, :cond_2

    iput-boolean v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderTouched:Z

    iget-boolean v6, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mScrollToSectionOnHeaderTouch:Z

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->smoothScrollToPartition(I)Z

    move-result v5

    goto :goto_0

    :cond_3
    move v5, v6

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeight()I

    move-result v7

    const/4 v11, 0x0

    move v10, v7

    const/4 v8, 0x0

    :goto_0
    iget v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v8, v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v6, v0, v8

    iget-boolean v0, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v0, :cond_0

    iget v0, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-nez v0, :cond_1

    iget v0, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iget v1, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int v11, v0, v1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    iget v0, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v10, v6, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getSelectedView()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, v11, :cond_5

    invoke-virtual {p0, p3, v11}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setSelectionFromTop(II)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, v10, :cond_3

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v0, v10, v0

    invoke-virtual {p0, p3, v0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setSelectionFromTop(II)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/AutoScrollListView;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingStart()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    sub-int v0, p4, p2

    iget v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderPaddingStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderWidth:I

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p1}, Landroid/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Landroid/widget/AdapterView;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 8
    .param p1    # Landroid/widget/AbsListView;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v3}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderCount()I

    move-result v0

    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-eq v0, v3, :cond_0

    iput v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    new-array v3, v3, [Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    iput-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    :cond_0
    :goto_0
    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    new-instance v4, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;-><init>(Lcom/android/contacts/common/list/PinnedHeaderListView$1;)V

    aput-object v4, v3, v2

    :cond_1
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v5, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v5, v5, v2

    iget-object v5, v5, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    invoke-interface {v4, v2, v5, p0}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v3, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->view:Landroid/view/View;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    array-length v3, v3

    iget v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    if-ge v3, v4, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mSize:I

    new-array v3, v3, [Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    iput-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    array-length v4, v1

    invoke-static {v1, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationDuration:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationTargetTime:J

    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v3, p0}, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeaders(Lcom/android/contacts/common/list/PinnedHeaderListView;)V

    invoke-direct {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->invalidateIfAnimating()V

    :cond_4
    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v3, p0, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_5
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1    # Landroid/widget/AbsListView;
    .param p2    # I

    iput p2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mScrollState:I

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderTouched:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaderTouched:Z

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1    # Landroid/widget/Adapter;

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1    # Landroid/widget/ListAdapter;

    move-object v0, p1

    check-cast v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    iput-object v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAdapter:Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/AutoScrollListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setFadingHeader(IIZ)V
    .locals 7
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, p2, v6

    invoke-virtual {p0, v6}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v2, v6, p1

    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    const/4 v6, 0x2

    iput v6, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    const/16 v6, 0xff

    iput v6, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->alpha:I

    const/4 v6, 0x0

    iput-boolean v6, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v5

    iput v5, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    if-eqz p3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v0, v6, v5

    iget v3, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    if-ge v0, v3, :cond_0

    sub-int v4, v0, v3

    add-int v6, v3, v4

    mul-int/lit16 v6, v6, 0xff

    div-int/2addr v6, v3

    iput v6, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->alpha:I

    add-int v6, v5, v4

    iput v6, v2, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0
.end method

.method public setHeaderInvisible(IZ)V
    .locals 5
    .param p1    # I
    .param p2    # Z

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_2

    :cond_0
    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    if-ne v1, v3, :cond_2

    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-nez v1, :cond_1

    iput-boolean v3, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getBottom()I

    move-result v1

    iget v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    :cond_1
    iput-boolean v3, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    iget-wide v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetTime:J

    iput-boolean v4, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    :goto_0
    return-void

    :cond_2
    iput-boolean v4, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    goto :goto_0
.end method

.method public setHeaderPinnedAtBottom(IIZ)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    iput v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetTime:J

    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    iput p2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_3

    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    if-ne v1, p2, :cond_1

    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-nez v1, :cond_3

    :cond_1
    iget-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iput v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    :goto_1
    iput-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    iput-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetVisible:Z

    iget-wide v2, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mAnimationTargetTime:J

    iput-wide v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetTime:J

    iput p2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->targetY:I

    goto :goto_0

    :cond_2
    iput-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    iget v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->sourceY:I

    goto :goto_1

    :cond_3
    iput-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    iput p2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    goto :goto_0
.end method

.method public setHeaderPinnedAtTop(IIZ)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->ensurePinnedHeaderLayout(I)V

    iget-object v1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mHeaders:[Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;

    aget-object v0, v1, p1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->visible:Z

    iput p2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->y:I

    iput v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->state:I

    iput-boolean v2, v0, Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeader;->animating:Z

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1    # Landroid/widget/AdapterView$OnItemSelectedListener;

    iput-object p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1    # Landroid/widget/AbsListView$OnScrollListener;

    iput-object p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, p0}, Lcom/android/contacts/common/list/AutoScrollListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method
