.class public Lcom/android/dialer/calllog/PhoneAccountUtils;
.super Ljava/lang/Object;
.source "PhoneAccountUtils.java"


# direct methods
.method public static getAccount(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .locals 2
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Landroid/telecom/PhoneAccountHandle;

    invoke-direct {v1, v0, p1}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAccountIcon(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/telecom/PhoneAccountHandle;

    invoke-static {p0, p1}, Lcom/android/dialer/calllog/PhoneAccountUtils;->getAccountOrNull(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p0}, Landroid/telecom/PhoneAccount;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static getAccountLabel(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/telecom/PhoneAccountHandle;

    invoke-static {p0, p1}, Lcom/android/dialer/calllog/PhoneAccountUtils;->getAccountOrNull(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getAccountOrNull(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    .locals 3
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/telecom/PhoneAccountHandle;

    const-string v2, "telecom"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/TelecomManager;

    invoke-virtual {v1, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->hasMultipleCallCapableAccounts()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method
