.class Lcom/android/dialer/calllog/CallLogFragment$4$1;
.super Ljava/lang/Object;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/calllog/CallLogFragment$4;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCurrentScroll:I

.field final synthetic this$1:Lcom/android/dialer/calllog/CallLogFragment$4;

.field final synthetic val$baseHeight:I

.field final synthetic val$distance:I

.field final synthetic val$isExpand:Z

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$scrollingNeeded:I


# direct methods
.method constructor <init>(Lcom/android/dialer/calllog/CallLogFragment$4;IIZLandroid/widget/ListView;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->this$1:Lcom/android/dialer/calllog/CallLogFragment$4;

    iput p2, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->val$distance:I

    iput p3, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->val$baseHeight:I

    iput-boolean p4, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->val$isExpand:Z

    iput-object p5, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->val$listView:Landroid/widget/ListView;

    iput p6, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->val$scrollingNeeded:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->mCurrentScroll:I

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1    # Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->this$1:Lcom/android/dialer/calllog/CallLogFragment$4;

    iget-object v3, v3, Lcom/android/dialer/calllog/CallLogFragment$4;->val$view:Lcom/android/dialer/calllog/CallLogListItemView;

    invoke-virtual {v3}, Lcom/android/dialer/calllog/CallLogListItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v5, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->val$distance:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->val$baseHeight:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->this$1:Lcom/android/dialer/calllog/CallLogFragment$4;

    iget-object v3, v3, Lcom/android/dialer/calllog/CallLogFragment$4;->this$0:Lcom/android/dialer/calllog/CallLogFragment;

    # getter for: Lcom/android/dialer/calllog/CallLogFragment;->mExpandedItemTranslationZ:F
    invoke-static {v3}, Lcom/android/dialer/calllog/CallLogFragment;->access$500(Lcom/android/dialer/calllog/CallLogFragment;)F

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    mul-float v2, v3, v4

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->this$1:Lcom/android/dialer/calllog/CallLogFragment$4;

    iget-object v3, v3, Lcom/android/dialer/calllog/CallLogFragment$4;->val$viewHolder:Lcom/android/dialer/calllog/CallLogListItemViews;

    iget-object v3, v3, Lcom/android/dialer/calllog/CallLogListItemViews;->callLogEntryView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setTranslationZ(F)V

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->this$1:Lcom/android/dialer/calllog/CallLogFragment$4;

    iget-object v3, v3, Lcom/android/dialer/calllog/CallLogFragment$4;->val$view:Lcom/android/dialer/calllog/CallLogListItemView;

    invoke-virtual {v3, v2}, Lcom/android/dialer/calllog/CallLogListItemView;->setTranslationZ(F)V

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->this$1:Lcom/android/dialer/calllog/CallLogFragment$4;

    iget-object v3, v3, Lcom/android/dialer/calllog/CallLogFragment$4;->val$view:Lcom/android/dialer/calllog/CallLogListItemView;

    invoke-virtual {v3}, Lcom/android/dialer/calllog/CallLogListItemView;->requestLayout()V

    iget-boolean v3, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->val$isExpand:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->val$listView:Landroid/widget/ListView;

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget v4, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->val$scrollingNeeded:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget v4, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->mCurrentScroll:I

    sub-int v0, v3, v4

    iget-object v3, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->val$listView:Landroid/widget/ListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/widget/ListView;->smoothScrollBy(II)V

    iget v3, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->mCurrentScroll:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/dialer/calllog/CallLogFragment$4$1;->mCurrentScroll:I

    :cond_0
    return-void
.end method
