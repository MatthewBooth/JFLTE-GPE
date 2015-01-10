.class final Lcom/android/systemui/recent/RecentsPanelView$OnLongClickDelegate;
.super Ljava/lang/Object;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/RecentsPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnLongClickDelegate"
.end annotation


# instance fields
.field mOtherView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/recent/RecentsPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V
    .locals 0
    .param p2    # Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView$OnLongClickDelegate;->this$0:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/recent/RecentsPanelView$OnLongClickDelegate;->mOtherView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView$OnLongClickDelegate;->mOtherView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    return v0
.end method
