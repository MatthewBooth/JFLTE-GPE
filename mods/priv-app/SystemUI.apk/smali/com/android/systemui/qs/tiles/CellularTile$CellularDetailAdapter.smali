.class final Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;
.super Ljava/lang/Object;
.source "CellularTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CellularTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CellularDetailAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CellularTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;Lcom/android/systemui/qs/tiles/CellularTile$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/qs/tiles/CellularTile;
    .param p2    # Lcom/android/systemui/qs/tiles/CellularTile$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/CellularTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    move-object v2, p2

    :goto_0
    check-cast v2, Lcom/android/systemui/qs/tiles/DataUsageDetailView;

    move-object v1, v2

    check-cast v1, Lcom/android/systemui/qs/tiles/DataUsageDetailView;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/CellularTile;->access$400(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->getDataUsageInfo()Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/qs/tiles/CellularTile;->access$600(Lcom/android/systemui/qs/tiles/CellularTile;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/tiles/DataUsageDetailView;->bind(Lcom/android/systemui/statusbar/policy/NetworkController$DataUsageInfo;)V

    goto :goto_1
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->CELLULAR_SETTINGS:Landroid/content/Intent;
    invoke-static {}, Lcom/android/systemui/qs/tiles/CellularTile;->access$500()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    const v0, 0x7f0b0105

    return v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$400(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isMobileDataSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$400(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->isMobileDataEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/CellularTile;->fireToggleStateChanged(Z)V

    return-void
.end method

.method public setToggleState(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$400(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->setMobileDataEnabled(Z)V

    return-void
.end method
