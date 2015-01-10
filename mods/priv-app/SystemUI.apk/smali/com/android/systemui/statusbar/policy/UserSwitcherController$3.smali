.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;
.super Landroid/database/ContentObserver;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1    # Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$100(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "lockscreenSimpleUserSwitcher"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mSimpleUserSwitcher:Z
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$202(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$100(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "add_users_when_locked"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    # setter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mAddUsersWhenLocked:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$802(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/16 v1, -0x2710

    # invokes: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->refreshUsers(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$700(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
