.class Lcom/android/server/hdmi/HdmiControlService$BinderService$3;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->sendKeyEvent(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$deviceType:I

.field final synthetic val$isPressed:Z

.field final synthetic val$keyCode:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$keyCode:I

    iput-boolean p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$isPressed:Z

    iput p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$deviceType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$900(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v3, v3, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mActivePortId:I
    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->access$2500(Lcom/android/server/hdmi/HdmiControlService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$keyCode:I

    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$isPressed:Z

    invoke-virtual {v0, v2, v3}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->sendKeyEvent(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v2

    iget v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$deviceType:I

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v2, "HdmiControlService"

    const-string v3, "Local device not available"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$keyCode:I

    iget-boolean v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;->val$isPressed:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendKeyEvent(IZ)V

    goto :goto_0
.end method
