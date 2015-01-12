.class public Lcom/android/contacts/group/GroupDetailFragment;
.super Landroid/app/Fragment;
.source "GroupDetailFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupDetailFragment$Listener;
    }
.end annotation


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

.field private mAccountTypeString:Ljava/lang/String;

.field private mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

.field private mCloseActivityAfterDelete:Z

.field private final mContactTileListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/lang/String;

.field private mEmptyView:Landroid/view/View;

.field private mGroupId:J

.field private final mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupName:Ljava/lang/String;

.field private mGroupSize:Landroid/widget/TextView;

.field private mGroupSourceView:Landroid/view/View;

.field private mGroupSourceViewContainer:Landroid/view/ViewGroup;

.field private mGroupTitle:Landroid/widget/TextView;

.field private mGroupUri:Landroid/net/Uri;

.field private mIsMembershipEditable:Z

.field private mIsReadOnly:Z

.field private mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

.field private mMemberListView:Landroid/widget/ListView;

.field private mOptionsMenuGroupDeletable:Z

.field private mOptionsMenuGroupEditable:Z

.field private mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field private mRootView:Landroid/view/View;

.field private mShowGroupActionInActionBar:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/android/contacts/group/GroupDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupDetailFragment$1;-><init>(Lcom/android/contacts/group/GroupDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContactTileListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    new-instance v0, Lcom/android/contacts/group/GroupDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupDetailFragment$2;-><init>(Lcom/android/contacts/group/GroupDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/contacts/group/GroupDetailFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupDetailFragment$3;-><init>(Lcom/android/contacts/group/GroupDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/group/GroupDetailFragment$Listener;
    .locals 1
    .param p0    # Lcom/android/contacts/group/GroupDetailFragment;

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/group/GroupDetailFragment;)Lcom/android/contacts/common/list/ContactTileAdapter;
    .locals 1
    .param p0    # Lcom/android/contacts/group/GroupDetailFragment;

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0    # Lcom/android/contacts/group/GroupDetailFragment;

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/contacts/group/GroupDetailFragment;

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/net/Uri;
    .locals 1
    .param p0    # Lcom/android/contacts/group/GroupDetailFragment;

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/group/GroupDetailFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p0    # Lcom/android/contacts/group/GroupDetailFragment;
    .param p1    # Landroid/database/Cursor;

    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupDetailFragment;->bindGroupMetaData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/group/GroupDetailFragment;)V
    .locals 0
    .param p0    # Lcom/android/contacts/group/GroupDetailFragment;

    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->startGroupMembersLoader()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/group/GroupDetailFragment;I)V
    .locals 0
    .param p0    # Lcom/android/contacts/group/GroupDetailFragment;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupDetailFragment;->updateSize(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/group/GroupDetailFragment;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/contacts/group/GroupDetailFragment;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupDetailFragment;->updateTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/group/GroupDetailFragment;)J
    .locals 2
    .param p0    # Lcom/android/contacts/group/GroupDetailFragment;

    iget-wide v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/contacts/group/GroupDetailFragment;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/android/contacts/group/GroupDetailFragment;

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method private bindGroupMetaData(Landroid/database/Cursor;)V
    .locals 7
    .param p1    # Landroid/database/Cursor;

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeString:Ljava/lang/String;

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mIsReadOnly:Z

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/contacts/group/GroupDetailFragment;->updateTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/group/GroupDetailFragment;->updateAccountType(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private configurePhotoLoader()V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/common/list/ContactTileAdapter;->setPhotoLoader(Lcom/android/contacts/common/ContactPhotoManager;)V

    :cond_2
    return-void
.end method

.method private startGroupMembersLoader()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method private startGroupMetadataLoader()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupMetadataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method private updateAccountType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->isGroupMembershipEditable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mIsMembershipEditable:Z

    iget-boolean v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mShowGroupActionInActionBar:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    invoke-interface {v2, p1, p2}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onAccountTypeUpdated(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountType;->getViewGroupActivity()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/group/GroupDetailDisplayUtils;->getNewGroupSourceView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceViewContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceViewContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    invoke-static {v2, v3, p1, p2}, Lcom/android/contacts/group/GroupDetailDisplayUtils;->bindGroupSourceView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    new-instance v3, Lcom/android/contacts/group/GroupDetailFragment$4;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/group/GroupDetailFragment$4;-><init>(Lcom/android/contacts/group/GroupDetailFragment;Lcom/android/contacts/common/model/account/AccountType;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSize(I)V
    .locals 9
    .param p1    # I

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSize:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSize:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    iget-object v5, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeString:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/contacts/group/GroupDetailFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountType;

    move-result-object v0

    iget-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/contacts/common/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0005

    invoke-virtual {v4, v5, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v1, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0006

    invoke-virtual {v4, v5, p1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    invoke-interface {v4, v2}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onGroupSizeUpdated(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    invoke-interface {v0, p1}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onGroupTitleUpdated(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public closeActivityAfterDelete(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mCloseActivityAfterDelete:Z

    return-void
.end method

.method public getGroupId()J
    .locals 2

    iget-wide v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    return-wide v0
.end method

.method public isGroupDeletable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mIsReadOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupEditableAndPresent()Z
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mIsMembershipEditable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadGroup(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->startGroupMetadataLoader()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAccountTypeManager:Lcom/android/contacts/common/model/AccountTypeManager;

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v2, Lcom/android/contacts/list/GroupMemberTileAdapter;

    iget-object v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContactTileListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    invoke-direct {v2, p1, v3, v0}, Lcom/android/contacts/list/GroupMemberTileAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/common/list/ContactTileView$Listener;I)V

    iput-object v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-direct {p0}, Lcom/android/contacts/group/GroupDetailFragment;->configurePhotoLoader()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
    .param p2    # Landroid/view/MenuInflater;

    const v0, 0x7f110008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/contacts/group/GroupDetailFragment;->setHasOptionsMenu(Z)V

    const v0, 0x7f040047

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0e00a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0e00a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSize:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0e00a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupSourceViewContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mMemberListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mAdapter:Lcom/android/contacts/common/list/ContactTileAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/android/contacts/group/GroupDetailFragment$Listener;->onEditRequested(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupId:J

    iget-object v1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mGroupName:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/android/contacts/group/GroupDetailFragment;->mCloseActivityAfterDelete:Z

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/contacts/interactions/GroupDeletionDialogFragment;->show(Landroid/app/FragmentManager;JLjava/lang/String;Z)V

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f0e00fb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1    # Landroid/view/Menu;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isGroupDeletable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupDeletable:Z

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isGroupEditableAndPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/group/GroupDetailFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    iput-boolean v3, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupEditable:Z

    const v2, 0x7f0e00fb

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupEditable:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v2, 0x7f0e00fc

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/contacts/group/GroupDetailFragment;->mOptionsMenuGroupDeletable:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
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

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->pause()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupDetailFragment;->mPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/common/ContactPhotoManager;->resume()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/group/GroupDetailFragment$Listener;)V
    .locals 0
    .param p1    # Lcom/android/contacts/group/GroupDetailFragment$Listener;

    iput-object p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mListener:Lcom/android/contacts/group/GroupDetailFragment$Listener;

    return-void
.end method

.method public setShowGroupSourceInActionBar(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/group/GroupDetailFragment;->mShowGroupActionInActionBar:Z

    return-void
.end method
