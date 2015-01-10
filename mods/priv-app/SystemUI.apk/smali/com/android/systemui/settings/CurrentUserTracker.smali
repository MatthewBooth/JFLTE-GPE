.class public abstract Lcom/android/systemui/settings/CurrentUserTracker;
.super Landroid/content/BroadcastReceiver;
.source "CurrentUserTracker.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCurrentUserId()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCurrentUserId:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCurrentUserId:I

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCurrentUserId:I

    iget v1, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCurrentUserId:I

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/settings/CurrentUserTracker;->onUserSwitched(I)V

    :cond_0
    return-void
.end method

.method public abstract onUserSwitched(I)V
.end method

.method public startTracking()V
    .locals 2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCurrentUserId:I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public stopTracking()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
