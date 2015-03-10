.class final Lcom/android/server/telecom/StatusBarNotifier;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "StatusBarNotifier.java"


# instance fields
.field private final mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private final mContext:Landroid/content/Context;

.field private mIsShowingMute:Z

.field private mIsShowingSpeakerphone:Z

.field private final mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/CallsManager;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    iput-object p1, p0, Lcom/android/server/telecom/StatusBarNotifier;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/telecom/StatusBarNotifier;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/server/telecom/StatusBarNotifier;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-void
.end method


# virtual methods
.method final notifyMute(Z)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/telecom/StatusBarNotifier;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->hasAnyCalls()Z

    move-result v1

    if-nez v1, :cond_0

    move p1, v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/telecom/StatusBarNotifier;->mIsShowingMute:Z

    if-ne v1, p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v1, "Mute status bar icon being set to %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/telecom/StatusBarNotifier;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v2, "mute"

    const v3, 0x1080076

    iget-object v4, p0, Lcom/android/server/telecom/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v5, 0x7f07000d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    :goto_1
    iput-boolean p1, p0, Lcom/android/server/telecom/StatusBarNotifier;->mIsShowingMute:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/StatusBarNotifier;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "mute"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_1
.end method

.method final notifySpeakerphone(Z)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/telecom/StatusBarNotifier;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->hasAnyCalls()Z

    move-result v1

    if-nez v1, :cond_0

    move p1, v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/telecom/StatusBarNotifier;->mIsShowingSpeakerphone:Z

    if-ne v1, p1, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v1, "Speakerphone status bar icon being set to %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/telecom/StatusBarNotifier;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v2, "speakerphone"

    const v3, 0x1080087

    iget-object v4, p0, Lcom/android/server/telecom/StatusBarNotifier;->mContext:Landroid/content/Context;

    const v5, 0x7f07000e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    :goto_1
    iput-boolean p1, p0, Lcom/android/server/telecom/StatusBarNotifier;->mIsShowingSpeakerphone:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/StatusBarNotifier;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "speakerphone"

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/StatusBarNotifier;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->hasAnyCalls()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/StatusBarNotifier;->notifyMute(Z)V

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/StatusBarNotifier;->notifySpeakerphone(Z)V

    :cond_0
    return-void
.end method
