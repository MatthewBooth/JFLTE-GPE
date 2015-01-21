.class public Lcom/android/contacts/list/ContactPickerFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "ContactPickerFragment.java"

# interfaces
.implements Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">;",
        "Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;"
    }
.end annotation


# instance fields
.field private mCreateContactEnabled:Z

.field private mEditMode:Z

.field private mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

.field private mShortcutRequested:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactPickerFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactPickerFragment;->setQuickContactEnabled(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactPickerFragment;->setDirectorySearchMode(I)V

    return-void
.end method


# virtual methods
.method protected configureAdapter()V
    .locals 2

    invoke-super {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;->configureAdapter()V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isCreateContactEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->setEmptyListEnabled(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/android/contacts/list/HeaderEntryContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;-><init>(Landroid/content/Context;)V

    const/4 v1, -0x2

    invoke-static {v1}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->setDisplayPhotos(Z)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->setQuickContactEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/HeaderEntryContactListAdapter;->setShowCreateContact(Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
.end method

.method public editContact(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onEditContactAction(Landroid/net/Uri;)V

    return-void
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;

    const v0, 0x7f040017

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isCreateContactEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    return v0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 4
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f040020

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 3
    .param p1    # I
    .param p2    # J

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/list/LegacyContactListAdapter;->getPersonUri(I)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/common/list/ContactListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/common/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->editContact(Landroid/net/Uri;)V

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    if-eqz v2, :cond_3

    new-instance v0, Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ShortcutIntentBuilder$OnShortcutIntentCreatedListener;)V

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactPickerFragment;->pickContact(Landroid/net/Uri;)V

    goto :goto_1
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

    if-nez p3, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0}, Lcom/android/contacts/list/OnContactPickerActionListener;->onCreateNewContactAction()V

    :goto_0
    return-void

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "editMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "createContactEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "shortcutRequested"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onShortcutIntentCreated(Landroid/net/Uri;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/net/Uri;
    .param p2    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0, p2}, Lcom/android/contacts/list/OnContactPickerActionListener;->onShortcutIntentCreated(Landroid/content/Intent;)V

    return-void
.end method

.method public pickContact(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnContactPickerActionListener;->onPickContactAction(Landroid/net/Uri;)V

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
    const-string v0, "editMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    const-string v0, "createContactEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    const-string v0, "shortcutRequested"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    goto :goto_0
.end method

.method public setCreateContactEnabled(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mCreateContactEnabled:Z

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mEditMode:Z

    return-void
.end method

.method public setOnContactPickerActionListener(Lcom/android/contacts/list/OnContactPickerActionListener;)V
    .locals 0
    .param p1    # Lcom/android/contacts/list/OnContactPickerActionListener;

    iput-object p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mListener:Lcom/android/contacts/list/OnContactPickerActionListener;

    return-void
.end method

.method public setShortcutRequested(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/list/ContactPickerFragment;->mShortcutRequested:Z

    return-void
.end method
