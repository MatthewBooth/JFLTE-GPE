.class Lcom/android/keyguard/KeyguardStatusView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardStatusView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardStatusView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    # invokes: Lcom/android/keyguard/KeyguardStatusView;->refresh()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->access$000(Lcom/android/keyguard/KeyguardStatusView;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    # invokes: Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->access$100(Lcom/android/keyguard/KeyguardStatusView;)V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    const/4 v1, 0x0

    # invokes: Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardStatusView;->access$200(Lcom/android/keyguard/KeyguardStatusView;Z)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    const/4 v1, 0x1

    # invokes: Lcom/android/keyguard/KeyguardStatusView;->setEnableMarquee(Z)V
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardStatusView;->access$200(Lcom/android/keyguard/KeyguardStatusView;Z)V

    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    # invokes: Lcom/android/keyguard/KeyguardStatusView;->refresh()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->access$000(Lcom/android/keyguard/KeyguardStatusView;)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    # invokes: Lcom/android/keyguard/KeyguardStatusView;->refresh()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->access$000(Lcom/android/keyguard/KeyguardStatusView;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusView$1;->this$0:Lcom/android/keyguard/KeyguardStatusView;

    # invokes: Lcom/android/keyguard/KeyguardStatusView;->updateOwnerInfo()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardStatusView;->access$100(Lcom/android/keyguard/KeyguardStatusView;)V

    return-void
.end method
