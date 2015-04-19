.class public Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;
.super Lcom/android/dialer/calllog/CallLogAdapter;
.source "GoogleCallLogAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBadgeContainer:Landroid/view/View;

.field private mCallerIdContainer:Landroid/view/View;

.field private mCallerIdImageView:Landroid/widget/ImageView;

.field private mCallerIdText:Landroid/widget/TextView;

.field private mDismissButton:Landroid/widget/ImageView;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;
    .param p3    # Lcom/android/dialer/calllog/ContactInfoHelper;
    .param p4    # Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;
    .param p5    # Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;
    .param p6    # Z

    invoke-direct/range {p0 .. p6}, Lcom/android/dialer/calllog/CallLogAdapter;-><init>(Landroid/content/Context;Lcom/android/dialer/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/calllog/ContactInfoHelper;Lcom/android/dialer/calllog/CallLogAdapter$CallItemExpandedListener;Lcom/android/dialer/calllog/CallLogAdapter$OnReportButtonClickListener;Z)V

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;)Landroid/view/View;
    .locals 1
    .param p0    # Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mBadgeContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0    # Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private shouldShowCallerIdBadge(Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/PhoneCallDetails;)Z
    .locals 8
    .param p1    # Lcom/android/dialer/calllog/ContactInfo;
    .param p2    # Lcom/android/dialer/PhoneCallDetails;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "google_caller_id_show_enabled_msg"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v5, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/dialer/reverselookup/ReverseLookupSettingUtil;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v5, p2, Lcom/android/dialer/PhoneCallDetails;->number:Ljava/lang/CharSequence;

    iget v6, p2, Lcom/android/dialer/PhoneCallDetails;->numberPresentation:I

    invoke-static {v5, v6}, Lcom/android/dialer/calllog/PhoneNumberUtilsWrapper;->isUnknownNumberThatCanBeLookedUp(Ljava/lang/CharSequence;I)Z

    move-result v1

    sget-object v5, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "shouldShowCallerIdBadge() - isEnabled "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isNormalNumber: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", info.sourceType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/dialer/calllog/ContactInfo;->sourceType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", info.name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget v5, p1, Lcom/android/dialer/calllog/ContactInfo;->sourceType:I

    invoke-static {v5}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->isPeopleApiSource(I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p1, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method protected bindBadge(Landroid/view/View;Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/PhoneCallDetails;I)V
    .locals 3
    .param p1    # Landroid/view/View;
    .param p2    # Lcom/android/dialer/calllog/ContactInfo;
    .param p3    # Lcom/android/dialer/PhoneCallDetails;
    .param p4    # I

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/dialer/calllog/CallLogAdapter;->bindBadge(Landroid/view/View;Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/PhoneCallDetails;I)V

    invoke-direct {p0, p2, p3}, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->shouldShowCallerIdBadge(Lcom/android/dialer/calllog/ContactInfo;Lcom/android/dialer/PhoneCallDetails;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Showing caller id badge."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mCallerIdText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0802a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mCallerIdImageView:Landroid/widget/ImageView;

    const v1, 0x7f020058

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mCallerIdContainer:Landroid/view/View;

    new-instance v1, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter$2;

    invoke-direct {v1, p0}, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter$2;-><init>(Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mBadgeContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Hiding caller id badge."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mBadgeContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/dialer/calllog/CallLogAdapter;->newChildView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f04000f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mBadgeContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mBadgeContainer:Landroid/view/View;

    const v3, 0x7f0e0089

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mCallerIdContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mBadgeContainer:Landroid/view/View;

    const v3, 0x7f0e008a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mCallerIdImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mBadgeContainer:Landroid/view/View;

    const v3, 0x7f0e008b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mCallerIdText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mBadgeContainer:Landroid/view/View;

    const v3, 0x7f0e008c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mDismissButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mDismissButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter$1;

    invoke-direct {v3, p0}, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter$1;-><init>(Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/google/android/dialer/calllog/GoogleCallLogAdapter;->mBadgeContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method
