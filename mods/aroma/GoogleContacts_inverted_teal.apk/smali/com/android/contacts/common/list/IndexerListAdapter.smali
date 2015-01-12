.class public abstract Lcom/android/contacts/common/list/IndexerListAdapter;
.super Lcom/android/contacts/common/list/PinnedHeaderListAdapter;
.source "IndexerListAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mHeader:Landroid/view/View;

.field private mIndexedPartition:I

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

.field private mSectionHeaderDisplayEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexedPartition:I

    new-instance v0, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    invoke-direct {v0}, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-object p1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public configurePinnedHeaders(Lcom/android/contacts/common/list/PinnedHeaderListView;)V
    .locals 12
    .param p1    # Lcom/android/contacts/common/list/PinnedHeaderListView;

    const/4 v11, -0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->configurePinnedHeaders(Lcom/android/contacts/common/list/PinnedHeaderListView;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v10

    if-nez v10, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPinnedHeaderCount()I

    move-result v10

    add-int/lit8 v0, v10, -0x1

    iget-object v10, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->getCount()I

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getTotalTopPinnedHeaderHeight()I

    move-result v10

    invoke-virtual {p1, v10}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getPositionAt(I)I

    move-result v2

    invoke-virtual {p1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getHeaderViewsCount()I

    move-result v10

    sub-int v7, v2, v10

    const/4 v8, -0x1

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPartitionForPosition(I)I

    move-result v5

    iget v10, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexedPartition:I

    if-ne v5, v10, :cond_3

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/list/IndexerListAdapter;->getOffsetInPartition(I)I

    move-result v4

    if-eq v4, v11, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/IndexerListAdapter;->getSectionForPosition(I)I

    move-result v8

    :cond_3
    if-ne v8, v11, :cond_4

    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setHeaderInvisible(IZ)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v2}, Lcom/android/contacts/common/list/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v10, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mHeader:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_5
    iget-object v11, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mHeader:Landroid/view/View;

    iget-object v10, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v10}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v10

    aget-object v10, v10, v8

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p0, v11, v10}, Lcom/android/contacts/common/list/IndexerListAdapter;->setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V

    iget v10, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPositionForPartition(I)I

    move-result v6

    iget v10, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexedPartition:I

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/IndexerListAdapter;->hasHeader(I)Z

    move-result v10

    if-eqz v10, :cond_6

    add-int/lit8 v6, v6, 0x1

    :cond_6
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPositionForSection(I)I

    move-result v10

    add-int v3, v6, v10

    add-int/lit8 v10, v3, -0x1

    if-ne v7, v10, :cond_7

    const/4 v1, 0x1

    :cond_7
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setFadingHeader(IIZ)V

    goto :goto_0
.end method

.method protected abstract createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getIndexedPartition()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexedPartition:I

    return v0
.end method

.method public getIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method public getItemPlacementInSection(I)Lcom/android/contacts/common/list/IndexerListAdapter$Placement;
    .locals 5
    .param p1    # I

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    # getter for: Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->position:I
    invoke-static {v1}, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->access$000(Lcom/android/contacts/common/list/IndexerListAdapter$Placement;)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    # setter for: Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->position:I
    invoke-static {v1, p1}, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->access$002(Lcom/android/contacts/common/list/IndexerListAdapter$Placement;I)I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/IndexerListAdapter;->getSectionForPosition(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPositionForSection(I)I

    move-result v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-boolean v2, v1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->firstInSection:Z

    iget-object v4, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v1

    aget-object v1, v1, v0

    check-cast v1, Ljava/lang/String;

    iput-object v1, v4, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    :goto_1
    iget-object v4, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPositionForSection(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, v4, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->lastInSection:Z

    :goto_3
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->firstInSection:Z

    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-object v4, v1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->firstInSection:Z

    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-boolean v3, v1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->lastInSection:Z

    iget-object v1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    iput-object v4, v1, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->sectionHeader:Ljava/lang/String;

    goto :goto_3
.end method

.method public getPinnedHeaderCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPinnedHeaderCount()I

    move-result v0

    goto :goto_0
.end method

.method public getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/IndexerListAdapter;->getPinnedHeaderCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mHeader:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/android/contacts/common/list/IndexerListAdapter;->createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mHeader:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mHeader:Landroid/view/View;

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/contacts/common/list/PinnedHeaderListAdapter;->getPinnedHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, " "

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method public setIndexedPartition(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexedPartition:I

    return-void
.end method

.method public setIndexer(Landroid/widget/SectionIndexer;)V
    .locals 1
    .param p1    # Landroid/widget/SectionIndexer;

    iput-object p1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mIndexer:Landroid/widget/SectionIndexer;

    iget-object v0, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mPlacementCache:Lcom/android/contacts/common/list/IndexerListAdapter$Placement;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/IndexerListAdapter$Placement;->invalidate()V

    return-void
.end method

.method protected abstract setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/IndexerListAdapter;->mSectionHeaderDisplayEnabled:Z

    return-void
.end method
