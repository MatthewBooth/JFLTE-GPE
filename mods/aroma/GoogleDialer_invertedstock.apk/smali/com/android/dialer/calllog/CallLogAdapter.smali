.class public Lcom/android/dialer/calllog/CallLogAdapter;
.super Lcom/android/common/widget/GroupingListAdapter;
.source "CallLogAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;,
        Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;,
        Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;,
        Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;,
        Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;,
        Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;
    }
.end annotation


# instance fields
.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mActionListener:Landroid/view/View$OnClickListener;

.field private mBadgeContainer:Landroid/view/View;

.field private mBadgeImageView:Landroid/widget/ImageView;

.field private mBadgeText:Landroid/widget/TextView;

.field private final mCallFetcher:Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;

.field private mCallItemExpandedListener:Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;

.field private mCallLogBackgroundColor:I

.field private final mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

.field private final mCallLogViewsHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

.field private mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

.field private mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/dialer/util/ExpirableCache",
            "<",
            "Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;",
            "Lcom/android/dialer/calllog/ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

.field private final mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

.field protected final mContext:Landroid/content/Context;

.field private mCurrentlyExpanded:J

.field private mDayGroups:Ljava/util/HashMap;
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

.field private final mExpandCollapseListener:Landroid/view/View$OnClickListener;

.field private mExpandedBackgroundColor:I

.field private mExpandedTranslationZ:F

.field private mHandler:Landroid/os/Handler;

.field private mIsCallLog:Z

.field private mLoading:Z

.field private final mOnReportButtonClickListener:Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;

.field private mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

.field private mPreviouslyExpanded:J

.field private final mReportedToast:Landroid/widget/Toast;

.field private volatile mRequestProcessingDisabled:Z

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;Z)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
    .param p3    # Lcom/android/dialer/calllog/ContactInfoHelper;
    .param p4    # Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;
    .param p5    # Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;
    .param p6    # Z

    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/common/widget/GroupingListAdapter;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    iput-wide v6, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPreviouslyExpanded:J

    iput-wide v6, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpanded:J

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mDayGroups:Ljava/util/HashMap;

    iput-boolean v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mLoading:Z

    iput-boolean v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    iput-boolean v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mIsCallLog:Z

    new-instance v3, Lcom/android/dialer/calllog/CallLogAdapter$1;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllog/CallLogAdapter$1;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mActionListener:Landroid/view/View$OnClickListener;

    new-instance v3, Lcom/android/dialer/calllog/CallLogAdapter$2;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllog/CallLogAdapter$2;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mExpandCollapseListener:Landroid/view/View$OnClickListener;

    new-instance v3, Lcom/android/dialer/calllog/CallLogAdapter$3;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllog/CallLogAdapter$3;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    new-instance v3, Lcom/android/dialer/calllog/CallLogAdapter$4;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllog/CallLogAdapter$4;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;

    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    iput-boolean p6, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mIsCallLog:Z

    iput-object p4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallItemExpandedListener:Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;

    iput-object p5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mOnReportButtonClickListener:Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f080276

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mReportedToast:Landroid/widget/Toast;

    const/16 v3, 0x64

    invoke-static {v3}, Lcom/android/dialer/util/ExpirableCache;->create(I)Lcom/android/dialer/util/ExpirableCache;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v0, Lcom/android/dialer/calllog/CallTypeHelper;

    invoke-direct {v0, v2}, Lcom/android/dialer/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    const v3, 0x7f090078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogBackgroundColor:I

    const v3, 0x7f090082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mExpandedBackgroundColor:I

    const v3, 0x7f0b00c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mExpandedTranslationZ:F

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/common/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/ContactPhotoManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    new-instance v3, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    invoke-direct {v3, v2}, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    new-instance v1, Lcom/android/dialer/PhoneCallDetailsHelper;

    new-instance v3, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    invoke-direct {v3}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;-><init>()V

    invoke-direct {v1, v2, v0, v3}, Lcom/android/dialer/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/android/dialer/calllog/CallTypeHelper;Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;)V

    new-instance v3, Lcom/android/dialer/calllog/CallLogListItemHelper;

    iget-object v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    invoke-direct {v3, v1, v4, v2}, Lcom/android/dialer/calllog/CallLogListItemHelper;-><init>(Lcom/android/dialer/PhoneCallDetailsHelper;Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;Landroid/content/res/Resources;)V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

    new-instance v3, Lcom/android/dialer/calllog/CallLogGroupBuilder;

    invoke-direct {v3, p0}, Lcom/android/dialer/calllog/CallLogGroupBuilder;-><init>(Lcom/android/dialer/calllog/CallLogGroupBuilder$GroupCreator;)V

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/calllog/CallLogAdapter;Landroid/view/View;)V
    .locals 0
    .param p0    # Lcom/android/dialer/calllog/CallLogAdapter;
    .param p1    # Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->startActivityForAction(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/dialer/calllog/CallLogAdapter;Lcom/android/dialer/calllog/CallLogListItemView;ZZ)V
    .locals 0
    .param p0    # Lcom/android/dialer/calllog/CallLogAdapter;
    .param p1    # Lcom/android/dialer/calllog/CallLogListItemView;
    .param p2    # Z
    .param p3    # Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/calllog/CallLogAdapter;->handleRowExpanded(Lcom/android/dialer/calllog/CallLogListItemView;ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/dialer/calllog/CallLogAdapter;)V
    .locals 0
    .param p0    # Lcom/android/dialer/calllog/CallLogAdapter;

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->startRequestProcessing()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/dialer/calllog/CallLogAdapter;)Ljava/util/LinkedList;
    .locals 1
    .param p0    # Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/dialer/calllog/CallLogAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Z
    .locals 1
    .param p0    # Lcom/android/dialer/calllog/CallLogAdapter;
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/dialer/calllog/CallLogAdapter;->queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/dialer/calllog/CallLogAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/dialer/calllog/CallLogAdapter;)Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;
    .locals 1
    .param p0    # Lcom/android/dialer/calllog/CallLogAdapter;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mOnReportButtonClickListener:Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;

    return-object v0
.end method

.method private bindActionButtons(Lcom/android/dialer/calllog/CallLogListItemViews;)V
    .locals 8
    .param p1    # Lcom/android/dialer/calllog/CallLogListItemViews;

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/16 v5, 0x8

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->number:Ljava/lang/String;

    iget v2, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->numberPresentation:I

    invoke-static {v1, v2}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->callBackButtonView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/dialer/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->callBackButtonView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->callBackButtonView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/common/CallUtil;->isVideoEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/android/dialer/PhoneCallDetailsViews;

    iget-object v1, v1, Lcom/android/dialer/PhoneCallDetailsViews;->callTypeIcons:Lcom/android/dialer/calllog/CallTypeIconsView;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallTypeIconsView;->isVideoShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->videoCallButtonView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/dialer/calllog/IntentProvider;->getReturnVideoCallIntentProvider(Ljava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->videoCallButtonView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->videoCallButtonView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    iget v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->callType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->voicemailButtonView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->voicemailButtonView:Landroid/widget/TextView;

    iget-wide v2, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->rowId:J

    iget-object v4, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->voicemailUri:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/dialer/calllog/IntentProvider;->getPlayVoicemailIntentProvider(JLjava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->voicemailButtonView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->detailsButtonView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

    invoke-virtual {v1, p1}, Lcom/android/dialer/calllog/CallLogListItemHelper;->setActionContentDescriptions(Lcom/android/dialer/calllog/CallLogListItemViews;)V

    return-void

    :cond_0
    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->callBackButtonView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->callBackButtonView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->videoCallButtonView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->videoCallButtonView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->voicemailButtonView:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->voicemailButtonView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->detailsButtonView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->detailsButtonView:Landroid/widget/TextView;

    iget-wide v2, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->rowId:J

    iget-object v4, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->callIds:[J

    invoke-static {v2, v3, v4, v7}, Lcom/android/dialer/calllog/IntentProvider;->getCallDetailIntentProvider(J[JLjava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-boolean v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->canBeReportedAsInvalid:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->reported:Z

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->reportButtonView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->reportButtonView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private bindView(Landroid/view/View;Landroid/database/Cursor;I)V
    .locals 60
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/database/Cursor;
    .param p3    # I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    move-object/from16 v48, p1

    check-cast v48, Lcom/android/dialer/calllog/CallLogListItemView;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Lcom/android/dialer/calllog/CallLogListItemViews;

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/16 v16, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v16, 0x11

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v16, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/16 v16, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/16 v16, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    const/16 v16, 0x12

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v21, 0x13

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/dialer/calllog/PhoneAccountUtils;->getAccount(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lcom/android/dialer/calllog/PhoneAccountUtils;->getAccountIcon(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    const/16 v16, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    move-wide/from16 v0, v58

    move-object/from16 v2, v57

    iput-wide v0, v2, Lcom/android/dialer/calllog/CallLogListItemViews;->rowId:J

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mIsCallLog:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v0, p0

    move-wide/from16 v1, v58

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->getDayGroupForCall(J)I

    move-result v50

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->getPreviousDayGroup(Landroid/database/Cursor;)I

    move-result v56

    move/from16 v0, v50

    move/from16 v1, v56

    if-eq v0, v1, :cond_5

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->dayGroupHeader:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->dayGroupHeader:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-direct {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->getGroupDescription(I)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    move-object/from16 v0, v57

    iput-object v6, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->number:Ljava/lang/String;

    move-object/from16 v0, v57

    iput v7, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->numberPresentation:I

    move/from16 v0, v49

    move-object/from16 v1, v57

    iput v0, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->callType:I

    move-object/from16 v0, v57

    iput-object v4, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    const/16 v16, 0x6

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->voicemailUri:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->getCallIds(Landroid/database/Cursor;I)[J

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v57

    iput-object v0, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->callIds:[J

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v46

    sget-object v16, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->INSTANCE:Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isVoicemailNumber(Ljava/lang/CharSequence;)Z

    move-result v52

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mIsCallLog:Z

    move/from16 v16, v0

    if-nez v16, :cond_8

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v6, v7}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result v16

    if-eqz v16, :cond_7

    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-static {v6}, Lcom/android/dialer/calllog/IntentProvider;->getReturnCallIntentProvider(Ljava/lang/String;)Lcom/android/dialer/calllog/IntentProvider;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    new-instance v53, Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;

    move-object/from16 v0, v53

    invoke-direct {v0, v6, v9}, Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/dialer/util/ExpirableCache;->getCachedValue(Ljava/lang/Object;)Lcom/android/dialer/util/ExpirableCache$CachedValue;

    move-result-object v47

    if-nez v47, :cond_9

    const/16 v51, 0x0

    :goto_2
    invoke-static {v6, v7}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->canPlaceCallsTo(Ljava/lang/CharSequence;I)Z

    move-result v16

    if-eqz v16, :cond_0

    if-eqz v52, :cond_a

    :cond_0
    sget-object v51, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    :cond_1
    :goto_3
    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    move-object/from16 v35, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v51

    iget v0, v0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    move/from16 v33, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v51

    iget-wide v0, v0, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    move-wide/from16 v54, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    move-object/from16 v36, v0

    move-object/from16 v0, v51

    iget-object v8, v0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->getCallTypes(Landroid/database/Cursor;I)[I

    move-result-object v11

    const/16 v16, 0x7

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v51

    iget v0, v0, Lcom/android/dialer/calllog/ContactInfo;->sourceType:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->getCallFeatures(Landroid/database/Cursor;I)I

    move-result v18

    const/16 v16, 0x16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v19, 0x0

    const/16 v16, 0x15

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v16

    if-nez v16, :cond_2

    const/16 v16, 0x15

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    :cond_2
    move-object/from16 v0, v51

    iget-boolean v0, v0, Lcom/android/dialer/calllog/ContactInfo;->isBadData:Z

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, v57

    iput-boolean v0, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->reported:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v51

    iget v0, v0, Lcom/android/dialer/calllog/ContactInfo;->sourceType:I

    move/from16 v21, v0

    move-object/from16 v0, v51

    iget-object v0, v0, Lcom/android/dialer/calllog/ContactInfo;->objectId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/calllog/ContactInfoHelper;->canReportAsInvalid(ILjava/lang/String;)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, v57

    iput-boolean v0, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->canBeReportedAsInvalid:Z

    move-object/from16 v0, p0

    move-wide/from16 v1, v58

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->isExpanded(J)Z

    move-result v16

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->expandOrCollapseActions(Lcom/android/dialer/calllog/CallLogListItemView;Z)V

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_e

    new-instance v5, Lcom/android/dialer/PhoneCallDetails;

    const/16 v16, 0x0

    invoke-direct/range {v5 .. v20}, Lcom/android/dialer/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Long;Ljava/lang/String;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogViewsHelper:Lcom/android/dialer/calllog/CallLogListItemHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v57

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/dialer/calllog/CallLogListItemHelper;->setPhoneCallDetails(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogListItemViews;Lcom/android/dialer/PhoneCallDetails;)V

    const/16 v27, 0x1

    if-eqz v52, :cond_f

    const/16 v27, 0x3

    :cond_3
    :goto_5
    if-nez v35, :cond_10

    const/16 v26, 0x0

    :goto_6
    const/16 v25, 0x0

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mPhoneNumberHelper:Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;

    move-object/from16 v16, v0

    iget-object v0, v5, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    iget v0, v5, Lcom/android/dialer/PhoneCallDetails;->numberPresentation:I

    move/from16 v22, v0

    iget-object v0, v5, Lcom/android/dialer/PhoneCallDetails;->formattedNumber:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dialer/calllog/PhoneNumberDisplayHelper;->getDisplayNumber(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    :goto_7
    const-wide/16 v22, 0x0

    cmp-long v16, v54, v22

    if-nez v16, :cond_12

    if-eqz v36, :cond_12

    move-object/from16 v21, p0

    move-object/from16 v22, v57

    move-object/from16 v23, v36

    move-object/from16 v24, v35

    invoke-direct/range {v21 .. v27}, Lcom/android/dialer/calllog/CallLogAdapter;->setPhoto(Lcom/android/dialer/calllog/CallLogListItemViews;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v51

    move/from16 v3, v49

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/dialer/calllog/CallLogAdapter;->bindBadge(Landroid/view/View;Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/PhoneCallDetails;I)V

    return-void

    :cond_5
    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->dayGroupHeader:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v21, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->dayGroupHeader:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v21, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v21, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, v57

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->primaryActionView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mExpandCollapseListener:Landroid/view/View$OnClickListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    :cond_9
    invoke-interface/range {v47 .. v47}, Lcom/android/dialer/util/ExpirableCache$CachedValue;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/dialer/calllog/ContactInfo;

    move-object/from16 v51, v16

    goto/16 :goto_2

    :cond_a
    if-nez v47, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    move-object/from16 v16, v0

    sget-object v21, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/dialer/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v51, v46

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v16

    invoke-virtual {v0, v6, v9, v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Z)V

    goto/16 :goto_3

    :cond_b
    invoke-interface/range {v47 .. v47}, Lcom/android/dialer/util/ExpirableCache$CachedValue;->isExpired()Z

    move-result v16

    if-eqz v16, :cond_d

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v16

    invoke-virtual {v0, v6, v9, v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Z)V

    :cond_c
    :goto_9
    sget-object v16, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    move-object/from16 v0, v51

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_1

    move-object/from16 v51, v46

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v51

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->callLogInfoMatches(Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/calllog/ContactInfo;)Z

    move-result v16

    if-nez v16, :cond_c

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v16

    invoke-virtual {v0, v6, v9, v1, v2}, Lcom/android/dialer/calllog/CallLogAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Z)V

    goto :goto_9

    :cond_e
    new-instance v5, Lcom/android/dialer/PhoneCallDetails;

    const/16 v38, 0x0

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-wide/from16 v28, v12

    move-wide/from16 v30, v14

    move-object/from16 v39, v17

    move/from16 v40, v18

    move-object/from16 v41, v19

    move-object/from16 v42, v20

    invoke-direct/range {v21 .. v42}, Lcom/android/dialer/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Long;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    move-object/from16 v16, v0

    move-object/from16 v0, v51

    iget v0, v0, Lcom/android/dialer/calllog/ContactInfo;->sourceType:I

    move/from16 v21, v0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/ContactInfoHelper;->isBusiness(I)Z

    move-result v16

    if-eqz v16, :cond_3

    const/16 v27, 0x2

    goto/16 :goto_5

    :cond_10
    invoke-static/range {v35 .. v35}, Lcom/android/dialer/calllog/ContactInfoHelper;->getLookupKeyFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v26

    goto/16 :goto_6

    :cond_11
    move-object/from16 v25, v32

    goto/16 :goto_7

    :cond_12
    move-object/from16 v38, p0

    move-object/from16 v39, v57

    move-wide/from16 v40, v54

    move-object/from16 v42, v35

    move-object/from16 v43, v25

    move-object/from16 v44, v26

    move/from16 v45, v27

    invoke-direct/range {v38 .. v45}, Lcom/android/dialer/calllog/CallLogAdapter;->setPhoto(Lcom/android/dialer/calllog/CallLogListItemViews;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_8
.end method

.method private callLogInfoMatches(Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/calllog/ContactInfo;)Z
    .locals 2
    .param p1    # Lcom/android/dialer/calllog/ContactInfo;
    .param p2    # Lcom/android/dialer/calllog/ContactInfo;

    iget-object v0, p1, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/dialer/calllog/ContactInfo;->type:I

    iget v1, p2, Lcom/android/dialer/calllog/ContactInfo;->type:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private expandOrCollapseActions(Lcom/android/dialer/calllog/CallLogListItemView;Z)V
    .locals 4
    .param p1    # Lcom/android/dialer/calllog/CallLogListItemView;
    .param p2    # Z

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/dialer/calllog/CallLogListItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/CallLogListItemViews;

    invoke-static {v0, p2}, Lcom/android/dialer/calllog/CallLogAdapter;->expandVoicemailTranscriptionView(Lcom/android/dialer/calllog/CallLogListItemViews;Z)V

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->inflateActionViewStub(Landroid/view/View;)V

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->actionsView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->actionsView:Landroid/view/View;

    const/high16 v2, 0x3f800000

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->callLogEntryView:Landroid/view/View;

    iget v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mExpandedBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->callLogEntryView:Landroid/view/View;

    iget v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mExpandedTranslationZ:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationZ(F)V

    iget v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mExpandedTranslationZ:F

    invoke-virtual {p1, v1}, Lcom/android/dialer/calllog/CallLogListItemView;->setTranslationZ(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->actionsView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->actionsView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->callLogEntryView:Landroid/view/View;

    iget v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogBackgroundColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->callLogEntryView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationZ(F)V

    invoke-virtual {p1, v3}, Lcom/android/dialer/calllog/CallLogListItemView;->setTranslationZ(F)V

    goto :goto_0
.end method

.method public static expandVoicemailTranscriptionView(Lcom/android/dialer/calllog/CallLogListItemViews;Z)V
    .locals 4
    .param p0    # Lcom/android/dialer/calllog/CallLogListItemViews;
    .param p1    # Z

    const/4 v2, 0x1

    iget v1, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->callType:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/android/dialer/PhoneCallDetailsViews;

    iget-object v0, v1, Lcom/android/dialer/PhoneCallDetailsViews;->voicemailTranscriptionView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_2

    const/16 v1, 0xa

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    if-nez p1, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private getCallFeatures(Landroid/database/Cursor;I)I
    .locals 4
    .param p1    # Landroid/database/Cursor;
    .param p2    # I

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 v3, 0x14

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    or-int/2addr v0, v3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    return v0
.end method

.method private getCallIds(Landroid/database/Cursor;I)[J
    .locals 6
    .param p1    # Landroid/database/Cursor;
    .param p2    # I

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    new-array v0, p2, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, v0, v1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    return-object v0
.end method

.method private getCallTypes(Landroid/database/Cursor;I)[I
    .locals 4
    .param p1    # Landroid/database/Cursor;
    .param p2    # I

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    new-array v0, p2, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v0, v1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    return-object v0
.end method

.method private getContactInfoFromCallLog(Landroid/database/Cursor;)Lcom/android/dialer/calllog/ContactInfo;
    .locals 4
    .param p1    # Landroid/database/Cursor;

    new-instance v0, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v0}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    const/16 v2, 0xb

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/common/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v0, Lcom/android/dialer/calllog/ContactInfo;->type:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    iput-object v1, v0, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    const/16 v2, 0xe

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    const/16 v2, 0xf

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    return-object v0
.end method

.method private getDayGroupForCall(J)I
    .locals 3
    .param p1    # J

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mDayGroups:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mDayGroups:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getGroupDescription(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1    # I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080278

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080279

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08027a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreviousDayGroup(Landroid/database/Cursor;)I
    .locals 5
    .param p1    # Landroid/database/Cursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    const/4 v0, -0x1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/dialer/calllog/CallLogAdapter;->getDayGroupForCall(J)I

    move-result v0

    :cond_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    return v0
.end method

.method private handleRowExpanded(Lcom/android/dialer/calllog/CallLogListItemView;ZZ)V
    .locals 8
    .param p1    # Lcom/android/dialer/calllog/CallLogListItemView;
    .param p2    # Z
    .param p3    # Z

    const-wide/16 v6, -0x1

    invoke-virtual {p1}, Lcom/android/dialer/calllog/CallLogListItemView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dialer/calllog/CallLogListItemViews;

    if-eqz p3, :cond_1

    iget-wide v4, v2, Lcom/android/dialer/calllog/CallLogListItemViews;->rowId:J

    invoke-direct {p0, v4, v5}, Lcom/android/dialer/calllog/CallLogAdapter;->isExpanded(J)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v4, v2, Lcom/android/dialer/calllog/CallLogListItemViews;->rowId:J

    invoke-direct {p0, v4, v5}, Lcom/android/dialer/calllog/CallLogAdapter;->toggleExpansion(J)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/dialer/calllog/CallLogAdapter;->expandOrCollapseActions(Lcom/android/dialer/calllog/CallLogListItemView;Z)V

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallItemExpandedListener:Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_2

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallItemExpandedListener:Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;

    invoke-interface {v3, p1}, Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;->onItemExpanded(Lcom/android/dialer/calllog/CallLogListItemView;)V

    :cond_2
    iget-wide v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPreviouslyExpanded:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallItemExpandedListener:Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;

    iget-wide v4, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPreviouslyExpanded:J

    invoke-interface {v3, v4, v5}, Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;->getViewForCallId(J)Lcom/android/dialer/calllog/CallLogListItemView;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/dialer/calllog/CallLogAdapter;->expandOrCollapseActions(Lcom/android/dialer/calllog/CallLogListItemView;Z)V

    if-eqz p2, :cond_3

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallItemExpandedListener:Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;

    invoke-interface {v3, v1}, Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;->onItemExpanded(Lcom/android/dialer/calllog/CallLogListItemView;)V

    :cond_3
    iput-wide v6, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPreviouslyExpanded:J

    goto :goto_0
.end method

.method private inflateActionViewStub(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/calllog/CallLogListItemViews;

    const v2, 0x7f0e007f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->actionsView:Landroid/view/View;

    :cond_0
    iget-object v2, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->callBackButtonView:Landroid/widget/TextView;

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->actionsView:Landroid/view/View;

    const v3, 0x7f0e0078

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->callBackButtonView:Landroid/widget/TextView;

    :cond_1
    iget-object v2, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->videoCallButtonView:Landroid/widget/TextView;

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->actionsView:Landroid/view/View;

    const v3, 0x7f0e0084

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->videoCallButtonView:Landroid/widget/TextView;

    :cond_2
    iget-object v2, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->voicemailButtonView:Landroid/widget/TextView;

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->actionsView:Landroid/view/View;

    const v3, 0x7f0e0085

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->voicemailButtonView:Landroid/widget/TextView;

    :cond_3
    iget-object v2, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->detailsButtonView:Landroid/widget/TextView;

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->actionsView:Landroid/view/View;

    const v3, 0x7f0e0086

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->detailsButtonView:Landroid/widget/TextView;

    :cond_4
    iget-object v2, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->reportButtonView:Landroid/widget/TextView;

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->actionsView:Landroid/view/View;

    const v3, 0x7f0e0087

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->reportButtonView:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->reportButtonView:Landroid/widget/TextView;

    new-instance v3, Lcom/android/dialer/calllog/CallLogAdapter$5;

    invoke-direct {v3, p0, v1}, Lcom/android/dialer/calllog/CallLogAdapter$5;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;Lcom/android/dialer/calllog/CallLogListItemViews;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    invoke-direct {p0, v1}, Lcom/android/dialer/calllog/CallLogAdapter;->bindActionButtons(Lcom/android/dialer/calllog/CallLogListItemViews;)V

    return-void
.end method

.method private isExpanded(J)Z
    .locals 3
    .param p1    # J

    iget-wide v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpanded:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private queryContactInfo(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)Z
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/android/dialer/calllog/ContactInfo;

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoHelper:Lcom/android/dialer/calllog/ContactInfoHelper;

    invoke-virtual {v7, p1, p2}, Lcom/android/dialer/calllog/ContactInfoHelper;->lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v6

    :cond_0
    new-instance v3, Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v3, p1, p2}, Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v7, v3}, Lcom/android/dialer/util/ExpirableCache;->getPossiblyExpired(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/ContactInfo;

    iget v7, v1, Lcom/android/dialer/calllog/ContactInfo;->sourceType:I

    if-eqz v7, :cond_2

    move v2, v5

    :goto_1
    sget-object v7, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-ne v0, v7, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/dialer/calllog/ContactInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move v4, v5

    :goto_2
    iget-object v5, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v5, v3, v1}, Lcom/android/dialer/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/dialer/calllog/CallLogAdapter;->updateCallLogContactInfoCache(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/calllog/ContactInfo;)V

    move v6, v4

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_2
.end method

.method private setPhoto(Lcom/android/dialer/calllog/CallLogListItemViews;JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .param p1    # Lcom/android/dialer/calllog/CallLogListItemViews;
    .param p2    # J
    .param p4    # Landroid/net/Uri;
    .param p5    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;
    .param p7    # I

    const/4 v5, 0x1

    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v6, p5, p6, p7, v5}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v4, 0x0

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/common/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    return-void
.end method

.method private setPhoto(Lcom/android/dialer/calllog/CallLogListItemViews;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1    # Lcom/android/dialer/calllog/CallLogListItemViews;
    .param p2    # Landroid/net/Uri;
    .param p3    # Landroid/net/Uri;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # I

    const/4 v4, 0x1

    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v0, p3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    iget-object v0, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/QuickContactBadge;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;

    invoke-direct {v5, p4, p5, p6, v4}, Lcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactPhotoManager:Lcom/android/contacts/common/ContactPhotoManager;

    iget-object v1, p1, Lcom/android/dialer/calllog/CallLogListItemViews;->quickContactView:Landroid/widget/QuickContactBadge;

    const/4 v3, 0x0

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/common/ContactPhotoManager;->loadDirectoryPhoto(Landroid/widget/ImageView;Landroid/net/Uri;ZZLcom/android/contacts/common/ContactPhotoManager$DefaultImageRequest;)V

    return-void
.end method

.method private startActivityForAction(Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/calllog/IntentProvider;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/dialer/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/dialer/util/DialerUtils;->startActivityWithErrorToast(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized startRequestProcessing()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    invoke-direct {v0, p0}, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;->setPriority(I)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private toggleExpansion(J)Z
    .locals 5
    .param p1    # J

    const-wide/16 v2, -0x1

    iget-wide v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpanded:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iput-wide v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPreviouslyExpanded:J

    iput-wide v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpanded:J

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpanded:J

    iput-wide v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mPreviouslyExpanded:J

    iput-wide p1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCurrentlyExpanded:J

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private unregisterPreDrawListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mViewTreeObserver:Landroid/view/ViewTreeObserver;

    return-void
.end method

.method private updateCallLogContactInfoCache(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/calllog/ContactInfo;)V
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/android/dialer/calllog/ContactInfo;
    .param p4    # Lcom/android/dialer/calllog/ContactInfo;

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x0

    if-eqz p4, :cond_8

    iget-object v2, p3, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "name"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    iget v2, p3, Lcom/android/dialer/calllog/ContactInfo;->type:I

    iget v3, p4, Lcom/android/dialer/calllog/ContactInfo;->type:I

    if-eq v2, v3, :cond_1

    const-string v2, "numbertype"

    iget v3, p3, Lcom/android/dialer/calllog/ContactInfo;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, 0x1

    :cond_1
    iget-object v2, p3, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "numberlabel"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_2
    iget-object v2, p3, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    iget-object v3, p4, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/contacts/common/util/UriUtils;->areEqual(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "lookup_uri"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/contacts/common/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_3
    iget-object v2, p3, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p3, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "normalized_number"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_4
    iget-object v2, p3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "matched_number"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_5
    iget-wide v2, p3, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    iget-wide v4, p4, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    const-string v2, "photo_id"

    iget-wide v4, p3, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x1

    :cond_6
    iget-object v2, p3, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    iget-object v3, p4, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "formatted_number"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_7
    :goto_0
    if-nez v0, :cond_9

    :goto_1
    return-void

    :cond_8
    const-string v2, "name"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "numbertype"

    iget v3, p3, Lcom/android/dialer/calllog/ContactInfo;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "numberlabel"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lookup_uri"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/contacts/common/util/UriUtils;->uriToString(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "matched_number"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "normalized_number"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "photo_id"

    iget-wide v4, p3, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "formatted_number"

    iget-object v3, p3, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_9
    if-nez p2, :cond_a

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v4, "number = ? AND countryiso IS NULL"

    new-array v5, v7, [Ljava/lang/String;

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_a
    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    const-string v4, "number = ? AND countryiso = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public addGroup(IIZ)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    invoke-super {p0, p1, p2, p3}, Lcom/android/common/widget/GroupingListAdapter;->addGroup(IIZ)V

    return-void
.end method

.method protected addGroups(Landroid/database/Cursor;)V
    .locals 1
    .param p1    # Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallLogGroupBuilder:Lcom/android/dialer/calllog/CallLogGroupBuilder;

    invoke-virtual {v0, p1}, Lcom/android/dialer/calllog/CallLogGroupBuilder;->addGroups(Landroid/database/Cursor;)V

    return-void
.end method

.method protected bindBadge(Landroid/view/View;Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/PhoneCallDetails;I)V
    .locals 5
    .param p1    # Landroid/view/View;
    .param p2    # Lcom/android/dialer/calllog/ContactInfo;
    .param p3    # Lcom/android/dialer/PhoneCallDetails;
    .param p4    # I

    iget-boolean v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mIsCallLog:Z

    if-nez v3, :cond_1

    const v3, 0x7f0e0081

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iget-object v3, p2, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/contacts/common/util/UriUtils;->isEncodedContactUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f0e0089

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mBadgeContainer:Landroid/view/View;

    const v3, 0x7f0e008a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mBadgeImageView:Landroid/widget/ImageView;

    const v3, 0x7f0e008b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mBadgeText:Landroid/widget/TextView;

    :cond_0
    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mBadgeContainer:Landroid/view/View;

    new-instance v4, Lcom/android/dialer/calllog/CallLogAdapter$6;

    invoke-direct {v4, p0, p3}, Lcom/android/dialer/calllog/CallLogAdapter$6;-><init>(Lcom/android/dialer/calllog/CallLogAdapter;Lcom/android/dialer/PhoneCallDetails;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mBadgeImageView:Landroid/widget/ImageView;

    const v4, 0x7f02008e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mBadgeText:Landroid/widget/TextView;

    const v4, 0x7f0801f0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez v2, :cond_1

    const v3, 0x7f0e0088

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/database/Cursor;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/dialer/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    return-void
.end method

.method protected bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;IZ)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/database/Cursor;
    .param p4    # I
    .param p5    # Z

    invoke-direct {p0, p1, p3, p4}, Lcom/android/dialer/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    return-void
.end method

.method protected bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/database/Cursor;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/dialer/calllog/CallLogAdapter;->bindView(Landroid/view/View;Landroid/database/Cursor;I)V

    return-void
.end method

.method bindViewForTest(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/dialer/calllog/CallLogAdapter;->bindStandAloneView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/CallLogAdapter;->inflateActionViewStub(Landroid/view/View;)V

    return-void
.end method

.method public clearDayGroups()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mDayGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method disableRequestProcessingForTest()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequestProcessingDisabled:Z

    return-void
.end method

.method protected enqueueRequest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/android/dialer/calllog/ContactInfo;
    .param p4    # Z

    new-instance v0, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/dialer/calllog/CallLogAdapter$ContactInfoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)V

    iget-object v2, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_1

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->startRequestProcessing()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method injectContactInfoForTest(Ljava/lang/String;Ljava/lang/String;Lcom/android/dialer/calllog/ContactInfo;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/android/dialer/calllog/ContactInfo;

    new-instance v0, Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;

    invoke-direct {v0, p1, p2}, Lcom/android/dialer/calllog/CallLogAdapter$NumberWithCountryIso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v1, v0, p3}, Lcom/android/dialer/util/ExpirableCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public invalidateCache()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v0}, Lcom/android/dialer/util/ExpirableCache;->expireAll()V

    invoke-virtual {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->stopRequestProcessing()V

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->unregisterPreDrawListener()V

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/common/widget/GroupingListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method protected newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f04000d

    invoke-virtual {v0, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/calllog/CallLogListItemView;

    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogListItemViews;->fromView(Landroid/view/View;)Lcom/android/dialer/calllog/CallLogListItemViews;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/calllog/CallLogListItemView;->setTag(Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/android/dialer/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/android/dialer/PhoneCallDetailsViews;

    iget-object v3, v3, Lcom/android/dialer/PhoneCallDetailsViews;->nameView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    iget-object v3, v2, Lcom/android/dialer/calllog/CallLogListItemViews;->phoneCallDetailsViews:Lcom/android/dialer/PhoneCallDetailsViews;

    iget-object v3, v3, Lcom/android/dialer/PhoneCallDetailsViews;->callLocationAndDate:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    return-object v1
.end method

.method protected newGroupView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/calllog/CallLogAdapter;->newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected newStandAloneView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/android/dialer/calllog/CallLogAdapter;->newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onBadDataReported(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mContactInfoCache:Lcom/android/dialer/util/ExpirableCache;

    invoke-virtual {v0}, Lcom/android/dialer/util/ExpirableCache;->expireAll()V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mReportedToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected onContentChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallFetcher:Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;

    invoke-interface {v0}, Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;->fetchCalls()V

    return-void
.end method

.method public onPreDraw()Z
    .locals 4

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogAdapter;->unregisterPreDrawListener()V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setDayGroup(JI)V
    .locals 3
    .param p1    # J
    .param p3    # I

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mDayGroups:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mDayGroups:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setLoading(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mLoading:Z

    return-void
.end method

.method public declared-synchronized stopRequestProcessing()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;->stopProcessing()V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogAdapter;->mCallerIdThread:Lcom/android/dialer/calllog/CallLogAdapter$QueryThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
