.class public abstract Lcom/android/contacts/list/ContactBrowseListFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "ContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/common/list/ContactListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

.field private mDelaySelection:Z

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mHandler:Landroid/os/Handler;

.field private mLastSelectedPosition:I

.field protected mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

.field private mPersistentSelectionPrefix:Ljava/lang/String;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mRefreshingContactUri:Z

.field private mSelectedContactDirectoryId:J

.field private mSelectedContactId:J

.field private mSelectedContactLookupKey:Ljava/lang/String;

.field private mSelectedContactUri:Landroid/net/Uri;

.field private mSelectionPersistenceRequested:Z

.field private mSelectionRequired:Z

.field private mSelectionToScreenRequested:Z

.field private mSelectionVerified:Z

.field private mSmoothScrollRequested:Z

.field private mStartedLoading:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    const-string v0, "defaultContactBrowserSelection"

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPersistentSelectionPrefix:Ljava/lang/String;

    return-void
.end method

.method private checkSelection()V
    .locals 14

    const/4 v13, -0x6

    const/4 v12, 0x0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isLoadingDirectoryList()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    if-eqz v0, :cond_0

    const/4 v8, 0x1

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartitionCount()I

    move-result v6

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_2

    invoke-virtual {v0, v9}, Lcom/android/contacts/common/list/ContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v10

    instance-of v1, v10, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v1, :cond_5

    move-object v7, v10

    check-cast v7, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v7}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    invoke-virtual {v7}, Lcom/android/contacts/common/list/DirectoryPartition;->isLoading()Z

    move-result v8

    :cond_2
    if-nez v8, :cond_0

    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    iget-object v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListAdapter;->setSelectedContact(JLjava/lang/String;J)V

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactListAdapter;->getSelectedContactPosition()I

    move-result v11

    const/4 v1, -0x1

    if-eq v11, v1, :cond_6

    iput v11, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    :goto_2
    iput-boolean v12, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionPersistenceRequested:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->saveSelectedUri(Landroid/net/Uri;)V

    iput-boolean v12, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionPersistenceRequested:Z

    :cond_3
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionToScreenRequested:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0, v11}, Lcom/android/contacts/list/ContactBrowseListFragment;->requestSelectionToScreen(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onSelectionChange()V

    goto :goto_0

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mDelaySelection:Z

    if-eqz v1, :cond_b

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->selectFirstFoundContactAfterDelay()V

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onSelectionChange()V

    goto/16 :goto_0

    :cond_7
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    if-eqz v1, :cond_a

    iput-boolean v12, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-eq v1, v13, :cond_8

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->reloadData()V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->notifyInvalidSelection()V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    if-ne v1, v13, :cond_b

    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->notifyInvalidSelection()V

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactBrowseListFragment;->saveSelectedUri(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->selectDefaultContact()V

    goto :goto_2
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/contacts/list/ContactBrowseListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactBrowseListFragment$1;-><init>(Lcom/android/contacts/list/ContactBrowseListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getPersistentSelectionKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPersistentSelectionPrefix:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPersistentSelectionPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactListFilter;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private notifyInvalidSelection()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onInvalidSelection()V

    :cond_0
    return-void
.end method

.method private parseSelectedContactUri()V
    .locals 8

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    const-string v3, "directory"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-wide v2, v4

    :goto_0
    iput-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v6, :cond_3

    iput-object v7, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    goto :goto_1

    :cond_3
    const-string v2, "ContactList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported contact URI: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v7, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    goto :goto_1

    :cond_4
    iput-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    iput-object v7, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iput-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    goto :goto_1
.end method

.method private restoreFilter()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-void
.end method

.method private restoreSelectedUri(Z)V
    .locals 7
    .param p1    # Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getPersistentSelectionKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    goto :goto_0

    :cond_1
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    goto :goto_0
.end method

.method private saveFilter()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-static {v0, v1}, Lcom/android/contacts/common/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/common/list/ContactListFilter;)V

    return-void
.end method

.method private saveSelectedUri(Landroid/net/Uri;)V
    .locals 3
    .param p1    # Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-static {v1, v2}, Lcom/android/contacts/common/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/common/list/ContactListFilter;)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getPersistentSelectionKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getPersistentSelectionKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method private setSelectedContactUri(Landroid/net/Uri;ZZZZ)V
    .locals 6
    .param p1    # Landroid/net/Uri;
    .param p2    # Z
    .param p3    # Z
    .param p4    # Z
    .param p5    # Z

    iput-boolean p3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSmoothScrollRequested:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionToScreenRequested:Z

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    iput-boolean p2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    iput-boolean p4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionPersistenceRequested:Z

    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->parseSelectedContactUri()V

    if-nez p5, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    if-eqz v0, :cond_2

    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    iget-object v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListAdapter;->setSelectedContact(JLjava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->refreshSelectedContactUri()V

    :cond_3
    return-void
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 7

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAdapter()V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionRequired:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    iget v1, v1, Lcom/android/contacts/common/list/ContactListFilter;->filterType:I

    const/4 v2, -0x6

    if-ne v1, v2, :cond_2

    :cond_1
    iget-wide v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    iget-object v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactLookupKey:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactId:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/list/ContactListAdapter;->setSelectedContact(JLjava/lang/String;J)V

    :cond_2
    if-nez v6, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactListAdapter;->setIncludeProfile(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFilter()Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isLoading()Z

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

.method public isOptionsMenuChanged()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onAttach(Landroid/app/Activity;)V

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreFilter()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreSelectedUri(Z)V

    return-void
.end method

.method protected onContactUriQueryFinished(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->parseSelectedContactUri()V

    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->checkSelection()V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .param p2    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->refreshSelectedContactUri()V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/content/Loader;
    .param p2    # Ljava/lang/Object;

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactBrowseListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "filter"

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "selectedUri"

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "selectionVerified"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "lastSelected"

    iget v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected refreshSelectedContactUri()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSelectionVisible()Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mRefreshingContactUri:Z

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->onContactUriQueryFinished(Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    iget-wide v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactDirectoryId:J

    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->onContactUriQueryFinished(Landroid/net/Uri;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;-><init>(Lcom/android/contacts/list/ContactBrowseListFragment;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    iget-object v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mContactLookupTask:Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public reloadData()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mStartedLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->reloadData()V

    :cond_0
    return-void
.end method

.method protected requestSelectionToScreen(I)V
    .locals 3
    .param p1    # I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/AutoScrollListView;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/AutoScrollListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v1, p1

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSmoothScrollRequested:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/list/AutoScrollListView;->requestPositionToScreen(IZ)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionToScreenRequested:Z

    :cond_0
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/ContactListFilter;

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    const-string v0, "selectedUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    const-string v0, "selectionVerified"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    const-string v0, "lastSelected"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->parseSelectedContactUri()V

    goto :goto_0
.end method

.method protected selectDefaultContact()V
    .locals 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/common/list/ContactListAdapter;

    iget v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    invoke-virtual {v6}, Lcom/android/contacts/common/list/ContactListAdapter;->getCount()I

    move-result v7

    iget v8, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    if-lt v8, v7, :cond_0

    if-lez v7, :cond_0

    add-int/lit8 v8, v7, -0x1

    :cond_0
    invoke-virtual {v6, v8}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v6}, Lcom/android/contacts/common/list/ContactListAdapter;->getFirstContactUri()Landroid/net/Uri;

    move-result-object v1

    :cond_2
    iget-boolean v3, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSmoothScrollRequested:Z

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    return-void
.end method

.method public selectFirstFoundContactAfterDelay()V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getHandler()Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->getQueryString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x1f4

    invoke-virtual {v6, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    goto :goto_0
.end method

.method public setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V
    .locals 1
    .param p1    # Lcom/android/contacts/common/list/ContactListFilter;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V

    return-void
.end method

.method public setFilter(Lcom/android/contacts/common/list/ContactListFilter;Z)V
    .locals 3
    .param p1    # Lcom/android/contacts/common/list/ContactListFilter;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const-string v0, "ContactList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New filter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mLastSelectedPosition:I

    invoke-direct {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->saveFilter()V

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectedContactUri:Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreSelectedUri(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->reloadData()V

    goto :goto_0
.end method

.method public setOnContactListActionListener(Lcom/android/contacts/list/OnContactBrowserActionListener;)V
    .locals 0
    .param p1    # Lcom/android/contacts/list/OnContactBrowserActionListener;

    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    return-void
.end method

.method public setQueryString(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    iput-boolean p2, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mDelaySelection:Z

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 1
    .param p1    # Z

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isSearchMode()Z

    move-result v0

    if-eq v0, p1, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->restoreSelectedUri(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSearchMode(Z)V

    :cond_1
    return-void
.end method

.method public setSelectedContactUri(Landroid/net/Uri;)V
    .locals 6
    .param p1    # Landroid/net/Uri;

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    return-void
.end method

.method protected startLoading()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mStartedLoading:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mSelectionVerified:Z

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    return-void
.end method

.method public viewContact(Landroid/net/Uri;)V
    .locals 6
    .param p1    # Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/ContactBrowseListFragment;->setSelectedContactUri(Landroid/net/Uri;ZZZZ)V

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment;->mListener:Lcom/android/contacts/list/OnContactBrowserActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactBrowserActionListener;->onViewContactAction(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
