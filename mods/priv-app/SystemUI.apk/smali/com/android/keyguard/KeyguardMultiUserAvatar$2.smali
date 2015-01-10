.class Lcom/android/keyguard/KeyguardMultiUserAvatar$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardMultiUserAvatar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardMultiUserAvatar;->updateVisualsForActive(ZZILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

.field final synthetic val$onComplete:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardMultiUserAvatar;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$2;->this$0:Lcom/android/keyguard/KeyguardMultiUserAvatar;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$2;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$2;->val$onComplete:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMultiUserAvatar$2;->val$onComplete:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
