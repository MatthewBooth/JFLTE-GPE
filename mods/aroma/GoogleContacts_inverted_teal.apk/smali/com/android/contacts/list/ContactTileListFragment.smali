.class public Lcom/android/contacts/list/ContactTileListFragment;
.super Landroid/app/Fragment;
.source "ContactTileListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactTileListFragment$3;,
        Lcom/android/contacts/list/ContactTileListFragment$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

.field private mAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field private final mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

.field private mEmptyView:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

.field private mOptionsMenuHasFrequents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/contacts/list/ContactTileListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/ContactTileListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactTileListFragment$1;-><init>(Lcom/android/contacts/list/ContactTileListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/contacts/list/ContactTileListFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactTileListFragment$2;-><init>(Lcom/android/contacts/list/ContactTileListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;
    .locals 1
    .param p0    # Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/contacts/list/ContactTileListFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/common/list/ContactTileAdapter;
    .locals 1
    .param p0    # Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/ContactTileListFragment;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getEmptyStateText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0    # Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/list/ContactTileListFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0    # Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/list/ContactTileListFragment;)V
    .locals 0
    .param p0    # Lcom/android/contacts/list/ContactTileListFragment;

    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->invalidateOptionsMenuIfNeeded()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/list/ContactTileListFragment;)Lcom/android/contacts/list/ContactTileListFragment$Listener;
    .locals 1
    .param p0    # Lcom/android/contacts/list/ContactTileListFragment;

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    return-object v0
.end method

.method private getEmptyStateText()Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/android/contacts/list/ContactTileListFragment$3;->$SwitchMap$com$android$contacts$common$list$ContactTileAdapter$DisplayType:[I

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized DisplayType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const v1, 0x7f0b010b

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const v1, 0x7f0b015b

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactTileListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private internalHasFrequents()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ContactTileAdapter;->getNumFrequents()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invalidateOptionsMenuIfNeeded()V
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->isOptionsMenuChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method private isOptionsMenuChanged()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mOptionsMenuHasFrequents:Z

    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->internalHasFrequents()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hasFrequents()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/contacts/list/ContactTileListFragment;->internalHasFrequents()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mOptionsMenuHasFrequents:Z

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mOptionsMenuHasFrequents:Z

    return v0
.end method

.method protected inflateAndSetupView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;
    .param p4    # I

    const/4 v1, 0x0

    invoke-virtual {p1, p4, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0e0053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v1, v2, v0}, Lcom/android/contacts/common/util/ContactListViewUtils;->applyCardPaddingToView(Landroid/content/res/Resources;Landroid/widget/ListView;Landroid/view/View;)V

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1    # Landroid/app/Activity;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v2, Lcom/android/contacts/common/list/ContactTileAdapter;

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    iget-object v4, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-direct {v2, p1, v3, v0, v4}, Lcom/android/contacts/common/list/ContactTileAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;ILcom/android/contacts/common/list/ContactTileAdapter$DisplayType;)V

    iput-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-static {p1}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/common/list/ContactTileAdapter;->setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v0, 0x7f04001a

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/contacts/list/ContactTileListFragment;->inflateAndSetupView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 3
    .param p1    # Z

    invoke-super {p0, p1}, Landroid/app/Fragment;->onHiddenChanged(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/contacts/common/util/ContactListViewUtils;->applyCardPaddingToView(Landroid/content/res/Resources;Landroid/widget/ListView;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 6

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v2, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-static {}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->values()[Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/contacts/list/ContactTileListFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactTileListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setDisplayType(Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;)V
    .locals 2
    .param p1    # Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    iget-object v0, p0, Lcom/android/contacts/list/ContactTileListFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mDisplayType:Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->setDisplayType(Lcom/android/contacts/common/list/ContactTileAdapter$DisplayType;)V

    return-void
.end method

.method public setListener(Lcom/android/contacts/list/ContactTileListFragment$Listener;)V
    .locals 0
    .param p1    # Lcom/android/contacts/list/ContactTileListFragment$Listener;

    iput-object p1, p0, Lcom/android/contacts/list/ContactTileListFragment;->mListener:Lcom/android/contacts/list/ContactTileListFragment$Listener;

    return-void
.end method
