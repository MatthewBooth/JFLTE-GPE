.class Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;
.super Ljava/lang/Object;
.source "KeyguardAffordanceHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getAnimatorToRadius(ZI)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

.field final synthetic val$right:Z

.field final synthetic val$targetView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/KeyguardAffordanceView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;->val$targetView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;->val$right:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1    # Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;->val$targetView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadiusWithoutAnimation(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    # invokes: Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getTranslationFromRadius(F)F
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$400(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;F)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;->val$right:Z

    if-eqz v3, :cond_0

    neg-float v1, v1

    :cond_0
    # setter for: Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTranslation:F
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$502(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;F)F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$5;->val$targetView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    # invokes: Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconsFromRadius(Lcom/android/systemui/statusbar/KeyguardAffordanceView;F)V
    invoke-static {v2, v3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/KeyguardAffordanceView;F)V

    return-void
.end method
