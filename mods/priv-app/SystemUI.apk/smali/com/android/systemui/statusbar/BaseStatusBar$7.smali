.class Lcom/android/systemui/statusbar/BaseStatusBar$7;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

.field final synthetic val$appUid:I

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZLandroid/content/Intent;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$keyguardShowing:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$intent:Landroid/content/Intent;

    iput p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->val$appUid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$7$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$7$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$7;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$7;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    return v2
.end method
