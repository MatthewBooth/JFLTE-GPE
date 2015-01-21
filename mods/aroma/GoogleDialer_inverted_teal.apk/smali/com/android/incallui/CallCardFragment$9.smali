.class Lcom/android/incallui/CallCardFragment$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->getShrinkAnimator(II)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$9;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1    # Landroid/animation/Animator;

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$9;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$9;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/incallui/CallCardFragment;->access$800(Lcom/android/incallui/CallCardFragment;)Landroid/widget/TextView;

    move-result-object v1

    # invokes: Lcom/android/incallui/CallCardFragment;->assignTranslateAnimation(Landroid/view/View;I)V
    invoke-static {v0, v1, v3}, Lcom/android/incallui/CallCardFragment;->access$1900(Lcom/android/incallui/CallCardFragment;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$9;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$9;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mCallStateIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/CallCardFragment;->access$2000(Lcom/android/incallui/CallCardFragment;)Landroid/widget/ImageView;

    move-result-object v1

    # invokes: Lcom/android/incallui/CallCardFragment;->assignTranslateAnimation(Landroid/view/View;I)V
    invoke-static {v0, v1, v3}, Lcom/android/incallui/CallCardFragment;->access$1900(Lcom/android/incallui/CallCardFragment;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$9;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$9;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/incallui/CallCardFragment;->access$900(Lcom/android/incallui/CallCardFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x2

    # invokes: Lcom/android/incallui/CallCardFragment;->assignTranslateAnimation(Landroid/view/View;I)V
    invoke-static {v0, v1, v2}, Lcom/android/incallui/CallCardFragment;->access$1900(Lcom/android/incallui/CallCardFragment;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$9;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$9;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mCallNumberAndLabel:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/CallCardFragment;->access$1100(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x3

    # invokes: Lcom/android/incallui/CallCardFragment;->assignTranslateAnimation(Landroid/view/View;I)V
    invoke-static {v0, v1, v2}, Lcom/android/incallui/CallCardFragment;->access$1900(Lcom/android/incallui/CallCardFragment;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$9;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$9;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/incallui/CallCardFragment;->access$1000(Lcom/android/incallui/CallCardFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    # invokes: Lcom/android/incallui/CallCardFragment;->assignTranslateAnimation(Landroid/view/View;I)V
    invoke-static {v0, v1, v2}, Lcom/android/incallui/CallCardFragment;->access$1900(Lcom/android/incallui/CallCardFragment;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$9;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$9;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mCallButtonsContainer:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/CallCardFragment;->access$700(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x5

    # invokes: Lcom/android/incallui/CallCardFragment;->assignTranslateAnimation(Landroid/view/View;I)V
    invoke-static {v0, v1, v2}, Lcom/android/incallui/CallCardFragment;->access$1900(Lcom/android/incallui/CallCardFragment;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$9;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mFloatingActionButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->access$2100(Lcom/android/incallui/CallCardFragment;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    return-void
.end method
