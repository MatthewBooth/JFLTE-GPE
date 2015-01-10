.class public Lcom/android/server/notification/NotificationIntrusivenessExtractor;
.super Ljava/lang/Object;
.source "NotificationIntrusivenessExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z = false

.field private static final HANG_TIME_MS:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "NotificationNoiseExtractor"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 6
    .param p1    # Lcom/android/server/notification/NotificationRecord;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/app/Notification;->vibrate:[J

    if-nez v1, :cond_2

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v1, :cond_2

    iget-object v1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setRecentlyIntusive(Z)V

    :cond_3
    new-instance v1, Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v4, 0x2710

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;-><init>(Lcom/android/server/notification/NotificationIntrusivenessExtractor;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0
    .param p1    # Lcom/android/server/notification/RankingConfig;

    return-void
.end method
