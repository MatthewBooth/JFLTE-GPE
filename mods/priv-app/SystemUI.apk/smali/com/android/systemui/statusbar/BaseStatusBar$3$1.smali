.class Lcom/android/systemui/statusbar/BaseStatusBar$3$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$3;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$3;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$fillInIntent:Landroid/content/Intent;

.field final synthetic val$keyguardShowing:Z

.field final synthetic val$pendingIntent:Landroid/app/PendingIntent;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$3;ZZLandroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$3;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3$1;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3$1;->val$afterKeyguardGone:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3$1;->val$view:Landroid/view/View;

    iput-object p5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3$1;->val$pendingIntent:Landroid/app/PendingIntent;

    iput-object p6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3$1;->val$fillInIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3$1;->val$keyguardShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3$1;->val$afterKeyguardGone:Z

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->keyguardWaitingForActivityDrawn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$3;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3$1;->val$view:Landroid/view/View;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3$1;->val$pendingIntent:Landroid/app/PendingIntent;

    iget-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3$1;->val$fillInIntent:Landroid/content/Intent;

    # invokes: Lcom/android/systemui/statusbar/BaseStatusBar$3;->superOnClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z
    invoke-static {v1, v4, v5, v6}, Lcom/android/systemui/statusbar/BaseStatusBar$3;->access$300(Lcom/android/systemui/statusbar/BaseStatusBar$3;Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$3;

    iget-object v4, v1, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3$1;->val$keyguardShowing:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3$1;->val$afterKeyguardGone:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->overrideActivityPendingAppTransition(Z)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$3;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$3$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$3;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$3;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    :cond_1
    return v0

    :cond_2
    move v1, v3

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method
