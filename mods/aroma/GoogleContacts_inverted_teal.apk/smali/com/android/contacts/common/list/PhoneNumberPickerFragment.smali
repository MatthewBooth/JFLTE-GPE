.class public Lcom/android/contacts/common/list/PhoneNumberPickerFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "PhoneNumberPickerFragment.java"

# interfaces
.implements Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/PhoneNumberPickerFragment$1;,
        Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountFilterHeader:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/common/list/ContactListFilter;

.field private mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

.field private mLoaderStarted:Z

.field private mPaddingView:Landroid/view/View;

.field private mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

.field private mShortcutAction:Ljava/lang/String;

.field private mUseCallableUri:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    invoke-static {v2}, Lcom/android/contacts/common/list/ContactListItemView;->getDefaultPhotoPosition(Z)Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    new-instance v0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/common/list/PhoneNumberPickerFragment;Lcom/android/contacts/common/list/PhoneNumberPickerFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setQuickContactEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {p0, v2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setDirectorySearchMode(I)V

    invoke-virtual {p0, v3}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/list/PhoneNumberPickerFragment;)Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1
    .param p0    # Lcom/android/contacts/common/list/PhoneNumberPickerFragment;

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method private updateFilterHeaderView()V
    .locals 5

    const/16 v4, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getFilter()Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v0

    iget-object v3, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-static {v3, v0, v2}, Lcom/android/contacts/common/util/AccountFilterUtil;->updateAccountFilterTitleForPhone(Landroid/view/View;Lcom/android/contacts/common/list/ContactListFilter;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected cacheContactInfo(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAdapter()V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setPhotoPosition(Lcom/android/contacts/common/list/ContactEntryListAdapter;)V

    goto :goto_0
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    new-instance v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setDisplayPhotos(Z)V

    iget-boolean v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mUseCallableUri:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setUseCallableUri(Z)V

    return-object v0
.end method

.method public getFilter()Lcom/android/contacts/common/list/ContactListFilter;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    return-object v0
.end method

.method protected getPhoneNumber(I)Ljava/lang/String;
    .locals 2
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getPhoneUri(I)Landroid/net/Uri;
    .locals 2
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method protected getVisibleScrollbarEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;

    const v0, 0x7f040012

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/list/ContactListFilterController;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/contacts/common/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/common/list/ContactListFilterController;ILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    const-string v1, "getActivity() returns null during Fragment#onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    const v1, 0x7f040007

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mPaddingView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e0023

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mAccountFilterHeader:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getVisibleScrollbarEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 5
    .param p1    # I
    .param p2    # J

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getPhoneUri(I)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->pickPhoneNumber(Landroid/net/Uri;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getPhoneNumber(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->cacheContactInfo(I)V

    iget-object v2, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v2, v0}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onCallNumberDirectly(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was clicked before"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " adapter is ready. Ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
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

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->setVisibleScrollbarEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/content/Loader;
    .param p2    # Ljava/lang/Object;

    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v1}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onHomeInActionBarSelected()V

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumberAction(Landroid/net/Uri;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "filter"

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "shortcutAction"

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
    .param p2    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v0, p2}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onShortcutIntentCreated(Landroid/content/Intent;)V

    return-void
.end method

.method public pickPhoneNumber(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;->onPickPhoneNumberAction(Landroid/net/Uri;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->startPhoneNumberShortcutIntent(Landroid/net/Uri;)V

    goto :goto_0
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

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mFilter:Lcom/android/contacts/common/list/ContactListFilter;

    const-string v0, "shortcutAction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOnPhoneNumberPickerActionListener(Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;)V
    .locals 0
    .param p1    # Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    return-void
.end method

.method protected setPhotoPosition(Lcom/android/contacts/common/list/ContactEntryListAdapter;)V
    .locals 1
    .param p1    # Lcom/android/contacts/common/list/ContactEntryListAdapter;

    check-cast p1, Lcom/android/contacts/common/list/PhoneNumberListAdapter;

    iget-object v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mPhotoPosition:Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;

    invoke-virtual {p1, v0}, Lcom/android/contacts/common/list/PhoneNumberListAdapter;->setPhotoPosition(Lcom/android/contacts/common/list/ContactListItemView$PhotoPosition;)V

    return-void
.end method

.method protected setSearchMode(Z)V
    .locals 0
    .param p1    # Z

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->setSearchMode(Z)V

    invoke-direct {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->updateFilterHeaderView()V

    return-void
.end method

.method public setShortcutAction(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    return-void
.end method

.method protected startLoading()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mLoaderStarted:Z

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->startLoading()V

    return-void
.end method

.method protected startPhoneNumberShortcutIntent(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;

    new-instance v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    iget-object v1, p0, Lcom/android/contacts/common/list/PhoneNumberPickerFragment;->mShortcutAction:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->createPhoneNumberShortcutIntent(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
