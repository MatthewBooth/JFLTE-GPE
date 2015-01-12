.class public Lcom/android/incallui/ProximitySensor;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Lcom/android/incallui/AccelerometerListener$OrientationListener;
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

.field private final mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

.field private mDialpadVisible:Z

.field private mIsHardKeyboardOpen:Z

.field private mIsPhoneOffhook:Z

.field private mOrientation:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mUiShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/ProximitySensor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/AudioModeProvider;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/incallui/AudioModeProvider;

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Lcom/android/incallui/AccelerometerListener;

    invoke-direct {v0, p1, p0}, Lcom/android/incallui/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/android/incallui/AccelerometerListener$OrientationListener;)V

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    iput-object p2, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    return-void
.end method

.method private declared-synchronized updateProximitySensorMode()V
    .locals 8

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v5}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    const/4 v5, 0x4

    if-eq v5, v0, :cond_0

    const/16 v5, 0x8

    if-eq v5, v0, :cond_0

    if-eq v6, v0, :cond_0

    iget-boolean v5, p0, Lcom/android/incallui/ProximitySensor;->mIsHardKeyboardOpen:Z

    if-eqz v5, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    iget v5, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    if-ne v5, v6, :cond_2

    move v1, v3

    :goto_1
    iget-boolean v5, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    if-nez v5, :cond_3

    if-eqz v1, :cond_3

    move v5, v3

    :goto_2
    or-int/2addr v2, v5

    iget-boolean v5, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    move v5, v3

    :goto_3
    or-int/2addr v2, v5

    const-string v5, "screenonImmediately: "

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p0, v5, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v6

    const-string v7, "keybrd"

    iget-boolean v5, p0, Lcom/android/incallui/ProximitySensor;->mIsHardKeyboardOpen:Z

    if-eqz v5, :cond_5

    move v5, v3

    :goto_4
    invoke-virtual {v6, v7, v5}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v6

    const-string v7, "dpad"

    iget-boolean v5, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    if-eqz v5, :cond_6

    move v5, v3

    :goto_5
    invoke-virtual {v6, v7, v5}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v6

    const-string v7, "offhook"

    iget-boolean v5, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eqz v5, :cond_7

    move v5, v3

    :goto_6
    invoke-virtual {v6, v7, v5}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v6

    const-string v7, "hor"

    if-eqz v1, :cond_8

    move v5, v3

    :goto_7
    invoke-virtual {v6, v7, v5}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v5

    const-string v6, "ui"

    iget-boolean v7, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    if-eqz v7, :cond_9

    :goto_8
    invoke-virtual {v5, v6, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v3

    const-string v4, "aud"

    invoke-static {v0}, Landroid/telecom/AudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eqz v3, :cond_a

    if-nez v2, :cond_a

    const-string v3, "Turning on proximity sensor"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/TelecomAdapter;->turnOnProximitySensor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_9
    monitor-exit p0

    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v4

    goto :goto_3

    :cond_5
    move v5, v4

    goto :goto_4

    :cond_6
    move v5, v4

    goto :goto_5

    :cond_7
    move v5, v4

    goto :goto_6

    :cond_8
    move v5, v4

    goto :goto_7

    :cond_9
    move v3, v4

    goto :goto_8

    :cond_a
    :try_start_1
    const-string v3, "Turning off proximity sensor"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/incallui/TelecomAdapter;->turnOffProximitySensor(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public isScreenReallyOff()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAudioMode(I)V
    .locals 0
    .param p1    # I

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;

    const/4 v0, 0x1

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsHardKeyboardOpen:Z

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDialpadVisible(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public onInCallShowing(Z)V
    .locals 1
    .param p1    # Z

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    goto :goto_0
.end method

.method public onMute(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 5
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3    # Lcom/android/incallui/CallList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v4, p2, :cond_2

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    :goto_0
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v4, p2, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    move v1, v2

    :goto_1
    iget-boolean v2, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eq v1, v2, :cond_1

    iput-boolean v1, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    iput v3, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    iget-object v2, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    iget-boolean v3, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    invoke-virtual {v2, v3}, Lcom/android/incallui/AccelerometerListener;->enable(Z)V

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    :cond_1
    return-void

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method public onSupportedAudioMode(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public orientationChanged(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    return-void
.end method

.method public tearDown()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/AccelerometerListener;->enable(Z)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->turnOffProximitySensor(Z)V

    return-void
.end method
