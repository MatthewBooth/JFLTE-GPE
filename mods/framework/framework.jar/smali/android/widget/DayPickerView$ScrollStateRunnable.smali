.class public Landroid/widget/DayPickerView$ScrollStateRunnable;
.super Ljava/lang/Object;
.source "DayPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DayPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ScrollStateRunnable"
.end annotation


# instance fields
.field private mNewState:I

.field private mParent:Landroid/view/View;

.field final synthetic this$0:Landroid/widget/DayPickerView;


# direct methods
.method constructor <init>(Landroid/widget/DayPickerView;Landroid/view/View;)V
    .locals 0
    .param p2    # Landroid/view/View;

    iput-object p1, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->mParent:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public doScrollStateChange(Landroid/widget/AbsListView;I)V
    .locals 4
    .param p1    # Landroid/widget/AbsListView;
    .param p2    # I

    iget-object v0, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->mParent:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput p2, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->mNewState:I

    iget-object v0, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->mParent:Landroid/view/View;

    const-wide/16 v2, 0x28

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 12

    const/16 v11, 0xfa

    const/4 v6, 0x1

    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    iget v9, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->mNewState:I

    # setter for: Landroid/widget/DayPickerView;->mCurrentScrollState:I
    invoke-static {v8, v9}, Landroid/widget/DayPickerView;->access$002(Landroid/widget/DayPickerView;I)I

    const-string v8, "DayPickerView"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "DayPickerView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "new scroll state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->mNewState:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " old state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    # getter for: Landroid/widget/DayPickerView;->mPreviousScrollState:I
    invoke-static {v10}, Landroid/widget/DayPickerView;->access$100(Landroid/widget/DayPickerView;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->mNewState:I

    if-nez v8, :cond_6

    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    # getter for: Landroid/widget/DayPickerView;->mPreviousScrollState:I
    invoke-static {v8}, Landroid/widget/DayPickerView;->access$100(Landroid/widget/DayPickerView;)I

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    # getter for: Landroid/widget/DayPickerView;->mPreviousScrollState:I
    invoke-static {v8}, Landroid/widget/DayPickerView;->access$100(Landroid/widget/DayPickerView;)I

    move-result v8

    if-eq v8, v6, :cond_6

    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    iget v9, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->mNewState:I

    # setter for: Landroid/widget/DayPickerView;->mPreviousScrollState:I
    invoke-static {v8, v9}, Landroid/widget/DayPickerView;->access$102(Landroid/widget/DayPickerView;I)I

    const/4 v3, 0x0

    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    invoke-virtual {v8, v3}, Landroid/widget/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    if-gtz v8, :cond_1

    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v8, v3}, Landroid/widget/DayPickerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    invoke-virtual {v8}, Landroid/widget/DayPickerView;->getFirstVisiblePosition()I

    move-result v2

    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    invoke-virtual {v8}, Landroid/widget/DayPickerView;->getLastVisiblePosition()I

    move-result v4

    if-eqz v2, :cond_4

    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    invoke-virtual {v8}, Landroid/widget/DayPickerView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v4, v8, :cond_4

    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    invoke-virtual {v8}, Landroid/widget/DayPickerView;->getHeight()I

    move-result v8

    div-int/lit8 v5, v8, 0x2

    if-eqz v6, :cond_2

    # getter for: Landroid/widget/DayPickerView;->LIST_TOP_OFFSET:I
    invoke-static {}, Landroid/widget/DayPickerView;->access$200()I

    move-result v8

    if-ge v7, v8, :cond_2

    if-le v0, v5, :cond_5

    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    invoke-virtual {v8, v7, v11}, Landroid/widget/DayPickerView;->smoothScrollBy(II)V

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    invoke-virtual {v8, v0, v11}, Landroid/widget/DayPickerView;->smoothScrollBy(II)V

    goto :goto_1

    :cond_6
    iget-object v8, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->this$0:Landroid/widget/DayPickerView;

    iget v9, p0, Landroid/widget/DayPickerView$ScrollStateRunnable;->mNewState:I

    # setter for: Landroid/widget/DayPickerView;->mPreviousScrollState:I
    invoke-static {v8, v9}, Landroid/widget/DayPickerView;->access$102(Landroid/widget/DayPickerView;I)I

    goto :goto_1
.end method
