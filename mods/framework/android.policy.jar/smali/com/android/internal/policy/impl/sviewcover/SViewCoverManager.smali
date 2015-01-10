.class public Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
.super Ljava/lang/Object;
.source "SViewCoverManager.java"


# static fields
.field public static final ACTION_CLEAR_COVER_OPEN:Ljava/lang/String; = "com.samsung.cover.OPEN"

.field public static final ACTION_CLEAR_COVER_STATE_CHANGE:Ljava/lang/String; = "com.samsung.cover.STATE_CHANGE"

.field private static final DEBUG:Z = true

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final MESSAGE_SHOW:I = 0x2

.field private static final SVIEW_COVER_DISPLAY_TIMEOUT_DEFAULT:I = 0x1f40

.field private static final TAG:Ljava/lang/String; = "SViewCoverManager"


# instance fields
.field private isAutoUnlock:I

.field private mContext:Landroid/content/Context;

.field private mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mGoToSleepRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIsCoverOpen:Z

.field private mKeyguardServiceDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

.field private mPMS:Landroid/os/IPowerManager;

.field private mPhoneState:I

.field private mSViewCoverDialog:Landroid/app/Dialog;

.field private mShowingCoverUI:Z

.field private mSuppressCoverUI:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsCoverOpen:Z

    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPhoneState:I

    iput v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->isAutoUnlock:I

    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$1;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$2;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager$3;-><init>(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    const-string v1, "SViewCoverManager"

    const-string v2, "SViewCoverManager!! "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mKeyguardServiceDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPMS:Landroid/os/IPowerManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mCoverChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/IPowerManager;
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPMS:Landroid/os/IPowerManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Z
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;Z)Z
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;I)I
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;
    .param p1    # I

    iput p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPhoneState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Z
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsCoverOpen:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Z
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->handleHide()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;)V
    .locals 0
    .param p0    # Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->handleShow()V

    return-void
.end method

.method private createDialog()Landroid/app/Dialog;
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, "SViewCoverManager"

    const-string v5, "in createDialog of SViewCover "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/Dialog;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    const v4, 0x10900b3

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const-string v5, "SViewCover"

    invoke-virtual {v4, v5}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x832

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0xc00

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->clearFlags(I)V

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "automatic_unlock"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mKeyguardServiceDelegate:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v2

    if-nez v2, :cond_0

    if-ne v1, v7, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x480000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private handleHide()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "SViewCoverManager"

    const-string v1, "handleHide()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    :cond_0
    return-void
.end method

.method private handleShow()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsCoverOpen:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPhoneState:I

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "SViewCoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleShow( not show SViewCover) mSuppressCoverUI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsCoverOpen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsCoverOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mShowingCoverUI="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPhoneState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mPhoneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    const-string v0, "SViewCoverManager"

    const-string v1, "handleShow()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverDialog:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSViewCoverDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mGoToSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mShowingCoverUI:Z

    return v0
.end method

.method public updateCoverState(Z)V
    .locals 3
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsCoverOpen:Z

    const-string v0, "SViewCoverManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCoverState( mIsCoverOpen is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsCoverOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mIsCoverOpen:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public updateSupressCover(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/sviewcover/SViewCoverManager;->mSuppressCoverUI:Z

    return-void
.end method
