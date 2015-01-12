.class Lcom/android/dialer/calllog/CallLogFragment$4;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogFragment;->onItemExpanded(Lcom/android/dialer/calllog/CallLogListItemView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/calllog/CallLogFragment;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$startingHeight:I

.field final synthetic val$view:Lcom/android/dialer/calllog/CallLogListItemView;

.field final synthetic val$viewHolder:Lcom/android/dialer/calllog/CallLogListItemViews;


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogFragment;Landroid/view/ViewTreeObserver;Lcom/android/dialer/calllog/CallLogListItemView;ILcom/android/dialer/calllog/CallLogListItemViews;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    iput-object p2, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$observer:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$view:Lcom/android/dialer/calllog/CallLogListItemView;

    iput p4, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$startingHeight:I

    iput-object p5, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$viewHolder:Lcom/android/dialer/calllog/CallLogListItemViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 15

    const/4 v14, 0x2

    const/4 v0, 0x1

    const/high16 v13, 0x3f800000

    const/4 v12, 0x0

    const/4 v10, 0x0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$view:Lcom/android/dialer/calllog/CallLogListItemView;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogListItemView;->getHeight()I

    move-result v8

    iget v1, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$startingHeight:I

    sub-int v1, v8, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v1, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$startingHeight:I

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v1, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$startingHeight:I

    if-le v8, v1, :cond_2

    move v4, v0

    :goto_0
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$view:Lcom/android/dialer/calllog/CallLogListItemView;

    invoke-virtual {v1}, Lcom/android/dialer/calllog/CallLogListItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v11, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$startingHeight:I

    iput v11, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-nez v4, :cond_1

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$viewHolder:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v1, v1, Lcom/android/dialer/calllog/CallLogListItemViews;->actionsView:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$viewHolder:Lcom/android/dialer/calllog/CallLogListItemViews;

    if-nez v4, :cond_3

    :goto_1
    invoke-static {v1, v0}, Lcom/android/dialer/calllog/CallLogAdapter;->expandVoicemailTranscriptionView(Lcom/android/dialer/calllog/CallLogListItemViews;Z)V

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$viewHolder:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->actionsView:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$viewHolder:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->actionsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # getter for: Lcom/android/dialer/calllog/CallLogFragment;->mFadeInStartDelay:I
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$300(Lcom/android/dialer/calllog/CallLogFragment;)I

    move-result v1

    int-to-long v12, v1

    invoke-virtual {v0, v12, v13}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # getter for: Lcom/android/dialer/calllog/CallLogFragment;->mFadeInDuration:I
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$200(Lcom/android/dialer/calllog/CallLogFragment;)I

    move-result v1

    int-to-long v12, v1

    invoke-virtual {v0, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_2
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$view:Lcom/android/dialer/calllog/CallLogListItemView;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogListItemView;->requestLayout()V

    if-eqz v4, :cond_5

    new-array v0, v14, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    :goto_3
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$view:Lcom/android/dialer/calllog/CallLogListItemView;

    invoke-virtual {v0, v9}, Lcom/android/dialer/calllog/CallLogListItemView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    iget v0, v9, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_6

    iget v0, v9, Landroid/graphics/Rect;->top:I

    neg-int v6, v0

    :goto_4
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$4$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/dialer/calllog/CallLogFragment$4$1;-><init>(Lcom/android/dialer/calllog/CallLogFragment$4;IIZLandroid/widget/ListView;I)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/dialer/calllog/CallLogFragment$4$2;

    invoke-direct {v0, p0, v4}, Lcom/android/dialer/calllog/CallLogFragment$4$2;-><init>(Lcom/android/dialer/calllog/CallLogFragment$4;Z)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # getter for: Lcom/android/dialer/calllog/CallLogFragment;->mExpandCollapseDuration:I
    invoke-static {v0}, Lcom/android/dialer/calllog/CallLogFragment;->access$600(Lcom/android/dialer/calllog/CallLogFragment;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    return v10

    :cond_2
    move v4, v10

    goto/16 :goto_0

    :cond_3
    move v0, v10

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$viewHolder:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->actionsView:Landroid/view/View;

    invoke-virtual {v0, v13}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$viewHolder:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v0, v0, Lcom/android/dialer/calllog/CallLogListItemViews;->actionsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # getter for: Lcom/android/dialer/calllog/CallLogFragment;->mFadeOutDuration:I
    invoke-static {v1}, Lcom/android/dialer/calllog/CallLogFragment;->access$400(Lcom/android/dialer/calllog/CallLogFragment;)I

    move-result v1

    int-to-long v12, v1

    invoke-virtual {v0, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    :cond_5
    new-array v0, v14, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4;->val$view:Lcom/android/dialer/calllog/CallLogListItemView;

    invoke-virtual {v0}, Lcom/android/dialer/calllog/CallLogListItemView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int v6, v0, v1

    goto :goto_4

    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    :array_1
    .array-data 4
        0x3f800000
        0x0
    .end array-data
.end method
