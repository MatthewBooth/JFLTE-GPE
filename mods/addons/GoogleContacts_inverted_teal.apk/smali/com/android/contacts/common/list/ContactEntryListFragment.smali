.class public abstract Lcom/android/contacts/common/list/ContactEntryListFragment;
.super Lcom/android/dialerbind/analytics/AnalyticsFragment;
.source "ContactEntryListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">",
        "Lcom/android/dialerbind/analytics/AnalyticsFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/widget/AbsListView$OnScrollListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mAdjustSelectionBoundsEnabled:Z

.field private mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private mContext:Landroid/content/Context;

.field private mDarkTheme:Z

.field private mDelayedDirectorySearchHandler:Landroid/os/Handler;

.field private mDirectoryListStatus:I

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mEnabled:Z

.field private mForceLoad:Z

.field private mIncludeProfile:Z

.field private mLegacyCompatibility:Z

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Landroid/widget/ListView;

.field private mLoadPriorityDirectoriesOnly:Z

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mPhotoLoaderEnabled:Z

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mPreferencesChangeListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSearchMode:Z

.field private mSectionHeaderDisplayEnabled:Z

.field private mSelectionVisible:Z

.field private mShowEmptyListForEmptyQuery:Z

.field private mSortOrder:I

.field protected mUserProfileExists:Z

.field private mVerticalScrollbarPosition:I

.field private mView:Landroid/view/View;

.field private mVisibleScrollbarEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/dialerbind/analytics/AnalyticsFragment;-><init>()V

    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getDefaultVerticalScrollbarPosition()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    new-instance v0, Lcom/android/contacts/common/list/ContactEntryListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactEntryListFragment$1;-><init>(Lcom/android/contacts/common/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/contacts/common/list/ContactEntryListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/list/ContactEntryListFragment$2;-><init>(Lcom/android/contacts/common/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    return-void
.end method

.method private configureVerticalScrollbar()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isVisibleScrollbarEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setFastScrollAlwaysVisible(Z)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVerticalScrollbarPosition(I)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDefaultVerticalScrollbarPosition()I
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v2, 0x2

    :goto_0
    return v2

    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private hideSoftKeyboard()V
    .locals 3

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private loadDirectoryPartitionDelayed(ILcom/android/contacts/common/list/DirectoryPartition;)V
    .locals 4
    .param p1    # I
    .param p2    # Lcom/android/contacts/common/list/DirectoryPartition;

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private removePendingDirectorySearchRequests()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private startLoadingDirectoryPartition(I)V
    .locals 6
    .param p1    # I

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/DirectoryPartition;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/list/DirectoryPartition;->setStatus(I)V

    invoke-virtual {v1}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mForceLoad:Z

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->loadDirectoryPartition(ILcom/android/contacts/common/list/DirectoryPartition;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->loadDirectoryPartitionDelayed(ILcom/android/contacts/common/list/DirectoryPartition;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "directoryId"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method


# virtual methods
.method protected completeRestoreInstanceState()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    :cond_0
    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setAdjustSelectionBoundsEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIncludeProfile:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIncludeProfile(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDirectorySearchMode(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDisplayOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSortOrder(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDirectoryResultLimit(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDarkTheme:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setDarkTheme(Z)V

    goto :goto_0
.end method

.method protected configurePhotoLoader()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V

    :cond_2
    return-void
.end method

.method public createCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;
    .locals 7
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v0, Landroid/content/CursorLoader;

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected abstract createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    return-object v0
.end method

.method protected getContactNameDisplayOrder()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDisplayOrder:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDirectorySearchMode()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    return-object v0
.end method

.method public final getQueryString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSortOrder:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public isLegacyCompatibilityMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    return v0
.end method

.method public isLoading()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isLoadingDirectoryList()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadingDirectoryList()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhotoLoaderEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    return v0
.end method

.method public final isSearchMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    return v0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    return v0
.end method

.method public isVisibleScrollbarEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    return v0
.end method

.method protected loadDirectoryPartition(ILcom/android/contacts/common/list/DirectoryPartition;)V
    .locals 4
    .param p1    # I
    .param p2    # Lcom/android/contacts/common/list/DirectoryPartition;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "directoryId"

    invoke-virtual {p2}, Lcom/android/contacts/common/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method protected loadPreferences()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getContactNameDisplayOrder()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setContactNameDisplayOrder(I)V

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getSortOrder()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSortOrder(I)V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setContext(Landroid/content/Context;)V

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setLoaderManager(Landroid/app/LoaderManager;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 4
    .param p1    # I
    .param p2    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    new-instance v2, Lcom/android/contacts/common/list/DirectoryListLoader;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/contacts/common/list/DirectoryListLoader;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getDirectorySearchMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/DirectoryListLoader;->setDirectorySearchMode(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/DirectoryListLoader;->setLocalInvisibleDirectoryEnabled(Z)V

    :goto_0
    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/ContactEntryListFragment;->createCursorLoader(Landroid/content/Context;)Landroid/content/CursorLoader;

    move-result-object v2

    if-eqz p2, :cond_1

    const-string v3, "directoryId"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "directoryId"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_1
    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v3, v2, v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSearchMode(Z)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v1
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configurePhotoLoader()V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setFragmentRootView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mView:Landroid/view/View;

    invoke-static {v1, v2, v3}, Lcom/android/contacts/common/util/ContactListViewUtils;->applyCardPaddingToView(Landroid/content/res/Resources;Landroid/widget/ListView;Landroid/view/View;)V

    return-void

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->hideSoftKeyboard()V

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3
    .param p1    # Z

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onHiddenChanged(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/util/ContactListViewUtils;->applyCardPaddingToView(Landroid/content/res/Resources;Landroid/widget/ListView;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected abstract onItemClick(IJ)V
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->hideSoftKeyboard()V

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v0, p3, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0, v0, p4, p5}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onItemClick(IJ)V

    :cond_0
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 5
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

    const/4 v4, -0x1

    iget-boolean v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    if-ne v1, v4, :cond_2

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_3

    const/4 v2, 0x1

    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/content/Loader;
    .param p2    # Ljava/lang/Object;

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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

.method protected onPartitionLoaded(ILandroid/database/Cursor;)V
    .locals 1
    .param p1    # I
    .param p2    # Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setProfileHeader()V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->completeRestoreInstanceState()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onPause()V

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    return-void
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Picker result handler is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "sectionHeaderDisplayEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "photoLoaderEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "quickContactEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "adjustSelectionBoundsEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "includeProfile"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIncludeProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "searchMode"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "visibleScrollbarEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "scrollbarPosition"

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "directorySearchMode"

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "selectionVisible"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "legacyCompatibility"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "queryString"

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "directoryResultLimit"

    iget v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "darkTheme"

    iget-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDarkTheme:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1    # Landroid/widget/AbsListView;
    .param p2    # I
    .param p3    # I
    .param p4    # I

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1    # Landroid/widget/AbsListView;
    .param p2    # I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->pause()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->resume()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onStart()V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->registerChangeListener(Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->loadPreferences()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mForceLoad:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onStop()V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->unregisterChangeListener()V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->clearPartitions()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->hideSoftKeyboard()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected reloadData()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->onDataReload()V

    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    iput-boolean v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mForceLoad:Z

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "sectionHeaderDisplayEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    const-string v0, "photoLoaderEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    const-string v0, "quickContactEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    const-string v0, "adjustSelectionBoundsEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdjustSelectionBoundsEnabled:Z

    const-string v0, "includeProfile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIncludeProfile:Z

    const-string v0, "searchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    const-string v0, "visibleScrollbarEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    const-string v0, "scrollbarPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    const-string v0, "directorySearchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    const-string v0, "selectionVisible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    const-string v0, "legacyCompatibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    const-string v0, "queryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    const-string v0, "directoryResultLimit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    const-string v0, "darkTheme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDarkTheme:Z

    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method protected setContactNameDisplayOrder(I)V
    .locals 1
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDisplayOrder:I

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configurePhotoLoader()V

    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectorySearchMode:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->reloadData()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->clearPartitions()V

    goto :goto_0
.end method

.method public setIncludeProfile(Z)V
    .locals 1
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mIncludeProfile:Z

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setIncludeProfile(Z)V

    :cond_0
    return-void
.end method

.method public setLegacyCompatibilityMode(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    return-void
.end method

.method public setLoaderManager(Landroid/app/LoaderManager;)V
    .locals 0
    .param p1    # Landroid/app/LoaderManager;

    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    return-void
.end method

.method public setPhotoLoaderEnabled(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configurePhotoLoader()V

    return-void
.end method

.method protected setProfileHeader()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mUserProfileExists:Z

    return-void
.end method

.method public setQueryString(Ljava/lang/String;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mShowEmptyListForEmptyQuery:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mShowEmptyListForEmptyQuery:Z

    if-eqz v0, :cond_4

    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSearchMode(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->reloadData()V

    :cond_2
    return-void

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 4
    .param p1    # Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSearchMode:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    if-nez p1, :cond_0

    iput v2, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mDirectoryListStatus:I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSearchMode(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->clearPartitions()V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->removeDirectoriesAfterDefault()V

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, v2, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    :cond_2
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mListView:Landroid/widget/ListView;

    if-nez p1, :cond_5

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_1
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    :cond_1
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSelectionVisible:Z

    return-void
.end method

.method public setSortOrder(I)V
    .locals 1
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mSortOrder:I

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setSortOrder(I)V

    :cond_0
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    :cond_0
    return-void
.end method

.method public setVisibleScrollbarEnabled(Z)V
    .locals 1
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    :cond_0
    return-void
.end method

.method protected startLoading()V
    .locals 6

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAdapter()V

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_4

    iget-object v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactEntryListAdapter;

    invoke-virtual {v4, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    instance-of v4, v2, Lcom/android/contacts/common/list/DirectoryPartition;

    if-eqz v4, :cond_3

    move-object v0, v2

    check-cast v0, Lcom/android/contacts/common/list/DirectoryPartition;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->getStatus()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/android/contacts/common/list/DirectoryPartition;->isPriorityDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    if-nez v4, :cond_2

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoadingDirectoryPartition(I)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/contacts/common/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    goto :goto_0
.end method
