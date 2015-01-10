.class Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardUserSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->startAppearAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->mBgAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->access$102(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void
.end method
