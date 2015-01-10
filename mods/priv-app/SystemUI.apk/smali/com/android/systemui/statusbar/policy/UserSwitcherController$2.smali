.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v6, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$500(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$500(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$500(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->cancel()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/4 v7, 0x0

    # setter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/Dialog;
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$502(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_0
    const-string v6, "android.intent.extra.user_handle"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-object v6, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v6, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, v1, :cond_5

    const/4 v5, 0x1

    :goto_2
    iget-boolean v6, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eq v6, v5, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->copyWithIsCurrent(Z)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v5, :cond_4

    iget-boolean v6, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v7, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    # setter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mLastNonGuestUser:I
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$602(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    :cond_4
    if-eqz v1, :cond_1

    iget-boolean v6, v4, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # getter for: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUsers:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # invokes: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->notifyAdapters()V
    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$400(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    :cond_7
    const/16 v2, -0x2710

    const-string v6, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "android.intent.extra.user_handle"

    const/16 v7, -0x2710

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :cond_8
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    # invokes: Lcom/android/systemui/statusbar/policy/UserSwitcherController;->refreshUsers(I)V
    invoke-static {v6, v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$700(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    return-void
.end method
