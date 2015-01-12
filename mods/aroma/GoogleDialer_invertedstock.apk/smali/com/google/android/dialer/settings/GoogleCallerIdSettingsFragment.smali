.class public Lcom/google/android/dialer/settings/GoogleCallerIdSettingsFragment;
.super Lcom/google/android/dialer/settings/SwitchSettingsFragment;
.source "GoogleCallerIdSettingsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "google_caller_id"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/dialer/settings/SwitchSettingsFragment;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    invoke-super {p0, p1, p2}, Lcom/google/android/dialer/settings/SwitchSettingsFragment;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/google/android/dialer/settings/GoogleCallerIdSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;->purgePeopleApiCacheEntries(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const/4 v7, 0x0

    const v2, 0x7f04002e

    invoke-virtual {p1, v2, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e00dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    invoke-virtual {p0, v2}, Lcom/google/android/dialer/settings/GoogleCallerIdSettingsFragment;->setSwitch(Landroid/widget/Switch;)V

    const v2, 0x7f0e00bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {p0}, Lcom/google/android/dialer/settings/GoogleCallerIdSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080298

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/dialer/settings/GoogleCallerIdSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "dialer_google_caller_id"

    invoke-static {v5, v6}, Lcom/google/android/dialer/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    invoke-static {}, Lcom/google/android/dialer/util/HelpUrl;->getPhoneAccountSettingUri()Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/google/android/dialer/settings/GoogleCallerIdSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "dialer_data_attribution"

    invoke-static {v6, v7}, Lcom/google/android/dialer/util/HelpUrl;->getHelpUrl(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/google/android/dialer/settings/GoogleCallerIdSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const v3, 0x7f080295

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setTitle(I)V

    return-object v1
.end method
