.class public Lcom/android/systemui/statusbar/policy/FlashlightController;
.super Ljava/lang/Object;
.source "FlashlightController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private mCameraAvailable:Z

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraId:Ljava/lang/String;

.field private final mCameraListener:Landroid/hardware/camera2/CameraDevice$StateListener;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mFlashlightEnabled:Z

.field private mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

.field private mHandler:Landroid/os/Handler;

.field private final mKillFlashlightRunnable:Ljava/lang/Runnable;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final mSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateListener;

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mUpdateFlashlightRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FlashlightController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/FlashlightController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController$1;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraListener:Landroid/hardware/camera2/CameraDevice$StateListener;

    new-instance v0, Lcom/android/systemui/statusbar/policy/FlashlightController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController$2;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateListener;

    new-instance v0, Lcom/android/systemui/statusbar/policy/FlashlightController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController$3;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mUpdateFlashlightRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/policy/FlashlightController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController$4;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mKillFlashlightRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/policy/FlashlightController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController$5;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->initialize()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/hardware/camera2/CameraDevice;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/FlashlightController;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p1    # Landroid/hardware/camera2/CameraDevice;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->postUpdateFlashlight()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/FlashlightController;)Z
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraAvailable:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)Z
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraAvailable:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchAvailabilityChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchOff()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->teardown()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->handleError()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/FlashlightController;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)V
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->updateFlashlight(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/policy/FlashlightController;Z)Z
    .locals 0
    .param p0    # Lcom/android/systemui/statusbar/policy/FlashlightController;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    return p1
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/FlashlightController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/FlashlightController;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/systemui/statusbar/policy/FlashlightController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method private cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .locals 3
    .param p1    # Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private dispatchAvailabilityChanged(Z)V
    .locals 1
    .param p1    # Z

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchListeners(IZ)V

    return-void
.end method

.method private dispatchError()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchListeners(IZ)V

    return-void
.end method

.method private dispatchListeners(IZ)V
    .locals 6
    .param p1    # I
    .param p2    # Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    if-eqz v3, :cond_3

    if-nez p1, :cond_1

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightError()V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightOff()V

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    :try_start_1
    invoke-interface {v3, p2}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightAvailabilityChanged(Z)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/FlashlightController;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    :cond_5
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private dispatchOff()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchListeners(IZ)V

    return-void
.end method

.method private declared-synchronized ensureHandler()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FlashlightController"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    array-length v6, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v4, v0, v3

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v8, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    :goto_1
    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getSmallestSize(Ljava/lang/String;)Landroid/util/Size;
    .locals 9
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v6, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const-class v7, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v6, v4

    if-nez v6, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Camera "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "doesn\'t support any outputSize."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    const/4 v6, 0x0

    aget-object v1, v4, v6

    move-object v0, v4

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-lt v6, v7, :cond_2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-lt v6, v7, :cond_2

    move-object v1, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private handleError()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchError()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchOff()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->updateFlashlight(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private postUpdateFlashlight()V
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->ensureHandler()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mUpdateFlashlightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startDevice()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraListener:Landroid/hardware/camera2/CameraDevice$StateListener;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private startSession()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v2, Landroid/graphics/SurfaceTexture;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->getSmallestSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v2, Landroid/view/Surface;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurface:Landroid/view/Surface;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSessionListener:Landroid/hardware/camera2/CameraCaptureSession$StateListener;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private teardown()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurface:Landroid/view/Surface;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method private updateFlashlight(Z)V
    .locals 7
    .param p1    # Z

    const/4 v2, 0x1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    :try_start_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v4, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->startDevice()V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_0
    move-exception v1

    :goto_2
    const-string v4, "FlashlightController"

    const-string v5, "Error in updateFlashlight"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->handleError()V

    goto :goto_1

    :cond_2
    :try_start_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->startSession()V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightRequest:Landroid/hardware/camera2/CaptureRequest;

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v4}, Landroid/hardware/camera2/CameraDevice;->close()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->teardown()V
    :try_end_5
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .locals 3
    .param p1    # Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initialize()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->getCameraId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraId:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->ensureHandler()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mAvailabilityCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FlashlightController"

    const-string v2, "Couldn\'t initialize."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public declared-synchronized isAvailable()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public killFlashlight()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mKillFlashlightRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .locals 2
    .param p1    # Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized setFlashlight(Z)V
    .locals 1
    .param p1    # Z

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController;->mFlashlightEnabled:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->postUpdateFlashlight()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
