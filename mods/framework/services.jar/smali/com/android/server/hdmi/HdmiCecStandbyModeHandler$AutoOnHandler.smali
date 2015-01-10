.class final Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;
.super Ljava/lang/Object;
.source "HdmiCecStandbyModeHandler.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoOnHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$1;)V
    .locals 0
    .param p1    # Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;
    .param p2    # Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$1;

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1
    .param p1    # Lcom/android/server/hdmi/HdmiCecMessage;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    # getter for: Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mTv:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->access$100(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAutoWakeup()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    # getter for: Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mAborterRefused:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->access$200(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;->handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
