.class Lcom/android/incallui/CallCardFragment$5$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment$5;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/CallCardFragment$5;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$5$1;->this$1:Lcom/android/incallui/CallCardFragment$5;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$5$1;->this$1:Lcom/android/incallui/CallCardFragment$5;

    iget-boolean v0, v0, Lcom/android/incallui/CallCardFragment$5;->val$visible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$5$1;->this$1:Lcom/android/incallui/CallCardFragment$5;

    iget-object v0, v0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->access$200(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$5$1;->this$1:Lcom/android/incallui/CallCardFragment$5;

    iget-boolean v0, v0, Lcom/android/incallui/CallCardFragment$5;->val$visible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$5$1;->this$1:Lcom/android/incallui/CallCardFragment$5;

    iget-object v0, v0, Lcom/android/incallui/CallCardFragment$5;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/CallCardFragment;->access$200(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
