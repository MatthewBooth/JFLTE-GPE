.class public Lcom/android/contacts/list/HeaderEntryContactListAdapter;
.super Lcom/android/contacts/common/list/DefaultContactListAdapter;
.source "HeaderEntryContactListAdapter.java"


# instance fields
.field private mShowCreateContact:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getHeaderEntryCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->mShowCreateContact:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # Landroid/database/Cursor;
    .param p4    # I

    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v0

    add-int/2addr v0, p4

    invoke-super {p0, p1, p2, p3, v0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    return-void
.end method

.method public getCount()I
    .locals 2

    invoke-super {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method protected getExtraStartingSection()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v0

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1    # I

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v0

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getPartitionForPosition(I)I
    .locals 1
    .param p1    # I

    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v0

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getPartitionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1    # I
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v0

    if-lez v0, :cond_1

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, p0

    move v4, v2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Lcom/android/contacts/common/list/ContactListItemView;

    move-result-object v6

    :goto_0
    const v0, 0x7f020069

    const v1, 0x7f02004a

    invoke-virtual {v6, v0, v1}, Lcom/android/contacts/common/list/ContactListItemView;->setDrawableResource(II)V

    invoke-virtual {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/contacts/common/list/ContactListItemView;->setDisplayName(Ljava/lang/CharSequence;)V

    :goto_1
    return-object v6

    :cond_0
    move-object v6, p2

    check-cast v6, Lcom/android/contacts/common/list/ContactListItemView;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v0

    sub-int v0, p1, v0

    invoke-super {p0, v0, p2, p3}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    goto :goto_1
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-super {p0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1    # I

    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->getHeaderEntryCount()I

    move-result v0

    sub-int v0, p1, v0

    invoke-super {p0, v0}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setShowCreateContact(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->mShowCreateContact:Z

    invoke-virtual {p0}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->invalidate()V

    return-void
.end method
