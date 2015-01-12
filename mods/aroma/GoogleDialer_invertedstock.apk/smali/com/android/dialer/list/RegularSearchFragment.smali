.class public Lcom/android/dialer/list/RegularSearchFragment;
.super Lcom/android/dialer/list/SearchFragment;
.source "RegularSearchFragment.java"


# static fields
.field private static final mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/dialerbind/ObjectFactory;->newCachedNumberLookupService()Lcom/android/dialer/service/CachedNumberLookupService;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/RegularSearchFragment;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/list/SearchFragment;-><init>()V

    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->configureDirectorySearch()V

    return-void
.end method


# virtual methods
.method protected cacheContactInfo(I)V
    .locals 4
    .param p1    # I

    sget-object v1, Lcom/android/dialer/list/RegularSearchFragment;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->getAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/list/RegularSearchListAdapter;

    sget-object v1, Lcom/android/dialer/list/RegularSearchFragment;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/android/dialer/list/RegularSearchFragment;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    invoke-virtual {v0, v3, p1}, Lcom/android/dialer/list/RegularSearchListAdapter;->getContactInfo(Lcom/android/dialer/service/CachedNumberLookupService;I)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/dialer/service/CachedNumberLookupService;->addContact(Landroid/content/Context;Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;)V

    :cond_0
    return-void
.end method

.method public configureDirectorySearch()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/RegularSearchFragment;->setDirectorySearchEnabled(Z)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/RegularSearchFragment;->setDirectoryResultLimit(I)V

    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/common/list/ContactEntryListAdapter;
    .locals 2

    new-instance v0, Lcom/android/dialer/list/RegularSearchListAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dialer/list/RegularSearchListAdapter;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/RegularSearchListAdapter;->setDisplayPhotos(Z)V

    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->usesCallableUri()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/RegularSearchListAdapter;->setUseCallableUri(Z)V

    return-object v0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 2
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;

    invoke-super {p0, p1, p2}, Lcom/android/dialer/list/SearchFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/dialer/list/RegularSearchFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/list/PinnedHeaderListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/PinnedHeaderListView;->setScrollToSectionOnHeaderTouch(Z)V

    return-void
.end method
