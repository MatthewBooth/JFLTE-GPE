.class public Lcom/android/incallui/VideoCallPresenter;
.super Lcom/android/incallui/Presenter;
.source "VideoCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;
.implements Lcom/android/incallui/InCallVideoCallListenerNotifier$SurfaceChangeListener;
.implements Lcom/android/incallui/InCallVideoCallListenerNotifier$VideoEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/VideoCallPresenter$VideoCallUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;",
        "Lcom/android/incallui/InCallVideoCallListenerNotifier$SurfaceChangeListener;",
        "Lcom/android/incallui/InCallVideoCallListenerNotifier$VideoEventListener;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceOrientation:I

.field private mIsFullScreen:Z

.field private mIsVideoCall:Z

.field private mMinimumVideoDimension:F

.field private mPreVideoAudioMode:I

.field private mPreviewSurfaceState:I

.field private mPrimaryCall:Lcom/android/incallui/Call;

.field private mSessionModificationResetHandler:Landroid/os/Handler;

.field private mVideoCall:Landroid/telecom/InCallService$VideoCall;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsFullScreen:Z

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPreVideoAudioMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/VideoCallPresenter;)Lcom/android/incallui/Call;
    .locals 1
    .param p0    # Lcom/android/incallui/VideoCallPresenter;

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method private changeVideoCall(Landroid/telecom/InCallService$VideoCall;)V
    .locals 2
    .param p1    # Landroid/telecom/InCallService$VideoCall;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    :cond_0
    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    return-void
.end method

.method private checkForVideoCallChange()V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->changeVideoCall(Landroid/telecom/InCallService$VideoCall;)V

    :cond_0
    return-void
.end method

.method private checkForVideoStateChange()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoCall:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoCall:Z

    iget-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoCall:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->enterVideoMode()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    goto :goto_0
.end method

.method private enterVideoMode()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v1, v3}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->showVideoUi(Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallPresenter;->setInCallAllowsOrientationChange(Z)V

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->isActivityRestart()Z

    move-result v2

    if-nez v2, :cond_0

    iput v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v2}, Landroid/telecom/InCallService$VideoCall;->requestCameraCapabilities()V

    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->isDisplayVideoSurfaceCreated()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getDisplayVideoSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v2

    iput v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPreVideoAudioMode:I

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    goto :goto_0
.end method

.method private exitVideoMode()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/InCallPresenter;->setInCallAllowsOrientationChange(Z)V

    invoke-interface {v0, v3}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->showVideoUi(Z)V

    iget v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreVideoAudioMode:I

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPreVideoAudioMode:I

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    iput v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPreVideoAudioMode:I

    goto :goto_0
.end method

.method private setPreviewSize(IF)V
    .locals 4
    .param p1    # I
    .param p2    # F

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    mul-float/2addr v3, p2

    float-to-int v2, v3

    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    float-to-int v0, v3

    :goto_1
    invoke-interface {v1, v2, v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setPreviewSize(II)V

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    float-to-int v2, v3

    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    mul-float/2addr v3, p2

    float-to-int v0, v3

    goto :goto_1
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mSessionModificationResetHandler:Landroid/os/Handler;

    return-void
.end method

.method public onCameraDimensionsChange(Lcom/android/incallui/Call;II)V
    .locals 4
    .param p1    # Lcom/android/incallui/Call;
    .param p2    # I
    .param p3    # I

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    const/high16 v0, 0x3f800000

    if-lez p2, :cond_2

    if-lez p3, :cond_2

    int-to-float v2, p2

    int-to-float v3, p3

    div-float v0, v2, v3

    :cond_2
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    invoke-direct {p0, v2, v0}, Lcom/android/incallui/VideoCallPresenter;->setPreviewSize(IF)V

    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->isPreviewVideoSurfaceCreated()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getPreviewVideoSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 1
    .param p1    # Lcom/android/incallui/Call;
    .param p2    # Landroid/telecom/Call$Details;

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->checkForVideoStateChange()V

    goto :goto_0
.end method

.method public onDeviceOrientationChanged(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    return-void
.end method

.method public onDowngradeToAudio(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1    # Lcom/android/incallui/Call;

    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3    # Lcom/android/incallui/Call;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/VideoCallPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onPeerPauseStateChanged(Lcom/android/incallui/Call;Z)V
    .locals 1
    .param p1    # Lcom/android/incallui/Call;
    .param p2    # Z

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3    # Lcom/android/incallui/CallList;

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/common/CallUtil;->isVideoEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v2, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    :cond_2
    const/4 v0, 0x0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v2, :cond_4

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->checkForVideoCallChange()V

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoCall:Z

    iget-boolean v2, p0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoCall:Z

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->enterVideoMode()V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v2, :cond_5

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v2, :cond_3

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    goto :goto_0

    :cond_8
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    goto :goto_0
.end method

.method public onSurfaceClick(I)V
    .locals 2
    .param p1    # I

    iget-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsFullScreen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsFullScreen:Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter;->mIsFullScreen:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setFullScreenVideoState(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceCreated(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v2, :cond_2

    iget v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getPreviewVideoSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getDisplayVideoSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public onSurfaceDestroyed(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1    # Lcom/android/incallui/Ui;

    check-cast p1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->onUiReady(Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V

    return-void
.end method

.method public onUiReady(Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V
    .locals 1
    .param p1    # Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    invoke-static {}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallListenerNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->addSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallListenerNotifier$SurfaceChangeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallListenerNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->addVideoEventListener(Lcom/android/incallui/InCallVideoCallListenerNotifier$VideoEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallListenerNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->addSessionModificationListener(Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoCall:Z

    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1    # Lcom/android/incallui/Ui;

    check-cast p1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->onUiUnready(Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V
    .locals 1
    .param p1    # Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    invoke-static {}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallListenerNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->removeSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallListenerNotifier$SurfaceChangeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallListenerNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->removeVideoEventListener(Lcom/android/incallui/InCallVideoCallListenerNotifier$VideoEventListener;)V

    invoke-static {}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallListenerNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->removeSessionModificationListener(Lcom/android/incallui/InCallVideoCallListenerNotifier$SessionModificationListener;)V

    return-void
.end method

.method public onUpdatePeerDimensions(Lcom/android/incallui/Call;II)V
    .locals 1
    .param p1    # Lcom/android/incallui/Call;
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public onUpgradeToVideoFail(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1    # Lcom/android/incallui/Call;

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0, p1}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mSessionModificationResetHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/incallui/VideoCallPresenter$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/VideoCallPresenter$1;-><init>(Lcom/android/incallui/VideoCallPresenter;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onUpgradeToVideoRequest(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1    # Lcom/android/incallui/Call;

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    return-void
.end method

.method public onUpgradeToVideoSuccess(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1    # Lcom/android/incallui/Call;

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0, p1}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0
.end method
