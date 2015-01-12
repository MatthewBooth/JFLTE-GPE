.class public Lcom/android/contacts/common/CallUtil;
.super Ljava/lang/Object;
.source "CallUtil.java"


# direct methods
.method public static getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .param p0    # Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Landroid/net/Uri;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getCallIntent(Landroid/net/Uri;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;
    .locals 1
    .param p0    # Landroid/net/Uri;
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/telecom/PhoneAccountHandle;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Landroid/net/Uri;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getCallIntent(Landroid/net/Uri;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;I)Landroid/content/Intent;
    .locals 2
    .param p0    # Landroid/net/Uri;
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/telecom/PhoneAccountHandle;
    .param p3    # I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "com.android.phone.CALL_ORIGIN"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    if-eqz p2, :cond_1

    const-string v1, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method public static getCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getCallIntent(Ljava/lang/String;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;
    .locals 1
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/telecom/PhoneAccountHandle;

    invoke-static {p0}, Lcom/android/contacts/common/CallUtil;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Landroid/net/Uri;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getCallUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0    # Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sip"

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "tel"

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getVideoCallIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0    # Ljava/lang/String;
    .param p1    # Ljava/lang/String;

    invoke-static {p0}, Lcom/android/contacts/common/CallUtil;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, p1, v1, v2}, Lcom/android/contacts/common/CallUtil;->getCallIntent(Landroid/net/Uri;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static isVideoEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    const-string v1, "telecom"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-nez v0, :cond_0

    :cond_0
    return v2
.end method
