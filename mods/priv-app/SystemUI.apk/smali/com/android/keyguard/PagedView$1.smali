.class Lcom/android/keyguard/PagedView$1;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PagedView;

.field final synthetic val$dragViewIndex:I

.field final synthetic val$pageUnderPointIndex:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/PagedView;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iput p2, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    iput p3, p0, Lcom/android/keyguard/PagedView$1;->val$dragViewIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v14, 0x0

    iget-object v10, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v11, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget v12, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v11, v12}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v11

    iget-object v12, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget v13, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v12, v13}, Lcom/android/keyguard/PagedView;->getRelativeChildOffset(I)I

    move-result v12

    sub-int/2addr v11, v12

    int-to-float v11, v11

    # setter for: Lcom/android/keyguard/PagedView;->mDownScrollX:F
    invoke-static {v10, v11}, Lcom/android/keyguard/PagedView;->access$002(Lcom/android/keyguard/PagedView;F)F

    iget-object v10, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget v11, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v10, v11}, Lcom/android/keyguard/PagedView;->snapToPage(I)V

    iget v10, p0, Lcom/android/keyguard/PagedView$1;->val$dragViewIndex:I

    iget v11, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    if-ge v10, v11, :cond_1

    move v5, v8

    :goto_0
    iget v10, p0, Lcom/android/keyguard/PagedView$1;->val$dragViewIndex:I

    iget v11, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    if-ge v10, v11, :cond_2

    iget v10, p0, Lcom/android/keyguard/PagedView$1;->val$dragViewIndex:I

    add-int/lit8 v2, v10, 0x1

    :goto_1
    iget v10, p0, Lcom/android/keyguard/PagedView$1;->val$dragViewIndex:I

    iget v11, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    if-le v10, v11, :cond_3

    iget v10, p0, Lcom/android/keyguard/PagedView$1;->val$dragViewIndex:I

    add-int/lit8 v6, v10, -0x1

    :goto_2
    move v1, v2

    :goto_3
    if-gt v1, v6, :cond_4

    iget-object v10, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v10, v1}, Lcom/android/keyguard/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    iget-object v10, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v10}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v10

    iget-object v11, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v11, v1}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v11

    add-int v4, v10, v11

    iget-object v10, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    invoke-virtual {v10}, Lcom/android/keyguard/PagedView;->getViewportOffsetX()I

    move-result v10

    iget-object v11, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    add-int v12, v1, v5

    invoke-virtual {v11, v12}, Lcom/android/keyguard/PagedView;->getChildOffset(I)I

    move-result v11

    add-int v3, v10, v11

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sub-int v10, v4, v3

    int-to-float v10, v10

    invoke-virtual {v7, v10}, Landroid/view/View;->setTranslationX(F)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v10, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget v10, v10, Lcom/android/keyguard/PagedView;->REORDERING_REORDER_REPOSITION_DURATION:I

    int-to-long v10, v10

    invoke-virtual {v0, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v10, v9, [Landroid/animation/Animator;

    const-string v11, "translationX"

    new-array v12, v9, [F

    const/4 v13, 0x0

    aput v13, v12, v14

    invoke-static {v7, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    aput-object v11, v10, v14

    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {v7, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    move v5, v9

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    goto :goto_2

    :cond_4
    iget-object v9, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v10, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v10, v10, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v9, v10}, Lcom/android/keyguard/PagedView;->removeView(Landroid/view/View;)V

    iget-object v9, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v10, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v10, v10, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    invoke-virtual {v9, v10, v14}, Lcom/android/keyguard/PagedView;->onRemoveView(Landroid/view/View;Z)V

    iget-object v9, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v10, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v10, v10, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    iget v11, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v9, v10, v11}, Lcom/android/keyguard/PagedView;->addView(Landroid/view/View;I)V

    iget-object v9, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v10, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    iget-object v10, v10, Lcom/android/keyguard/PagedView;->mDragView:Landroid/view/View;

    iget v11, p0, Lcom/android/keyguard/PagedView$1;->val$pageUnderPointIndex:I

    invoke-virtual {v9, v10, v11}, Lcom/android/keyguard/PagedView;->onAddView(Landroid/view/View;I)V

    iget-object v9, p0, Lcom/android/keyguard/PagedView$1;->this$0:Lcom/android/keyguard/PagedView;

    # setter for: Lcom/android/keyguard/PagedView;->mSidePageHoverIndex:I
    invoke-static {v9, v8}, Lcom/android/keyguard/PagedView;->access$102(Lcom/android/keyguard/PagedView;I)I

    return-void
.end method
