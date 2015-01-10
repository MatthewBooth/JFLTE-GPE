.class final Lcom/android/server/hdmi/SendKeyAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SendKeyAction.java"


# static fields
.field private static final STATE_PROCESSING_KEYCODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SendKeyAction"


# instance fields
.field private mLastKeycode:I

.field private final mTargetAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)V
    .locals 0
    .param p1    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2    # I
    .param p3    # I

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput p2, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    iput p3, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    return-void
.end method

.method private sendKeyDown(I)V
    .locals 6
    .param p1    # I

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->androidKeyToCecKey(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/SendKeyAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    goto :goto_0
.end method

.method private sendKeyUp()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->getSourceAddress()I

    move-result v0

    iget v1, p0, Lcom/android/server/hdmi/SendKeyAction;->mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/SendKeyAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method


# virtual methods
.method public handleTimerEvent(I)V
    .locals 2
    .param p1    # I

    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "SendKeyAction"

    const-string v1, "Not in a valid state"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SendKeyAction;->addTimer(II)V

    goto :goto_0
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1    # Lcom/android/server/hdmi/HdmiCecMessage;

    const/4 v0, 0x0

    return v0
.end method

.method processKeyEvent(IZ)V
    .locals 2
    .param p1    # I
    .param p2    # Z

    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string v0, "SendKeyAction"

    const-string v1, "Not in a valid state"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_3

    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->isRepeatableKey(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SendKeyAction;->addTimer(II)V

    iput p1, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    goto :goto_0
.end method

.method public start()Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    invoke-direct {p0, v0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyDown(I)V

    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mLastKeycode:I

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecKeycode;->isRepeatableKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/hdmi/SendKeyAction;->sendKeyUp()V

    invoke-virtual {p0}, Lcom/android/server/hdmi/SendKeyAction;->finish()V

    :goto_0
    return v2

    :cond_0
    iput v2, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    iget v0, p0, Lcom/android/server/hdmi/SendKeyAction;->mState:I

    const/16 v1, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/SendKeyAction;->addTimer(II)V

    goto :goto_0
.end method
