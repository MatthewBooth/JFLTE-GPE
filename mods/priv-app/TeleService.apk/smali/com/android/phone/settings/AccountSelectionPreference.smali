.class public Lcom/android/phone/settings/AccountSelectionPreference;
.super Landroid/preference/ListPreference;
.source "AccountSelectionPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;
    }
.end annotation


# instance fields
.field private mAccounts:[Landroid/telecom/PhoneAccountHandle;

.field private final mContext:Landroid/content/Context;

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/String;

.field private mListener:Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;

.field private mShowSelectionInSummary:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/settings/AccountSelectionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mShowSelectionInSummary:Z

    iput-object p1, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0}, Lcom/android/phone/settings/AccountSelectionPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Landroid/preference/Preference;
    .param p2    # Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mListener:Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;

    if-eqz v2, :cond_3

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    aget-object v0, v2, v1

    :goto_0
    iget-object v2, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mListener:Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;

    invoke-interface {v2, p0, v0}, Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;->onAccountSelected(Lcom/android/phone/settings/AccountSelectionPreference;Landroid/telecom/PhoneAccountHandle;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mShowSelectionInSummary:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/AccountSelectionPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/settings/AccountSelectionPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/AccountSelectionPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/phone/settings/AccountSelectionPreference;->setValueIndex(I)V

    iget-object v2, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mListener:Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;

    invoke-interface {v2, p0}, Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;->onAccountChanged(Lcom/android/phone/settings/AccountSelectionPreference;)V

    :cond_1
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .param p1    # Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mListener:Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;

    invoke-interface {v0, p0}, Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;->onAccountSelectionDialogShow(Lcom/android/phone/settings/AccountSelectionPreference;)V

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    return-void
.end method

.method public setListener(Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;)V
    .locals 0
    .param p1    # Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;

    iput-object p1, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mListener:Lcom/android/phone/settings/AccountSelectionPreference$AccountSelectionListener;

    return-void
.end method

.method public setModel(Landroid/telecom/TelecomManager;Ljava/util/List;Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V
    .locals 5
    .param p1    # Landroid/telecom/TelecomManager;
    .param p3    # Landroid/telecom/PhoneAccountHandle;
    .param p4    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/TelecomManager;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;",
            "Landroid/telecom/PhoneAccountHandle;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/telecom/PhoneAccountHandle;

    invoke-interface {p2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/telecom/PhoneAccountHandle;

    iput-object v3, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    iget-object v3, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntryValues:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    iput-object v3, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntries:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    array-length v2, v3

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntries:[Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    const/4 v3, 0x0

    :goto_1
    aput-object v3, v4, v0

    iget-object v3, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntryValues:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mAccounts:[Landroid/telecom/PhoneAccountHandle;

    aget-object v3, v3, v0

    invoke-static {p3, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntryValues:[Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntries:[Ljava/lang/CharSequence;

    aput-object p4, v3, v0

    iget-object v3, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntryValues:[Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/AccountSelectionPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/AccountSelectionPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/android/phone/settings/AccountSelectionPreference;->setValueIndex(I)V

    iget-boolean v3, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mShowSelectionInSummary:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/settings/AccountSelectionPreference;->mEntries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/AccountSelectionPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
