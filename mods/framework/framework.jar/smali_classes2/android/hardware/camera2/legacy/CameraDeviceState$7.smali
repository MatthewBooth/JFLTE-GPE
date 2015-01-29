.class Landroid/hardware/camera2/legacy/CameraDeviceState$7;
.super Ljava/lang/Object;
.source "CameraDeviceState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(IJI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

.field final synthetic val$error:I


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/CameraDeviceState;I)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$7;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    iput p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$7;->val$error:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$7;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    # getter for: Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;
    invoke-static {v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->access$000(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    move-result-object v0

    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$7;->val$error:I

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState$7;->this$0:Landroid/hardware/camera2/legacy/CameraDeviceState;

    # getter for: Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentRequest:Landroid/hardware/camera2/legacy/RequestHolder;
    invoke-static {v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->access$200(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/RequestHolder;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;->onError(ILandroid/hardware/camera2/legacy/RequestHolder;)V

    return-void
.end method
