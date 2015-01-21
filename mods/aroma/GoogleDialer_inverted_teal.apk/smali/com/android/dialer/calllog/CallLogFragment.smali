.class public Lcom/android/dialer/calllog/CallLogFragment;
.super Lcom/android/dialerbind/analytics/AnalyticsListFragment;
.source "CallLogFragment.java"

# interfaces
.implements Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;
.implements Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;
.implements Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

.field private mCallLogFetched:Z

.field private final mCallLogObserver:Landroid/database/ContentObserver;

.field private mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

.field private mCallTypeFilter:I

.field private final mContactsObserver:Landroid/database/ContentObserver;

.field private mDateLimit:J

.field private mEmptyLoaderRunning:Z

.field private mExpandCollapseDuration:I

.field private mExpandedItemTranslationZ:F

.field private mFadeInDuration:I

.field private mFadeInStartDelay:I

.field private mFadeOutDuration:I

.field private mFooterView:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mHasFooterView:Z

.field private mIsReportDialogShowing:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLogLimit:I

.field private mMenuVisible:Z

.field private mRefreshDataRequired:Z

.field private mReportDialogNumber:Ljava/lang/String;

.field private mScrollToTop:Z

.field private mStatusMessageAction:Landroid/widget/TextView;

.field private mStatusMessageText:Landroid/widget/TextView;

.field private mStatusMessageView:Landroid/view/View;

.field private mVoicemailSourcesAvailable:Z

.field private mVoicemailStatusFetched:Z

.field private mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

.field private final mVoicemailStatusObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Lcom/android/dialer/calllog/CallLogFragment;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1    # I

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/calllog/CallLogFragment;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1    # I
    .param p2    # I

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/android/dialerbind/analytics/AnalyticsListFragment;-><init>()V

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogFragment$CustomContentObserver;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusObserver:Landroid/database/ContentObserver;

    iput-boolean v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z

    iput-boolean v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMenuVisible:Z

    iput v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    iput v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLogLimit:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDateLimit:J

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHasFooterView:Z

    iput p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    iput p2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLogLimit:I

    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # J

    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calllog/CallLogFragment;-><init>(II)V

    iput-wide p3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDateLimit:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/calllog/CallLogFragment;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/dialer/calllog/CallLogFragment;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/dialer/calllog/CallLogFragment;Z)Z
    .locals 0
    .param p0    # Lcom/android/dialer/calllog/CallLogFragment;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/dialer/calllog/CallLogFragment;)I
    .locals 1
    .param p0    # Lcom/android/dialer/calllog/CallLogFragment;

    iget v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFadeInDuration:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/dialer/calllog/CallLogFragment;)I
    .locals 1
    .param p0    # Lcom/android/dialer/calllog/CallLogFragment;

    iget v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFadeInStartDelay:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/dialer/calllog/CallLogFragment;)I
    .locals 1
    .param p0    # Lcom/android/dialer/calllog/CallLogFragment;

    iget v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFadeOutDuration:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/dialer/calllog/CallLogFragment;)F
    .locals 1
    .param p0    # Lcom/android/dialer/calllog/CallLogFragment;

    iget v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mExpandedItemTranslationZ:F

    return v0
.end method

.method static synthetic access$600(Lcom/android/dialer/calllog/CallLogFragment;)I
    .locals 1
    .param p0    # Lcom/android/dialer/calllog/CallLogFragment;

    iget v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mExpandCollapseDuration:I

    return v0
.end method

.method private destroyEmptyLoaderIfAllDataFetched()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    :cond_0
    return-void
.end method

.method private maybeAddFooterView()V
    .locals 5

    iget-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHasFooterView:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFooterView:Landroid/view/View;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040039

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFooterView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFooterView:Landroid/view/View;

    new-instance v2, Lcom/android/dialer/calllog/CallLogFragment$3;

    invoke-direct {v2, p0}, Lcom/android/dialer/calllog/CallLogFragment$3;-><init>(Lcom/android/dialer/calllog/CallLogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/contacts/common/util/ViewUtil;->addBottomPaddingToListViewForFab(Landroid/widget/ListView;Landroid/content/res/Resources;)V

    goto :goto_0
.end method

.method private refreshData()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->invalidateCache()V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->startCallsQuery()V

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->startVoicemailStatusQuery()V

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnEntry()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mRefreshDataRequired:Z

    :cond_0
    return-void
.end method

.method private setVoicemailSourcesAvailable(Z)V
    .locals 2
    .param p1    # Z

    iget-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private startVoicemailStatusQuery()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchVoicemailStatus()V

    return-void
.end method

.method private updateCallList(IJ)V
    .locals 2
    .param p1    # I
    .param p2    # J

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(IJ)V

    return-void
.end method

.method private updateEmptyMessage(I)V
    .locals 4
    .param p1    # I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected filter type in CallLogFragment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    const v0, 0x7f080253

    :goto_0
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020035

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/android/dialer/util/DialerUtils;->configureEmptyListView(Landroid/view/View;IILandroid/content/res/Resources;)V

    return-void

    :pswitch_2
    const v0, 0x7f080254

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0801f5

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateOnEntry()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnTransition(Z)V

    return-void
.end method

.method private updateOnExit()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnTransition(Z)V

    return-void
.end method

.method private updateOnTransition(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->markNewCallsAsOld()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->markMissedCallsAsRead()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->removeMissedCallNotifications(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogNotificationsHelper;->updateVoicemailNotifications(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private updateVoicemailStatusMessage(Landroid/database/Cursor;)V
    .locals 6
    .param p1    # Landroid/database/Cursor;

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

    invoke-interface {v2, p1}, Lcom/android/dialer/voicemail/VoicemailStatusHelper;->getStatusMessages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;

    invoke-virtual {v0}, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->showInCallLog()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageText:Landroid/widget/TextView;

    iget v3, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->callLogMessageId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget v2, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    iget v3, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    iget-object v2, v0, Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;->actionUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    new-instance v3, Lcom/android/dialer/calllog/CallLogFragment$2;

    invoke-direct {v3, p0, v0}, Lcom/android/dialer/calllog/CallLogFragment$2;-><init>(Lcom/android/dialer/calllog/CallLogFragment;Lcom/android/dialer/voicemail/VoicemailStatusHelper$StatusMessage;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public fetchCalls()V
    .locals 4

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    iget-wide v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDateLimit:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(IJ)V

    return-void
.end method

.method getAdapter()Lcom/android/dialer/calllog/CallLogAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    return-object v0
.end method

.method public getViewForCallId(J)Lcom/android/dialer/calllog/CallLogListItemView;
    .locals 9
    .param p1    # J

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    sub-int v6, v1, v0

    if-gt v3, v6, :cond_1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dialer/calllog/CallLogListItemViews;

    if-eqz v5, :cond_0

    iget-wide v6, v5, Lcom/android/dialer/calllog/CallLogListItemViews;->rowId:J

    cmp-long v6, v6, p1

    if-nez v6, :cond_0

    check-cast v4, Lcom/android/dialer/calllog/CallLogListItemView;

    :goto_1
    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onBadDataReported(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsReportDialogShowing:Z

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->onBadDataReported(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onCallsFetched(Landroid/database/Cursor;)Z
    .locals 5
    .param p1    # Landroid/database/Cursor;

    const/4 v4, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v3, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->setLoading(Z)V

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v3, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-boolean v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mScrollToTop:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    if-le v3, v4, :cond_2

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/dialer/calllog/CallLogFragment$1;

    invoke-direct {v4, p0, v0}, Lcom/android/dialer/calllog/CallLogFragment$1;-><init>(Lcom/android/dialer/calllog/CallLogFragment;Landroid/widget/ListView;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mScrollToTop:Z

    :cond_3
    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogFetched:Z

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->destroyEmptyLoaderIfAllDataFetched()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsListFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "filter_type"

    iget v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    const-string v0, "log_limit"

    iget v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLogLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLogLimit:I

    const-string v0, "date_limit"

    iget-wide v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDateLimit:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDateLimit:J

    const-string v0, "show_footer"

    iget-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHasFooterView:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHasFooterView:Z

    const-string v0, "is_report_dialog_showing"

    iget-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsReportDialogShowing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsReportDialogShowing:Z

    const-string v0, "report_dialog_number"

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mReportDialogNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mReportDialogNumber:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1, v6}, Lcom/android/dialer/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, p0

    move-object v3, p0

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/android/dialerbind/ObjectFactory;->newCallLogAdapter(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;Z)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLogLimit:I

    invoke-direct {v0, v1, p0, v2}, Lcom/android/dialer/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;I)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0, v5}, Lcom/android/dialer/calllog/CallLogFragment;->setHasOptionsMenu(Z)V

    iget v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    iget-wide v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDateLimit:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/dialer/calllog/CallLogFragment;->updateCallList(IJ)V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mExpandedItemTranslationZ:F

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFadeInDuration:I

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFadeInStartDelay:I

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mFadeOutDuration:I

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mExpandCollapseDuration:I

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsReportDialogShowing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mReportDialogNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/dialerbind/ObjectFactory;->getReportDialogFragment(Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v7

    if-eqz v7, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v7, p0, v0}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "report_dialog"

    invoke-virtual {v7, v0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v1, 0x7f04000c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;

    invoke-direct {v1}, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;-><init>()V

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

    const v1, 0x7f0e006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageView:Landroid/view/View;

    const v1, 0x7f0e008d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageText:Landroid/widget/TextView;

    const v1, 0x7f0e008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mStatusMessageAction:Landroid/widget/TextView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsListFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->stopRequestProcessing()V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onItemExpanded(Lcom/android/dialer/calllog/CallLogListItemView;)V
    .locals 6
    .param p1    # Lcom/android/dialer/calllog/CallLogListItemView;

    invoke-virtual {p1}, Lcom/android/dialer/calllog/CallLogListItemView;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/dialer/calllog/CallLogListItemView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/dialer/calllog/CallLogListItemViews;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$4;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/calllog/CallLogFragment$4;-><init>(Lcom/android/dialer/calllog/CallLogFragment;Landroid/view/ViewTreeObserver;Lcom/android/dialer/calllog/CallLogListItemView;ILcom/android/dialer/calllog/CallLogListItemViews;)V

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsListFragment;->onPause()V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->stopRequestProcessing()V

    return-void
.end method

.method public onReportButtonClick(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Lcom/android/dialerbind/ObjectFactory;->getReportDialogFragment(Ljava/lang/String;)Landroid/app/DialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "report_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mReportDialogNumber:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsReportDialogShowing:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsListFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->refreshData()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "filter_type"

    iget v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "log_limit"

    iget v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mLogLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "date_limit"

    iget-wide v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDateLimit:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "show_footer"

    iget-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHasFooterView:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_report_dialog_showing"

    iget-boolean v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mIsReportDialogShowing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "report_dialog_number"

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mReportDialogNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/dialer/util/EmptyLoader$Callback;

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/dialer/util/EmptyLoader$Callback;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsListFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsListFragment;->onStop()V

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnExit()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/os/Bundle;

    invoke-super {p0, p1, p2}, Lcom/android/dialerbind/analytics/AnalyticsListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f0e0073

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->maybeAddFooterView()V

    iget v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    invoke-direct {p0, v0}, Lcom/android/dialer/calllog/CallLogFragment;->updateEmptyMessage(I)V

    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 3
    .param p1    # Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogFragment;->updateVoicemailStatusMessage(Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusHelper:Lcom/android/dialer/voicemail/VoicemailStatusHelper;

    invoke-interface {v1, p1}, Lcom/android/dialer/voicemail/VoicemailStatusHelper;->getNumberActivityVoicemailSources(Landroid/database/Cursor;)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/dialer/calllog/CallLogFragment;->setVoicemailSourcesAvailable(Z)V

    iput-boolean v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mVoicemailStatusFetched:Z

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->destroyEmptyLoaderIfAllDataFetched()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setHasFooterView(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mHasFooterView:Z

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->maybeAddFooterView()V

    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .param p1    # Z

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsListFragment;->setMenuVisibility(Z)V

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mMenuVisible:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->updateOnExit()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogFragment;->refreshData()V

    goto :goto_0
.end method

.method public startCallsQuery()V
    .locals 4

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->setLoading(Z)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    iget v1, p0, Lcom/android/dialer/calllog/CallLogFragment;->mCallTypeFilter:I

    iget-wide v2, p0, Lcom/android/dialer/calllog/CallLogFragment;->mDateLimit:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(IJ)V

    return-void
.end method
