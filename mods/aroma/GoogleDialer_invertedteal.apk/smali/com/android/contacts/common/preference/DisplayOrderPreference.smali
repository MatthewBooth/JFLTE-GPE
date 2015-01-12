.class public final Lcom/android/contacts/common/preference/DisplayOrderPreference;
.super Landroid/preference/ListPreference;
.source "DisplayOrderPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/contacts/common/preference/DisplayOrderPreference;->prepare()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/android/contacts/common/preference/DisplayOrderPreference;->prepare()V

    return-void
.end method

.method private prepare()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/DisplayOrderPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/preference/DisplayOrderPreference;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/common/preference/DisplayOrderPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/common/preference/DisplayOrderPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    new-array v0, v4, [Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/common/preference/DisplayOrderPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f080121

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/android/contacts/common/preference/DisplayOrderPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f080122

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/preference/DisplayOrderPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-array v0, v4, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/preference/DisplayOrderPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/contacts/common/preference/DisplayOrderPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/preference/DisplayOrderPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/preference/DisplayOrderPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/contacts/common/preference/DisplayOrderPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f080121

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/contacts/common/preference/DisplayOrderPreference;->mContext:Landroid/content/Context;

    const v1, 0x7f080122

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .param p1    # Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p1, v0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/common/preference/DisplayOrderPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/preference/DisplayOrderPreference;->mPreferences:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->setDisplayOrder(I)V

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/DisplayOrderPreference;->notifyChanged()V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected shouldPersist()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
