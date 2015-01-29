.class Landroid/hardware/camera2/CameraManager$CameraServiceDeathListener;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraServiceDeathListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/CameraManager;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/CameraManager;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraServiceDeathListener;->this$0:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/CameraManager;Landroid/hardware/camera2/CameraManager$1;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraManager;
    .param p2    # Landroid/hardware/camera2/CameraManager$1;

    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraManager$CameraServiceDeathListener;-><init>(Landroid/hardware/camera2/CameraManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraServiceDeathListener;->this$0:Landroid/hardware/camera2/CameraManager;

    # getter for: Landroid/hardware/camera2/CameraManager;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->access$200(Landroid/hardware/camera2/CameraManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraServiceDeathListener;->this$0:Landroid/hardware/camera2/CameraManager;

    const/4 v4, 0x0

    # setter for: Landroid/hardware/camera2/CameraManager;->mCameraService:Landroid/hardware/ICameraService;
    invoke-static {v2, v4}, Landroid/hardware/camera2/CameraManager;->access$302(Landroid/hardware/camera2/CameraManager;Landroid/hardware/ICameraService;)Landroid/hardware/ICameraService;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraServiceDeathListener;->this$0:Landroid/hardware/camera2/CameraManager;

    # getter for: Landroid/hardware/camera2/CameraManager;->mDeviceIdList:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->access$400(Landroid/hardware/camera2/CameraManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/camera2/CameraManager$CameraServiceDeathListener;->this$0:Landroid/hardware/camera2/CameraManager;

    # getter for: Landroid/hardware/camera2/CameraManager;->mServiceListener:Landroid/hardware/camera2/CameraManager$CameraServiceListener;
    invoke-static {v2}, Landroid/hardware/camera2/CameraManager;->access$500(Landroid/hardware/camera2/CameraManager;)Landroid/hardware/camera2/CameraManager$CameraServiceListener;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0}, Landroid/hardware/camera2/CameraManager$CameraServiceListener;->onStatusChangedLocked(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
