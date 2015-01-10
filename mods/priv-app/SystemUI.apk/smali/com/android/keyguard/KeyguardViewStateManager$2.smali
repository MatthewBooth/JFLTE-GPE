.class Lcom/android/keyguard/KeyguardViewStateManager$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardViewStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewStateManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewStateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewStateManager$2;->this$0:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager$2;->this$0:Lcom/android/keyguard/KeyguardViewStateManager;

    # getter for: Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->access$000(Lcom/android/keyguard/KeyguardViewStateManager;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewStateManager$2;->this$0:Lcom/android/keyguard/KeyguardViewStateManager;

    # getter for: Lcom/android/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/keyguard/KeyguardSecurityView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->access$000(Lcom/android/keyguard/KeyguardViewStateManager;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    :cond_0
    return-void
.end method
