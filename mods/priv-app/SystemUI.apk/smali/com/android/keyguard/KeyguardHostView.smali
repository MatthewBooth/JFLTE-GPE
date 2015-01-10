.class public Lcom/android/keyguard/KeyguardHostView;
.super Lcom/android/keyguard/KeyguardViewBase;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardHostView$SavedState;,
        Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;,
        Lcom/android/keyguard/KeyguardHostView$OnDismissAction;,
        Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;,
        Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field public static DEBUGXPORT:Z


# instance fields
.field private final MAX_WIDGETS:I

.field private mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppWidgetToShow:I

.field private mCameraDisabled:Z

.field private final mCameraWidgetCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

.field private mDisabledFeatures:I

.field private final mInsets:Landroid/graphics/Rect;

.field private mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

.field private mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

.field private mOnClickHandler:Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

.field private mPostBootCompletedRunnable:Ljava/lang/Runnable;

.field private mSafeModeEnabled:Z

.field protected mShowSecurityWhenReturn:Z

.field private mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

.field private final mSwitchPageRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

.field private mTransportState:I

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUserId:I

.field private mUserSetupCompleted:Z

.field private mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

.field private mWidgetCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/util/AttributeSet;

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v4, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    const/4 v5, 0x5

    iput v5, p0, Lcom/android/keyguard/KeyguardHostView;->MAX_WIDGETS:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    new-instance v5, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mOnClickHandler:Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

    new-instance v5, Lcom/android/keyguard/KeyguardHostView$1;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardHostView$1;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v5, Lcom/android/keyguard/KeyguardHostView$3;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardHostView$3;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mWidgetCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    new-instance v5, Lcom/android/keyguard/KeyguardHostView$4;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardHostView$4;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mCameraWidgetCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    new-instance v5, Lcom/android/keyguard/KeyguardHostView$7;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardHostView$7;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    sget-boolean v5, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "KeyguardHostView"

    const-string v6, "KeyguardHostView()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v5, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/KeyguardHostView;->mUserId:I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I

    move-result v5

    iput v5, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardHostView;->mCameraDisabled:Z

    :cond_1
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isSafeModeEnabled()Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    const/4 v3, 0x0

    :try_start_0
    const-string v2, "system"

    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v6, "system"

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    iget v9, p0, Lcom/android/keyguard/KeyguardHostView;->mUserId:I

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    new-instance v5, Landroid/appwidget/AppWidgetHost;

    const v6, 0x4b455947

    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mOnClickHandler:Lcom/android/keyguard/KeyguardHostView$MyOnClickHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v5, v3, v6, v7, v8}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    new-instance v5, Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-direct {v5, p0}, Lcom/android/keyguard/KeyguardViewStateManager;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "user_setup_complete"

    const/4 v7, -0x2

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getInitialTransportState()V

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-eqz v4, :cond_3

    const-string v4, "KeyguardHostView"

    const-string v5, "Keyguard widgets disabled by safe mode"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v4, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    const-string v4, "KeyguardHostView"

    const-string v5, "Keyguard widgets disabled by DPM"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v4, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    const-string v4, "KeyguardHostView"

    const-string v5, "Keyguard secure camera disabled by DPM"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v3, p1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardHostView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardHostView;
    .param p1    # Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->updateAndAddWidgets()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardHostView;)Z
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardWidgetPager;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardHostView;)Landroid/appwidget/AppWidgetHost;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardViewStateManager;
    .locals 1
    .param p0    # Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0
    .param p0    # Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->showAppropriateWidgetPage()V

    return-void
.end method

.method private addDefaultStatusWidget(I)V
    .locals 5
    .param p1    # I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/keyguard/R$layout;->keyguard_status_view:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v1, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    return-void
.end method

.method private addDefaultWidgets()V
    .locals 7

    const/4 v5, 0x0

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$layout;->keyguard_add_widget:I

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v0, v5}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    sget v4, Lcom/android/keyguard/R$id;->keyguard_add_widget_view:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v4, Lcom/android/keyguard/KeyguardHostView$5;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardHostView$5;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->cameraDisabledByDpm()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$bool;->kg_enable_camera_default_widget:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mCameraWidgetCallbacks:Lcom/android/keyguard/CameraWidgetFrame$Callbacks;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getActivityLauncher()Lcom/android/keyguard/KeyguardActivityLauncher;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/keyguard/CameraWidgetFrame;->create(Landroid/content/Context;Lcom/android/keyguard/CameraWidgetFrame$Callbacks;Lcom/android/keyguard/KeyguardActivityLauncher;)Lcom/android/keyguard/CameraWidgetFrame;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private addWidget(IIZ)Z
    .locals 5
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p1, v0}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/keyguard/KeyguardHostView;->addWidget(Landroid/appwidget/AppWidgetHostView;I)V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    if-eqz p3, :cond_1

    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** AppWidgetInfo for app widget id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  was null for user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/KeyguardHostView;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", deleting"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeAppWidget(I)Z

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private addWidgetsFromSettings()V
    .locals 5

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v2

    if-nez v2, :cond_3

    const-string v3, "KeyguardHostView"

    const-string v4, "Problem reading widgets"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    array-length v3, v2

    add-int/lit8 v0, v3, -0x1

    :goto_1
    if-ltz v0, :cond_1

    aget v3, v2, v0

    const/4 v4, -0x2

    if-ne v3, v4, :cond_4

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    aget v3, v2, v0

    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/android/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    goto :goto_2
.end method

.method private allocateIdForDefaultAppWidget()I
    .locals 7

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v1, Landroid/content/ComponentName;

    sget v4, Lcom/android/keyguard/R$string;->widget_default_package_name:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/android/keyguard/R$string;->widget_default_class_name:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    :try_start_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v4, v0, v1}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetId(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v2

    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when trying to bind default AppWidget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cameraDisabledByDpm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mCameraDisabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupAppWidgetIds()V
    .locals 7

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getAppWidgets()[I

    move-result-object v2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->getAppWidgetIds()[I

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    aget v0, v1, v3

    invoke-static {v2, v0}, Lcom/android/keyguard/KeyguardHostView;->contains([II)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found a appWidgetId that\'s not being used by keyguard, deleting id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static contains([II)Z
    .locals 5
    .param p0    # [I
    .param p1    # I

    move-object v0, p0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    if-ne v3, p1, :cond_0

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private enableUserSelectorIfNecessary()V
    .locals 6

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    if-nez v3, :cond_1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    const-string v4, "KeyguardHostView"

    const-string v5, "user service is null."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v3}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    sget v4, Lcom/android/keyguard/R$id;->keyguard_user_selector:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    sget-boolean v4, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "KeyguardHostView"

    const-string v5, "can\'t find user_selector in layout."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    instance-of v4, v1, Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    if-eqz v4, :cond_3

    check-cast v1, Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->addUsers(Ljava/util/Collection;)V

    new-instance v0, Lcom/android/keyguard/KeyguardHostView$9;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostView$9;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setCallback(Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;)V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    if-nez v1, :cond_4

    const-string v4, "KeyguardHostView"

    const-string v5, "could not find the user_selector."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    const-string v4, "KeyguardHostView"

    const-string v5, "user_selector is the wrong type."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private ensureTransportPresentOrRemoved(I)Z
    .locals 10
    .param p1    # I

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget v7, Lcom/android/keyguard/R$id;->keyguard_transport_control:I

    invoke-direct {p0, v7}, Lcom/android/keyguard/KeyguardHostView;->getWidgetPosition(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    move v3, v5

    :goto_0
    const/4 v7, 0x2

    if-ne p1, v7, :cond_4

    move v4, v5

    :goto_1
    if-ne p1, v5, :cond_5

    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostView;->isMusicPlaying(I)Z

    move-result v7

    if-eqz v7, :cond_5

    move v2, v5

    :goto_2
    if-nez v3, :cond_7

    if-nez v4, :cond_0

    if-eqz v2, :cond_7

    :cond_0
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v6, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v6

    if-eqz v6, :cond_6

    move v1, v0

    :cond_1
    :goto_3
    sget-boolean v6, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v6, :cond_2

    const-string v6, "KeyguardHostView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add transport at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/keyguard/KeyguardTransportControlView;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    :goto_4
    return v5

    :cond_3
    move v3, v6

    goto :goto_0

    :cond_4
    move v4, v6

    goto :goto_1

    :cond_5
    move v2, v6

    goto :goto_2

    :cond_6
    add-int/lit8 v1, v0, 0x1

    goto :goto_3

    :cond_7
    if-eqz v3, :cond_9

    if-nez p1, :cond_9

    sget-boolean v5, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v5, :cond_8

    const-string v5, "KeyguardHostView"

    const-string v7, "remove transport"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/keyguard/KeyguardTransportControlView;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/keyguard/KeyguardWidgetPager;->removeWidget(Landroid/view/View;)V

    iput-object v9, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchSetBackground(Landroid/graphics/Bitmap;)V

    :cond_9
    move v5, v6

    goto :goto_4
.end method

.method private findCameraPage()Lcom/android/keyguard/CameraWidgetFrame;
    .locals 2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/CameraWidgetFrame;

    :goto_1
    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getAppropriateWidgetPage(I)I
    .locals 6
    .param p1    # I

    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    if-ne v3, v4, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    :cond_2
    const/4 v3, 0x2

    if-ne p1, v3, :cond_4

    sget-boolean v3, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "KeyguardHostView"

    const-string v4, "Music playing, show transport"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getOrCreateTransportControl()Lcom/android/keyguard/KeyguardTransportControlView;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v3

    if-eqz v3, :cond_5

    add-int/lit8 v2, v2, -0x1

    :cond_5
    sget-boolean v3, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Show right-most page "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method private getDisabledFeatures(Landroid/app/admin/DevicePolicyManager;)I
    .locals 3
    .param p1    # Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method private getInitialTransportState()V
    .locals 4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCachedDisplayClientState()Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;->clearing:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initial transport state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pbstate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;->playbackState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$DisplayClientState;->playbackState:I

    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->isMusicPlaying(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getInsertPageIndex()I
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    sget v3, Lcom/android/keyguard/R$id;->keyguard_add_widget:I

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getOrCreateTransportControl()Lcom/android/keyguard/KeyguardTransportControlView;
    .locals 3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$layout;->keyguard_transport_control_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardTransportControlView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    new-instance v2, Lcom/android/keyguard/KeyguardHostView$6;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardHostView$6;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardTransportControlView;->setTransportControlCallback(Lcom/android/keyguard/KeyguardHostView$TransportControlCallback;)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    return-object v1
.end method

.method private getWidgetPosition(I)I
    .locals 7
    .param p1    # I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, p1, :cond_0

    :goto_1
    return v3

    :cond_0
    if-nez v2, :cond_1

    const-string v4, "KeyguardHostView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "*** Null content at i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",N="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private static final isMusicPlaying(I)Z
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private maybeEnableAddButton()V
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->shouldEnableAddWidget()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->setAddWidgetEnabled(Z)V

    :cond_0
    return-void
.end method

.method private numWidgets()I
    .locals 4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private setInsets(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/SlidingChallengeLayout;->setInsets(Landroid/graphics/Rect;)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/MultiPaneChallengeLayout;->setInsets(Landroid/graphics/Rect;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->findCameraPage()Lcom/android/keyguard/CameraWidgetFrame;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CameraWidgetFrame;->setInsets(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method

.method private shouldEnableAddWidget()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->numWidgets()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardHostView;->mUserSetupCompleted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAppropriateWidgetPage()V
    .locals 4

    iget v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->ensureTransportPresentOrRemoved(I)Z

    move-result v2

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->getAppropriateWidgetPage(I)I

    move-result v0

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    new-instance v3, Lcom/android/keyguard/KeyguardHostView$8;

    invoke-direct {v3, p0, v0}, Lcom/android/keyguard/KeyguardHostView$8;-><init>(Lcom/android/keyguard/KeyguardHostView;I)V

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardHostView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateAndAddWidgets()V
    .locals 2

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->cleanupAppWidgetIds()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->addDefaultWidgets()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->addWidgetsFromSettings()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->maybeEnableAddButton()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->checkAppWidgetConsistency()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/keyguard/SlidingChallengeLayout;->setEnableChallengeDragging(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private widgetsDisabled()Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    iget v5, p0, Lcom/android/keyguard/KeyguardHostView;->mDisabledFeatures:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    move v0, v3

    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getWidgetsEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    move v2, v3

    :goto_1
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    return v4

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1
.end method


# virtual methods
.method addWidget(Landroid/appwidget/AppWidgetHostView;I)V
    .locals 1
    .param p1    # Landroid/appwidget/AppWidgetHostView;
    .param p2    # I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0, p1, p2}, Lcom/android/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    return-void
.end method

.method public checkAppWidgetConsistency()V
    .locals 10

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v2

    const/4 v6, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v9, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v9, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v6, 0x1

    :cond_0
    if-nez v6, :cond_3

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->getInsertPageIndex()I

    move-result v4

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->widgetsDisabled()Z

    move-result v9

    if-nez v9, :cond_5

    move v5, v7

    :goto_1
    const/4 v0, 0x0

    iget-boolean v9, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v9, :cond_1

    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->allocateIdForDefaultAppWidget()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1, v4, v7}, Lcom/android/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    move-result v0

    :cond_1
    :goto_2
    if-nez v0, :cond_2

    invoke-direct {p0, v4}, Lcom/android/keyguard/KeyguardHostView;->addDefaultStatusWidget(I)V

    :cond_2
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardHostView;->mSafeModeEnabled:Z

    if-nez v7, :cond_3

    if-eqz v5, :cond_3

    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v8, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->onAddView(Landroid/view/View;I)V

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    move v5, v8

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getFallbackAppWidgetId()I

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->allocateIdForDefaultAppWidget()I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/LockPatternUtils;->writeFallbackAppWidgetId(I)V

    :cond_7
    if-eqz v1, :cond_1

    invoke-direct {p0, v1, v4, v8}, Lcom/android/keyguard/KeyguardHostView;->addWidget(IIZ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v7, v1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;->writeFallbackAppWidgetId(I)V

    goto :goto_2
.end method

.method public cleanUp()V
    .locals 4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->removeAllViews()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityContainer;->onPause()V

    return-void
.end method

.method public clearAppWidgetToShow()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    return-void
.end method

.method public dismiss(Z)Z
    .locals 8
    .param p1    # Z

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->dismiss(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v6, v5}, Lcom/android/keyguard/KeyguardViewStateManager;->showBouncer(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/keyguard/R$bool;->kg_sim_puk_account_full_screen:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v6, :cond_0

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v6, :cond_0

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Account:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v3, v6, :cond_2

    :cond_0
    move v2, v5

    :goto_0
    iget-object v7, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    const/16 v6, 0x8

    :goto_1
    invoke-virtual {v7, v6}, Lcom/android/keyguard/KeyguardWidgetPager;->setVisibility(I)V

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSystemUiVisibility()I

    move-result v6

    const/high16 v7, 0x2000000

    or-int/2addr v6, v7

    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardHostView;->setSystemUiVisibility(I)V

    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-nez v1, :cond_5

    :goto_3
    invoke-virtual {v6, v5}, Lcom/android/keyguard/SlidingChallengeLayout;->setChallengeInteractive(Z)V

    :cond_1
    return v0

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v6, v4

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSystemUiVisibility()I

    move-result v6

    const v7, -0x2000001

    and-int/2addr v6, v7

    goto :goto_2

    :cond_5
    move v5, v4

    goto :goto_3
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1    # Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->setInsets(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getUserActivityTimeout()J
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardWidgetPager;->getUserActivityTimeout()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardViewBase;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->startListening()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardViewBase;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Lcom/android/keyguard/KeyguardViewBase;->onFinishInflate()V

    sget v2, Lcom/android/keyguard/R$id;->keyguard_widget_pager_delete_target:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$id;->app_widget_container:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardWidgetPager;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mWidgetCallbacks:Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setCallbacks(Lcom/android/keyguard/KeyguardWidgetPager$Callbacks;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardWidgetPager;->setDeleteDropTarget(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    const/high16 v3, 0x3f000000

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setMinScale(F)V

    sget v2, Lcom/android/keyguard/R$id;->sliding_layout:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/SlidingChallengeLayout;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/SlidingChallengeLayout;->setOnChallengeScrolledListener(Lcom/android/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;)V

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setViewStateManager(Lcom/android/keyguard/KeyguardViewStateManager;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    sget v2, Lcom/android/keyguard/R$id;->multi_pane_challenge:I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/MultiPaneChallengeLayout;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSlidingChallengeLayout:Lcom/android/keyguard/SlidingChallengeLayout;

    :goto_0
    check-cast v0, Lcom/android/keyguard/ChallengeLayout;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-interface {v0, v2}, Lcom/android/keyguard/ChallengeLayout;->setOnBouncerStateChangedListener(Lcom/android/keyguard/ChallengeLayout$OnBouncerStateChangedListener;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-interface {v0}, Lcom/android/keyguard/ChallengeLayout;->getBouncerAnimationDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardWidgetPager;->setBouncerAnimationDuration(I)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardViewStateManager;->setPagedView(Lcom/android/keyguard/KeyguardWidgetPager;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardViewStateManager;->setChallengeLayout(Lcom/android/keyguard/ChallengeLayout;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardViewStateManager;->setSecurityViewContainer(Lcom/android/keyguard/KeyguardSecurityView;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->updateAndAddWidgets()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardViewStateManager;->isBouncing()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityViews(Z)V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->enableUserSelectorIfNecessary()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mMultiPaneChallengeLayout:Lcom/android/keyguard/MultiPaneChallengeLayout;

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/keyguard/KeyguardHostView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardHostView$2;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mPostBootCompletedRunnable:Ljava/lang/Runnable;

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardViewBase;->onPause()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->clearAppWidgetToShow()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->hasBootCompleted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->checkAppWidgetConsistency()V

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->findCameraPage()Lcom/android/keyguard/CameraWidgetFrame;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/keyguard/CameraWidgetFrame;->onScreenTurnedOff()V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1    # Landroid/os/Parcelable;

    instance-of v1, p1, Lcom/android/keyguard/KeyguardHostView$SavedState;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/keyguard/KeyguardHostView$SavedState;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/keyguard/KeyguardViewBase;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/android/keyguard/KeyguardHostView$SavedState;->transportState:I

    iput v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    iget v1, v0, Lcom/android/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    iput v1, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    iget-object v1, v0, Lcom/android/keyguard/KeyguardHostView$SavedState;->insets:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->setInsets(Landroid/graphics/Rect;)V

    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRestoreInstanceState, transport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSwitchPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardViewBase;->onResume()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewStateManager;->showUsabilityHints()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    sget-boolean v3, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "KeyguardHostView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSaveInstanceState, tstate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/KeyguardViewBase;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    new-instance v1, Lcom/android/keyguard/KeyguardHostView$SavedState;

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardHostView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetContainer:Lcom/android/keyguard/KeyguardWidgetPager;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportControl:Lcom/android/keyguard/KeyguardTransportControlView;

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v3

    if-ltz v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    const/4 v3, 0x2

    :goto_1
    iput v3, v1, Lcom/android/keyguard/KeyguardHostView$SavedState;->transportState:I

    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mAppWidgetToShow:I

    iput v3, v1, Lcom/android/keyguard/KeyguardHostView$SavedState;->appWidgetToShow:I

    iget-object v3, v1, Lcom/android/keyguard/KeyguardHostView$SavedState;->insets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTransportState:I

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/KeyguardHostView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onUserActivityTimeoutChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->onUserActivityTimeoutChanged()V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1    # Z

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->onWindowFocusChanged(Z)V

    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v2, "KeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_3

    const-string v1, "focused"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/android/keyguard/R$id;->sliding_layout:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/SlidingChallengeLayout;

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->setHandleAlpha(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/SlidingChallengeLayout;->showChallenge(Z)V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardHostView;->mShowSecurityWhenReturn:Z

    :cond_2
    return-void

    :cond_3
    const-string v1, "unfocused"

    goto :goto_0
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2
    .param p1    # Lcom/android/internal/widget/LockPatternUtils;

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardViewStateManager;->isBouncing()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityViews(Z)V

    return-void
.end method

.method public userActivity()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    :cond_0
    return-void
.end method
