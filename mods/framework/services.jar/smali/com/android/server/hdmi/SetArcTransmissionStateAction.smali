.class final Lcom/android/server/hdmi/SetArcTransmissionStateAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SetArcTransmissionStateAction.java"


# static fields
.field private static final STATE_WAITING_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SetArcTransmissionStateAction"


# instance fields
.field private final mAvrAddress:I

.field private final mEnabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;IZ)V
    .locals 2
    .param p1    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2    # I
    .param p3    # Z

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->getSourceAddress()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    const/4 v0, 0x5

    invoke-static {p2, v0}, Lcom/android/server/hdmi/HdmiUtils;->verifyAddressType(II)V

    iput p2, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mAvrAddress:I

    iput-boolean p3, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/SetArcTransmissionStateAction;Z)V
    .locals 0
    .param p0    # Lcom/android/server/hdmi/SetArcTransmissionStateAction;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->setArcStatus(Z)V

    return-void
.end method

.method private sendReportArcInitiated()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mAvrAddress:I

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportArcInitiated(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;-><init>(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return-void
.end method

.method private setArcStatus(Z)V
    .locals 4
    .param p1    # Z

    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setArcStatus(Z)Z

    move-result v0

    const-string v1, "SetArcTransmissionStateAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change arc status [old:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mAvrAddress:I

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildReportArcTerminated(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :cond_0
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 2
    .param p1    # I

    iget v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mState:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->finish()V

    goto :goto_0
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 6
    .param p1    # Lcom/android/server/hdmi/HdmiCecMessage;

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v4, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mState:I

    if-eq v4, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v4

    aget-byte v4, v4, v2

    and-int/lit16 v1, v4, 0xff

    const/16 v4, 0xc1

    if-ne v1, v4, :cond_0

    const-string v4, "Feature aborted for <Report Arc Initiated>"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v2}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->setArcStatus(Z)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->finish()V

    move v2, v3

    goto :goto_0
.end method

.method start()Z
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v2}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->setArcStatus(Z)V

    iput v2, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mState:I

    iget v0, p0, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->addTimer(II)V

    invoke-direct {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->sendReportArcInitiated()V

    :goto_0
    return v2

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->setArcStatus(Z)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->finish()V

    goto :goto_0
.end method
