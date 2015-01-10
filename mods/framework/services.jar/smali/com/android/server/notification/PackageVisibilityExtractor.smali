.class public Lcom/android/server/notification/PackageVisibilityExtractor;
.super Ljava/lang/Object;
.source "PackageVisibilityExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "PackageVisibilityExtractor"


# instance fields
.field private mConfig:Lcom/android/server/notification/RankingConfig;


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
    .locals 5
    .param p1    # Lcom/android/server/notification/NotificationRecord;

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/PackageVisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/PackageVisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/notification/RankingConfig;->getPackageVisibilityOverride(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->setPackageVisibilityOverride(I)V

    goto :goto_0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0
    .param p1    # Lcom/android/server/notification/RankingConfig;

    iput-object p1, p0, Lcom/android/server/notification/PackageVisibilityExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    return-void
.end method
