.class public Lcom/android/phone/settings/PhoneAccountSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "PhoneAccountSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;


# static fields
.field private static final CONNECTION_SERVICE_CONFIGURE_INTENT:Landroid/content/Intent;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mConfigureCallAssistant:Landroid/preference/Preference;

.field private mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

.field private mSelectCallAssistant:Lcom/android/phone/settings/AccountSelectionPreference;

.field private mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

.field private mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mUseSipCalling:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telecom.action.CONNECTION_SERVICE_CONFIGURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->CONNECTION_SERVICE_CONFIGURE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    const-class v0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/PhoneAccountSettingsFragment;Z)V
    .locals 0
    .param p0    # Lcom/android/phone/settings/PhoneAccountSettingsFragment;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->handleSipReceiveCallsOption(Z)V

    return-void
.end method

.method private declared-synchronized handleSipReceiveCallsOption(Z)V
    .locals 2
    .param p1    # Z

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v1, p1}, Lcom/android/services/telephony/sip/SipSharedPreferences;->setReceivingCallsEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/services/telephony/sip/SipUtil;->useSipToReceiveIncomingCalls(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/android/services/telephony/sip/SipAccountRegistry;->getInstance()Lcom/android/services/telephony/sip/SipAccountRegistry;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/sip/SipAccountRegistry;->restartSipService(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private updateConfigureCallAssistantSummary()V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSelectCallAssistant:Lcom/android/phone/settings/AccountSelectionPreference;

    invoke-virtual {v0}, Lcom/android/phone/settings/AccountSelectionPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSelectCallAssistant:Lcom/android/phone/settings/AccountSelectionPreference;

    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSelectCallAssistant:Lcom/android/phone/settings/AccountSelectionPreference;

    invoke-virtual {v2}, Lcom/android/phone/settings/AccountSelectionPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/AccountSelectionPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mConfigureCallAssistant:Landroid/preference/Preference;

    const v1, 0x7f0800f4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mConfigureCallAssistant:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mConfigureCallAssistant:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mConfigureCallAssistant:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateDefaultOutgoingAccountsModel()V
    .locals 5

    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    const v4, 0x7f0800e4

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/settings/AccountSelectionPreference;->setModel(Landroid/telecom/TelecomManager;Ljava/util/List;Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onAccountChanged(Lcom/android/phone/settings/AccountSelectionPreference;)V
    .locals 1
    .param p1    # Lcom/android/phone/settings/AccountSelectionPreference;

    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSelectCallAssistant:Lcom/android/phone/settings/AccountSelectionPreference;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->updateConfigureCallAssistantSummary()V

    :cond_0
    return-void
.end method

.method public onAccountSelected(Lcom/android/phone/settings/AccountSelectionPreference;Landroid/telecom/PhoneAccountHandle;)Z
    .locals 2
    .param p1    # Lcom/android/phone/settings/AccountSelectionPreference;
    .param p2    # Landroid/telecom/PhoneAccountHandle;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1, p2}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSelectCallAssistant:Lcom/android/phone/settings/AccountSelectionPreference;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1, p2}, Landroid/telecom/TelecomManager;->setSimCallManager(Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAccountSelectionDialogShow(Lcom/android/phone/settings/AccountSelectionPreference;)V
    .locals 1
    .param p1    # Lcom/android/phone/settings/AccountSelectionPreference;

    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->updateDefaultOutgoingAccountsModel()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSelectCallAssistant:Lcom/android/phone/settings/AccountSelectionPreference;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->updateCallAssistantModel()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v3, v1}, Lcom/android/services/telephony/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v4, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {v4}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    :cond_1
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/phone/settings/PhoneAccountSettingsFragment$1;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment$1;-><init>(Lcom/android/phone/settings/PhoneAccountSettingsFragment;Z)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .param p1    # Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mConfigureCallAssistant:Landroid/preference/Preference;

    if-ne p1, v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->CONNECTION_SERVICE_CONFIGURE_INTENT:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Could not resolve telecom connection service configure intent."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v1, 0x7f060012

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "default_outgoing_account"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/AccountSelectionPreference;

    iput-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getAllPhoneAccountsCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/settings/AccountSelectionPreference;->setListener(Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;)V

    invoke-direct {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->updateDefaultOutgoingAccountsModel()V

    :goto_0
    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getSimCallManagers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "wifi_calling_call_assistant_preference"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/settings/AccountSelectionPreference;

    iput-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSelectCallAssistant:Lcom/android/phone/settings/AccountSelectionPreference;

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSelectCallAssistant:Lcom/android/phone/settings/AccountSelectionPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/settings/AccountSelectionPreference;->setListener(Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;)V

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSelectCallAssistant:Lcom/android/phone/settings/AccountSelectionPreference;

    const v2, 0x7f0800f1

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/AccountSelectionPreference;->setDialogTitle(I)V

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "wifi_calling_configure_call_assistant_preference"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mConfigureCallAssistant:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mConfigureCallAssistant:Landroid/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->updateCallAssistantModel()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipUtil;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/services/telephony/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "use_sip_calling_options_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    const v1, 0x7f070002

    :goto_2
    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v2}, Lcom/android/services/telephony/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/services/telephony/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v2}, Lcom/android/services/telephony/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mUseSipCalling:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "sip_receive_calls_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/services/telephony/sip/SipUtil;->isPhoneIdle(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipSharedPreferences:Lcom/android/services/telephony/sip/SipSharedPreferences;

    invoke-virtual {v2}, Lcom/android/services/telephony/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSipReceiveCallsPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :goto_3
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mDefaultOutgoingAccount:Lcom/android/phone/settings/AccountSelectionPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "phone_accounts_call_assistant_settings_category_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_4
    const v1, 0x7f070001

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "phone_accounts_sip_settings_category_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method public updateCallAssistantModel()V
    .locals 5

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getSimCallManagers()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mSelectCallAssistant:Lcom/android/phone/settings/AccountSelectionPreference;

    iget-object v2, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v3, p0, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    const v4, 0x7f0800ed

    invoke-virtual {p0, v4}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/phone/settings/AccountSelectionPreference;->setModel(Landroid/telecom/TelecomManager;Ljava/util/List;Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/android/phone/settings/PhoneAccountSettingsFragment;->updateConfigureCallAssistantSummary()V

    return-void
.end method
