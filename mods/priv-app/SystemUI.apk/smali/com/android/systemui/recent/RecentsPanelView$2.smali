.class Lcom/android/systemui/recent/RecentsPanelView$2;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/RecentsPanelView;->handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;

.field final synthetic val$selectedView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentsPanelView$2;->val$selectedView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1    # Landroid/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f0e0150

    if-ne v3, v4, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    # getter for: Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;
    invoke-static {v2}, Lcom/android/systemui/recent/RecentsPanelView;->access$900(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentsPanelView$RecentsScrollView;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$2;->val$selectedView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    :goto_0
    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const v4, 0x7f0e0151

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$2;->val$selectedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v4, v0, Lcom/android/systemui/recent/TaskDescription;->packageName:Ljava/lang/String;

    iget v5, v0, Lcom/android/systemui/recent/TaskDescription;->userId:I

    # invokes: Lcom/android/systemui/recent/RecentsPanelView;->startApplicationDetailsActivity(Ljava/lang/String;I)V
    invoke-static {v3, v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->access$1000(Lcom/android/systemui/recent/RecentsPanelView;Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView$2;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/recent/RecentsPanelView;->show(Z)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Oops, no tag on view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView$2;->val$selectedView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
