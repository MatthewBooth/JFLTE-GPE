.class public Lcom/android/dialer/list/ListsFragment;
.super Lcom/android/dialerbind/analytics/AnalyticsFragment;
.source "ListsFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;,
        Lcom/android/dialer/list/ListsFragment$HostInterface;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mAllContactsFragment:Lcom/android/dialer/list/AllContactsFragment;

.field private mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

.field private mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

.field private mCurrentCallShortcutDate:J

.field private mIsPanelOpen:Z

.field private mLastCallShortcutDate:J

.field private mMergedAdapter:Lcom/android/dialer/list/ShortcutCardsAdapter;

.field private mOnPageChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelSlideCallbacks:Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;

.field private mRecentsFragment:Lcom/android/dialer/calllog/CallLogFragment;

.field private mRemoveView:Lcom/android/dialer/list/RemoveView;

.field private mRemoveViewContent:Landroid/view/View;

.field private mShortcutCardsListView:Landroid/widget/ListView;

.field private mSpeedDialFragment:Lcom/android/dialer/list/SpeedDialFragment;

.field private mTabTitles:[Ljava/lang/String;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerAdapter:Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;

.field private mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/dialer/DialtactsActivity;->DEBUG:Z

    sput-boolean v0, Lcom/android/dialer/list/ListsFragment;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lcom/android/dialerbind/analytics/AnalyticsFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/list/ListsFragment;->mIsPanelOpen:Z

    iput-wide v2, p0, Lcom/android/dialer/list/ListsFragment;->mLastCallShortcutDate:J

    iput-wide v2, p0, Lcom/android/dialer/list/ListsFragment;->mCurrentCallShortcutDate:J

    new-instance v0, Lcom/android/dialer/list/ListsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/list/ListsFragment$1;-><init>(Lcom/android/dialer/list/ListsFragment;)V

    iput-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mPanelSlideCallbacks:Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/list/ListsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0    # Lcom/android/dialer/list/ListsFragment;

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mShortcutCardsListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/list/ListsFragment;)Landroid/app/ActionBar;
    .locals 1
    .param p0    # Lcom/android/dialer/list/ListsFragment;

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mActionBar:Landroid/app/ActionBar;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/dialer/list/ListsFragment;->DEBUG:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/dialer/list/ListsFragment;Z)Z
    .locals 0
    .param p0    # Lcom/android/dialer/list/ListsFragment;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/dialer/list/ListsFragment;->mIsPanelOpen:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/dialer/list/ListsFragment;)Landroid/widget/AbsListView;
    .locals 1
    .param p0    # Lcom/android/dialer/list/ListsFragment;

    invoke-direct {p0}, Lcom/android/dialer/list/ListsFragment;->getCurrentListView()Landroid/widget/AbsListView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/dialer/list/ListsFragment;)Lcom/android/dialer/list/SpeedDialFragment;
    .locals 1
    .param p0    # Lcom/android/dialer/list/ListsFragment;

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mSpeedDialFragment:Lcom/android/dialer/list/SpeedDialFragment;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/list/SpeedDialFragment;)Lcom/android/dialer/list/SpeedDialFragment;
    .locals 0
    .param p0    # Lcom/android/dialer/list/ListsFragment;
    .param p1    # Lcom/android/dialer/list/SpeedDialFragment;

    iput-object p1, p0, Lcom/android/dialer/list/ListsFragment;->mSpeedDialFragment:Lcom/android/dialer/list/SpeedDialFragment;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/dialer/list/ListsFragment;)Lcom/android/dialer/calllog/CallLogFragment;
    .locals 1
    .param p0    # Lcom/android/dialer/list/ListsFragment;

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mRecentsFragment:Lcom/android/dialer/calllog/CallLogFragment;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/calllog/CallLogFragment;)Lcom/android/dialer/calllog/CallLogFragment;
    .locals 0
    .param p0    # Lcom/android/dialer/list/ListsFragment;
    .param p1    # Lcom/android/dialer/calllog/CallLogFragment;

    iput-object p1, p0, Lcom/android/dialer/list/ListsFragment;->mRecentsFragment:Lcom/android/dialer/calllog/CallLogFragment;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/dialer/list/ListsFragment;)Lcom/android/dialer/list/AllContactsFragment;
    .locals 1
    .param p0    # Lcom/android/dialer/list/ListsFragment;

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mAllContactsFragment:Lcom/android/dialer/list/AllContactsFragment;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/list/AllContactsFragment;)Lcom/android/dialer/list/AllContactsFragment;
    .locals 0
    .param p0    # Lcom/android/dialer/list/ListsFragment;
    .param p1    # Lcom/android/dialer/list/AllContactsFragment;

    iput-object p1, p0, Lcom/android/dialer/list/ListsFragment;->mAllContactsFragment:Lcom/android/dialer/list/AllContactsFragment;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/dialer/list/ListsFragment;)[Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/dialer/list/ListsFragment;

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mTabTitles:[Ljava/lang/String;

    return-object v0
.end method

.method private getCurrentListView()Landroid/widget/AbsListView;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/dialer/list/ListsFragment;->getRtlPosition(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No fragment at position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mSpeedDialFragment:Lcom/android/dialer/list/SpeedDialFragment;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mSpeedDialFragment:Lcom/android/dialer/list/SpeedDialFragment;

    invoke-virtual {v1}, Lcom/android/dialer/list/SpeedDialFragment;->getListView()Landroid/widget/AbsListView;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mRecentsFragment:Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mRecentsFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mAllContactsFragment:Lcom/android/dialer/list/AllContactsFragment;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mAllContactsFragment:Lcom/android/dialer/list/AllContactsFragment;

    invoke-virtual {v1}, Lcom/android/dialer/list/AllContactsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setupPaneLayout(Lcom/android/dialer/widget/OverlappingPaneLayout;)V
    .locals 2
    .param p1    # Lcom/android/dialer/widget/OverlappingPaneLayout;

    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {p1, v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->setCapturableView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->openPane()Z

    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mPanelSlideCallbacks:Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;

    invoke-virtual {p1, v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->setPanelSlideCallbacks(Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;)V

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/list/ListsFragment$HostInterface;

    invoke-interface {v1}, Lcom/android/dialer/list/ListsFragment$HostInterface;->getActionBarHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->setIntermediatePinnedOffset(I)V

    invoke-virtual {p1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    return-void
.end method


# virtual methods
.method public addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 1
    .param p1    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public dismissShortcut(Landroid/view/View;)V
    .locals 6
    .param p1    # Landroid/view/View;

    iget-wide v2, p0, Lcom/android/dialer/list/ListsFragment;->mCurrentCallShortcutDate:J

    iput-wide v2, p0, Lcom/android/dialer/list/ListsFragment;->mLastCallShortcutDate:J

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.android.dialer_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "key_last_dismissed_call_shortcut_date"

    iget-wide v4, p0, Lcom/android/dialer/list/ListsFragment;->mLastCallShortcutDate:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->fetchCalls()V

    return-void
.end method

.method public fetchCalls()V
    .locals 4

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    const/4 v1, -0x1

    iget-wide v2, p0, Lcom/android/dialer/list/ListsFragment;->mLastCallShortcutDate:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(IJ)V

    return-void
.end method

.method public getRemoveView()Lcom/android/dialer/list/RemoveView;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mRemoveView:Lcom/android/dialer/list/RemoveView;

    return-object v0
.end method

.method public getRtlPosition(I)I
    .locals 1
    .param p1    # I

    invoke-static {}, Lcom/android/dialer/util/DialerUtils;->isRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    rsub-int/lit8 p1, p1, 0x2

    :cond_0
    return p1
.end method

.method public getSpeedDialFragment()Lcom/android/dialer/list/SpeedDialFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mSpeedDialFragment:Lcom/android/dialer/list/SpeedDialFragment;

    return-object v0
.end method

.method public isPaneOpen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/list/ListsFragment;->mIsPanelOpen:Z

    return v0
.end method

.method public onCallsFetched(Landroid/database/Cursor;)Z
    .locals 2
    .param p1    # Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->setLoading(Z)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/dialer/list/ListsFragment;->mCurrentCallShortcutDate:J

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mMergedAdapter:Lcom/android/dialer/list/ShortcutCardsAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/list/ShortcutCardsAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/android/dialer/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;I)V

    iput-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mCallLogQueryHandler:Lcom/android/dialer/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v2, v1, v6}, Lcom/android/dialer/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcom/android/dialerbind/ObjectFactory;->newCallLogAdapter(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;Z)Lcom/android/dialer/calllog/CallLogAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    new-instance v0, Lcom/android/dialer/list/ShortcutCardsAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/dialer/list/ShortcutCardsAdapter;-><init>(Landroid/content/Context;Lcom/android/dialer/list/ListsFragment;Lcom/android/dialer/calllog/CallLogAdapter;)V

    iput-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mMergedAdapter:Lcom/android/dialer/list/ShortcutCardsAdapter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v5, 0x2

    const/4 v4, 0x0

    const v1, 0x7f040032

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e00e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;-><init>(Lcom/android/dialer/list/ListsFragment;Landroid/app/FragmentManager;)V

    iput-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPagerAdapter:Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;

    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mViewPagerAdapter:Lcom/android/dialer/list/ListsFragment$ViewPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v5}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v4}, Lcom/android/dialer/list/ListsFragment;->getRtlPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mTabTitles:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mTabTitles:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08025a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mTabTitles:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08025b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mTabTitles:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08025c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v1, 0x7f0e00e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/list/ViewPagerTabs;

    iput-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ViewPagerTabs;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mViewPagerTabs:Lcom/android/contacts/common/list/ViewPagerTabs;

    invoke-virtual {p0, v1}, Lcom/android/dialer/list/ListsFragment;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v1, 0x7f0e00e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mShortcutCardsListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mShortcutCardsListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mMergedAdapter:Lcom/android/dialer/list/ShortcutCardsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v1, 0x7f0e00e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/list/RemoveView;

    iput-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mRemoveView:Lcom/android/dialer/list/RemoveView;

    const v1, 0x7f0e00e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mRemoveViewContent:Landroid/view/View;

    move-object v1, v0

    check-cast v1, Lcom/android/dialer/widget/OverlappingPaneLayout;

    invoke-direct {p0, v1}, Lcom/android/dialer/list/ListsFragment;->setupPaneLayout(Lcom/android/dialer/widget/OverlappingPaneLayout;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->stopRequestProcessing()V

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onDestroy()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1    # I

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 3
    .param p1    # I
    .param p2    # F
    .param p3    # I

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1    # I

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mSpeedDialFragment:Lcom/android/dialer/list/SpeedDialFragment;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mSpeedDialFragment:Lcom/android/dialer/list/SpeedDialFragment;

    invoke-virtual {v2}, Lcom/android/dialer/list/SpeedDialFragment;->sendScreenView()V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mOnPageChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mRecentsFragment:Lcom/android/dialer/calllog/CallLogFragment;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mRecentsFragment:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v2}, Lcom/android/dialer/calllog/CallLogFragment;->sendScreenView()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mAllContactsFragment:Lcom/android/dialer/list/AllContactsFragment;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment;->mAllContactsFragment:Lcom/android/dialer/list/AllContactsFragment;

    invoke-virtual {v2}, Lcom/android/dialer/list/AllContactsFragment;->sendScreenView()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter;->invalidateCache()V

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.android.dialer_preferences"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_last_dismissed_call_shortcut_date"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/dialer/list/ListsFragment;->mLastCallShortcutDate:J

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {p0}, Lcom/android/dialer/list/ListsFragment;->fetchCalls()V

    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mCallLogAdapter:Lcom/android/dialer/calllog/CallLogAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->setLoading(Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    invoke-super {p0}, Lcom/android/dialerbind/analytics/AnalyticsFragment;->onStart()V

    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 0
    .param p1    # Landroid/database/Cursor;

    return-void
.end method

.method public shouldShowActionBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/list/ListsFragment;->mIsPanelOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showRemoveView(Z)V
    .locals 6
    .param p1    # Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000

    iget-object v5, p0, Lcom/android/dialer/list/ListsFragment;->mRemoveViewContent:Landroid/view/View;

    if-eqz p1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/dialer/list/ListsFragment;->mRemoveView:Lcom/android/dialer/list/RemoveView;

    if-eqz p1, :cond_4

    move v1, v3

    :goto_1
    invoke-virtual {v5, v1}, Lcom/android/dialer/list/RemoveView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mRemoveView:Lcom/android/dialer/list/RemoveView;

    invoke-virtual {v1}, Lcom/android/dialer/list/RemoveView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mShortcutCardsListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/dialer/list/ListsFragment;->mShortcutCardsListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    if-eqz p1, :cond_1

    const/high16 v4, 0x3f000000

    :cond_1
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    return-void

    :cond_3
    const/16 v1, 0x8

    goto :goto_0

    :cond_4
    move v1, v4

    goto :goto_1
.end method
