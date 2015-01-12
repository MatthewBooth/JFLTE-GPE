.class Lcom/android/dialer/list/ListsFragment$1;
.super Ljava/lang/Object;
.source "ListsFragment.java"

# interfaces
.implements Lcom/android/dialer/widget/OverlappingPaneLayout$PanelSlideCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/list/ListsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/list/ListsFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/list/ListsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dialer/list/ListsFragment$1;->this$0:Lcom/android/dialer/list/ListsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isScrollableChildUnscrolled()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/dialer/list/ListsFragment$1;->this$0:Lcom/android/dialer/list/ListsFragment;

    # invokes: Lcom/android/dialer/list/ListsFragment;->getCurrentListView()Landroid/widget/AbsListView;
    invoke-static {v2}, Lcom/android/dialer/list/ListsFragment;->access$400(Lcom/android/dialer/list/ListsFragment;)Landroid/widget/AbsListView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v3

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onPanelClosed(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    # getter for: Lcom/android/dialer/list/ListsFragment;->DEBUG:Z
    invoke-static {}, Lcom/android/dialer/list/ListsFragment;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ListsFragment"

    const-string v1, "onPanelClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$1;->this$0:Lcom/android/dialer/list/ListsFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/dialer/list/ListsFragment;->mIsPanelOpen:Z
    invoke-static {v0, v1}, Lcom/android/dialer/list/ListsFragment;->access$302(Lcom/android/dialer/list/ListsFragment;Z)Z

    return-void
.end method

.method public onPanelFlingReachesEdge(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$1;->this$0:Lcom/android/dialer/list/ListsFragment;

    # invokes: Lcom/android/dialer/list/ListsFragment;->getCurrentListView()Landroid/widget/AbsListView;
    invoke-static {v0}, Lcom/android/dialer/list/ListsFragment;->access$400(Lcom/android/dialer/list/ListsFragment;)Landroid/widget/AbsListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$1;->this$0:Lcom/android/dialer/list/ListsFragment;

    # invokes: Lcom/android/dialer/list/ListsFragment;->getCurrentListView()Landroid/widget/AbsListView;
    invoke-static {v0}, Lcom/android/dialer/list/ListsFragment;->access$400(Lcom/android/dialer/list/ListsFragment;)Landroid/widget/AbsListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->fling(I)V

    :cond_0
    return-void
.end method

.method public onPanelOpened(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    # getter for: Lcom/android/dialer/list/ListsFragment;->DEBUG:Z
    invoke-static {}, Lcom/android/dialer/list/ListsFragment;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ListsFragment"

    const-string v1, "onPanelOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/list/ListsFragment$1;->this$0:Lcom/android/dialer/list/ListsFragment;

    const/4 v1, 0x1

    # setter for: Lcom/android/dialer/list/ListsFragment;->mIsPanelOpen:Z
    invoke-static {v0, v1}, Lcom/android/dialer/list/ListsFragment;->access$302(Lcom/android/dialer/list/ListsFragment;Z)Z

    return-void
.end method

.method public onPanelSlide(Landroid/view/View;F)V
    .locals 6
    .param p1    # Landroid/view/View;
    .param p2    # F

    const/high16 v4, 0x3f800000

    sub-float v1, v4, p2

    iget-object v4, p0, Lcom/android/dialer/list/ListsFragment$1;->this$0:Lcom/android/dialer/list/ListsFragment;

    # getter for: Lcom/android/dialer/list/ListsFragment;->mShortcutCardsListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/dialer/list/ListsFragment;->access$000(Lcom/android/dialer/list/ListsFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/dialer/list/ListsFragment$1;->this$0:Lcom/android/dialer/list/ListsFragment;

    # getter for: Lcom/android/dialer/list/ListsFragment;->mShortcutCardsListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/dialer/list/ListsFragment;->access$000(Lcom/android/dialer/list/ListsFragment;)Landroid/widget/ListView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;

    invoke-virtual {v3, v1}, Lcom/android/dialer/list/ShortcutCardsAdapter$SwipeableShortcutCard;->clipCard(F)V

    :cond_0
    iget-object v4, p0, Lcom/android/dialer/list/ListsFragment$1;->this$0:Lcom/android/dialer/list/ListsFragment;

    # getter for: Lcom/android/dialer/list/ListsFragment;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v4}, Lcom/android/dialer/list/ListsFragment;->access$100(Lcom/android/dialer/list/ListsFragment;)Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/dialer/list/ListsFragment$1;->this$0:Lcom/android/dialer/list/ListsFragment;

    # getter for: Lcom/android/dialer/list/ListsFragment;->mShortcutCardsListView:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/android/dialer/list/ListsFragment;->access$000(Lcom/android/dialer/list/ListsFragment;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-int v2, v4

    iget-object v4, p0, Lcom/android/dialer/list/ListsFragment$1;->this$0:Lcom/android/dialer/list/ListsFragment;

    # getter for: Lcom/android/dialer/list/ListsFragment;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v4}, Lcom/android/dialer/list/ListsFragment;->access$100(Lcom/android/dialer/list/ListsFragment;)Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getHeight()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v4, p0, Lcom/android/dialer/list/ListsFragment$1;->this$0:Lcom/android/dialer/list/ListsFragment;

    invoke-virtual {v4}, Lcom/android/dialer/list/ListsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/dialer/list/ListsFragment$HostInterface;

    iget-object v5, p0, Lcom/android/dialer/list/ListsFragment$1;->this$0:Lcom/android/dialer/list/ListsFragment;

    # getter for: Lcom/android/dialer/list/ListsFragment;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v5}, Lcom/android/dialer/list/ListsFragment;->access$100(Lcom/android/dialer/list/ListsFragment;)Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getHeight()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-interface {v4, v5}, Lcom/android/dialer/list/ListsFragment$HostInterface;->setActionBarHideOffset(I)V

    iget-object v4, p0, Lcom/android/dialer/list/ListsFragment$1;->this$0:Lcom/android/dialer/list/ListsFragment;

    # getter for: Lcom/android/dialer/list/ListsFragment;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v4}, Lcom/android/dialer/list/ListsFragment;->access$100(Lcom/android/dialer/list/ListsFragment;)Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->isShowing()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/dialer/list/ListsFragment$1;->this$0:Lcom/android/dialer/list/ListsFragment;

    # getter for: Lcom/android/dialer/list/ListsFragment;->mActionBar:Landroid/app/ActionBar;
    invoke-static {v4}, Lcom/android/dialer/list/ListsFragment;->access$100(Lcom/android/dialer/list/ListsFragment;)Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->show()V

    :cond_1
    return-void
.end method
