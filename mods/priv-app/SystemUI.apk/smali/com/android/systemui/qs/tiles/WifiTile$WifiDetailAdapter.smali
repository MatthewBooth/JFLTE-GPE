.class final Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;
.implements Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiDetailAdapter"
.end annotation


# instance fields
.field private mAccessPoints:[Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;

.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;Lcom/android/systemui/qs/tiles/WifiTile$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/qs/tiles/WifiTile;
    .param p2    # Lcom/android/systemui/qs/tiles/WifiTile$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/WifiTile;)V

    return-void
.end method

.method private updateItems()V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;

    array-length v4, v4

    new-array v3, v4, [Lcom/android/systemui/qs/QSDetailItems$Item;

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;

    aget-object v0, v4, v1

    new-instance v2, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v2}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    iput-object v0, v2, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->iconId:I

    iput v4, v2, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->ssid:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/String;

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->isConnected:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1300(Lcom/android/systemui/qs/tiles/WifiTile;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b00ff

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/String;

    :cond_1
    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v4, v3}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    goto :goto_0
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/view/View;
    .param p3    # Landroid/view/ViewGroup;

    const/4 v1, 0x1

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1100(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createDetailView convertView="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$900(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->scanForAccessPoints()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->fireScanStateChanged(Z)V

    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string v1, "Wifi"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const v1, 0x7f0200ad

    const v2, 0x7f0b00f2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(II)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateItems()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1200(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->setItemsVisible(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->WIFI_SETTINGS:Landroid/content/Intent;
    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiTile;->access$500()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()I
    .locals 1

    const v0, 0x7f0b00ee

    return v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mState:Lcom/android/systemui/qs/QSTile$State;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$600(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$SignalState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$SignalState;->enabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onAccessPointsChanged([Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;)V
    .locals 2
    .param p1    # [Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mAccessPoints:[Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->updateItems()V

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->fireScanStateChanged(Z)V

    :cond_0
    return-void
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 3
    .param p1    # Lcom/android/systemui/qs/QSDetailItems$Item;

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;->isConnected:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$900(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->connect(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPoint;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/tiles/WifiTile;->showDetail(Z)V

    goto :goto_0
.end method

.method public onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 0
    .param p1    # Lcom/android/systemui/qs/QSDetailItems$Item;

    return-void
.end method

.method public setItemsVisible(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetailItems;->setItemsVisible(Z)V

    goto :goto_0
.end method

.method public setToggleState(Z)V
    .locals 3
    .param p1    # Z

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/WifiTile;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$800(Lcom/android/systemui/qs/tiles/WifiTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setToggleState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    # getter for: Lcom/android/systemui/qs/tiles/WifiTile;->mController:Lcom/android/systemui/statusbar/policy/NetworkController;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$900(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController;->setWifiEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tiles/WifiTile;->showDetail(Z)V

    return-void
.end method
