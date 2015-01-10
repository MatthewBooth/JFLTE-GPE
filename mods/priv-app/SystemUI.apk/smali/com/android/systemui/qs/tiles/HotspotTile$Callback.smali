.class final Lcom/android/systemui/qs/tiles/HotspotTile$Callback;
.super Ljava/lang/Object;
.source "HotspotTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/HotspotController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/HotspotTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/HotspotTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/HotspotTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/HotspotTile;Lcom/android/systemui/qs/tiles/HotspotTile$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/qs/tiles/HotspotTile;
    .param p2    # Lcom/android/systemui/qs/tiles/HotspotTile$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/HotspotTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    return-void
.end method


# virtual methods
.method public onHotspotChanged(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/HotspotTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/HotspotTile;

    # invokes: Lcom/android/systemui/qs/tiles/HotspotTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/HotspotTile;->access$100(Lcom/android/systemui/qs/tiles/HotspotTile;)V

    return-void
.end method
