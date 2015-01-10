.class final Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WatcherStopCallback"
.end annotation


# instance fields
.field private mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

.field private mInfo:Landroid/media/projection/MediaProjectionInfo;


# direct methods
.method public constructor <init>(Landroid/media/projection/MediaProjectionInfo;Landroid/media/projection/IMediaProjectionWatcherCallback;)V
    .locals 0
    .param p1    # Landroid/media/projection/MediaProjectionInfo;
    .param p2    # Landroid/media/projection/IMediaProjectionWatcherCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;->mInfo:Landroid/media/projection/MediaProjectionInfo;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;->mCallback:Landroid/media/projection/IMediaProjectionWatcherCallback;

    iget-object v2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$WatcherStopCallback;->mInfo:Landroid/media/projection/MediaProjectionInfo;

    invoke-interface {v1, v2}, Landroid/media/projection/IMediaProjectionWatcherCallback;->onStop(Landroid/media/projection/MediaProjectionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "MediaProjectionManagerService"

    const-string v2, "Failed to notify media projection has stopped"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
