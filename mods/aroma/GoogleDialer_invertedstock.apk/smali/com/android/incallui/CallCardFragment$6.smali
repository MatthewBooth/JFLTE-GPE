.class Lcom/android/incallui/CallCardFragment$6;
.super Ljava/lang/Object;
.source "CallCardFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->animateForNewOutgoingCall(Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$startPoint:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;Landroid/view/ViewGroup;Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    iput-object p2, p0, Lcom/android/incallui/CallCardFragment$6;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/incallui/CallCardFragment$6;->val$startPoint:Landroid/graphics/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v0, Lcom/android/incallui/CallCardFragment$LayoutIgnoringListener;

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    const/4 v6, 0x0

    invoke-direct {v0, v5, v6}, Lcom/android/incallui/CallCardFragment$LayoutIgnoringListener;-><init>(Lcom/android/incallui/CallCardFragment;Lcom/android/incallui/CallCardFragment$1;)V

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;
    invoke-static {v5}, Lcom/android/incallui/CallCardFragment;->access$200(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;
    invoke-static {v5}, Lcom/android/incallui/CallCardFragment;->access$200(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;
    invoke-static {v5}, Lcom/android/incallui/CallCardFragment;->access$200(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/CallCardFragment$6;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBottom(I)V

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;
    invoke-static {v5}, Lcom/android/incallui/CallCardFragment;->access$500(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;
    invoke-static {v5}, Lcom/android/incallui/CallCardFragment;->access$600(Lcom/android/incallui/CallCardFragment;)Lcom/android/contacts/common/widget/FloatingActionButtonController;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/CallCardFragment$6;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setScreenWidth(I)V

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mCallButtonsContainer:Landroid/view/View;
    invoke-static {v5}, Lcom/android/incallui/CallCardFragment;->access$700(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/incallui/CallCardFragment;->access$800(Lcom/android/incallui/CallCardFragment;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/incallui/CallCardFragment;->access$900(Lcom/android/incallui/CallCardFragment;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/incallui/CallCardFragment;->access$1000(Lcom/android/incallui/CallCardFragment;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mCallNumberAndLabel:Landroid/view/View;
    invoke-static {v5}, Lcom/android/incallui/CallCardFragment;->access$1100(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v6, p0, Lcom/android/incallui/CallCardFragment$6;->val$startPoint:Landroid/graphics/Point;

    # invokes: Lcom/android/incallui/CallCardFragment;->getRevealAnimator(Landroid/graphics/Point;)Landroid/animation/Animator;
    invoke-static {v5, v6}, Lcom/android/incallui/CallCardFragment;->access$1200(Lcom/android/incallui/CallCardFragment;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object v3

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v6, p0, Lcom/android/incallui/CallCardFragment$6;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    # invokes: Lcom/android/incallui/CallCardFragment;->getShrinkAnimator(II)Landroid/animation/Animator;
    invoke-static {v5, v6, v2}, Lcom/android/incallui/CallCardFragment;->access$1300(Lcom/android/incallui/CallCardFragment;II)Landroid/animation/Animator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    # setter for: Lcom/android/incallui/CallCardFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v5, v6}, Lcom/android/incallui/CallCardFragment;->access$1402(Lcom/android/incallui/CallCardFragment;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v5}, Lcom/android/incallui/CallCardFragment;->access$1400(Lcom/android/incallui/CallCardFragment;)Landroid/animation/AnimatorSet;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/animation/Animator;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v5}, Lcom/android/incallui/CallCardFragment;->access$1400(Lcom/android/incallui/CallCardFragment;)Landroid/animation/AnimatorSet;

    move-result-object v5

    new-instance v6, Lcom/android/incallui/CallCardFragment$6$1;

    invoke-direct {v6, p0, v0}, Lcom/android/incallui/CallCardFragment$6$1;-><init>(Lcom/android/incallui/CallCardFragment$6;Lcom/android/incallui/CallCardFragment$LayoutIgnoringListener;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mAnimatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v5}, Lcom/android/incallui/CallCardFragment;->access$1400(Lcom/android/incallui/CallCardFragment;)Landroid/animation/AnimatorSet;

    move-result-object v5

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method
