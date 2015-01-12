.class public Lcom/android/incallui/CallCardPresenter;
.super Lcom/android/incallui/Presenter;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallEventListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallCardPresenter$CallCardUi;,
        Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/InCallPresenter$InCallEventListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallTimer:Lcom/android/incallui/CallTimer;

.field private mContext:Landroid/content/Context;

.field private mPrimary:Lcom/android/incallui/Call;

.field private mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mSecondary:Lcom/android/incallui/Call;

.field private mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

.field private mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    new-instance v0, Lcom/android/incallui/CallTimer;

    new-instance v1, Lcom/android/incallui/CallCardPresenter$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardPresenter$1;-><init>(Lcom/android/incallui/CallCardPresenter;)V

    invoke-direct {v0, v1}, Lcom/android/incallui/CallTimer;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 0
    .param p0    # Lcom/android/incallui/CallCardPresenter;
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3    # Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/CallCardPresenter;->onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 0
    .param p0    # Lcom/android/incallui/CallCardPresenter;
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    return-void
.end method

.method private static canManageConference(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0    # Lcom/android/incallui/Call;

    if-eqz p0, :cond_0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAccountForCall(Lcom/android/incallui/Call;)Landroid/telecom/PhoneAccount;
    .locals 2
    .param p1    # Lcom/android/incallui/Call;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v1

    goto :goto_0
.end method

.method private getCallProviderIcon(Lcom/android/incallui/Call;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1    # Lcom/android/incallui/Call;

    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardPresenter;->getAccountForCall(Lcom/android/incallui/Call;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->hasMultipleCallCapableAccounts()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/telecom/PhoneAccount;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCallProviderLabel(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 2
    .param p1    # Lcom/android/incallui/Call;

    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardPresenter;->getAccountForCall(Lcom/android/incallui/Call;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->hasMultipleCallCapableAccounts()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;
    .locals 2
    .param p1    # Lcom/android/incallui/CallList;
    .param p2    # Lcom/android/incallui/Call;
    .param p3    # Z

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    if-nez p3, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eq v0, p2, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eq v0, p2, :cond_3

    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method private getConnectionIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call$Details;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telecom/StatusHints;->getIconResId()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/telecom/StatusHints;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-direct {p0, v2}, Lcom/android/incallui/CallCardPresenter;->getCallProviderIcon(Lcom/android/incallui/Call;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getConnectionLabel()Ljava/lang/String;
    .locals 6

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call$Details;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/telecom/StatusHints;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/telecom/StatusHints;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasOutgoingGatewayCall()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/GatewayInfo;->getGatewayProviderPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Gateway Application Not Found."

    invoke-static {p0, v4, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-direct {p0, v4}, Lcom/android/incallui/CallCardPresenter;->getCallProviderLabel(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getGatewayNumber()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->hasOutgoingGatewayCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/GatewayInfo;->getGatewayAddress()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallCardPresenter;->getNumberFromHandle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    goto :goto_0
.end method

.method private getNumberFromHandle(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/net/Uri;

    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSubscriptionNumber()Ljava/lang/String;
    .locals 5

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const-string v4, "telecom"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/TelecomManager;

    invoke-virtual {v2, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/CallCardPresenter;->getNumberFromHandle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mTelecomManager:Landroid/telecom/TelecomManager;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private hasOutgoingGatewayCall()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/GatewayInfo;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isConference(Lcom/android/incallui/Call;)Z
    .locals 1
    .param p0    # Lcom/android/incallui/Call;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeShowManageConferenceCallButton()V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showManageConferenceCallButton(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v3, 0x80

    invoke-virtual {v1, v3}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-interface {v1, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->showManageConferenceCallButton(Z)V

    goto :goto_0
.end method

.method private maybeStartSearch(Lcom/android/incallui/Call;Z)V
    .locals 2
    .param p1    # Lcom/android/incallui/Call;
    .param p2    # Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;ZZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p3    # Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contact found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/incallui/CallerInfoUtils;->sendViewNotification(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method private onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v1, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setCallbackNumber()V
    .locals 8

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/incallui/CallCardPresenter;->getNumberFromHandle(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getSubscriptionNumber()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "Numbers are the same; not showing the callback number"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-interface {v6, v0, v2}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallbackNumber(Ljava/lang/String;Z)V

    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call$Details;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/telecom/StatusHints;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v6, "android.telecom.extra.CALL_BACK_NUMBER"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private startContactInfoSearch(Lcom/android/incallui/Call;ZZ)V
    .locals 2
    .param p1    # Lcom/android/incallui/Call;
    .param p2    # Z
    .param p3    # Z

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;

    invoke-direct {v1, p0, p2}, Lcom/android/incallui/CallCardPresenter$ContactLookupCallback;-><init>(Lcom/android/incallui/CallCardPresenter;Z)V

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/incallui/ContactInfoCache;->findInfo(Lcom/android/incallui/Call;ZLcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;)V

    return-void
.end method

.method private updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V
    .locals 0
    .param p1    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2    # Z
    .param p3    # Z

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, p1, p3}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {p0, p3}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo(Z)V

    goto :goto_0
.end method

.method private updatePrimaryCallState()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getConnectionLabel()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getConnectionIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->getGatewayNumber()Ljava/lang/String;

    move-result-object v7

    invoke-interface/range {v0 .. v7}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->setCallbackNumber()V

    :cond_0
    return-void
.end method

.method private updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V
    .locals 18
    .param p1    # Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    .param p2    # Z

    sget-object v5, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Update primary display "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-nez v1, :cond_0

    sget-object v5, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    const-string v6, "updatePrimaryDisplayInfo called but ui is null!"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v5}, Lcom/android/incallui/CallCardPresenter;->canManageConference(Lcom/android/incallui/Call;)Z

    move-result v8

    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v5, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/CallCardPresenter;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    move/from16 v7, p2

    invoke-interface/range {v1 .. v9}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object v9, v1

    move/from16 v15, p2

    move/from16 v16, v8

    invoke-interface/range {v9 .. v17}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZ)V

    goto :goto_0
.end method

.method private updateSecondaryDisplayInfo(Z)V
    .locals 19
    .param p1    # Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->canManageConference(Lcom/android/incallui/Call;)Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/incallui/CallCardPresenter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSecondaryDisplayInfo() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v2}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v2, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x1

    :goto_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v5, v5, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/incallui/CallCardPresenter;->getCallProviderLabel(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/incallui/CallCardPresenter;->getCallProviderIcon(Lcom/android/incallui/Call;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move/from16 v8, p1

    invoke-interface/range {v1 .. v9}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v10, v1

    move/from16 v17, p1

    move/from16 v18, v9

    invoke-interface/range {v10 .. v18}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setSecondary(ZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V

    goto :goto_0
.end method


# virtual methods
.method public endCallClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnecting call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setState(I)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/incallui/Call;

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {p2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, p2, v1, v0}, Lcom/android/incallui/CallCardPresenter;->startContactInfoSearch(Lcom/android/incallui/Call;ZZ)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/incallui/CallCardPresenter;->updateContactEntry(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;ZZ)V

    goto :goto_1
.end method

.method public onCallStateButtonTouched()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incalluibind/ObjectFactory;->getCallStateButtonBroadcastIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Sending call state button broadcast: "

    invoke-static {p0, v1, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 0
    .param p1    # Lcom/android/incallui/Call;
    .param p2    # Landroid/telecom/Call$Details;

    invoke-direct {p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryCallState()V

    return-void
.end method

.method public onFullScreenVideoStateChanged(Z)V
    .locals 2
    .param p1    # Z

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallCardVisible(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3    # Lcom/android/incallui/Call;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/CallCardPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 16
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3    # Lcom/android/incallui/CallList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStateChange() "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v15

    check-cast v15, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-nez v15, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v11, 0x0

    const/4 v13, 0x0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_6

    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v11

    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Primary call: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Secondary call: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v2, v11}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v12, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-static {v2, v13}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_c

    const/4 v2, 0x1

    :goto_4
    invoke-static {v4, v5, v2}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v4}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/incallui/Call;)Z

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/incallui/Call;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-nez v2, :cond_d

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo(Z)V

    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_f

    const-string v2, "Starting the calltime timer"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Lcom/android/incallui/CallTimer;->start(J)Z

    :goto_6
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryCallState()V

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x7

    if-ne v3, v4, :cond_11

    :cond_4
    const/4 v4, 0x1

    :goto_8
    invoke-interface {v2, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPhotoVisible(Z)V

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->maybeShowManageConferenceCallButton()V

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x3

    if-eq v3, v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v2, :cond_12

    const/4 v10, 0x1

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v4, 0x3

    if-eq v3, v4, :cond_13

    const/4 v4, 0x1

    :goto_a
    invoke-interface {v2, v10, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setEndCallButtonEnabled(ZZ)V

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_7

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_9

    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v11

    if-nez v11, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v11

    :cond_8
    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v13

    goto/16 :goto_1

    :cond_9
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v11

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v11, v2}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v13

    goto/16 :goto_1

    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_d
    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/incallui/CallCardPresenter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v6, 0x3

    if-ne v2, v6, :cond_e

    const/4 v2, 0x1

    :goto_b
    invoke-static {v4, v5, v2}, Lcom/android/incallui/ContactInfoCache;->buildCacheEntryFromCall(Landroid/content/Context;Lcom/android/incallui/Call;Z)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/incallui/CallCardPresenter;->updateSecondaryDisplayInfo(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/incallui/CallCardPresenter;->maybeStartSearch(Lcom/android/incallui/Call;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto/16 :goto_5

    :cond_e
    const/4 v2, 0x0

    goto :goto_b

    :cond_f
    const-string v2, "Canceling the calltime timer"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v2}, Lcom/android/incallui/CallTimer;->cancel()V

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface {v15, v2, v4}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    goto/16 :goto_6

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Landroid/telecom/DisconnectCause;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/telecom/DisconnectCause;-><init>(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_8

    :cond_12
    const/4 v10, 0x0

    goto/16 :goto_9

    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_a
.end method

.method public onUiReady(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V
    .locals 2
    .param p1    # Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-static {v1}, Lcom/android/incallui/CallCardPresenter;->isConference(Lcom/android/incallui/Call;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/CallCardPresenter;->updatePrimaryDisplayInfo(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;Z)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1    # Lcom/android/incallui/Ui;

    check-cast p1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onUiReady(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V
    .locals 2
    .param p1    # Lcom/android/incallui/CallCardPresenter$CallCardUi;

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mPrimaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    iput-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondaryContactInfo:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1    # Lcom/android/incallui/Ui;

    check-cast p1, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardPresenter;->onUiUnready(Lcom/android/incallui/CallCardPresenter$CallCardUi;)V

    return-void
.end method

.method public secondaryInfoClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    const-string v0, "Secondary info clicked but no secondary call."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Swapping call to foreground: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallCardPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateCallTime()V
    .locals 8

    invoke-virtual {p0}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter$CallCardUi;

    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    :cond_0
    if-eqz v4, :cond_1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mCallTimer:Lcom/android/incallui/CallTimer;

    invoke-virtual {v5}, Lcom/android/incallui/CallTimer;->cancel()V

    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v0

    const/4 v5, 0x1

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    invoke-static {v6, v7}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/incallui/CallCardPresenter$CallCardUi;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    goto :goto_0
.end method
