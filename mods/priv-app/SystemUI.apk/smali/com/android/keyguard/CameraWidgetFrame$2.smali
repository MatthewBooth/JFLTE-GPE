.class Lcom/android/keyguard/CameraWidgetFrame$2;
.super Ljava/lang/Object;
.source "CameraWidgetFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CameraWidgetFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/CameraWidgetFrame;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CameraWidgetFrame;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    # getter for: Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z
    invoke-static {v1}, Lcom/android/keyguard/CameraWidgetFrame;->access$100(Lcom/android/keyguard/CameraWidgetFrame;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-virtual {v1}, Lcom/android/keyguard/CameraWidgetFrame;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-virtual {v1}, Lcom/android/keyguard/CameraWidgetFrame;->getWorkerHandler()Landroid/os/Handler;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J
    invoke-static {v1, v2, v3}, Lcom/android/keyguard/CameraWidgetFrame;->access$302(Lcom/android/keyguard/CameraWidgetFrame;J)J

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    # getter for: Lcom/android/keyguard/CameraWidgetFrame;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;
    invoke-static {v1}, Lcom/android/keyguard/CameraWidgetFrame;->access$500(Lcom/android/keyguard/CameraWidgetFrame;)Lcom/android/keyguard/KeyguardActivityLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    # getter for: Lcom/android/keyguard/CameraWidgetFrame;->mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/keyguard/CameraWidgetFrame;->access$400(Lcom/android/keyguard/CameraWidgetFrame;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/keyguard/KeyguardActivityLauncher;->launchCamera(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame$2;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    # getter for: Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/keyguard/CameraWidgetFrame;->access$200(Lcom/android/keyguard/CameraWidgetFrame;)Landroid/os/Handler;

    move-result-object v0

    goto :goto_1
.end method
