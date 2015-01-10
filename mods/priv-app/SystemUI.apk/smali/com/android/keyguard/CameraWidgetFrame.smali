.class public Lcom/android/keyguard/CameraWidgetFrame;
.super Lcom/android/keyguard/KeyguardWidgetFrame;
.source "CameraWidgetFrame.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;,
        Lcom/android/keyguard/CameraWidgetFrame$Callbacks;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActive:Z

.field private final mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

.field private mDown:Z

.field private mFakeNavBar:Landroid/view/View;

.field private mFullscreenPreview:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private final mInsets:Landroid/graphics/Rect;

.field private mLaunchCameraStart:J

.field private final mPostTransitionToCameraEndAction:Ljava/lang/Runnable;

.field private mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

.field private final mRecoverRunnable:Ljava/lang/Runnable;

.field private final mRenderRunnable:Ljava/lang/Runnable;

.field private final mRenderedSize:Landroid/graphics/Point;

.field private final mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

.field private final mTmpLoc:[I

.field private final mTransitionToCameraEndAction:Ljava/lang/Runnable;

.field private final mTransitionToCameraRunnable:Ljava/lang/Runnable;

.field private mTransitioning:Z

.field private mUseFastTransition:Z

.field private final mWidgetInfo:Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/keyguard/CameraWidgetFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/keyguard/KeyguardActivityLauncher;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/keyguard/CameraWidgetFrame$Callbacks;
    .param p3    # Lcom/android/keyguard/KeyguardActivityLauncher;
    .param p4    # Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;
    .param p5    # Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$1;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$2;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraEndAction:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$3;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPostTransitionToCameraEndAction:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$4;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$5;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$6;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/CameraWidgetFrame$7;-><init>(Lcom/android/keyguard/CameraWidgetFrame;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    iput-object p3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    iput-object p4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mWidgetInfo:Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mWindowManager:Landroid/view/WindowManager;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v1, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-direct {v1, p1}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v1, p5}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/CameraWidgetFrame;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CameraWidgetFrame;->addView(Landroid/view/View;)V

    sget v1, Lcom/android/keyguard/R$string;->keyguard_accessibility_camera:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/CameraWidgetFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/CameraWidgetFrame;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->transitionToCamera()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/CameraWidgetFrame;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;

    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/CameraWidgetFrame;Z)V
    .locals 0
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/keyguard/CameraWidgetFrame;->onKeyguardVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/CameraWidgetFrame;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/keyguard/CameraWidgetFrame;J)J
    .locals 1
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;
    .param p1    # J

    iput-wide p1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/CameraWidgetFrame;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mSecureCameraActivityStartedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/CameraWidgetFrame;)Lcom/android/keyguard/KeyguardActivityLauncher;
    .locals 1
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/CameraWidgetFrame;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraEndAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/CameraWidgetFrame;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->recover()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/CameraWidgetFrame;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->render()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/CameraWidgetFrame;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/CameraWidgetFrame;

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->onSecureCameraActivityStarted()V

    return-void
.end method

.method private cancelTransitionToCamera()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/keyguard/KeyguardActivityLauncher;)Lcom/android/keyguard/CameraWidgetFrame;
    .locals 6
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/android/keyguard/CameraWidgetFrame$Callbacks;
    .param p2    # Lcom/android/keyguard/KeyguardActivityLauncher;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardActivityLauncher;->getCameraWidgetInfo()Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {p0, v4}, Lcom/android/keyguard/CameraWidgetFrame;->getPreviewWidget(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v0, Lcom/android/keyguard/CameraWidgetFrame;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/CameraWidgetFrame;-><init>(Landroid/content/Context;Lcom/android/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/keyguard/KeyguardActivityLauncher;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;Landroid/view/View;)V

    goto :goto_0
.end method

.method private enableWindowExitAnimation(Z)V
    .locals 5
    .param p1    # Z

    invoke-virtual {p0}, Lcom/android/keyguard/CameraWidgetFrame;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v0

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_2

    sget v1, Lcom/android/keyguard/R$style;->Animation_LockScreen:I

    :goto_1
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v1, v4, :cond_0

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getPreviewWidget(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    iget v0, p1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->layoutId:I

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/keyguard/CameraWidgetFrame;->inflateWidgetView(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/CameraWidgetFrame;->inflateGenericWidgetView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private static inflateGenericWidgetView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p0    # Landroid/content/Context;

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/keyguard/R$drawable;->ic_lockscreen_camera:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/16 v1, 0x7f

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    return-object v0
.end method

.method private static inflateWidgetView(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;
    .locals 8
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->contextPackage:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    const-string v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v5, p1, Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;->layoutId:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :goto_0
    if-eqz v3, :cond_0

    sget-object v5, Lcom/android/keyguard/CameraWidgetFrame;->TAG:Ljava/lang/String;

    const-string v6, "Error creating camera widget view"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v4

    :catch_0
    move-exception v2

    move-object v3, v2

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v3, v2

    goto :goto_0
.end method

.method private onCameraLaunched()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/CameraWidgetFrame$Callbacks;->onCameraLaunchedSuccessfully()V

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->reset()V

    return-void
.end method

.method private onKeyguardVisibilityChanged(Z)V
    .locals 8
    .param p1    # Z

    const-wide/16 v6, 0x0

    iget-boolean v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-wide v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    sub-long v0, v2, v4

    iput-wide v6, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->onCameraLaunched()V

    :cond_0
    return-void
.end method

.method private onSecureCameraActivityStarted()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private recover()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v0}, Lcom/android/keyguard/CameraWidgetFrame$Callbacks;->onCameraLaunchedUnsuccessfully()V

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->reset()V

    return-void
.end method

.method private render()V
    .locals 15

    invoke-virtual {p0}, Lcom/android/keyguard/CameraWidgetFrame;->getRootView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v13

    iget-object v14, p0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    sub-int v12, v13, v14

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v13

    iget-object v14, p0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v13, v14

    iget-object v13, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    if-ne v13, v12, :cond_1

    iget-object v13, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    if-ne v13, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v12, :cond_0

    if-eqz v0, :cond_0

    iget-object v13, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iput v12, v13, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->width:I

    iget-object v13, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iput v0, v13, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->height:I

    iget-object v13, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v13}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/keyguard/CameraWidgetFrame;->getWidth()I

    move-result v13

    invoke-virtual {p0}, Lcom/android/keyguard/CameraWidgetFrame;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {p0}, Lcom/android/keyguard/CameraWidgetFrame;->getPaddingRight()I

    move-result v14

    sub-int v11, v13, v14

    invoke-virtual {p0}, Lcom/android/keyguard/CameraWidgetFrame;->getHeight()I

    move-result v13

    invoke-virtual {p0}, Lcom/android/keyguard/CameraWidgetFrame;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {p0}, Lcom/android/keyguard/CameraWidgetFrame;->getPaddingBottom()I

    move-result v14

    sub-int v10, v13, v14

    int-to-float v13, v11

    int-to-float v14, v12

    div-float v4, v13, v14

    int-to-float v13, v10

    int-to-float v14, v0

    div-float v5, v13, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    int-to-float v13, v12

    mul-float/2addr v13, v3

    float-to-int v8, v13

    int-to-float v13, v0

    mul-float/2addr v13, v3

    float-to-int v2, v13

    if-ge v8, v11, :cond_2

    sub-int v13, v11, v8

    div-int/lit8 v13, v13, 0x2

    int-to-float v6, v13

    :goto_1
    if-ge v2, v10, :cond_3

    sub-int v13, v10, v2

    div-int/lit8 v13, v13, 0x2

    int-to-float v7, v13

    :goto_2
    iget-object v13, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v13}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getLayoutDirection()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    const/4 v1, 0x1

    :goto_3
    iget-object v14, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    if-eqz v1, :cond_5

    iget-object v13, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    iget v13, v13, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->width:I

    int-to-float v13, v13

    :goto_4
    invoke-virtual {v14, v13}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setPivotX(F)V

    iget-object v13, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setPivotY(F)V

    iget-object v13, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v13, v3}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setScaleX(F)V

    iget-object v13, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v13, v3}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setScaleY(F)V

    iget-object v14, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    if-eqz v1, :cond_6

    const/4 v13, -0x1

    :goto_5
    int-to-float v13, v13

    mul-float/2addr v13, v6

    invoke-virtual {v14, v13}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setTranslationX(F)V

    iget-object v13, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v13, v7}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setTranslationY(F)V

    iget-object v13, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    invoke-virtual {v13, v12, v0}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    goto :goto_4

    :cond_6
    const/4 v13, 0x1

    goto :goto_5
.end method

.method private rescheduleTransitionToCamera()V
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mUseFastTransition:Z

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitionToCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    const-wide/16 v0, 0x190

    goto :goto_0
.end method

.method private reset()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mLaunchCameraStart:J

    iput-boolean v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    iput-boolean v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mDown:Z

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/CameraWidgetFrame;->enableWindowExitAnimation(Z)V

    return-void
.end method

.method private transitionToCamera()V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mDown:Z

    if-eqz v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/keyguard/CameraWidgetFrame;->enableWindowExitAnimation(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    iget v8, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    iget v9, v13, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    invoke-virtual {v13, v14}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v13}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getHeight()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v14}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getScaleY()F

    move-result v14

    mul-float v11, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x40000000

    div-float v14, v11, v14

    add-float v10, v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CameraWidgetFrame;->getRootView()Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mWidgetInfo:Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;

    invoke-static {v13, v14}, Lcom/android/keyguard/CameraWidgetFrame;->getPreviewWidget(Landroid/content/Context;Lcom/android/keyguard/KeyguardActivityLauncher$CameraWidgetInfo;)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setClickable(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getWidth()I

    move-result v15

    sub-int/2addr v15, v9

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getHeight()I

    move-result v16

    sub-int v16, v16, v8

    invoke-direct/range {v14 .. v16}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v13, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getHeight()I

    move-result v13

    sub-int/2addr v13, v8

    int-to-float v4, v13

    invoke-virtual {v12}, Landroid/view/ViewGroup;->getTop()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x40000000

    div-float v14, v4, v14

    add-float v3, v13, v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    invoke-virtual {v13}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->getScaleY()F

    move-result v6

    sub-float v7, v10, v3

    move v5, v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPreview:Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/android/keyguard/CameraWidgetFrame$FixedSizeFrameLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v13, v7}, Landroid/view/View;->setTranslationY(F)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v13, v5}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v13, v6}, Landroid/view/View;->setScaleY(F)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFullscreenPreview:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const/high16 v14, 0x3f800000

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const/high16 v14, 0x3f800000

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const-wide/16 v14, 0xfa

    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mPostTransitionToCameraEndAction:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewPropertyAnimator;->start()V

    if-gtz v8, :cond_3

    if-lez v9, :cond_5

    :cond_3
    if-lez v8, :cond_6

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    if-nez v13, :cond_4

    new-instance v13, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/CameraWidgetFrame;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    const/high16 v14, -0x1000000

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    move-object/from16 v16, v0

    new-instance v17, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_7

    const/4 v13, -0x1

    move v15, v13

    :goto_2
    if-eqz v2, :cond_8

    move v14, v8

    :goto_3
    if-eqz v2, :cond_9

    const/16 v13, 0x57

    :goto_4
    move-object/from16 v0, v17

    invoke-direct {v0, v15, v14, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    int-to-float v14, v8

    invoke-virtual {v13, v14}, Landroid/view/View;->setPivotY(F)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    int-to-float v14, v9

    invoke-virtual {v13, v14}, Landroid/view/View;->setPivotX(F)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setAlpha(F)V

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    const/high16 v14, 0x3f000000

    invoke-virtual {v13, v14}, Landroid/view/View;->setScaleY(F)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const/high16 v14, 0x3f800000

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const/high16 v14, 0x3f800000

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const/high16 v14, 0x3f800000

    invoke-virtual {v13, v14}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    const-wide/16 v14, 0xfa

    invoke-virtual {v13, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    invoke-interface {v13}, Lcom/android/keyguard/CameraWidgetFrame$Callbacks;->onLaunchingCamera()V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_7
    move v15, v9

    goto :goto_2

    :cond_8
    const/4 v13, -0x1

    move v14, v13

    goto :goto_3

    :cond_9
    const/16 v13, 0x75

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/CameraWidgetFrame;->mFakeNavBar:Landroid/view/View;

    const/high16 v14, 0x3f000000

    invoke-virtual {v13, v14}, Landroid/view/View;->setScaleX(F)V

    goto :goto_5
.end method


# virtual methods
.method public onActive(Z)V
    .locals 1
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActive:Z

    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActive:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->rescheduleTransitionToCamera()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->reset()V

    goto :goto_0
.end method

.method public onBouncerShowing(Z)V
    .locals 2
    .param p1    # Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActive:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->transitionToCamera()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRecoverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onFocusLost()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->cancelTransitionToCamera()V

    invoke-super {p0}, Lcom/android/keyguard/KeyguardWidgetFrame;->onFocusLost()V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->reset()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # I

    if-eq p1, p3, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    if-eq p2, p4, :cond_2

    if-lez p4, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderedSize:Landroid/graphics/Point;

    const/4 v2, -0x1

    iput v2, v1, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/graphics/Point;->x:I

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mRenderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardWidgetFrame;->onSizeChanged(IIII)V

    return-void
.end method

.method public onUserInteraction(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTransitioning:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/CameraWidgetFrame;->getLocationOnScreen([I)V

    iget-object v4, p0, Lcom/android/keyguard/CameraWidgetFrame;->mTmpLoc:[I

    aget v4, v4, v2

    invoke-virtual {p0}, Lcom/android/keyguard/CameraWidgetFrame;->getHeight()I

    move-result v5

    add-int v1, v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    int-to-float v5, v1

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mDown:Z

    iget-boolean v2, p0, Lcom/android/keyguard/CameraWidgetFrame;->mActive:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/CameraWidgetFrame;->rescheduleTransitionToCamera()V

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1    # Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setUseFastTransition(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/keyguard/CameraWidgetFrame;->mUseFastTransition:Z

    return-void
.end method
