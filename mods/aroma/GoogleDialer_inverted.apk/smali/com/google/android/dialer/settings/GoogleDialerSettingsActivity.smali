.class public Lcom/google/android/dialer/settings/GoogleDialerSettingsActivity;
.super Lcom/android/dialer/settings/DialerSettingsActivity;
.source "GoogleDialerSettingsActivity.java"


# instance fields
.field private mAdvancedSettingsHeader:Landroid/preference/PreferenceActivity$Header;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/dialer/settings/DialerSettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuildHeaders(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/dialer/settings/DialerSettingsActivity;->onBuildHeaders(Ljava/util/List;)V

    invoke-static {p0}, Lcom/google/android/dialer/reverselookup/ReverseLookupSettingUtil;->isGServiceEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/dialer/settings/GoogleDialerSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dialer_enable_nearby_places_directory"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    new-instance v2, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v2}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v2, p0, Lcom/google/android/dialer/settings/GoogleDialerSettingsActivity;->mAdvancedSettingsHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v2, p0, Lcom/google/android/dialer/settings/GoogleDialerSettingsActivity;->mAdvancedSettingsHeader:Landroid/preference/PreferenceActivity$Header;

    const v3, 0x7f0802a3

    iput v3, v2, Landroid/preference/PreferenceActivity$Header;->titleRes:I

    iget-object v2, p0, Lcom/google/android/dialer/settings/GoogleDialerSettingsActivity;->mAdvancedSettingsHeader:Landroid/preference/PreferenceActivity$Header;

    const v3, 0x7f0802a4

    iput v3, v2, Landroid/preference/PreferenceActivity$Header;->summaryRes:I

    iget-object v2, p0, Lcom/google/android/dialer/settings/GoogleDialerSettingsActivity;->mAdvancedSettingsHeader:Landroid/preference/PreferenceActivity$Header;

    const-class v3, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/dialer/settings/GoogleDialerSettingsActivity;->mAdvancedSettingsHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
