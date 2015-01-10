.class final Lcom/android/server/hdmi/OneTouchPlayAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "OneTouchPlayAction.java"


# static fields
.field private static final LOOP_COUNTER_MAX:I = 0xa

.field private static final STATE_WAITING_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OneTouchPlayAction"


# instance fields
.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private mPowerStatusCounter:I

.field private final mTargetAddress:I


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 1
    .param p1    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2    # I
    .param p3    # Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    iput p2, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    iput-object p3, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    return-void
.end method

.method private broadcastActiveSource()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->getSourceAddress()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->getSourcePath()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/OneTouchPlayAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->markActiveSource()V

    return-void
.end method

.method static create(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/OneTouchPlayAction;
    .locals 2
    .param p0    # Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    .param p1    # I
    .param p2    # Landroid/hardware/hdmi/IHdmiControlCallback;

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v0, "OneTouchPlayAction"

    const-string v1, "Wrong arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/server/hdmi/OneTouchPlayAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/OneTouchPlayAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILandroid/hardware/hdmi/IHdmiControlCallback;)V

    goto :goto_0
.end method

.method private invokeCallback(I)V
    .locals 4
    .param p1    # I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    invoke-interface {v1, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "OneTouchPlayAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Callback failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private queryDevicePowerStatus()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/OneTouchPlayAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 3
    .param p1    # I

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    if-eq v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v2, :cond_0

    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mPowerStatusCounter:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->queryDevicePowerStatus()V

    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/OneTouchPlayAction;->addTimer(II)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/OneTouchPlayAction;->invokeCallback(I)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->finish()V

    goto :goto_0
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5
    .param p1    # Lcom/android/server/hdmi/HdmiCecMessage;

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v3, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    if-eq v3, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v3

    const/16 v4, 0x90

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    aget-byte v0, v3, v1

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->broadcastActiveSource()V

    invoke-direct {p0, v1}, Lcom/android/server/hdmi/OneTouchPlayAction;->invokeCallback(I)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->finish()V

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method start()Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildTextViewOn(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/OneTouchPlayAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->broadcastActiveSource()V

    invoke-direct {p0}, Lcom/android/server/hdmi/OneTouchPlayAction;->queryDevicePowerStatus()V

    iput v2, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    iget v0, p0, Lcom/android/server/hdmi/OneTouchPlayAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/OneTouchPlayAction;->addTimer(II)V

    return v2
.end method
