.class Lcom/android/systemui/qs/tiles/RoamingTile$RoamingObserver;
.super Landroid/database/ContentObserver;
.source "RoamingTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/RoamingTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/RoamingTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/RoamingTile;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RoamingTile$RoamingObserver;->this$0:Lcom/android/systemui/qs/tiles/RoamingTile;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public endObserving()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RoamingTile$RoamingObserver;->this$0:Lcom/android/systemui/qs/tiles/RoamingTile;

    # getter for: Lcom/android/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RoamingTile;->access$600(Lcom/android/systemui/qs/tiles/RoamingTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1    # Z

    # getter for: Lcom/android/systemui/qs/tiles/RoamingTile;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/qs/tiles/RoamingTile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RoamingTile$RoamingObserver;->this$0:Lcom/android/systemui/qs/tiles/RoamingTile;

    # getter for: Lcom/android/systemui/qs/tiles/RoamingTile;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RoamingTile;->access$100(Lcom/android/systemui/qs/tiles/RoamingTile;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "roaming is changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RoamingTile$RoamingObserver;->this$0:Lcom/android/systemui/qs/tiles/RoamingTile;

    # invokes: Lcom/android/systemui/qs/tiles/RoamingTile;->refreshState()V
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RoamingTile;->access$200(Lcom/android/systemui/qs/tiles/RoamingTile;)V

    return-void
.end method

.method public startObserving()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RoamingTile$RoamingObserver;->this$0:Lcom/android/systemui/qs/tiles/RoamingTile;

    # getter for: Lcom/android/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RoamingTile;->access$300(Lcom/android/systemui/qs/tiles/RoamingTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RoamingTile$RoamingObserver;->this$0:Lcom/android/systemui/qs/tiles/RoamingTile;

    # getter for: Lcom/android/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RoamingTile;->access$400(Lcom/android/systemui/qs/tiles/RoamingTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RoamingTile$RoamingObserver;->this$0:Lcom/android/systemui/qs/tiles/RoamingTile;

    # getter for: Lcom/android/systemui/qs/tiles/RoamingTile;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RoamingTile;->access$500(Lcom/android/systemui/qs/tiles/RoamingTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
