.class Lcom/android/systemui/recent/RecentsPanelView$3;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


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

.field final synthetic val$thumbnailView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    iput-object p2, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->val$thumbnailView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1    # Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->val$thumbnailView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$3;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/recent/RecentsPanelView;->mPopup:Landroid/widget/PopupMenu;
    invoke-static {v0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->access$1102(Lcom/android/systemui/recent/RecentsPanelView;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;

    return-void
.end method
