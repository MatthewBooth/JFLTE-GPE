.class public Lcom/android/systemui/statusbar/tv/TvStatusBar;
.super Lcom/android/systemui/statusbar/BaseStatusBar;
.source "TvStatusBar.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;-><init>()V

    return-void
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I
    .param p4    # Lcom/android/internal/statusbar/StatusBarIcon;

    return-void
.end method

.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1    # Landroid/service/notification/StatusBarNotification;
    .param p2    # Landroid/service/notification/NotificationListenerService$RankingMap;

    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 0

    return-void
.end method

.method public animateExpandSettingsPanel()V
    .locals 0

    return-void
.end method

.method public buzzBeepBlinked()V
    .locals 0

    return-void
.end method

.method protected createAndAddWindows()V
    .locals 0

    return-void
.end method

.method public disable(IZ)V
    .locals 0
    .param p1    # I
    .param p2    # Z

    return-void
.end method

.method protected getMaxKeyguardNotifications()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p1    # Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatusBarView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected haltTicker()V
    .locals 0

    return-void
.end method

.method public notificationLightOff()V
    .locals 0

    return-void
.end method

.method public notificationLightPulse(III)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I

    return-void
.end method

.method public onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    return-void
.end method

.method public onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    return-void
.end method

.method protected refreshLayout(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I

    return-void
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/service/notification/NotificationListenerService$RankingMap;

    return-void
.end method

.method public resetHeadsUpDecayTimer()V
    .locals 0

    return-void
.end method

.method public scheduleHeadsUpEscalation()V
    .locals 0

    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 0

    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 0
    .param p1    # Landroid/os/IBinder;
    .param p2    # I
    .param p3    # I
    .param p4    # Z

    return-void
.end method

.method public setSystemUiVisibility(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    return-void
.end method

.method public setWindowState(II)V
    .locals 0
    .param p1    # I
    .param p2    # I

    return-void
.end method

.method protected shouldDisableNavbarGestures()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected tick(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 0
    .param p1    # Landroid/service/notification/StatusBarNotification;
    .param p2    # Z

    return-void
.end method

.method public toggleRecentApps()V
    .locals 0

    return-void
.end method

.method public topAppWindowChanged(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method protected updateExpandedViewPos(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 0
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # I
    .param p4    # Lcom/android/internal/statusbar/StatusBarIcon;
    .param p5    # Lcom/android/internal/statusbar/StatusBarIcon;

    return-void
.end method

.method protected updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0
    .param p1    # Landroid/service/notification/NotificationListenerService$RankingMap;

    return-void
.end method

.method protected updateNotifications()V
    .locals 0

    return-void
.end method
