.class Lcom/android/systemui/qs/tiles/IntentTile$1;
.super Landroid/content/BroadcastReceiver;
.source "IntentTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/IntentTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/IntentTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/IntentTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/IntentTile$1;->this$0:Lcom/android/systemui/qs/tiles/IntentTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/IntentTile$1;->this$0:Lcom/android/systemui/qs/tiles/IntentTile;

    # invokes: Lcom/android/systemui/qs/tiles/IntentTile;->refreshState(Ljava/lang/Object;)V
    invoke-static {v0, p2}, Lcom/android/systemui/qs/tiles/IntentTile;->access$000(Lcom/android/systemui/qs/tiles/IntentTile;Ljava/lang/Object;)V

    return-void
.end method
