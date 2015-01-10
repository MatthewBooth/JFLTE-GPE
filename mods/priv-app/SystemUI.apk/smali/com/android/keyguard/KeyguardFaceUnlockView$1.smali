.class Lcom/android/keyguard/KeyguardFaceUnlockView$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "KeyguardFaceUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardFaceUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardFaceUnlockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$1;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationChanged(I)V
    .locals 2
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$1;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mLastRotation:I
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$000(Lcom/android/keyguard/KeyguardFaceUnlockView;)I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$1;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$1;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$1;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # invokes: Lcom/android/keyguard/KeyguardFaceUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$200(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$1;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # setter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mLastRotation:I
    invoke-static {v0, p1}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$002(Lcom/android/keyguard/KeyguardFaceUnlockView;I)I

    return-void
.end method
