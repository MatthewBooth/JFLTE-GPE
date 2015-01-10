.class public Lcom/android/keyguard/FaceUnlock;
.super Ljava/lang/Object;
.source "FaceUnlock.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/android/keyguard/BiometricSensorUnlock;


# instance fields
.field private final MSG_CANCEL:I

.field private final MSG_POKE_WAKELOCK:I

.field private final MSG_REPORT_FAILED_ATTEMPT:I

.field private final MSG_SERVICE_CONNECTED:I

.field private final MSG_SERVICE_DISCONNECTED:I

.field private final MSG_UNLOCK:I

.field private mBoundToService:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

.field private mFaceUnlockView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private volatile mIsRunning:Z

.field mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mService:Lcom/android/internal/policy/IFaceLockInterface;

.field private mServiceRunning:Z

.field private final mServiceRunningLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/keyguard/FaceUnlock;->mServiceRunning:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/android/keyguard/FaceUnlock;->mBoundToService:Z

    iput v1, p0, Lcom/android/keyguard/FaceUnlock;->MSG_SERVICE_CONNECTED:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/FaceUnlock;->MSG_SERVICE_DISCONNECTED:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/FaceUnlock;->MSG_UNLOCK:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/FaceUnlock;->MSG_CANCEL:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/keyguard/FaceUnlock;->MSG_REPORT_FAILED_ATTEMPT:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/keyguard/FaceUnlock;->MSG_POKE_WAKELOCK:I

    iput-boolean v1, p0, Lcom/android/keyguard/FaceUnlock;->mIsRunning:Z

    new-instance v0, Lcom/android/keyguard/FaceUnlock$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/FaceUnlock$1;-><init>(Lcom/android/keyguard/FaceUnlock;)V

    iput-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/keyguard/FaceUnlock$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/FaceUnlock$2;-><init>(Lcom/android/keyguard/FaceUnlock;)V

    iput-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    iput-object p1, p0, Lcom/android/keyguard/FaceUnlock;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/FaceUnlock;Lcom/android/internal/policy/IFaceLockInterface;)Lcom/android/internal/policy/IFaceLockInterface;
    .locals 0
    .param p0    # Lcom/android/keyguard/FaceUnlock;
    .param p1    # Lcom/android/internal/policy/IFaceLockInterface;

    iput-object p1, p0, Lcom/android/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/FaceUnlock;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/keyguard/FaceUnlock;

    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private startUi(Landroid/os/IBinder;IIII)V
    .locals 9
    .param p1    # Landroid/os/IBinder;
    .param p2    # I
    .param p3    # I
    .param p4    # I
    .param p5    # I

    iget-object v8, p0, Lcom/android/keyguard/FaceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/FaceUnlock;->mServiceRunning:Z

    if-nez v0, :cond_0

    const-string v0, "FULLockscreen"

    const-string v1, "Starting Face Unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v1, p0, Lcom/android/keyguard/FaceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isBiometricWeakLivelinessEnabled()Z

    move-result v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/policy/IFaceLockInterface;->startUi(Landroid/os/IBinder;IIIIZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/keyguard/FaceUnlock;->mServiceRunning:Z

    :goto_0
    monitor-exit v8

    :goto_1
    return-void

    :catch_0
    move-exception v7

    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caught exception starting Face Unlock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    const-string v0, "FULLockscreen"

    const-string v1, "startUi() attempted while running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private stopUi()V
    .locals 5

    iget-object v2, p0, Lcom/android/keyguard/FaceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/keyguard/FaceUnlock;->mServiceRunning:Z

    if-eqz v1, :cond_0

    const-string v1, "FULLockscreen"

    const-string v3, "Stopping Face Unlock"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    invoke-interface {v1}, Lcom/android/internal/policy/IFaceLockInterface;->stopUi()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/keyguard/FaceUnlock;->mServiceRunning:Z

    :cond_0
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const-string v1, "FULLockscreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caught exception stopping Face Unlock: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method handleCancel()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity()V

    invoke-virtual {p0}, Lcom/android/keyguard/FaceUnlock;->stop()Z

    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "FULLockscreen"

    const-string v1, "Unhandled message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/keyguard/FaceUnlock;->handleServiceConnected()V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/keyguard/FaceUnlock;->handleServiceDisconnected()V

    goto :goto_1

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/FaceUnlock;->handleUnlock(I)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/keyguard/FaceUnlock;->handleCancel()V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/keyguard/FaceUnlock;->handleReportFailedAttempt()V

    goto :goto_1

    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/FaceUnlock;->handlePokeWakelock(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method handlePokeWakelock(I)V
    .locals 3
    .param p1    # I

    iget-object v1, p0, Lcom/android/keyguard/FaceUnlock;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method handleReportFailedAttempt()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    return-void
.end method

.method handleServiceConnected()V
    .locals 8

    const/4 v4, 0x0

    const-string v0, "FULLockscreen"

    const-string v2, "handleServiceConnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/FaceUnlock;->mBoundToService:Z

    if-nez v0, :cond_1

    const-string v0, "FULLockscreen"

    const-string v2, "Dropping startUi() in handleServiceConnected() because no longer bound"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/keyguard/FaceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v0, v2}, Lcom/android/internal/policy/IFaceLockInterface;->registerCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    const/4 v0, 0x2

    new-array v7, v0, [I

    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v7, v4

    const/4 v0, 0x1

    aget v3, v7, v0

    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/FaceUnlock;->startUi(Landroid/os/IBinder;IIII)V

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v0, "FULLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception connecting to Face Unlock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iput-boolean v4, p0, Lcom/android/keyguard/FaceUnlock;->mBoundToService:Z

    iput-boolean v4, p0, Lcom/android/keyguard/FaceUnlock;->mIsRunning:Z

    goto :goto_0

    :cond_2
    const-string v0, "FULLockscreen"

    const-string v2, "windowToken is null in handleServiceConnected()"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handleServiceDisconnected()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "FULLockscreen"

    const-string v1, "handleServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/FaceUnlock;->mServiceRunningLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/FaceUnlock;->mServiceRunning:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Lcom/android/keyguard/FaceUnlock;->mBoundToService:Z

    iput-boolean v2, p0, Lcom/android/keyguard/FaceUnlock;->mIsRunning:Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method handleUnlock(I)V
    .locals 4
    .param p1    # I

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/keyguard/FaceUnlock;->stop()Z

    iget-object v1, p0, Lcom/android/keyguard/FaceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    iget-object v1, p0, Lcom/android/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "FULLockscreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring unlock for authenticated user ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") because the current user is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initializeView(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    const-string v0, "FULLockscreen"

    const-string v1, "initializeView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/keyguard/FaceUnlock;->mFaceUnlockView:Landroid/view/View;

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1    # Lcom/android/keyguard/KeyguardSecurityCallback;

    iput-object p1, p0, Lcom/android/keyguard/FaceUnlock;->mKeyguardScreenCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public start()Z
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "FULLockscreen"

    const-string v1, "start() called off of the UI thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/FaceUnlock;->mIsRunning:Z

    if-eqz v0, :cond_1

    const-string v0, "FULLockscreen"

    const-string v1, "start() called when already running"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/FaceUnlock;->mBoundToService:Z

    if-nez v0, :cond_2

    const-string v0, "FULLockscreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Binding to Face Unlock service for user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/FaceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/policy/IFaceLockInterface;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.facelock"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/FaceUnlock;->mConnection:Landroid/content/ServiceConnection;

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/keyguard/FaceUnlock;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    iput-boolean v5, p0, Lcom/android/keyguard/FaceUnlock;->mBoundToService:Z

    :goto_0
    iput-boolean v5, p0, Lcom/android/keyguard/FaceUnlock;->mIsRunning:Z

    return v5

    :cond_2
    const-string v0, "FULLockscreen"

    const-string v1, "Attempt to bind to Face Unlock when already bound"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stop()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/keyguard/FaceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const-string v1, "FULLockscreen"

    const-string v2, "stop() called from non-UI thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/FaceUnlock;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/keyguard/FaceUnlock;->mIsRunning:Z

    invoke-direct {p0}, Lcom/android/keyguard/FaceUnlock;->stopUi()V

    iget-boolean v1, p0, Lcom/android/keyguard/FaceUnlock;->mBoundToService:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/FaceUnlock;->mService:Lcom/android/internal/policy/IFaceLockInterface;

    iget-object v2, p0, Lcom/android/keyguard/FaceUnlock;->mFaceUnlockCallback:Lcom/android/internal/policy/IFaceLockCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/policy/IFaceLockInterface;->unregisterCallback(Lcom/android/internal/policy/IFaceLockCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string v1, "FULLockscreen"

    const-string v2, "Unbinding from Face Unlock service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/FaceUnlock;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/FaceUnlock;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-boolean v3, p0, Lcom/android/keyguard/FaceUnlock;->mBoundToService:Z

    :cond_2
    iput-boolean v3, p0, Lcom/android/keyguard/FaceUnlock;->mIsRunning:Z

    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public stopAndShowBackup()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/FaceUnlock;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
