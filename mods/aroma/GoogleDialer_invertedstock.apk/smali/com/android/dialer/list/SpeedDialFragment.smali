.class public Lcom/android/dialer/list/SpeedDialFragment;
.super Lcom/android/dialerbind/analytics/AnalyticsFragment;
.source "SpeedDialFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/SpeedDialFragment$ScrollListener;,
        Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;,
        Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;,
        Lcom/android/dialer/list/SpeedDialFragment$HostInterface;
    }
.end annotation


# static fields
.field private static LOADER_ID_CONTACT_TILE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityScrollListener:Lcom/android/dialer/list/OnListFragmentScrolledListener;

.field private mAnimationDuration:I

.field private mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

.field private final mContactTileAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field private mContactTileFrame:Landroid/view/View;

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

.field private mEmptyView:Landroid/view/View;

.field private final mItemIdLeftMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemIdTopMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

.field private mParentView:Landroid/view/View;

.field private mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

.field private final mScrollListener:Lcom/android/dialer/list/SpeedDialFragment$ScrollListener;

.field private mTileInteractionTeaserView:Lcom/android/dialer/list/TileInteractionTeaserView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/dialer/list/SpeedDialFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/list/SpeedDialFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/android/dialer/list/SpeedDialFragment;->LOADER_ID_CONTACT_TILE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/dialerbind/analytics/AnalyticsFragment;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mItemIdTopMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mItemIdLeftMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/list/SpeedDialFragment$ContactTileAdapterListener;-><init>(Lcom/android/dialer/list/SpeedDialFragment;Lcom/android/dialer/list/SpeedDialFragment$1;)V

    iput-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    new-instance v0, Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/list/SpeedDialFragment$ContactTileLoaderListener;-><init>(Lcom/android/dialer/list/SpeedDialFragment;Lcom/android/dialer/list/SpeedDialFragment$1;)V

    iput-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/dialer/list/SpeedDialFragment$ScrollListener;

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/list/SpeedDialFragment$ScrollListener;-><init>(Lcom/android/dialer/list/SpeedDialFragment;Lcom/android/dialer/list/SpeedDialFragment$1;)V

    iput-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mScrollListener:Lcom/android/dialer/list/SpeedDialFragment$ScrollListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/PhoneFavoritesTileAdapter;
    .locals 1
    .param p0    # Lcom/android/dialer/list/SpeedDialFragment;

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
    .locals 1
    .param p0    # Lcom/android/dialer/list/SpeedDialFragment;

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/dialer/list/SpeedDialFragment;)I
    .locals 1
    .param p0    # Lcom/android/dialer/list/SpeedDialFragment;

    iget v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/OnListFragmentScrolledListener;
    .locals 1
    .param p0    # Lcom/android/dialer/list/SpeedDialFragment;

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mActivityScrollListener:Lcom/android/dialer/list/OnListFragmentScrolledListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/PhoneFavoriteListView;
    .locals 1
    .param p0    # Lcom/android/dialer/list/SpeedDialFragment;

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/dialer/list/SpeedDialFragment;[JJ)Z
    .locals 2
    .param p0    # Lcom/android/dialer/list/SpeedDialFragment;
    .param p1    # [J
    .param p2    # J

    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/list/SpeedDialFragment;->containsId([JJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/dialer/list/SpeedDialFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0    # Lcom/android/dialer/list/SpeedDialFragment;

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mItemIdTopMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/dialer/list/SpeedDialFragment;)Ljava/util/HashMap;
    .locals 1
    .param p0    # Lcom/android/dialer/list/SpeedDialFragment;

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mItemIdLeftMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private varargs animateGridView([J)V
    .locals 2
    .param p1    # [J

    iget-object v1, p0, Lcom/android/dialer/list/SpeedDialFragment;->mItemIdTopMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v1}, Lcom/android/dialer/list/PhoneFavoriteListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/list/SpeedDialFragment$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/dialer/list/SpeedDialFragment$1;-><init>(Lcom/android/dialer/list/SpeedDialFragment;Landroid/view/ViewTreeObserver;[J)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method private containsId([JJ)Z
    .locals 4
    .param p1    # [J
    .param p2    # J

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-wide v2, p1, v0

    cmp-long v1, v2, p2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private saveOffsets(I)V
    .locals 10
    .param p1    # I

    iget-object v6, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v6}, Lcom/android/dialer/list/PhoneFavoriteListView;->getFirstVisiblePosition()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v6}, Lcom/android/dialer/list/PhoneFavoriteListView;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_0

    iget-object v6, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v6, v2}, Lcom/android/dialer/list/PhoneFavoriteListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int v3, v1, v2

    iget-object v6, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v6, v3}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getItemId(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/dialer/list/SpeedDialFragment;->mItemIdTopMap:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/dialer/list/SpeedDialFragment;->mItemIdLeftMap:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/dialer/list/SpeedDialFragment;->mItemIdTopMap:Ljava/util/HashMap;

    const-wide v8, 0x7fffffffffffffffL

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public cacheOffsetsForDatasetChange()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/list/SpeedDialFragment;->saveOffsets(I)V

    return-void
.end method

.method public getListView()Landroid/widget/AbsListView;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    return-object v0
.end method

.method public hasFrequents()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getNumFrequents()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1    # Landroid/app/Activity;

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onAttach(Landroid/app/Activity;)V

    new-instance v0, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    iget-object v1, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapterListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;Lcom/android/dialer/list/PhoneFavoritesTileAdapter$OnDataSetChangedForAnimationListener;)V

    iput-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    iget-object v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-static {p1}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/dialer/list/SpeedDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/list/SpeedDialFragment;->mAnimationDuration:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v7, 0x0

    const v3, 0x7f040041

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mParentView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mParentView:Landroid/view/View;

    const v4, 0x7f0e0118

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/list/PhoneFavoriteListView;

    iput-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v3, p0}, Lcom/android/dialer/list/PhoneFavoriteListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v3, v7}, Lcom/android/dialer/list/PhoneFavoriteListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/dialer/list/PhoneFavoriteListView;->setVerticalScrollbarPosition(I)V

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    const/high16 v4, 0x2000000

    invoke-virtual {v3, v4}, Lcom/android/dialer/list/PhoneFavoriteListView;->setScrollBarStyle(I)V

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v3}, Lcom/android/dialer/list/PhoneFavoriteListView;->getDragDropController()Lcom/android/dialer/list/DragDropController;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v3, v4}, Lcom/android/dialer/list/DragDropController;->addOnDragDropListener(Lcom/android/dialer/list/OnDragDropListener;)V

    invoke-virtual {p0}, Lcom/android/dialer/list/SpeedDialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0e00d3

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v3, v1}, Lcom/android/dialer/list/PhoneFavoriteListView;->setDragShadowOverlay(Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/android/dialer/list/SpeedDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mParentView:Landroid/view/View;

    const v4, 0x7f0e0073

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mEmptyView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mEmptyView:Landroid/view/View;

    const v4, 0x7f020037

    const v5, 0x7f080264

    invoke-virtual {p0}, Lcom/android/dialer/list/SpeedDialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/dialer/util/DialerUtils;->configureEmptyListView(Landroid/view/View;IILandroid/content/res/Resources;)V

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mParentView:Landroid/view/View;

    const v4, 0x7f0e0117

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileFrame:Landroid/view/View;

    const v3, 0x7f040042

    iget-object v4, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {p1, v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/list/TileInteractionTeaserView;

    iput-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mTileInteractionTeaserView:Lcom/android/dialer/list/TileInteractionTeaserView;

    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {p0}, Lcom/android/dialer/list/SpeedDialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/high16 v4, 0x10a0000

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v3, v0}, Lcom/android/dialer/list/PhoneFavoriteListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    iget-object v4, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v3, v4}, Lcom/android/dialer/list/PhoneFavoriteListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    iget-object v4, p0, Lcom/android/dialer/list/SpeedDialFragment;->mScrollListener:Lcom/android/dialer/list/SpeedDialFragment$ScrollListener;

    invoke-virtual {v3, v4}, Lcom/android/dialer/list/PhoneFavoriteListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v3, v7}, Lcom/android/dialer/list/PhoneFavoriteListView;->setFastScrollEnabled(Z)V

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v3, v7}, Lcom/android/dialer/list/PhoneFavoriteListView;->setFastScrollAlwaysVisible(Z)V

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mParentView:Landroid/view/View;

    return-object v3
.end method

.method public varargs onDataSetChangedForAnimation([J)V
    .locals 0
    .param p1    # [J

    invoke-direct {p0, p1}, Lcom/android/dialer/list/SpeedDialFragment;->animateGridView([J)V

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

    iget-object v1, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileAdapter:Lcom/android/dialer/list/PhoneFavoritesTileAdapter;

    invoke-virtual {v1}, Lcom/android/dialer/list/PhoneFavoritesTileAdapter;->getCount()I

    move-result v0

    if-gt p3, v0, :cond_0

    sget-object v1, Lcom/android/dialer/list/SpeedDialFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick() event for unexpected position. The position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is before \"all\" section. Ignored."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/dialer/list/SpeedDialFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget v1, Lcom/android/dialer/list/SpeedDialFragment;->LOADER_ID_CONTACT_TILE:I

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    return-void
.end method

.method public onStart()V
    .locals 8

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onStart()V

    invoke-virtual {p0}, Lcom/android/dialer/list/SpeedDialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    :try_start_0
    move-object v0, v1

    check-cast v0, Lcom/android/dialer/list/OnListFragmentScrolledListener;

    move-object v4, v0

    iput-object v4, p0, Lcom/android/dialer/list/SpeedDialFragment;->mActivityScrollListener:Lcom/android/dialer/list/OnListFragmentScrolledListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v0, v1

    check-cast v0, Lcom/android/dialer/list/OnDragDropListener;

    move-object v3, v0

    iget-object v4, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v4}, Lcom/android/dialer/list/PhoneFavoriteListView;->getDragDropController()Lcom/android/dialer/list/DragDropController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/dialer/list/DragDropController;->addOnDragDropListener(Lcom/android/dialer/list/OnDragDropListener;)V

    move-object v0, v1

    check-cast v0, Lcom/android/dialer/list/SpeedDialFragment$HostInterface;

    move-object v4, v0

    iget-object v5, p0, Lcom/android/dialer/list/SpeedDialFragment;->mListView:Lcom/android/dialer/list/PhoneFavoriteListView;

    invoke-virtual {v5}, Lcom/android/dialer/list/PhoneFavoriteListView;->getDragDropController()Lcom/android/dialer/list/DragDropController;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/dialer/list/SpeedDialFragment$HostInterface;->setDragDropController(Lcom/android/dialer/list/DragDropController;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object v0, v1

    check-cast v0, Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;

    move-object v4, v0

    iput-object v4, p0, Lcom/android/dialer/list/SpeedDialFragment;->mPhoneNumberPickerActionListener:Lcom/android/contacts/common/list/OnPhoneNumberPickerActionListener;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {p0}, Lcom/android/dialer/list/SpeedDialFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    sget v5, Lcom/android/dialer/list/SpeedDialFragment;->LOADER_ID_CONTACT_TILE:I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v4, v5, v6, v7}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must implement OnListFragmentScrolledListener"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_1
    move-exception v2

    new-instance v4, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must implement OnDragDropListener and HostInterface"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_2
    move-exception v2

    new-instance v4, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " must implement PhoneFavoritesFragment.listener"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method setEmptyViewVisibility(Z)V
    .locals 4
    .param p1    # Z

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-eq v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileFrame:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p1, :cond_2

    const/4 v3, -0x2

    :goto_1
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mContactTileFrame:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/dialer/list/SpeedDialFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method
