.class Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;
.super Lcom/android/dialer/widget/ViewDragHelper$Callback;
.source "OverlappingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/widget/OverlappingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;


# direct methods
.method private constructor <init>(Lcom/android/dialer/widget/OverlappingPaneLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    invoke-direct {p0}, Lcom/android/dialer/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dialer/widget/OverlappingPaneLayout;Lcom/android/dialer/widget/OverlappingPaneLayout$1;)V
    .locals 0
    .param p1    # Lcom/android/dialer/widget/OverlappingPaneLayout;
    .param p2    # Lcom/android/dialer/widget/OverlappingPaneLayout$1;

    invoke-direct {p0, p1}, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;-><init>(Lcom/android/dialer/widget/OverlappingPaneLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 7
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I

    iget-object v5, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;
    invoke-static {v5}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$400(Lcom/android/dialer/widget/OverlappingPaneLayout;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;

    sub-int v3, p2, p3

    iget-object v5, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    invoke-virtual {v5}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getPaddingTop()I

    move-result v5

    iget v6, v1, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->topMargin:I

    add-int v4, v5, v6

    iget-object v5, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mPanelSlideCallbacks:Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;
    invoke-static {v5}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$800(Lcom/android/dialer/widget/OverlappingPaneLayout;)Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;->isScrollableChildUnscrolled()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsInNestedScroll:Z
    invoke-static {v5}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1600(Lcom/android/dialer/widget/OverlappingPaneLayout;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideRange:I
    invoke-static {v5}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1100(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v5

    :goto_0
    add-int v0, v4, v5

    if-le v3, v0, :cond_1

    iget-object v5, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideRange:I
    invoke-static {v5}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1100(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    invoke-static {p2, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    :cond_2
    iget-object v5, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mIntermediateOffset:I
    invoke-static {v5}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1200(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v5

    goto :goto_0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideRange:I
    invoke-static {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1100(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v0

    return v0
.end method

.method public onEdgeDragStarted(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;
    invoke-static {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$200(Lcom/android/dialer/widget/OverlappingPaneLayout;)Lcom/android/dialer/widget/ViewDragHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$400(Lcom/android/dialer/widget/OverlappingPaneLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/dialer/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    return-void
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # I

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    invoke-virtual {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->setAllChildrenVisible()V

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 4
    .param p1    # I

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;
    invoke-static {v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$200(Lcom/android/dialer/widget/OverlappingPaneLayout;)Lcom/android/dialer/widget/ViewDragHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/widget/ViewDragHelper;->getViewDragState()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffset:F
    invoke-static {v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$300(Lcom/android/dialer/widget/OverlappingPaneLayout;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$400(Lcom/android/dialer/widget/OverlappingPaneLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->updateObscuredViewsVisibility(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$400(Lcom/android/dialer/widget/OverlappingPaneLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->dispatchOnPanelClosed(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # setter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mPreservedOpenState:Z
    invoke-static {v1, v3}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$502(Lcom/android/dialer/widget/OverlappingPaneLayout;Z)Z

    :cond_0
    :goto_0
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;
    invoke-static {v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$200(Lcom/android/dialer/widget/OverlappingPaneLayout;)Lcom/android/dialer/widget/ViewDragHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/widget/ViewDragHelper;->getVelocityMagnitude()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsInNestedFling:Z
    invoke-static {v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$600(Lcom/android/dialer/widget/OverlappingPaneLayout;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # setter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsInNestedFling:Z
    invoke-static {v1, v3}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$602(Lcom/android/dialer/widget/OverlappingPaneLayout;Z)Z

    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mInUpwardsPreFling:Z
    invoke-static {v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$700(Lcom/android/dialer/widget/OverlappingPaneLayout;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;
    invoke-static {v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$200(Lcom/android/dialer/widget/OverlappingPaneLayout;)Lcom/android/dialer/widget/ViewDragHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/widget/ViewDragHelper;->getVelocityMagnitude()I

    move-result v1

    neg-int v0, v1

    :goto_1
    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mPanelSlideCallbacks:Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;
    invoke-static {v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$800(Lcom/android/dialer/widget/OverlappingPaneLayout;)Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;->onPanelFlingReachesEdge(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideableView:Landroid/view/View;
    invoke-static {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$400(Lcom/android/dialer/widget/OverlappingPaneLayout;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->dispatchOnPanelOpened(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    const/4 v2, 0x1

    # setter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mPreservedOpenState:Z
    invoke-static {v1, v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$502(Lcom/android/dialer/widget/OverlappingPaneLayout;Z)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;
    invoke-static {v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$200(Lcom/android/dialer/widget/OverlappingPaneLayout;)Lcom/android/dialer/widget/ViewDragHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/dialer/widget/ViewDragHelper;->getVelocityMagnitude()I

    move-result v0

    goto :goto_1
.end method

.method public onViewFling(Landroid/view/View;FF)V
    .locals 12
    .param p1    # Landroid/view/View;
    .param p2    # F
    .param p3    # F

    const v4, 0x7fffffff

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;
    invoke-static {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$200(Lcom/android/dialer/widget/OverlappingPaneLayout;)Lcom/android/dialer/widget/ViewDragHelper;

    move-result-object v0

    float-to-int v1, p3

    invoke-virtual {v0, v1}, Lcom/android/dialer/widget/ViewDragHelper;->predictFlingYOffset(I)I

    move-result v11

    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gez v0, :cond_2

    neg-int v0, v11

    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffsetPx:I
    invoke-static {v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1000(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;
    invoke-static {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$200(Lcom/android/dialer/widget/OverlappingPaneLayout;)Lcom/android/dialer/widget/ViewDragHelper;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v3, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideRange:I
    invoke-static {v3}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1100(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v3

    float-to-int v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/dialer/widget/ViewDragHelper;->flingCapturedView(IIIII)V

    :goto_1
    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # setter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mInNestedPreScrollDownwards:Z
    invoke-static {v0, v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1302(Lcom/android/dialer/widget/OverlappingPaneLayout;Z)Z

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # setter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mInNestedPreScrollUpwards:Z
    invoke-static {v0, v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1402(Lcom/android/dialer/widget/OverlappingPaneLayout;Z)Z

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    invoke-virtual {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->invalidate()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # setter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsInNestedFling:Z
    invoke-static {v0, v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$602(Lcom/android/dialer/widget/OverlappingPaneLayout;Z)Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->onViewReleased(Landroid/view/View;FF)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffsetPx:I
    invoke-static {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1000(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v0

    add-int/2addr v0, v11

    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideRange:I
    invoke-static {v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1100(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v1

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mPanelSlideCallbacks:Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;
    invoke-static {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$800(Lcom/android/dialer/widget/OverlappingPaneLayout;)Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;->isScrollableChildUnscrolled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;
    invoke-static {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$200(Lcom/android/dialer/widget/OverlappingPaneLayout;)Lcom/android/dialer/widget/ViewDragHelper;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideRange:I
    invoke-static {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1100(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v9

    float-to-int v10, p3

    move v7, v2

    move v8, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/dialer/widget/ViewDragHelper;->flingCapturedView(IIIII)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffsetPx:I
    invoke-static {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1000(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v0

    add-int/2addr v0, v11

    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mIntermediateOffset:I
    invoke-static {v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1200(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffsetPx:I
    invoke-static {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1000(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mIntermediateOffset:I
    invoke-static {v1}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1200(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v1

    if-gt v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mPanelSlideCallbacks:Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;
    invoke-static {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$800(Lcom/android/dialer/widget/OverlappingPaneLayout;)Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;->isScrollableChildUnscrolled()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;
    invoke-static {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$200(Lcom/android/dialer/widget/OverlappingPaneLayout;)Lcom/android/dialer/widget/ViewDragHelper;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mIntermediateOffset:I
    invoke-static {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1200(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v9

    float-to-int v10, p3

    move v7, v2

    move v8, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/dialer/widget/ViewDragHelper;->flingCapturedView(IIIII)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # setter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsInNestedFling:Z
    invoke-static {v0, v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$602(Lcom/android/dialer/widget/OverlappingPaneLayout;Z)Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->onViewReleased(Landroid/view/View;FF)V

    goto/16 :goto_1
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # invokes: Lcom/android/dialer/widget/OverlappingPaneLayout;->onPanelDragged(I)V
    invoke-static {v0, p3}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$900(Lcom/android/dialer/widget/OverlappingPaneLayout;I)V

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    invoke-virtual {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->invalidate()V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 5
    .param p1    # Landroid/view/View;
    .param p2    # F
    .param p3    # F

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    invoke-virtual {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->getPaddingTop()I

    move-result v2

    iget v3, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->topMargin:I

    add-int v1, v2, v3

    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mInNestedPreScrollDownwards:Z
    invoke-static {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1300(Lcom/android/dialer/widget/OverlappingPaneLayout;)Z

    move-result v2

    if-nez v2, :cond_1

    cmpl-float v2, p3, v4

    if-lez v2, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffsetPx:I
    invoke-static {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1000(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mIntermediateOffset:I
    invoke-static {v3}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1200(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v3

    iget-object v4, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mReleaseScrollSlop:I
    invoke-static {v4}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1500(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v4

    add-int/2addr v3, v4

    if-le v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideRange:I
    invoke-static {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1100(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mDragHelper:Lcom/android/dialer/widget/ViewDragHelper;
    invoke-static {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$200(Lcom/android/dialer/widget/OverlappingPaneLayout;)Lcom/android/dialer/widget/ViewDragHelper;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/dialer/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    invoke-virtual {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->invalidate()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffsetPx:I
    invoke-static {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1000(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mReleaseScrollSlop:I
    invoke-static {v3}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1500(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v3

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mIntermediateOffset:I
    invoke-static {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1200(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mInNestedPreScrollUpwards:Z
    invoke-static {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1400(Lcom/android/dialer/widget/OverlappingPaneLayout;)Z

    move-result v2

    if-nez v2, :cond_5

    cmpg-float v2, p3, v4

    if-gez v2, :cond_7

    :cond_5
    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffsetPx:I
    invoke-static {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1000(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideRange:I
    invoke-static {v3}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1100(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v3

    iget-object v4, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mReleaseScrollSlop:I
    invoke-static {v4}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1500(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideRange:I
    invoke-static {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1100(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffsetPx:I
    invoke-static {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1000(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mIntermediateOffset:I
    invoke-static {v3}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1200(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v3

    iget-object v4, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mReleaseScrollSlop:I
    invoke-static {v4}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1500(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v4

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mIntermediateOffset:I
    invoke-static {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1200(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffsetPx:I
    invoke-static {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1000(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v2

    if-ltz v2, :cond_8

    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffsetPx:I
    invoke-static {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1000(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mIntermediateOffset:I
    invoke-static {v3}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1200(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_2

    :cond_8
    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mIntermediateOffset:I
    invoke-static {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1200(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffsetPx:I
    invoke-static {v3}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1000(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v3

    if-gt v2, v3, :cond_9

    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideOffsetPx:I
    invoke-static {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1000(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v2

    iget-object v3, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mIntermediateOffset:I
    invoke-static {v3}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1200(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v3

    iget-object v4, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideRange:I
    invoke-static {v4}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1100(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_9

    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mIntermediateOffset:I
    invoke-static {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1200(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v2

    add-int/2addr v1, v2

    goto/16 :goto_1

    :cond_9
    iget-object v2, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mSlideRange:I
    invoke-static {v2}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$1100(Lcom/android/dialer/widget/OverlappingPaneLayout;)I

    move-result v2

    add-int/2addr v1, v2

    goto/16 :goto_1
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # I

    iget-object v0, p0, Lcom/android/dialer/widget/OverlappingPaneLayout$DragHelperCallback;->this$0:Lcom/android/dialer/widget/OverlappingPaneLayout;

    # getter for: Lcom/android/dialer/widget/OverlappingPaneLayout;->mIsUnableToDrag:Z
    invoke-static {v0}, Lcom/android/dialer/widget/OverlappingPaneLayout;->access$100(Lcom/android/dialer/widget/OverlappingPaneLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;

    iget-boolean v0, v0, Lcom/android/dialer/widget/OverlappingPaneLayout$LayoutParams;->slideable:Z

    goto :goto_0
.end method
