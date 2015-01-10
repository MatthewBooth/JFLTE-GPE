.class Lcom/android/systemui/qs/tiles/DataTile$DataObserver;
.super Landroid/database/ContentObserver;
.source "DataTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DataTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/DataTile;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DataTile$DataObserver;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public endObserving()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataObserver;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DataTile;->access$500(Lcom/android/systemui/qs/tiles/DataTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1    # Z

    # getter for: Lcom/android/systemui/qs/tiles/DataTile;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/DataTile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataObserver;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DataTile;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DataTile;->access$100(Lcom/android/systemui/qs/tiles/DataTile;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data state change"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataObserver;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    # invokes: Lcom/android/systemui/qs/tiles/DataTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DataTile;->access$200(Lcom/android/systemui/qs/tiles/DataTile;)V

    return-void
.end method

.method public startObserving()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataObserver;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DataTile;->access$300(Lcom/android/systemui/qs/tiles/DataTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DataTile$DataObserver;->this$0:Lcom/android/systemui/qs/tiles/DataTile;

    # getter for: Lcom/android/systemui/qs/tiles/DataTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DataTile;->access$400(Lcom/android/systemui/qs/tiles/DataTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
