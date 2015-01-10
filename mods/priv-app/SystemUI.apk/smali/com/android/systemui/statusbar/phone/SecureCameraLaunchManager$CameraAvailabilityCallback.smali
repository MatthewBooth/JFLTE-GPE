.class Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "SecureCameraLaunchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraAvailabilityCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;->this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$1;)V
    .locals 0
    .param p1    # Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;
    .param p2    # Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$1;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;-><init>(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;->this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    # getter for: Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mCameraAvailabilityMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->access$000(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;->this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    # getter for: Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mWaitingToLaunchSecureCamera:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->access$100(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;->this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    # invokes: Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->areAllCamerasAvailable()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->access$200(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;->this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    # getter for: Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->access$300(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;->this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mWaitingToLaunchSecureCamera:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->access$102(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;->this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    # getter for: Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->access$500(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;->this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    # getter for: Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mLaunchCameraRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->access$400(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$CameraAvailabilityCallback;->this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    # getter for: Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mCameraAvailabilityMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->access$000(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
