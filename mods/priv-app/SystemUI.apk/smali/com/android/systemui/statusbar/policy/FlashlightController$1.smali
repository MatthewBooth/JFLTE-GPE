.class Lcom/android/systemui/statusbar/policy/FlashlightController$1;
.super Landroid/hardware/camera2/CameraDevice$StateListener;
.source "FlashlightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/FlashlightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/FlashlightController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraDevice;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    # getter for: Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$000(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    # invokes: Lcom/android/systemui/statusbar/policy/FlashlightController;->dispatchOff()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$200(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    # invokes: Lcom/android/systemui/statusbar/policy/FlashlightController;->teardown()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$300(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 3
    .param p1    # Landroid/hardware/camera2/CameraDevice;
    .param p2    # I

    const-string v0, "FlashlightController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera error: camera="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    # getter for: Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$000(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    # getter for: Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$000(Lcom/android/systemui/statusbar/policy/FlashlightController;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    # invokes: Lcom/android/systemui/statusbar/policy/FlashlightController;->handleError()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$400(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    :cond_1
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraDevice;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    # setter for: Lcom/android/systemui/statusbar/policy/FlashlightController;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$002(Lcom/android/systemui/statusbar/policy/FlashlightController;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightController$1;->this$0:Lcom/android/systemui/statusbar/policy/FlashlightController;

    # invokes: Lcom/android/systemui/statusbar/policy/FlashlightController;->postUpdateFlashlight()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->access$100(Lcom/android/systemui/statusbar/policy/FlashlightController;)V

    return-void
.end method
