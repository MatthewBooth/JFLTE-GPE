.class public Lcom/android/contacts/list/PostalAddressPickerFragment;
.super Lcom/android/contacts/common/list/ContactEntryListFragment;
.source "PostalAddressPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/common/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/common/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/contacts/list/OnPostalAddressPickerActionListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/android/contacts/common/list/ContactEntryListFragment;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setQuickContactEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setPhotoLoaderEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setDirectorySearchMode(I)V

    return-void
.end method

.method private pickPostalAddress(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnPostalAddressPickerActionListener;

    invoke-interface {v0, p1}, Lcom/android/contacts/list/OnPostalAddressPickerActionListener;->onPickPostalAddressAction(Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/android/contacts/list/PostalAddressListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/PostalAddressListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/PostalAddressListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v3}, Lcom/android/contacts/list/PostalAddressListAdapter;->setDisplayPhotos(Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->setDisplayPhotos(Z)V

    goto :goto_0
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

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;

    invoke-super {p0, p1, p2}, Lcom/android/contacts/common/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->setVisibleScrollbarEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onItemClick(IJ)V
    .locals 2
    .param p1    # I
    .param p2    # J

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/list/ContactEntryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/PostalAddressListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/PostalAddressListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->pickPostalAddress(Landroid/net/Uri;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/PostalAddressPickerFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/LegacyPostalAddressListAdapter;->getContactMethodUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/list/PostalAddressPickerFragment;->pickPostalAddress(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setOnPostalAddressPickerActionListener(Lcom/android/contacts/list/OnPostalAddressPickerActionListener;)V
    .locals 0
    .param p1    # Lcom/android/contacts/list/OnPostalAddressPickerActionListener;

    iput-object p1, p0, Lcom/android/contacts/list/PostalAddressPickerFragment;->mListener:Lcom/android/contacts/list/OnPostalAddressPickerActionListener;

    return-void
.end method
