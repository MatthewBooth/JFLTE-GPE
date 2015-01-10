.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;->onDismiss()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;->val$keyguardShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;->val$afterKeyguardGone:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;->val$intent:Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;->val$intent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;->val$keyguardShowing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;->val$afterKeyguardGone:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->overrideActivityPendingAppTransition(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
