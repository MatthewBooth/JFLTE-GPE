.class Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;
.super Ljava/lang/Object;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->animateNextLayoutChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field final synthetic val$systemIconsCurrentX:I

.field final synthetic val$userSwitcherVisible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->val$userSwitcherVisible:Z

    iput p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->val$systemIconsCurrentX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 11

    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const-wide/16 v4, 0x12c

    const/4 v10, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->val$userSwitcherVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eq v2, v3, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->val$systemIconsCurrentX:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mSystemIconsSuperContainer:Landroid/view/View;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v8, 0x190

    invoke-virtual {v2, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    if-eqz v0, :cond_1

    move-wide v2, v4

    :goto_1
    invoke-virtual {v8, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_2
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-wide v2, v6

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    goto :goto_2
.end method
