.class public Lcom/android/incallui/InCallCameraManager;
.super Ljava/lang/Object;
.source "InCallCameraManager.java"


# instance fields
.field private mFrontFacingCameraId:Ljava/lang/String;

.field private mRearFacingCameraId:Ljava/lang/String;

.field private mUseFrontFacingCamera:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallCameraManager;->initializeCameraList(Landroid/content/Context;)V

    return-void
.end method

.method private initializeCameraList(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    const-string v6, "camera"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v6, 0x0

    new-array v1, v6, [Ljava/lang/String;

    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    const/4 v5, 0x0

    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_0

    const/4 v0, 0x0

    :try_start_2
    aget-object v6, v1, v5

    invoke-virtual {v2, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_2

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_3

    aget-object v6, v1, v5

    iput-object v6, p0, Lcom/android/incallui/InCallCameraManager;->mFrontFacingCameraId:Ljava/lang/String;

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v6, "Could not get camera service."

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not access camera: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    aget-object v6, v1, v5

    iput-object v6, p0, Lcom/android/incallui/InCallCameraManager;->mRearFacingCameraId:Ljava/lang/String;

    goto :goto_3

    :catch_2
    move-exception v6

    goto :goto_2

    :catch_3
    move-exception v6

    goto :goto_2
.end method


# virtual methods
.method public getActiveCameraId()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mFrontFacingCameraId:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mRearFacingCameraId:Ljava/lang/String;

    goto :goto_0
.end method

.method public setUseFrontFacingCamera(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    return-void
.end method
