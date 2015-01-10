.class Lcom/android/keyguard/KeyguardFaceUnlockView$2;
.super Ljava/lang/Object;
.source "KeyguardFaceUnlockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardFaceUnlockView;->initializeBiometricUnlockView()V
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

    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$2;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$2;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    return-void
.end method
