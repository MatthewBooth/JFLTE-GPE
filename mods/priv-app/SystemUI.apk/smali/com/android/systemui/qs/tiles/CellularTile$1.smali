.class Lcom/android/systemui/qs/tiles/CellularTile$1;
.super Ljava/lang/Object;
.source "CellularTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CellularTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAirplaneModeEnabled:Z

.field private mWifiConnected:Z

.field private mWifiEnabled:Z

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CellularTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/CellularTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAirplaneModeChanged(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mAirplaneModeEnabled:Z

    return-void
.end method

.method public onMobileDataEnabled(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # getter for: Lcom/android/systemui/qs/tiles/CellularTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$300(Lcom/android/systemui/qs/tiles/CellularTile;)Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/CellularTile$CellularDetailAdapter;->setMobileDataEnabled(Z)V

    return-void
.end method

.method public onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1    # Z
    .param p2    # I
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # Z
    .param p6    # Z
    .param p7    # Ljava/lang/String;
    .param p8    # Ljava/lang/String;
    .param p9    # Z
    .param p10    # Z

    new-instance v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;-><init>(Lcom/android/systemui/qs/tiles/CellularTile$1;)V

    iput-boolean p1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabled:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mWifiEnabled:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiEnabled:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mWifiConnected:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->wifiConnected:Z

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mAirplaneModeEnabled:Z

    iput-boolean v1, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->airplaneModeEnabled:Z

    iput p2, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->mobileSignalIconId:I

    iput-object p3, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->signalContentDescription:Ljava/lang/String;

    iput p4, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataTypeIconId:I

    iput-object p7, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->dataContentDescription:Ljava/lang/String;

    iput-boolean p5, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityIn:Z

    iput-boolean p6, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->activityOut:Z

    iput-object p8, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->enabledDesc:Ljava/lang/String;

    iput-boolean p9, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->noSim:Z

    iput-boolean p10, v0, Lcom/android/systemui/qs/tiles/CellularTile$CallbackInfo;->isDataTypeIconWide:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->this$0:Lcom/android/systemui/qs/tiles/CellularTile;

    # invokes: Lcom/android/systemui/qs/tiles/CellularTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/CellularTile;->access$200(Lcom/android/systemui/qs/tiles/CellularTile;Ljava/lang/Object;)V

    return-void
.end method

.method public onWifiSignalChanged(ZZIZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Z
    .param p2    # Z
    .param p3    # I
    .param p4    # Z
    .param p5    # Z
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mWifiEnabled:Z

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/CellularTile$1;->mWifiConnected:Z

    return-void
.end method
