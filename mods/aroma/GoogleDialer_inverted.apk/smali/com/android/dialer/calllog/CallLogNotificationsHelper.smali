.class public Lcom/android/dialer/calllog/CallLogNotificationsHelper;
.super Ljava/lang/Object;
.source "CallLogNotificationsHelper.java"


# direct methods
.method public static removeMissedCallNotifications(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->cancelMissedCallsNotification()V

    return-void
.end method

.method public static updateVoicemailNotifications(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/dialer/calllog/CallLogNotificationsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.android.dialer.calllog.UPDATE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
