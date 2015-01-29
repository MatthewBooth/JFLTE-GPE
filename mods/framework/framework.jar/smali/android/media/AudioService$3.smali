.class Landroid/media/AudioService$3;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioService;->setVolumeController(Landroid/media/IVolumeController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;

.field final synthetic val$controller:Landroid/media/IVolumeController;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/media/IVolumeController;)V
    .locals 0

    iput-object p1, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    iput-object p2, p0, Landroid/media/AudioService$3;->val$controller:Landroid/media/IVolumeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    # getter for: Landroid/media/AudioService;->mVolumeController:Landroid/media/AudioService$VolumeController;
    invoke-static {v0}, Landroid/media/AudioService;->access$9800(Landroid/media/AudioService;)Landroid/media/AudioService$VolumeController;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioService$3;->val$controller:Landroid/media/IVolumeController;

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeController;->isSameBinder(Landroid/media/IVolumeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AudioService"

    const-string v1, "Current remote volume controller died, unregistering"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/AudioService$3;->this$0:Landroid/media/AudioService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->setVolumeController(Landroid/media/IVolumeController;)V

    :cond_0
    return-void
.end method
