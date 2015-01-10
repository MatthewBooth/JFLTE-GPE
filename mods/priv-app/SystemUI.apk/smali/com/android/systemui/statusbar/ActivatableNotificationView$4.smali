.class Lcom/android/systemui/statusbar/ActivatableNotificationView$4;
.super Ljava/lang/Object;
.source "ActivatableNotificationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/ActivatableNotificationView;->startAppearAnimation(ZFJJLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$4;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1    # Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$4;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/android/systemui/statusbar/ActivatableNotificationView;->mAppearAnimationFraction:F
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$402(Lcom/android/systemui/statusbar/ActivatableNotificationView;F)F

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$4;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    # invokes: Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearAnimationAlpha()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$500(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$4;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    # invokes: Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateAppearRect()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->access$600(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ActivatableNotificationView$4;->this$0:Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->invalidate()V

    return-void
.end method
