.class public Lcom/android/contacts/common/list/AutoScrollListView;
.super Landroid/widget/ListView;
.source "AutoScrollListView.java"


# instance fields
.field private mRequestedScrollPosition:I

.field private mSmoothScrollRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mRequestedScrollPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mRequestedScrollPosition:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;
    .param p3    # I

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mRequestedScrollPosition:I

    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 8

    const/4 v7, -0x1

    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    iget v6, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mRequestedScrollPosition:I

    if-ne v6, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mRequestedScrollPosition:I

    iput v7, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mRequestedScrollPosition:I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->getFirstVisiblePosition()I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->getLastVisiblePosition()I

    move-result v1

    if-lt v3, v0, :cond_2

    if-le v3, v1, :cond_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3ea8f5c3

    mul-float/2addr v6, v7

    float-to-int v2, v6

    iget-boolean v6, p0, Lcom/android/contacts/common/list/AutoScrollListView;->mSmoothScrollRequested:Z

    if-nez v6, :cond_3

    invoke-virtual {p0, v3, v2}, Lcom/android/contacts/common/list/AutoScrollListView;->setSelectionFromTop(II)V

    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_0

    :cond_3
    sub-int v6, v1, v0

    mul-int/lit8 v5, v6, 0x2

    if-ge v3, v0, :cond_6

    add-int v4, v3, v5

    invoke-virtual {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->getCount()I

    move-result v6

    if-lt v4, v6, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/AutoScrollListView;->getCount()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    :cond_4
    if-ge v4, v0, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/AutoScrollListView;->setSelection(I)V

    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    :cond_5
    :goto_1
    invoke-virtual {p0, v3, v2}, Lcom/android/contacts/common/list/AutoScrollListView;->smoothScrollToPositionFromTop(II)V

    goto :goto_0

    :cond_6
    sub-int v4, v3, v5

    if-gez v4, :cond_7

    const/4 v4, 0x0

    :cond_7
    if-le v4, v1, :cond_5

    invoke-virtual {p0, v4}, Lcom/android/contacts/common/list/AutoScrollListView;->setSelection(I)V

    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_1
.end method
