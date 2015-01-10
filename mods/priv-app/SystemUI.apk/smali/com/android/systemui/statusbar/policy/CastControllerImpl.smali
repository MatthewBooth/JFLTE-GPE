.class public Lcom/android/systemui/statusbar/policy/CastControllerImpl;
.super Ljava/lang/Object;
.source "CastControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CastController;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mCallbackRegistered:Z

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/CastController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDiscovering:Z

.field private final mDiscoveringLock:Ljava/lang/Object;

.field private final mMediaCallback:Landroid/media/MediaRouter$SimpleCallback;

.field private final mMediaRouter:Landroid/media/MediaRouter;

.field private mProjection:Landroid/media/projection/MediaProjectionInfo;

.field private final mProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

.field private final mProjectionLock:Ljava/lang/Object;

.field private final mProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field private final mRoutes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "CastController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscoveringLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaCallback:Landroid/media/MediaRouter$SimpleCallback;

    new-instance v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mContext:Landroid/content/Context;

    const-string v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    const-string v0, "media_projection"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionCallback:Landroid/media/projection/MediaProjectionManager$Callback;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/media/projection/MediaProjectionManager;->addCallback(Landroid/media/projection/MediaProjectionManager$Callback;Landroid/os/Handler;)V

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CastController"

    const-string v1, "new CastController()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/media/MediaRouter$RouteInfo;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/CastControllerImpl;)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->updateRemoteDisplays()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/CastControllerImpl;Landroid/media/projection/MediaProjectionInfo;Z)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/CastControllerImpl;
    .param p1    # Landroid/media/projection/MediaProjectionInfo;
    .param p2    # Z

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->setProjection(Landroid/media/projection/MediaProjectionInfo;Z)V

    return-void
.end method

.method private ensureTagExists(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p1    # Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter$RouteInfo;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private fireOnCastDevicesChanged()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/CastController$Callback;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->fireOnCastDevicesChanged(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fireOnCastDevicesChanged(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/policy/CastController$Callback;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/CastController$Callback;->onCastDevicesChanged()V

    return-void
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1    # Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_0
    const-string v4, "CastController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label found for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "CastController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error getting appName for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleDiscoveryChangeLocked()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbackRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbackRegistered:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscovering:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaCallback:Landroid/media/MediaRouter$SimpleCallback;

    invoke-virtual {v0, v3, v1, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbackRegistered:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaCallback:Landroid/media/MediaRouter$SimpleCallback;

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbackRegistered:Z

    goto :goto_0
.end method

.method private static routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;
    .locals 3
    .param p0    # Landroid/media/MediaRouter$RouteInfo;

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getStatus()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ",default"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ",enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ",connecting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, ",selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setProjection(Landroid/media/projection/MediaProjectionInfo;Z)V
    .locals 6
    .param p1    # Landroid/media/projection/MediaProjectionInfo;
    .param p2    # Z

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz p2, :cond_3

    if-nez v1, :cond_3

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    const/4 v0, 0x1

    :cond_0
    :goto_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "CastController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setProjection: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->fireOnCastDevicesChanged()V

    :cond_2
    return-void

    :cond_3
    if-nez p2, :cond_0

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private updateRemoteDisplays()V
    .locals 7

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v4, v0}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->ensureTagExists(Landroid/media/MediaRouter$RouteInfo;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->ensureTagExists(Landroid/media/MediaRouter$RouteInfo;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->fireOnCastDevicesChanged()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/policy/CastController$Callback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->fireOnCastDevicesChanged(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscoveringLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->handleDiscoveryChangeLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/io/FileDescriptor;
    .param p2    # Ljava/io/PrintWriter;
    .param p3    # [Ljava/lang/String;

    const-string v2, "CastController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  mDiscovering="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscovering:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string v2, "  mCallbackRegistered="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbackRegistered:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string v2, "  mCallbacks.size="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string v2, "  mRoutes.size="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaRouter$RouteInfo;

    const-string v2, "    "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "  mProjection="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getCastDevices()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/android/systemui/statusbar/policy/CastController$CastDevice;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x2

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    if-eqz v6, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    invoke-virtual {v6}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->id:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    invoke-virtual {v6}, Landroid/media/projection/MediaProjectionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->name:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mContext:Landroid/content/Context;

    const v7, 0x7f0b00f4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->description:Ljava/lang/String;

    const/4 v6, 0x2

    iput v6, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjection:Landroid/media/projection/MediaProjectionInfo;

    iput-object v6, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v9

    :goto_0
    return-object v2

    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    monitor-enter v9

    :try_start_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mRoutes:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaRouter$RouteInfo;

    new-instance v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;-><init>()V

    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getTag()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->id:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/media/MediaRouter$RouteInfo;->getName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    iput-object v6, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->name:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    iput-object v6, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->description:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_4
    iput v6, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->state:I

    iput-object v5, v1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :catchall_1
    move-exception v6

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    :cond_1
    move-object v6, v8

    goto :goto_2

    :cond_2
    move-object v6, v8

    goto :goto_3

    :cond_3
    :try_start_3
    invoke-virtual {v5}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v7

    goto :goto_4

    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/CastController$Callback;)V
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/policy/CastController$Callback;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscoveringLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->handleDiscoveryChangeLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCurrentUserId(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0, p1}, Landroid/media/MediaRouter;->rebindAsUser(I)V

    return-void
.end method

.method public setDiscovering(Z)V
    .locals 4
    .param p1    # Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscoveringLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscovering:Z

    if-ne v0, p1, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mDiscovering:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CastController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDiscovering: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->handleDiscoveryChangeLocked()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startCasting(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)V
    .locals 4
    .param p1    # Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    check-cast v0, Landroid/media/MediaRouter$RouteInfo;

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "CastController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startCasting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->routeToString(Landroid/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    goto :goto_0
.end method

.method public stopCasting(Lcom/android/systemui/statusbar/policy/CastController$CastDevice;)V
    .locals 5
    .param p1    # Lcom/android/systemui/statusbar/policy/CastController$CastDevice;

    iget-object v2, p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    instance-of v0, v2, Landroid/media/projection/MediaProjectionInfo;

    sget-boolean v2, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CastController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopCasting isProjection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/CastController$CastDevice;->tag:Ljava/lang/Object;

    check-cast v1, Landroid/media/projection/MediaProjectionInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v2}, Landroid/media/projection/MediaProjectionManager;->getActiveProjectionInfo()Landroid/media/projection/MediaProjectionInfo;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mProjectionManager:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v2}, Landroid/media/projection/MediaProjectionManager;->stopActiveProjection()V

    :goto_0
    return-void

    :cond_1
    const-string v2, "CastController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Projection is no longer active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->mMediaRouter:Landroid/media/MediaRouter;

    invoke-virtual {v2}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->select()V

    goto :goto_0
.end method
