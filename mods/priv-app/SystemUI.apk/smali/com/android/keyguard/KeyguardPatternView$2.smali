.class Lcom/android/keyguard/KeyguardPatternView$2;
.super Landroid/os/CountDownTimer;
.source "KeyguardPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView;JJ)V
    .locals 0
    .param p2    # J
    .param p4    # J

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$800(Lcom/android/keyguard/KeyguardPatternView;)V

    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1    # J

    const/4 v6, 0x1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView$2;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardPatternView;->access$700(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_too_many_failed_attempts_countdown:I

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v6, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    return-void
.end method
