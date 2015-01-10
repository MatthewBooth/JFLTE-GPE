.class Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "AirplaneModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AirplaneModeTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0
    .param p2    # Landroid/content/Context;
    .param p3    # Landroid/os/Handler;
    .param p4    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/AirplaneModeTile$1;->this$0:Lcom/android/systemui/qs/tiles/AirplaneModeTile;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    # invokes: Lcom/android/systemui/qs/tiles/AirplaneModeTile;->handleRefreshState(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/AirplaneModeTile;->access$000(Lcom/android/systemui/qs/tiles/AirplaneModeTile;Ljava/lang/Object;)V

    return-void
.end method
