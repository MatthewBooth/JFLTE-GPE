.class public Lcom/android/keyguard/KeyguardFaceUnlockView;
.super Landroid/widget/LinearLayout;
.source "KeyguardFaceUnlockView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# instance fields
.field private mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCancelButton:Landroid/widget/ImageButton;

.field private mEcaView:Landroid/view/View;

.field private mFaceUnlockAreaView:Landroid/view/View;

.field private mIsBouncerVisibleToUser:Z

.field private final mIsBouncerVisibleToUserLock:Ljava/lang/Object;

.field private mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mLastRotation:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mRotationWatcher:Landroid/view/IRotationWatcher;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWatchingRotation:Z

.field private final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsBouncerVisibleToUser:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsBouncerVisibleToUserLock:Ljava/lang/Object;

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    new-instance v0, Lcom/android/keyguard/KeyguardFaceUnlockView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardFaceUnlockView$1;-><init>(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    new-instance v0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardFaceUnlockView$3;-><init>(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardFaceUnlockView;)I
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardFaceUnlockView;

    iget v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mLastRotation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardFaceUnlockView;I)I
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardFaceUnlockView;
    .param p1    # I

    iput p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mLastRotation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardFaceUnlockView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardFaceUnlockView;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->maybeStartBiometricUnlock()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardFaceUnlockView;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->handleBouncerUserVisibilityChanged()V

    return-void
.end method

.method private handleBouncerUserVisibilityChanged()V
    .locals 3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsBouncerVisibleToUserLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsBouncerVisibleToUser:Z

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->isBouncerVisibleToUser()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsBouncerVisibleToUser:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsBouncerVisibleToUser:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsBouncerVisibleToUser:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->maybeStartBiometricUnlock()V

    goto :goto_0
.end method

.method private initializeBiometricUnlockView()V
    .locals 2

    sget v0, Lcom/android/keyguard/R$id;->face_unlock_area_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/FaceUnlock;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/FaceUnlock;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    sget v0, Lcom/android/keyguard/R$id;->face_unlock_cancel_button:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mCancelButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mCancelButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/KeyguardFaceUnlockView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardFaceUnlockView$2;-><init>(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "Couldn\'t find biometric unlock view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isBouncerVisibleToUser()Z
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardBouncer()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private maybeStartBiometricUnlock()V
    .locals 5

    iget-object v3, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsBouncerVisibleToUserLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsBouncerVisibleToUser:Z

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v3}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_2
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isAlternateUnlockEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v3}, Lcom/android/keyguard/BiometricSensorUnlock;->start()Z

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v3}, Lcom/android/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    goto :goto_1
.end method


# virtual methods
.method public hideBouncer(I)V
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Remote exception when removing rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->initializeBiometricUnlockView()V

    new-instance v1, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardFaceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mEcaView:Landroid/view/View;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardFaceUnlockView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1    # Z
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mFaceUnlockAreaView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/keyguard/BiometricSensorUnlock;->initializeView(Landroid/view/View;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Remote exception when removing rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume(I)V
    .locals 3
    .param p1    # I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsBouncerVisibleToUserLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->isBouncerVisibleToUser()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mIsBouncerVisibleToUser:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z

    if-nez v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mLastRotation:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mWatchingRotation:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    const-string v1, "FULKeyguardFaceUnlockView"

    const-string v2, "Remote exception when adding rotation watcher"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 1
    .param p1    # Lcom/android/keyguard/KeyguardSecurityCallback;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/keyguard/BiometricSensorUnlock;

    check-cast v0, Lcom/android/keyguard/FaceUnlock;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/FaceUnlock;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1    # Lcom/android/internal/widget/LockPatternUtils;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public showBouncer(I)V
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardFaceUnlockView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1    # Ljava/lang/Runnable;

    const/4 v0, 0x0

    return v0
.end method
