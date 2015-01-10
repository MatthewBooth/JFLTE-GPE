.class final Lcom/android/systemui/qs/tiles/CastTile$Callback;
.super Ljava/lang/Object;
.source "CastTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CastController$Callback;
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CastTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CastTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/CastTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CastTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CastTile;Lcom/android/systemui/qs/tiles/CastTile$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/qs/tiles/CastTile;
    .param p2    # Lcom/android/systemui/qs/tiles/CastTile$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CastTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/CastTile;)V

    return-void
.end method


# virtual methods
.method public onCastDevicesChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    # invokes: Lcom/android/systemui/qs/tiles/CastTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->access$300(Lcom/android/systemui/qs/tiles/CastTile;)V

    return-void
.end method

.method public onKeyguardChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CastTile$Callback;->this$0:Lcom/android/systemui/qs/tiles/CastTile;

    # invokes: Lcom/android/systemui/qs/tiles/CastTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CastTile;->access$400(Lcom/android/systemui/qs/tiles/CastTile;)V

    return-void
.end method
