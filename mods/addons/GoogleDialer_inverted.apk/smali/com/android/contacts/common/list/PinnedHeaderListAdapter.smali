.class public abstract Lcom/android/contacts/common/list/PinnedHeaderListAdapter;
.super Lcom/android/common/widget/CompositeCursorAdapter;
.source "PinnedHeaderListAdapter.java"

# interfaces
.implements Lcom/android/contacts/common/list/PinnedHeaderListView$PinnedHeaderAdapter;


# instance fields
.field private mHeaderVisibility:[Z

.field private mPinnedPartitionHeadersEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public configurePinnedHeaders(Lcom/android/contacts/common/list/PinnedHeaderListView;)V
    .locals 14
    .param p1    # Lcom/android/contacts/common/list/PinnedHeaderListView;

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v12

    if-nez v12, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPartitionCount()I

    move-result v9

    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    array-length v12, v12

    if-eq v12, v9, :cond_3

    :cond_2
    new-array v12, v9, [Z

    iput-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v9, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->isPinnedPartitionHeaderVisible(I)Z

    move-result v11

    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aput-boolean v11, v12, v3

    if-nez v11, :cond_4

    const/4 v12, 0x1

    invoke-virtual {p1, v3, v12}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v1

    const/4 v6, -0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v9, :cond_6

    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v12, v12, v3

    if-eqz v12, :cond_b

    invoke-virtual {p1, v10}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPositionAt(I)I

    move-result v12

    sub-int v8, v12, v1

    invoke-virtual {p0, v8}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPartitionForPosition(I)I

    move-result v7

    if-le v3, v7, :cond_a

    :cond_6
    move v5, v9

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeight()I

    move-result v4

    move v3, v9

    :cond_7
    :goto_2
    add-int/lit8 v3, v3, -0x1

    if-le v3, v6, :cond_8

    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v12, v12, v3

    if-eqz v12, :cond_7

    sub-int v12, v4, v0

    invoke-virtual {p1, v12}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPositionAt(I)I

    move-result v12

    sub-int v8, v12, v1

    if-gez v8, :cond_c

    :cond_8
    add-int/lit8 v3, v6, 0x1

    :goto_3
    if-ge v3, v5, :cond_0

    iget-object v12, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mHeaderVisibility:[Z

    aget-boolean v12, v12, v3

    if-eqz v12, :cond_9

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->isPartitionEmpty(I)Z

    move-result v12

    invoke-virtual {p1, v3, v12}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {p1, v3, v10, v13}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderPinnedAtTop(IIZ)V

    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v12

    add-int/2addr v10, v12

    move v6, v3

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_c
    add-int/lit8 v12, v8, -0x1

    invoke-virtual {p0, v12}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPartitionForPosition(I)I

    move-result v7

    const/4 v12, -0x1

    if-eq v7, v12, :cond_8

    if-le v3, v7, :cond_8

    invoke-virtual {p1, v3}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPinnedHeaderHeight(I)I

    move-result v2

    add-int/2addr v0, v2

    sub-int v12, v4, v0

    invoke-virtual {p1, v3, v12, v13}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderPinnedAtBottom(IIZ)V

    move v5, v3

    goto :goto_2
.end method

.method public getPinnedHeaderCount()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPartitionCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->hasHeader(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    move-object v1, p2

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0, v3, p1, v2, p3}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    :goto_0
    return-object v1

    :cond_2
    move-object v1, v2

    goto :goto_0
.end method

.method public getPinnedPartitionHeadersEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    return v0
.end method

.method public getScrollPositionForHeader(I)I
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPositionForPartition(I)I

    move-result v0

    return v0
.end method

.method protected isPinnedPartitionHeaderVisible(I)Z
    .locals 1
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->hasHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->isPartitionEmpty(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPinnedPartitionHeadersEnabled(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->mPinnedPartitionHeadersEnabled:Z

    return-void
.end method
