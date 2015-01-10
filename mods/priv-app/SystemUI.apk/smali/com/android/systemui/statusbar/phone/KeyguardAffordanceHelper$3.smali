.class Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardAffordanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startHintAnimationPhase1(ZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

.field final synthetic val$onFinishedListener:Ljava/lang/Runnable;

.field final synthetic val$right:Z

.field final synthetic val$targetView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/KeyguardAffordanceView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;->val$onFinishedListener:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;->val$targetView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;->val$right:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1    # Landroid/animation/Animator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1    # Landroid/animation/Animator;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;->mCancelled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSwipeAnimator:Landroid/animation/Animator;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$002(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;->val$onFinishedListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;->val$targetView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->showArrow(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;->val$right:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$3;->val$onFinishedListener:Ljava/lang/Runnable;

    # invokes: Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startUnlockHintAnimationPhase2(ZLjava/lang/Runnable;)V
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;ZLjava/lang/Runnable;)V

    goto :goto_0
.end method
