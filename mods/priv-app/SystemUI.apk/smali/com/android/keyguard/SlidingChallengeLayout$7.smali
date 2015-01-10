.class Lcom/android/keyguard/SlidingChallengeLayout$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SlidingChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/SlidingChallengeLayout;->showBouncer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/SlidingChallengeLayout;


# direct methods
.method constructor <init>(Lcom/android/keyguard/SlidingChallengeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/SlidingChallengeLayout$7;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/keyguard/SlidingChallengeLayout$7;->this$0:Lcom/android/keyguard/SlidingChallengeLayout;

    # getter for: Lcom/android/keyguard/SlidingChallengeLayout;->mScrimView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/keyguard/SlidingChallengeLayout;->access$000(Lcom/android/keyguard/SlidingChallengeLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
