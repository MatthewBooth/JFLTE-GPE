.class Lcom/android/contacts/widget/MultiShrinkScroller$6;
.super Ljava/lang/Object;
.source "MultiShrinkScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/widget/MultiShrinkScroller;->initialize(Lcom/android/contacts/widget/MultiShrinkScroller$MultiShrinkScrollerListener;Z)V
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

    iput-object p1, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # getter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z
    invoke-static {v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$300(Lcom/android/contacts/widget/MultiShrinkScroller;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # getter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoViewContainer:Landroid/view/View;
    invoke-static {v6}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$500(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    # setter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I
    invoke-static {v5, v6}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$402(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # getter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I
    invoke-static {v6}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$400(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x3f000000

    mul-float/2addr v6, v7

    float-to-int v6, v6

    # setter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mIntermediateHeaderHeight:I
    invoke-static {v5, v6}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$602(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    :cond_0
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    move v0, v4

    :goto_0
    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v5

    :goto_1
    # setter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumPortraitHeaderHeight:I
    invoke-static {v6, v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$702(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # invokes: Lcom/android/contacts/widget/MultiShrinkScroller;->getMaximumScrollableHeaderHeight()I
    invoke-static {v6}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$800(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/contacts/widget/MultiShrinkScroller;->setHeaderHeight(I)V

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # getter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1000(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    # setter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderTextSize:I
    invoke-static {v5, v6}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$902(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # getter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mIsTwoPanel:Z
    invoke-static {v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$300(Lcom/android/contacts/widget/MultiShrinkScroller;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v6}, Lcom/android/contacts/widget/MultiShrinkScroller;->getHeight()I

    move-result v6

    # setter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I
    invoke-static {v5, v6}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$402(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # getter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I
    invoke-static {v6}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$400(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v6

    # setter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mMinimumHeaderHeight:I
    invoke-static {v5, v6}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1102(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # getter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I
    invoke-static {v6}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$400(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v6

    # setter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mIntermediateHeaderHeight:I
    invoke-static {v5, v6}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$602(Lcom/android/contacts/widget/MultiShrinkScroller;I)I

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    invoke-virtual {v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f100000

    invoke-virtual {v5, v6, v3, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # getter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoViewContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$500(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # getter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I
    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$400(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # getter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumHeaderHeight:I
    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$400(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # getter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoViewContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$500(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # getter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1000(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v4, 0x800053

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # getter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1000(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # invokes: Lcom/android/contacts/widget/MultiShrinkScroller;->calculateCollapsedLargeTitlePadding()V
    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1300(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # invokes: Lcom/android/contacts/widget/MultiShrinkScroller;->updateHeaderTextSizeAndMargin()V
    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1400(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # invokes: Lcom/android/contacts/widget/MultiShrinkScroller;->configureGradientViewHeights()V
    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1500(Lcom/android/contacts/widget/MultiShrinkScroller;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # getter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoViewContainer:Landroid/view/View;
    invoke-static {v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$500(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    goto/16 :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # getter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mLargeTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1000(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # getter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mPhotoViewContainer:Landroid/view/View;
    invoke-static {v5}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$500(Lcom/android/contacts/widget/MultiShrinkScroller;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/contacts/widget/MultiShrinkScroller$6;->this$0:Lcom/android/contacts/widget/MultiShrinkScroller;

    # getter for: Lcom/android/contacts/widget/MultiShrinkScroller;->mMaximumTitleMargin:I
    invoke-static {v6}, Lcom/android/contacts/widget/MultiShrinkScroller;->access$1200(Lcom/android/contacts/widget/MultiShrinkScroller;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_2
.end method
