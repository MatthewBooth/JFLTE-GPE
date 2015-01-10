.class Lcom/android/server/hdmi/HdmiCecController$5;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecController;->runDevicePolling(ILjava/util/List;ILcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;

.field final synthetic val$allocated:Ljava/util/List;

.field final synthetic val$callback:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

.field final synthetic val$candidate:Ljava/lang/Integer;

.field final synthetic val$candidates:Ljava/util/List;

.field final synthetic val$retryCount:I

.field final synthetic val$sourceAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecController;ILjava/lang/Integer;ILjava/util/List;Ljava/util/List;Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$5;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$sourceAddress:I

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$candidate:Ljava/lang/Integer;

    iput p4, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$retryCount:I

    iput-object p5, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$allocated:Ljava/util/List;

    iput-object p6, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$candidates:Ljava/util/List;

    iput-object p7, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$callback:Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$5;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$sourceAddress:I

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$candidate:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$retryCount:I

    # invokes: Lcom/android/server/hdmi/HdmiCecController;->sendPollMessage(III)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecController;->access$200(Lcom/android/server/hdmi/HdmiCecController;III)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$allocated:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$5;->val$candidate:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$5;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecController$5$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiCecController$5$1;-><init>(Lcom/android/server/hdmi/HdmiCecController$5;)V

    # invokes: Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->access$400(Lcom/android/server/hdmi/HdmiCecController;Ljava/lang/Runnable;)V

    return-void
.end method
