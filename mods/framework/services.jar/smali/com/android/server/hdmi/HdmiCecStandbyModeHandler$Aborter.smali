.class final Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;
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
    name = "Aborter"
.end annotation


# instance fields
.field private final mReason:I

.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V
    .locals 0
    .param p2    # I

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->mReason:I

    return-void
.end method


# virtual methods
.method public handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 2
    .param p1    # Lcom/android/server/hdmi/HdmiCecMessage;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    # getter for: Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->mService:Lcom/android/server/hdmi/HdmiControlService;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->access$000(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiControlService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->mReason:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    const/4 v0, 0x1

    return v0
.end method
