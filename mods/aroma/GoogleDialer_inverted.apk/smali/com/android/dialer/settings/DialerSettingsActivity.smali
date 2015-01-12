.class public Lcom/android/dialer/settings/DialerSettingsActivity;
.super Lcom/android/dialerbind/analytics/AnalyticsPreferenceActivity;
.source "DialerSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/settings/DialerSettingsActivity$HeaderAdapter;
    }
.end annotation


# instance fields
.field private mHeaderAdapter:Lcom/android/dialer/settings/DialerSettingsActivity$HeaderAdapter;

.field protected mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialerbind/analytics/AnalyticsPreferenceActivity;-><init>()V

    return-void
.end method

.method private isPrimaryUser()Z
    .locals 4

    const-string v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/dialer/settings/DialerSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    const v2, 0x7f080282

    iput v2, v1, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    const v2, 0x7f080283

    iput v2, v1, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    const-class v2, Lcom/android/dialer/settings/GeneralSettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/dialer/settings/DialerSettingsActivity;->isPrimaryUser()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v0}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    const v2, 0x7f080287

    iput v2, v0, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    const v2, 0x7f080288

    iput v2, v0, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    invoke-static {}, Lcom/android/dialer/DialtactsActivity;->getCallSettingsIntent()Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/dialerbind/analytics/AnalyticsPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/settings/DialerSettingsActivity;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/dialer/settings/DialerSettingsActivity;->onBackPressed()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 4
    .param p1    # Landroid/widget/ListAdapter;

    if-nez p1, :cond_0

    const/4 v3, 0x0

    invoke-super {p0, v3}, Lcom/android/dialerbind/analytics/AnalyticsPreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/android/dialer/settings/DialerSettingsActivity$HeaderAdapter;

    invoke-direct {v3, p0, v1}, Lcom/android/dialer/settings/DialerSettingsActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v3, p0, Lcom/android/dialer/settings/DialerSettingsActivity;->mHeaderAdapter:Lcom/android/dialer/settings/DialerSettingsActivity$HeaderAdapter;

    iget-object v3, p0, Lcom/android/dialer/settings/DialerSettingsActivity;->mHeaderAdapter:Lcom/android/dialer/settings/DialerSettingsActivity$HeaderAdapter;

    invoke-super {p0, v3}, Lcom/android/dialerbind/analytics/AnalyticsPreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method
