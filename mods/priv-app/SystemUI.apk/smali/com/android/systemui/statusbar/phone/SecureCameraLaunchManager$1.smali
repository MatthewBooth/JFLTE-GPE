.class Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$1;
.super Ljava/lang/Object;
.source "SecureCameraLaunchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    # getter for: Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mWaitingToLaunchSecureCamera:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->access$100(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SecureCameraLaunchManager"

    const-string v1, "Timeout waiting for camera availability"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    # getter for: Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->access$300(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager$1;->this$0:Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->mWaitingToLaunchSecureCamera:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;->access$102(Lcom/android/systemui/statusbar/phone/SecureCameraLaunchManager;Z)Z

    :cond_0
    return-void
.end method
