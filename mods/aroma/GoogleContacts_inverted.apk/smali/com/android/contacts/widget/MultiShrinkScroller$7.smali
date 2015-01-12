.class Lcom/android/contacts/widget/MultiShrinkScroller$7;
.super Ljava/lang/Object;
.source "MultiShrinkScroller.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/widget/MultiShrinkScroller;->scrollUpForEntranceAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

.field final synthetic val$desiredValue:I


# direct methods
.method constructor <init>(Lcom/android/contacts/widget/MultiShrinkScroller;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$7;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    iput p2, p0, Lcom/android/contacts/widget/MultiShrinkScroller$7;->val$desiredValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1    # Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$7;->val$desiredValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$7;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # getter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;
    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$100(Lcom/android/contacts/widget/MultiShrinkScroller;)Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$7;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # getter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;
    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$100(Lcom/android/contacts/widget/MultiShrinkScroller;)Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;->onEntranceAnimationDone()V

    :cond_0
    return-void
.end method
