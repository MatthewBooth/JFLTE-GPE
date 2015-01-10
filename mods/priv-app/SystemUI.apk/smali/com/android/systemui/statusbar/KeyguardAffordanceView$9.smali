.class Lcom/android/systemui/statusbar/KeyguardAffordanceView$9;
.super Ljava/lang/Object;
.source "KeyguardAffordanceView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZJLandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardAffordanceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$9;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1    # Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$9;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mImageScale:F
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->access$802(Lcom/android/systemui/statusbar/KeyguardAffordanceView;F)F

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$9;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->invalidate()V

    return-void
.end method
