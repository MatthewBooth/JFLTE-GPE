.class Lcom/android/systemui/statusbar/KeyguardAffordanceView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardAffordanceView;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$3;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardAffordanceView$3;->this$0:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/KeyguardAffordanceView;->mScaleAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->access$202(Lcom/android/systemui/statusbar/KeyguardAffordanceView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
