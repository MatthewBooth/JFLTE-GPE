.class Lcom/android/server/hdmi/HdmiControlService$BinderService$14;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->startTimerRecording(II[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$recordSource:[B

.field final synthetic val$recorderAddress:I

.field final synthetic val$sourceType:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II[B)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;->val$recorderAddress:I

    iput p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;->val$sourceType:I

    iput-object p4, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;->val$recordSource:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "HdmiControlService"

    const-string v1, "No TV is available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;->this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$700(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget v1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;->val$recorderAddress:I

    iget v2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;->val$sourceType:I

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;->val$recordSource:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startTimerRecording(II[B)V

    goto :goto_0
.end method
