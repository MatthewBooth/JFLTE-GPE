.class public interface abstract Lcom/android/systemui/statusbar/NotificationData$Environment;
.super Ljava/lang/Object;
.source "NotificationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Environment"
.end annotation


# virtual methods
.method public abstract getCurrentMediaNotificationKey()Ljava/lang/String;
.end method

.method public abstract isDeviceProvisioned()Z
.end method

.method public abstract isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z
.end method

.method public abstract shouldHideSensitiveContents(I)Z
.end method
