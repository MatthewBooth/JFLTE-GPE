.class Lcom/android/systemui/qs/tiles/ApnTile$ApnObserver;
.super Landroid/database/ContentObserver;
.source "ApnTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ApnTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ApnTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/ApnTile;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ApnTile$ApnObserver;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public endObserving()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile$ApnObserver;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    # getter for: Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ApnTile;->access$400(Lcom/android/systemui/qs/tiles/ApnTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1    # Z
    .param p2    # Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile$ApnObserver;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    # invokes: Lcom/android/systemui/qs/tiles/ApnTile;->updateCurrentApn()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ApnTile;->access$000(Lcom/android/systemui/qs/tiles/ApnTile;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ApnTile$ApnObserver;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    # invokes: Lcom/android/systemui/qs/tiles/ApnTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/ApnTile;->access$100(Lcom/android/systemui/qs/tiles/ApnTile;)V

    return-void
.end method

.method public startObserving()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile$ApnObserver;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    # getter for: Lcom/android/systemui/qs/tiles/ApnTile;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ApnTile;->access$200(Lcom/android/systemui/qs/tiles/ApnTile;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ApnTile$ApnObserver;->this$0:Lcom/android/systemui/qs/tiles/ApnTile;

    # getter for: Lcom/android/systemui/qs/tiles/ApnTile;->PREFERAPN_URI:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ApnTile;->access$300(Lcom/android/systemui/qs/tiles/ApnTile;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "multi_sim_data_call"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
