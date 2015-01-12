.class public Lcom/google/android/dialer/settings/AdvancedSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "AdvancedSettingsFragment.java"


# instance fields
.field private mCallerIdPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mIsCallerIdEnabled:Z

.field private mIsNearbyPlacesEnabled:Z

.field private mNearbyPlacesPreferenceScreen:Landroid/preference/PreferenceScreen;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x7f060000

    invoke-virtual {p0, v2}, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;->addPreferencesFromResource(I)V

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "caller_id_preference_screen"

    invoke-virtual {p0, v2}, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;->mCallerIdPreferenceScreen:Landroid/preference/PreferenceScreen;

    const-string v2, "nearby_places_preference_screen"

    invoke-virtual {p0, v2}, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;->mNearbyPlacesPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/dialer/reverselookup/ReverseLookupSettingUtil;->isGServiceEnabled(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;->mIsCallerIdEnabled:Z

    iget-boolean v2, p0, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;->mIsCallerIdEnabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;->mCallerIdPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dialer_enable_nearby_places_directory"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;->mIsNearbyPlacesEnabled:Z

    iget-boolean v2, p0, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;->mIsNearbyPlacesEnabled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;->mNearbyPlacesPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iget-boolean v2, p0, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;->mIsCallerIdEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "google_caller_id"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const v0, 0x7f080296

    :goto_0
    iget-object v2, p0, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;->mCallerIdPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_0
    iget-boolean v2, p0, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;->mIsNearbyPlacesEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "local_search"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    const v1, 0x7f08029c

    :goto_1
    iget-object v2, p0, Lcom/google/android/dialer/settings/AdvancedSettingsFragment;->mNearbyPlacesPreferenceScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_1
    return-void

    :cond_2
    const v0, 0x7f080297

    goto :goto_0

    :cond_3
    const v1, 0x7f08029d

    goto :goto_1
.end method
