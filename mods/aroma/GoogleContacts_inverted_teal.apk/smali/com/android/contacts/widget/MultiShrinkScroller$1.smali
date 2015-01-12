.class Lcom/android/contacts/widget/MultiShrinkScroller$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiShrinkScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/widget/MultiShrinkScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/widget/MultiShrinkScroller;


# direct methods
.method constructor <init>(Lcom/android/contacts/widget/MultiShrinkScroller;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$1;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1    # Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$1;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # invokes: Lcom/android/contacts/widget/MultiShrinkScroller;->getScrollUntilOffBottom()I
    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$000(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$1;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # getter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;
    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$100(Lcom/android/contacts/widget/MultiShrinkScroller;)Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$1;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # getter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;
    invoke-static {v0}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$100(Lcom/android/contacts/widget/MultiShrinkScroller;)Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;->onScrolledOffBottom()V

    iget-object v0, p0, Lcom/android/contacts/widget/MultiShrinkScroller$1;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    const/4 v1, 0x0

    # setter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mListener:Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;
    invoke-static {v0, v1}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$102(Lcom/android/contacts/widget/MultiShrinkScroller;Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;)Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;

    :cond_0
    return-void
.end method
