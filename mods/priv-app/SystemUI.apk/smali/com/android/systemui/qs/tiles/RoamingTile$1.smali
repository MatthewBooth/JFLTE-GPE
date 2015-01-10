.class Lcom/android/systemui/qs/tiles/RoamingTile$1;
.super Landroid/content/BroadcastReceiver;
.source "RoamingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/RoamingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/RoamingTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/RoamingTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RoamingTile$1;->this$0:Lcom/android/systemui/qs/tiles/RoamingTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "subscription"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/RoamingTile$1;->this$0:Lcom/android/systemui/qs/tiles/RoamingTile;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/RoamingTile;->onRoamingVisibleChanged()V

    :cond_0
    return-void
.end method
