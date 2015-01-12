.class public Lcom/android/dialer/settings/GeneralSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "GeneralSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mRespondViaSms:Landroid/preference/Preference;

.field private final mRingtoneLookupComplete:Landroid/os/Handler;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/dialer/settings/GeneralSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/dialer/settings/GeneralSettingsFragment$1;-><init>(Lcom/android/dialer/settings/GeneralSettingsFragment;)V

    iput-object v0, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mRingtoneLookupComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/dialer/settings/GeneralSettingsFragment;)Landroid/preference/Preference;
    .locals 1
    .param p0    # Lcom/android/dialer/settings/GeneralSettingsFragment;

    iget-object v0, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/dialer/settings/GeneralSettingsFragment;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/dialer/settings/GeneralSettingsFragment;

    iget-object v0, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/dialer/settings/GeneralSettingsFragment;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/dialer/settings/GeneralSettingsFragment;

    iget-object v0, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mRingtoneLookupComplete:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/dialer/settings/GeneralSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f060002

    invoke-virtual {p0, v2}, Lcom/android/dialer/settings/GeneralSettingsFragment;->addPreferencesFromResource(I)V

    const-string v2, "button_ringtone_key"

    invoke-virtual {p0, v2}, Lcom/android/dialer/settings/GeneralSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mRingtonePreference:Landroid/preference/Preference;

    const-string v2, "button_vibrate_on_ring"

    invoke-virtual {p0, v2}, Lcom/android/dialer/settings/GeneralSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    const-string v2, "button_play_dtmf_tone"

    invoke-virtual {p0, v2}, Lcom/android/dialer/settings/GeneralSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    const-string v2, "button_respond_via_sms_key"

    invoke-virtual {p0, v2}, Lcom/android/dialer/settings/GeneralSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mRespondViaSms:Landroid/preference/Preference;

    const-string v2, "dialer_general_sounds_category_key"

    invoke-virtual {p0, v2}, Lcom/android/dialer/settings/GeneralSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mContext:Landroid/content/Context;

    const-string v4, "vibrator"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v4, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "dtmf_tone"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_1
    new-instance v2, Lcom/android/dialer/settings/GeneralSettingsFragment$2;

    invoke-direct {v2, p0}, Lcom/android/dialer/settings/GeneralSettingsFragment$2;-><init>(Lcom/android/dialer/settings/GeneralSettingsFragment;)V

    iput-object v2, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrate_when_ringing"

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return v2

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1    # Landroid/preference/PreferenceScreen;
    .param p2    # Landroid/preference/Preference;

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_2

    iget-object v2, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    iget-object v4, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mRespondViaSms:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/common/util/SettingsUtil;->getVibrateWhenRingingSetting(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/dialer/settings/GeneralSettingsFragment;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
