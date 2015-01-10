.class Lcom/android/systemui/statusbar/BaseStatusBar$7$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$7;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$7;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$keyguardShowing:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    iget v3, v3, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$appUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$7;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$keyguardShowing:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->overrideActivityPendingAppTransition(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
