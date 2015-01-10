.class Lcom/android/keyguard/KeyguardViewBase$1;
.super Lcom/android/keyguard/KeyguardActivityLauncher;
.source "KeyguardViewBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewBase;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewBase$1;->this$0:Lcom/android/keyguard/KeyguardViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase$1;->this$0:Lcom/android/keyguard/KeyguardViewBase;

    # getter for: Lcom/android/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewBase;->access$000(Lcom/android/keyguard/KeyguardViewBase;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase$1;->this$0:Lcom/android/keyguard/KeyguardViewBase;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardViewBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method requestDismissKeyguard()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase$1;->this$0:Lcom/android/keyguard/KeyguardViewBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardViewBase;->dismiss(Z)Z

    return-void
.end method

.method setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 1
    .param p1    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase$1;->this$0:Lcom/android/keyguard/KeyguardViewBase;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardViewBase;->setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    return-void
.end method
