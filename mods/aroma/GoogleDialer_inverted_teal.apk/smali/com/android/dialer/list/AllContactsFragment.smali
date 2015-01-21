.class public Lcom/android/dialer/list/AllContactsFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "AllContactsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/dialer/list/AllContactsFragment;->setQuickContactEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/AllContactsFragment;->setAdjustSelectionBoundsEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/AllContactsFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/AllContactsFragment;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/dialer/list/AllContactsFragment;->setDarkTheme(Z)V

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/AllContactsFragment;->setVisibleScrollbarEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    new-instance v0, Lcom/android/dialer/list/AllContactsFragment$1;

    invoke-virtual {p0}, Lcom/android/dialer/list/AllContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/list/AllContactsFragment$1;-><init>(Lcom/android/dialer/list/AllContactsFragment;Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setDisplayPhotos(Z)V

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/android/contacts/common/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/common/list/ContactListFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setFilter(Lcom/android/contacts/common/list/ContactListFilter;)V

    invoke-virtual {p0}, Lcom/android/dialer/list/AllContactsFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/DefaultContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    return-object v0
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;

    const v0, 0x7f040040

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onItemClick(IJ)V
    .locals 0
    .param p1    # I
    .param p2    # J

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/list/AllContactsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, p2, v0, v2, v3}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/os/Bundle;

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v1, 0x7f0e0073

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020036

    const v2, 0x7f080265

    invoke-virtual {p0}, Lcom/android/dialer/list/AllContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/dialer/util/DialerUtils;->configureEmptyListView(Landroid/view/View;IILandroid/content/res/Resources;)V

    invoke-virtual {p0}, Lcom/android/dialer/list/AllContactsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/dialer/list/AllContactsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/dialer/list/AllContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/contacts/common/util/ViewUtil;->addBottomPaddingToListViewForFab(Landroid/widget/ListView;Landroid/content/res/Resources;)V

    return-void
.end method
