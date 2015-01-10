.class Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->start(Landroid/media/projection/IMediaProjectionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

.field final synthetic val$callback:Landroid/media/projection/IMediaProjectionCallback;


# direct methods
.method constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;Landroid/media/projection/IMediaProjectionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;->this$1:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;->val$callback:Landroid/media/projection/IMediaProjectionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;->this$1:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    iget-object v0, v0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    # getter for: Lcom/android/server/media/projection/MediaProjectionManagerService;->mCallbackDelegate:Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;
    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$1100(Lcom/android/server/media/projection/MediaProjectionManagerService;)Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;->val$callback:Landroid/media/projection/IMediaProjectionCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/media/projection/MediaProjectionManagerService$CallbackDelegate;->remove(Landroid/media/projection/IMediaProjectionCallback;)V

    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection$1;->this$1:Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;

    invoke-virtual {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;->stop()V

    return-void
.end method
