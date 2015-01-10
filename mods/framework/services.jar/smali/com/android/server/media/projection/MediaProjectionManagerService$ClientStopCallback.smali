.class final Lcom/android/server/media/projection/MediaProjectionManagerService$ClientStopCallback;
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
    name = "ClientStopCallback"
.end annotation


# instance fields
.field private mCallback:Landroid/media/projection/IMediaProjectionCallback;


# direct methods
.method public constructor <init>(Landroid/media/projection/IMediaProjectionCallback;)V
    .locals 0
    .param p1    # Landroid/media/projection/IMediaProjectionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$ClientStopCallback;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$ClientStopCallback;->mCallback:Landroid/media/projection/IMediaProjectionCallback;

    invoke-interface {v1}, Landroid/media/projection/IMediaProjectionCallback;->onStop()V
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
