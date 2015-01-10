.class public Lcom/android/server/hdmi/PowerStatusMonitorAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "PowerStatusMonitorAction.java"


# static fields
.field private static final INVALID_POWER_STATUS:I = -0x2

.field private static final MONITIROING_INTERNAL_MS:I = 0xea60

.field private static final REPORT_POWER_STATUS_TIMEOUT_MS:I = 0x1388

.field private static final STATE_WAIT_FOR_NEXT_MONITORING:I = 0x2

.field private static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PowerStatusMonitorAction"


# instance fields
.field private final mPowerStatus:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 1
    .param p1    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/PowerStatusMonitorAction;IIZ)V
    .locals 0
    .param p0    # Lcom/android/server/hdmi/PowerStatusMonitorAction;
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    return-void
.end method

.method private handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 7
    .param p1    # Lcom/android/server/hdmi/HdmiCecMessage;

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, -0x2

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    iget-object v5, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-ne v1, v6, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v5

    aget-byte v3, v5, v3

    and-int/lit16 v0, v3, 0xff

    invoke-direct {p0, v2, v0, v4}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    move v3, v4

    goto :goto_0
.end method

.method private handleTimeout()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->updatePowerStatus(IIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mState:I

    return-void
.end method

.method private queryPowerStatus()V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getDeviceInfoList(Z)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->resetPowerStatus(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->getSourceAddress()I

    move-result v4

    invoke-static {v4, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v4

    new-instance v5, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;

    invoke-direct {v5, p0, v3}, Lcom/android/server/hdmi/PowerStatusMonitorAction$1;-><init>(Lcom/android/server/hdmi/PowerStatusMonitorAction;I)V

    invoke-virtual {p0, v4, v5}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    goto :goto_0

    :cond_0
    iput v6, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mState:I

    const/4 v4, 0x2

    const v5, 0xea60

    invoke-virtual {p0, v4, v5}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->addTimer(II)V

    const/16 v4, 0x1388

    invoke-virtual {p0, v6, v4}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->addTimer(II)V

    return-void
.end method

.method private resetPowerStatus(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    iget-object v2, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v3

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updatePowerStatus(IIZ)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    invoke-virtual {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->updateDevicePowerStatus(II)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mPowerStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method handleTimerEvent(I)V
    .locals 1
    .param p1    # I

    iget v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->queryPowerStatus()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->handleTimeout()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1    # Lcom/android/server/hdmi/HdmiCecMessage;

    iget v0, p0, Lcom/android/server/hdmi/PowerStatusMonitorAction;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->handleReportPowerStatus(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method start()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/hdmi/PowerStatusMonitorAction;->queryPowerStatus()V

    const/4 v0, 0x1

    return v0
.end method
