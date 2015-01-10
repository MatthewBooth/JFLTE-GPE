.class Lcom/android/keyguard/KeyguardAccountView$1;
.super Ljava/lang/Object;
.source "KeyguardAccountView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAccountView;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAccountView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardAccountView$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->val$success:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$000(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$000(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$000(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ChooseLockGeneric"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$100(Lcom/android/keyguard/KeyguardAccountView;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardAccountView;->access$000(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$200(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$200(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$300(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_login_invalid_input:I

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$400(Lcom/android/keyguard/KeyguardAccountView;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView$1;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    # getter for: Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v1}, Lcom/android/keyguard/KeyguardAccountView;->access$200(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    goto :goto_0
.end method
