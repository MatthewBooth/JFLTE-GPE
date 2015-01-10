.class final Lcom/android/server/hdmi/RequestArcTerminationAction;
.super Lcom/android/server/hdmi/RequestArcAction;
.source "RequestArcTerminationAction.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestArcTerminationAction"


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .locals 0
    .param p1    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2    # I

    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/RequestArcAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    return-void
.end method


# virtual methods
.method start()Z
    .locals 4

    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/hdmi/RequestArcTerminationAction;->mState:I

    iget v1, p0, Lcom/android/server/hdmi/RequestArcTerminationAction;->mState:I

    const/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/RequestArcTerminationAction;->addTimer(II)V

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcTerminationAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/RequestArcTerminationAction;->mAvrAddress:I

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRequestArcTermination(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/RequestArcTerminationAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/RequestArcTerminationAction$1;-><init>(Lcom/android/server/hdmi/RequestArcTerminationAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/RequestArcTerminationAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    return v3
.end method
