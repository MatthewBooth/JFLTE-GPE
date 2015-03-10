.class final Lcom/android/server/telecom/CallAudioManager;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "CallAudioManager.java"

# interfaces
.implements Lcom/android/server/telecom/WiredHeadsetManager$Listener;


# instance fields
.field private mAudioFocusStreamType:I

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioState:Landroid/telecom/AudioState;

.field private final mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

.field private mIsRinging:Z

.field private mIsTonePlaying:Z

.field private mMostRecentlyUsedMode:I

.field private final mStatusBarNotifier:Lcom/android/server/telecom/StatusBarNotifier;

.field private mWasSpeakerOn:Z

.field private final mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/StatusBarNotifier;Lcom/android/server/telecom/WiredHeadsetManager;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/telecom/CallAudioManager;->mMostRecentlyUsedMode:I

    iput-object p2, p0, Lcom/android/server/telecom/CallAudioManager;->mStatusBarNotifier:Lcom/android/server/telecom/StatusBarNotifier;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v0, Lcom/android/server/telecom/BluetoothManager;

    invoke-direct {v0, p1, p0}, Lcom/android/server/telecom/BluetoothManager;-><init>(Landroid/content/Context;Lcom/android/server/telecom/CallAudioManager;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    iput-object p3, p0, Lcom/android/server/telecom/CallAudioManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/WiredHeadsetManager;->addListener(Lcom/android/server/telecom/WiredHeadsetManager$Listener;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallAudioManager;->getInitialAudioState(Lcom/android/server/telecom/Call;)Landroid/telecom/AudioState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallAudioManager;->saveAudioState(Landroid/telecom/AudioState;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    return-void
.end method

.method private calculateSupportedRoutes()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/WiredHeadsetManager;->isPluggedIn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    :goto_0
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    return v0

    :cond_1
    const/16 v0, 0x9

    goto :goto_0
.end method

.method private static getForegroundCall()Lcom/android/server/telecom/Call;
    .locals 3

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private getInitialAudioState(Lcom/android/server/telecom/Call;)Landroid/telecom/AudioState;
    .locals 4

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->calculateSupportedRoutes()I

    move-result v1

    const/4 v0, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/CallAudioManager;->selectWiredOrEarpiece(II)I

    move-result v0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v2}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    new-instance v2, Landroid/telecom/AudioState;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Landroid/telecom/AudioState;-><init>(ZII)V

    return-object v2

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private hasFocus()Z
    .locals 2

    iget v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCallUpdated(Lcom/android/server/telecom/Call;)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->updateAudioStreamAndMode()V

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/android/server/telecom/CallAudioManager;->setInitialAudioState(Lcom/android/server/telecom/Call;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestAudioFocusAndSetMode(II)V
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "requestAudioFocusAndSetMode, stream: %d -> %d"

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    if-eq v0, p1, :cond_0

    const-string v0, "requesting audio focus for stream: %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, v5}, Landroid/media/AudioManager;->requestAudioFocusForCall(II)V

    :cond_0
    iput p1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    invoke-direct {p0, p2}, Lcom/android/server/telecom/CallAudioManager;->setMode(I)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private saveAudioState(Landroid/telecom/AudioState;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mStatusBarNotifier:Lcom/android/server/telecom/StatusBarNotifier;

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v1, v1, Landroid/telecom/AudioState;->isMuted:Z

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/StatusBarNotifier;->notifyMute(Z)V

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mStatusBarNotifier:Lcom/android/server/telecom/StatusBarNotifier;

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v0, v0, Landroid/telecom/AudioState;->route:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/server/telecom/StatusBarNotifier;->notifySpeakerphone(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectWiredOrEarpiece(II)I
    .locals 2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    and-int/lit8 p1, p2, 0x5

    if-nez p1, :cond_0

    const-string v0, "One of wired headset or earpiece should always be valid."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method private setInitialAudioState(Lcom/android/server/telecom/Call;Z)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallAudioManager;->getInitialAudioState(Lcom/android/server/telecom/Call;)Landroid/telecom/AudioState;

    move-result-object v0

    const-string v1, "setInitialAudioState %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, v0, Landroid/telecom/AudioState;->isMuted:Z

    iget v2, v0, Landroid/telecom/AudioState;->route:I

    iget v0, v0, Landroid/telecom/AudioState;->supportedRouteMask:I

    invoke-direct {p0, p2, v1, v2, v0}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZZII)V

    return-void
.end method

.method private setMode(I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const-string v1, "Request to change audio mode from %d to %d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v0, p1, :cond_1

    if-ne v0, v6, :cond_0

    if-ne p1, v5, :cond_0

    const-string v0, "Transition from IN_CALL -> RINGTONE. Resetting to NORMAL first."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setMode(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMode(I)V

    iput p1, p0, Lcom/android/server/telecom/CallAudioManager;->mMostRecentlyUsedMode:I

    :cond_1
    return-void
.end method

.method private setSystemAudioState(ZII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZZII)V

    return-void
.end method

.method private setSystemAudioState(ZZII)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    new-instance v1, Landroid/telecom/AudioState;

    invoke-direct {v1, p2, p3, p4}, Landroid/telecom/AudioState;-><init>(ZII)V

    invoke-direct {p0, v1}, Lcom/android/server/telecom/CallAudioManager;->saveAudioState(Landroid/telecom/AudioState;)V

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const-string v1, "changing audio state from %s to %s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v4

    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v1, v1, Landroid/telecom/AudioState;->isMuted:Z

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v2

    if-eq v1, v2, :cond_3

    const-string v1, "changing microphone mute state to: %b"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v3, v3, Landroid/telecom/AudioState;->isMuted:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v2, v2, Landroid/telecom/AudioState;->isMuted:Z

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v1, v1, Landroid/telecom/AudioState;->route:I

    if-ne v1, v6, :cond_5

    invoke-direct {p0, v4}, Lcom/android/server/telecom/CallAudioManager;->turnOnSpeaker(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/telecom/CallAudioManager;->turnOnBluetooth(Z)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v0, v1}, Landroid/telecom/AudioState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/telecom/CallsManager;->onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->updateAudioForForegroundCall()V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v1, v1, Landroid/telecom/AudioState;->route:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_6

    invoke-direct {p0, v4}, Lcom/android/server/telecom/CallAudioManager;->turnOnBluetooth(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/telecom/CallAudioManager;->turnOnSpeaker(Z)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v1, v1, Landroid/telecom/AudioState;->route:I

    if-eq v1, v5, :cond_7

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v1, v1, Landroid/telecom/AudioState;->route:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    :cond_7
    invoke-direct {p0, v4}, Lcom/android/server/telecom/CallAudioManager;->turnOnBluetooth(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/telecom/CallAudioManager;->turnOnSpeaker(Z)V

    goto :goto_1
.end method

.method private turnOnBluetooth(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAudioConnectedOrPending()Z

    move-result v0

    if-eq p1, v0, :cond_0

    const-string v0, "connecting bluetooth %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->connectBluetoothAudio()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->disconnectBluetoothAudio()V

    goto :goto_0
.end method

.method private turnOnSpeaker(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const-string v0, "turning speaker phone %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    :cond_0
    return-void
.end method

.method private updateAudioForForegroundCall()V
    .locals 3

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/telecom/ConnectionServiceWrapper;->onAudioStateChanged(Lcom/android/server/telecom/Call;Landroid/telecom/AudioState;)V

    :cond_0
    return-void
.end method

.method private updateAudioStreamAndMode()V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "updateAudioStreamAndMode, mIsRinging: %b, mIsTonePlaying: %b"

    new-array v4, v0, [Ljava/lang/Object;

    iget-boolean v5, p0, Lcom/android/server/telecom/CallAudioManager;->mIsRinging:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v2

    iget-boolean v5, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v3, p0, Lcom/android/server/telecom/CallAudioManager;->mIsRinging:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/CallAudioManager;->requestAudioFocusAndSetMode(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/telecom/CallAudioManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getIsVoipAudioMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    :cond_2
    invoke-direct {p0, v2, v0}, Lcom/android/server/telecom/CallAudioManager;->requestAudioFocusAndSetMode(II)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/telecom/CallAudioManager;->mMostRecentlyUsedMode:I

    invoke-direct {p0, v2, v0}, Lcom/android/server/telecom/CallAudioManager;->requestAudioFocusAndSetMode(II)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/telecom/CallAudioManager;->setMode(I)V

    const-string v0, "abandoning audio focus"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->abandonAudioFocusForCall()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioFocusStreamType:I

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method final getAudioState()Landroid/telecom/AudioState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    return-object v0
.end method

.method final isBluetoothAudioOn()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAudioConnected()Z

    move-result v0

    return v0
.end method

.method final mute(Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "mute, shouldMute: %b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->hasEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "ignoring mute for emergency call"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move p1, v0

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v0, v0, Landroid/telecom/AudioState;->isMuted:Z

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v0, v0, Landroid/telecom/AudioState;->route:I

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v1, v1, Landroid/telecom/AudioState;->supportedRouteMask:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZII)V

    goto :goto_0
.end method

.method final onBluetoothStateChange(Lcom/android/server/telecom/BluetoothManager;)V
    .locals 4

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->calculateSupportedRoutes()I

    move-result v2

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v1, v1, Landroid/telecom/AudioState;->route:I

    invoke-virtual {p1}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAudioConnectedOrPending()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v1, v1, Landroid/telecom/AudioState;->isMuted:Z

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZII)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v3, v3, Landroid/telecom/AudioState;->route:I

    if-ne v3, v0, :cond_2

    const/4 v0, 0x5

    invoke-direct {p0, v0, v2}, Lcom/android/server/telecom/CallAudioManager;->selectWiredOrEarpiece(II)I

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallAudioManager;->onCallUpdated(Lcom/android/server/telecom/Call;)V

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallAudioManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v1, v1, Landroid/telecom/AudioState;->route:I

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v2, v2, Landroid/telecom/AudioState;->supportedRouteMask:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZII)V

    :cond_0
    return-void
.end method

.method public final onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "all calls removed, reseting system audio to default state"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/telecom/CallAudioManager;->setInitialAudioState(Lcom/android/server/telecom/Call;Z)V

    iput-boolean v2, p0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->updateAudioStreamAndMode()V

    :cond_1
    return-void
.end method

.method public final onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallAudioManager;->onCallUpdated(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/server/telecom/CallAudioManager;->onCallUpdated(Lcom/android/server/telecom/Call;)V

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->updateAudioForForegroundCall()V

    return-void
.end method

.method public final onIncomingCallAnswered(Lcom/android/server/telecom/Call;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v0, v0, Landroid/telecom/AudioState;->route:I

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v1}, Lcom/android/server/telecom/BluetoothManager;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mBluetoothManager:Lcom/android/server/telecom/BluetoothManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/BluetoothManager;->connectBluetoothAudio()V

    const/4 v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v1, v1, Landroid/telecom/AudioState;->supportedRouteMask:I

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZII)V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public final onIsVoipAudioModeChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->updateAudioStreamAndMode()V

    return-void
.end method

.method public final onWiredHeadsetPluggedInChanged$25decb5(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v1, v1, Landroid/telecom/AudioState;->isMuted:Z

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->calculateSupportedRoutes()I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZII)V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/telecom/CallAudioManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    goto :goto_1
.end method

.method final setAudioRoute(I)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "setAudioRoute, route: %s"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p1}, Landroid/telecom/AudioState;->audioRouteToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v2, v2, Landroid/telecom/AudioState;->supportedRouteMask:I

    invoke-direct {p0, p1, v2}, Lcom/android/server/telecom/CallAudioManager;->selectWiredOrEarpiece(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v3, v3, Landroid/telecom/AudioState;->supportedRouteMask:I

    or-int/2addr v3, v2

    if-nez v3, :cond_2

    const-string v3, "Asking to set to a route that is unsupported: %d"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p0, v3, v0}, Lcom/android/server/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v3, v3, Landroid/telecom/AudioState;->route:I

    if-eq v3, v2, :cond_0

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/telecom/CallAudioManager;->mWasSpeakerOn:Z

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v0, v0, Landroid/telecom/AudioState;->isMuted:Z

    iget-object v1, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget v1, v1, Landroid/telecom/AudioState;->supportedRouteMask:I

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/telecom/CallAudioManager;->setSystemAudioState(ZII)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method final setIsRinging(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/telecom/CallAudioManager;->mIsRinging:Z

    if-eq v0, p1, :cond_0

    const-string v0, "setIsRinging %b -> %b"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/telecom/CallAudioManager;->mIsRinging:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/android/server/telecom/CallAudioManager;->mIsRinging:Z

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->updateAudioStreamAndMode()V

    :cond_0
    return-void
.end method

.method final setIsTonePlaying(Z)V
    .locals 4

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    iget-boolean v0, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    if-eq v0, p1, :cond_0

    const-string v0, "mIsTonePlaying %b -> %b."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/android/server/telecom/CallAudioManager;->mIsTonePlaying:Z

    invoke-direct {p0}, Lcom/android/server/telecom/CallAudioManager;->updateAudioStreamAndMode()V

    :cond_0
    return-void
.end method

.method final toggleMute()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallAudioManager;->mAudioState:Landroid/telecom/AudioState;

    iget-boolean v0, v0, Landroid/telecom/AudioState;->isMuted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallAudioManager;->mute(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
