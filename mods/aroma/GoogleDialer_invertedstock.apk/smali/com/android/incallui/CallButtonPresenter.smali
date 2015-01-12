.class public Lcom/android/incallui/CallButtonPresenter;
.super Lcom/android/incallui/Presenter;
.source "CallButtonPresenter.java"

# interfaces
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;",
        ">;",
        "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field private mAutomaticallyMuted:Z

.field private mCall:Lcom/android/incallui/Call;

.field private mPreviousMuteState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    return-void
.end method

.method private updateCallButtons(Lcom/android/incallui/Call;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/android/incallui/Call;
    .param p2    # Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/incallui/Call;->isVideoCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->updateVideoCallButtons()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->updateVoiceCallButtons(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 3
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/incallui/Call;

    const-string v2, "Updating call UI for call: "

    invoke-static {p0, v2, p2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setEnabled(Z)V

    if-eqz v0, :cond_0

    invoke-interface {v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/android/incallui/CallButtonPresenter;->updateCallButtons(Lcom/android/incallui/Call;Landroid/content/Context;)V

    const/16 v2, 0x40

    invoke-virtual {p2, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableMute(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateVideoCallButtons()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "Showing buttons for video call."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAudioButton(Z)V

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showDialpadButton(Z)V

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHoldButton(Z)V

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwapButton(Z)V

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showChangeToVideoButton(Z)V

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAddCallButton(Z)V

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMergeButton(Z)V

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showOverflowButton(Z)V

    invoke-interface {v0, v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showChangeToVoiceButton(Z)V

    invoke-interface {v0, v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwitchCameraButton(Z)V

    invoke-interface {v0, v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showPauseVideoButton(Z)V

    return-void
.end method

.method private updateVoiceCallButtons(Lcom/android/incallui/Call;)V
    .locals 13
    .param p1    # Lcom/android/incallui/Call;

    const-string v11, "Showing buttons for voice call."

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v10

    check-cast v10, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showChangeToVoiceButton(Z)V

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwitchCameraButton(Z)V

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showPauseVideoButton(Z)V

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAudioButton(Z)V

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showDialpadButton(Z)V

    const-string v11, "Show hold "

    const/4 v12, 0x2

    invoke-virtual {p1, v12}, Lcom/android/incallui/Call;->can(I)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v11, "Enable hold"

    const/4 v12, 0x1

    invoke-virtual {p1, v12}, Lcom/android/incallui/Call;->can(I)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v11, "Show merge "

    const/4 v12, 0x4

    invoke-virtual {p1, v12}, Lcom/android/incallui/Call;->can(I)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v11, "Show swap "

    const/16 v12, 0x8

    invoke-virtual {p1, v12}, Lcom/android/incallui/Call;->can(I)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v11, "Show add call "

    const/16 v12, 0x10

    invoke-virtual {p1, v12}, Lcom/android/incallui/Call;->can(I)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v11, "Show mute "

    const/16 v12, 0x40

    invoke-virtual {p1, v12}, Lcom/android/incallui/Call;->can(I)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v11, 0x10

    invoke-virtual {p1, v11}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    const/4 v11, 0x2

    invoke-virtual {p1, v11}, Lcom/android/incallui/Call;->can(I)Z

    move-result v9

    const/16 v11, 0x100

    invoke-virtual {p1, v11}, Lcom/android/incallui/Call;->can(I)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x200

    invoke-virtual {p1, v11}, Lcom/android/incallui/Call;->can(I)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v10, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showChangeToVideoButton(Z)V

    const/4 v11, 0x4

    invoke-virtual {p1, v11}, Lcom/android/incallui/Call;->can(I)Z

    move-result v7

    move v5, v0

    const/16 v11, 0x8

    invoke-virtual {p1, v11}, Lcom/android/incallui/Call;->can(I)Z

    move-result v8

    if-nez v8, :cond_5

    if-nez v2, :cond_0

    if-eqz v9, :cond_5

    :cond_0
    const/4 v6, 0x1

    :goto_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_6

    const/4 v11, 0x1

    :goto_2
    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setHold(Z)V

    if-eqz v1, :cond_7

    if-nez v5, :cond_1

    if-eqz v7, :cond_7

    :cond_1
    if-nez v6, :cond_2

    if-eqz v8, :cond_7

    :cond_2
    const/4 v4, 0x1

    :goto_3
    if-nez v6, :cond_3

    if-eqz v8, :cond_8

    :cond_3
    if-eqz v7, :cond_8

    if-eqz v5, :cond_8

    const/4 v3, 0x1

    :goto_4
    if-eqz v4, :cond_a

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHoldButton(Z)V

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwapButton(Z)V

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAddCallButton(Z)V

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMergeButton(Z)V

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showOverflowButton(Z)V

    if-eqz v6, :cond_9

    if-eqz v2, :cond_9

    const/4 v11, 0x1

    :goto_5
    invoke-interface {v10, v7, v5, v11, v8}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->configureOverflowMenu(ZZZZ)V

    :goto_6
    return-void

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    const/4 v11, 0x0

    goto :goto_5

    :cond_a
    if-eqz v3, :cond_b

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAddCallButton(Z)V

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMergeButton(Z)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v10, v7, v5, v11, v12}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->configureOverflowMenu(ZZZZ)V

    :goto_7
    invoke-interface {v10, v6}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHoldButton(Z)V

    invoke-interface {v10, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableHold(Z)V

    invoke-interface {v10, v8}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwapButton(Z)V

    goto :goto_6

    :cond_b
    invoke-interface {v10, v7}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMergeButton(Z)V

    invoke-interface {v10, v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAddCallButton(Z)V

    goto :goto_7
.end method


# virtual methods
.method public addCallClicked()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/TelecomAdapter;->addCall()V

    return-void
.end method

.method public changeToVideoClicked()V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/telecom/VideoProfile;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0
.end method

.method public changeToVoiceClicked()V
    .locals 4

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/telecom/VideoProfile;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Landroid/telecom/VideoProfile;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_0
.end method

.method public getAudioMode()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method public getSupportedAudio()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getSupportedModes()I

    move-result v0

    return v0
.end method

.method public holdClicked(Z)V
    .locals 2
    .param p1    # Z

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Putting the call on hold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing the call from hold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public mergeClicked()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    return-void
.end method

.method public muteClicked(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turning on mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    return-void
.end method

.method public onAudioMode(I)V
    .locals 1
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setAudio(I)V

    :cond_0
    return-void
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 1
    .param p1    # Lcom/android/incallui/Call;
    .param p2    # Landroid/telecom/Call$Details;

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallButtonPresenter;->updateCallButtons(Lcom/android/incallui/Call;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3    # Lcom/android/incallui/Call;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/CallButtonPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method

.method public onMute(Z)V
    .locals 1
    .param p1    # Z

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setMute(Z)V

    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4
    .param p1    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3    # Lcom/android/incallui/CallList;

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, p2, v1}, Lcom/android/incallui/CallButtonPresenter;->updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    return-void

    :cond_1
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_2

    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v2, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(ZZ)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v1, :cond_4

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(ZZ)V

    :cond_3
    iput-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    goto :goto_0

    :cond_4
    iput-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    goto :goto_0
.end method

.method public onSupportedAudioMode(I)V
    .locals 1
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setSupportedAudio(I)V

    :cond_0
    return-void
.end method

.method public onUiReady(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V
    .locals 1
    .param p1    # Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1    # Lcom/android/incallui/Ui;

    check-cast p1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->onUiReady(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V
    .locals 1
    .param p1    # Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1    # Lcom/android/incallui/Ui;

    check-cast p1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->onUiUnready(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V

    return-void
.end method

.method public pauseVideoClicked(Z)V
    .locals 4
    .param p1    # Z

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    new-instance v2, Landroid/telecom/VideoProfile;

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    or-int/lit8 v3, v3, 0x4

    invoke-direct {v2, v3}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v3, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setPauseVideoButton(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    new-instance v2, Landroid/telecom/VideoProfile;

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    and-int/lit8 v3, v3, -0x5

    invoke-direct {v2, v3}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_1
.end method

.method public refreshMuteState()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousMuteState:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mAutomaticallyMuted:Z

    goto :goto_0
.end method

.method public setAudioMode(I)V
    .locals 2
    .param p1    # I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending new Audio Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/telecom/AudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    return-void
.end method

.method public showDialpadClicked(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show dialpad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(ZZ)V

    return-void
.end method

.method public swapClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Swapping the call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->swap(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public switchCameraClicked(Z)V
    .locals 5
    .param p1    # Z

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/InCallCameraManager;->setUseFrontFacingCamera(Z)V

    iget-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, v0}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/telecom/InCallService$VideoCall;->requestCameraCapabilities()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    if-nez p1, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-interface {v3, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setSwitchCameraButton(Z)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public toggleSpeakerphone()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const-string v1, "toggling speakerphone not allowed when bluetooth supported."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setSupportedAudio(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/4 v0, 0x5

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0
.end method
