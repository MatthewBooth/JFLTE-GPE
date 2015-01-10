.class final Lcom/android/server/hdmi/VolumeControlAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "VolumeControlAction.java"


# static fields
.field private static final MAX_VOLUME:I = 0x64

.field private static final STATE_WAIT_FOR_NEXT_VOLUME_PRESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VolumeControlAction"

.field private static final UNKNOWN_AVR_VOLUME:I = -0x1


# instance fields
.field private final mAvrAddress:I

.field private mIsVolumeUp:Z

.field private mLastAvrVolume:I

.field private mLastKeyUpdateTime:J

.field private mSentKeyPressed:Z


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V
    .locals 1
    .param p1    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2    # I
    .param p3    # Z

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput p2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    iput-boolean p3, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->updateLastKeyUpdateTime()V

    return-void
.end method

.method private handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1    # Lcom/android/server/hdmi/HdmiCecMessage;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    aget-byte v2, v2, v1

    and-int/lit16 v0, v2, 0xff

    const/16 v2, 0x44

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->finish()V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 8
    .param p1    # Lcom/android/server/hdmi/HdmiCecMessage;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0x80

    const/16 v6, 0x80

    if-ne v5, v6, :cond_1

    move v0, v3

    :goto_0
    aget-byte v5, v1, v4

    and-int/lit8 v2, v5, 0x7f

    iput v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/VolumeControlAction;->shouldUpdateAudioVolume(Z)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Force volume change[mute:%b, volume=%d]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v3

    invoke-static {v5, v6}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(ZI)V

    :cond_0
    return v3

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method private resetTimer()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    const/4 v0, 0x1

    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/VolumeControlAction;->addTimer(II)V

    return-void
.end method

.method public static scaleToCecVolume(II)I
    .locals 1
    .param p0    # I
    .param p1    # I

    mul-int/lit8 v0, p0, 0x64

    div-int/2addr v0, p1

    return v0
.end method

.method public static scaleToCustomVolume(II)I
    .locals 1
    .param p0    # I
    .param p1    # I

    mul-int v0, p0, p1

    div-int/lit8 v0, v0, 0x64

    return v0
.end method

.method private sendVolumeKeyPressed()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    iget-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x41

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/VolumeControlAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    return-void

    :cond_0
    const/16 v0, 0x42

    goto :goto_0
.end method

.method private sendVolumeKeyReleased()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/VolumeControlAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    return-void
.end method

.method private shouldUpdateAudioVolume(Z)Z
    .locals 7
    .param p1    # Z

    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getService()Lcom/android/server/hdmi/HdmiControlService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiControlService;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iget-boolean v5, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    if-eqz v5, :cond_2

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    move v3, v4

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method private updateLastKeyUpdateTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastKeyUpdateTime:J

    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 4

    const/4 v3, -0x1

    invoke-super {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->clear()V

    iget-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mSentKeyPressed:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyReleased()V

    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    if-eq v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAudioStatus(ZI)V

    iput v3, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastAvrVolume:I

    :cond_1
    return-void
.end method

.method handleTimerEvent(I)V
    .locals 4
    .param p1    # I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mLastKeyUpdateTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/hdmi/VolumeControlAction;->finish()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyPressed()V

    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->resetTimer()V

    goto :goto_0
.end method

.method handleVolumeChange(Z)V
    .locals 4
    .param p1    # Z

    iget-boolean v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    if-eq v0, p1, :cond_0

    const-string v0, "Volume Key Status Changed[old:%b new:%b]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyReleased()V

    iput-boolean p1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mIsVolumeUp:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->updateLastKeyUpdateTime()V

    return-void
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3
    .param p1    # Lcom/android/server/hdmi/HdmiCecMessage;

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/hdmi/VolumeControlAction;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/VolumeControlAction;->mAvrAddress:I

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/VolumeControlAction;->handleFeatureAbort(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/VolumeControlAction;->handleReportAudioStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method start()Z
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/VolumeControlAction;->mState:I

    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->sendVolumeKeyPressed()V

    invoke-direct {p0}, Lcom/android/server/hdmi/VolumeControlAction;->resetTimer()V

    return v0
.end method
