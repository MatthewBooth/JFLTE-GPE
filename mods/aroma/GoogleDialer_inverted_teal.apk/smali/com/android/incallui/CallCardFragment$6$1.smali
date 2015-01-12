.class Lcom/android/incallui/CallCardFragment$6$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment$6;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/CallCardFragment$6;

.field final synthetic val$listener:Lcom/android/incallui/CallCardFragment$LayoutIgnoringListener;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment$6;Lcom/android/incallui/CallCardFragment$LayoutIgnoringListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$6$1;->this$1:Lcom/android/incallui/CallCardFragment$6;

    iput-object p2, p0, Lcom/android/incallui/CallCardFragment$6$1;->val$listener:Lcom/android/incallui/CallCardFragment$LayoutIgnoringListener;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$6$1;->this$1:Lcom/android/incallui/CallCardFragment$6;

    iget-object v0, v0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$6$1;->val$listener:Lcom/android/incallui/CallCardFragment$LayoutIgnoringListener;

    # invokes: Lcom/android/incallui/CallCardFragment;->setViewStatePostAnimation(Landroid/view/View$OnLayoutChangeListener;)V
    invoke-static {v0, v1}, Lcom/android/incallui/CallCardFragment;->access$1500(Lcom/android/incallui/CallCardFragment;Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
