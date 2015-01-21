.class public Lcom/android/contacts/widget/CompositeListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CompositeListAdapter.java"


# instance fields
.field private mAdapters:[Landroid/widget/ListAdapter;

.field private mAllItemsEnabled:Z

.field private mCacheValid:Z

.field private mCount:I

.field private mCounts:[I

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mSize:I

.field private mViewTypeCount:I

.field private mViewTypeCounts:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/contacts/widget/CompositeListAdapter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x1

    const/4 v1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    iput v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    iput v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    iput-boolean v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    iput-boolean v2, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCacheValid:Z

    new-instance v0, Lcom/android/contacts/widget/CompositeListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/widget/CompositeListAdapter$1;-><init>(Lcom/android/contacts/widget/CompositeListAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    new-array v0, v1, [Landroid/widget/ListAdapter;

    iput-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    return-void
.end method


# virtual methods
.method addAdapter(Landroid/widget/ListAdapter;)V
    .locals 9
    .param p1    # Landroid/widget/ListAdapter;

    const/4 v8, 0x0

    iget v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    iget-object v7, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    array-length v7, v7

    if-lt v6, v7, :cond_0

    iget v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    add-int/lit8 v2, v6, 0x2

    new-array v1, v2, [Landroid/widget/ListAdapter;

    iget-object v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    iget v7, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    new-array v3, v2, [I

    iget-object v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    iget v7, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    invoke-static {v6, v8, v3, v8, v7}, Ljava/lang/System;->arraycopy([II[III)V

    iput-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    new-array v4, v2, [I

    iget-object v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    iget v7, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy([II[III)V

    iput-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    :cond_0
    iget-object v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v6}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v5

    iget-object v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    iget v7, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    aput-object p1, v6, v7

    iget-object v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    iget v7, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    aput v0, v6, v7

    iget v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    iget-boolean v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    invoke-interface {p1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v7

    and-int/2addr v6, v7

    iput-boolean v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    iget-object v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    iget v7, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    aput v5, v6, v7

    iget v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    iget v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->notifyDataChanged()V

    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    iget-boolean v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    return v0
.end method

.method protected ensureCacheValid()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCacheValid:Z

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    iput-boolean v5, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    iput v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mSize:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aput v0, v3, v1

    iget v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    iget-boolean v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v4, v4, v1

    invoke-interface {v4}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v4

    and-int/2addr v3, v4

    iput-boolean v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAllItemsEnabled:Z

    iget v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v5, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCacheValid:Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    iget v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    sub-int v4, p1, v2

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    :cond_0
    move v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public getItemId(I)J
    .locals 6
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    sub-int v4, p1, v2

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    return-wide v4

    :cond_0
    move v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aget v4, v4, v1

    add-int v0, v2, v4

    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v4, v4, v1

    sub-int v5, p1, v2

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    add-int/2addr v4, v3

    return v4

    :cond_0
    iget-object v4, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCounts:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    move v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    if-lt p1, v2, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    sub-int v4, p1, v2

    invoke-interface {v3, v4, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    return-object v3

    :cond_0
    move v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    iget v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mViewTypeCount:I

    return v0
.end method

.method protected invalidate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCacheValid:Z

    return-void
.end method

.method public isEnabled(I)Z
    .locals 5
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->ensureCacheValid()V

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mCounts:[I

    aget v3, v3, v1

    add-int v0, v2, v3

    if-lt p1, v2, :cond_2

    if-ge p1, v0, :cond_2

    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/widget/CompositeListAdapter;->mAdapters:[Landroid/widget/ListAdapter;

    aget-object v3, v3, v1

    sub-int v4, p1, v2

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    move v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3
.end method

.method protected notifyDataChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/widget/CompositeListAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
