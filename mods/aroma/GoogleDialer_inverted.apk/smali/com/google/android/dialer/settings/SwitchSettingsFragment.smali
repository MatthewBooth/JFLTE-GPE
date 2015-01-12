.class public Lcom/google/android/dialer/settings/SwitchSettingsFragment;
.super Landroid/app/Fragment;
.source "SwitchSettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mDefaultValue:Z

.field protected mPreferences:Landroid/content/SharedPreferences;

.field private mSettingKey:Ljava/lang/String;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object p1, p0, Lcom/google/android/dialer/settings/SwitchSettingsFragment;->mSettingKey:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/dialer/settings/SwitchSettingsFragment;->mDefaultValue:Z

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/google/android/dialer/settings/SwitchSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/dialer/settings/SwitchSettingsFragment;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/dialer/settings/SwitchSettingsFragment;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "mSwitch is null; ensure sub-classes call setSwitch."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/dialer/settings/SwitchSettingsFragment;->mSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/google/android/dialer/settings/SwitchSettingsFragment;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/google/android/dialer/settings/SwitchSettingsFragment;->mSettingKey:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/dialer/settings/SwitchSettingsFragment;->mDefaultValue:Z

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1    # Landroid/widget/CompoundButton;
    .param p2    # Z

    iget-object v0, p0, Lcom/google/android/dialer/settings/SwitchSettingsFragment;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/dialer/settings/SwitchSettingsFragment;->mSettingKey:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 1
    .param p1    # Landroid/widget/Switch;

    iput-object p1, p0, Lcom/google/android/dialer/settings/SwitchSettingsFragment;->mSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/google/android/dialer/settings/SwitchSettingsFragment;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
