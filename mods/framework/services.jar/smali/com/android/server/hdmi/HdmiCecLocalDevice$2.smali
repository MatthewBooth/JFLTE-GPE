.class Lcom/android/server/hdmi/HdmiCecLocalDevice$2;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevice.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecLocalDevice;->disableDevice(ZLcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

.field final synthetic val$origialCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;->val$origialCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 2
    .param p1    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    # getter for: Lcom/android/server/hdmi/HdmiCecLocalDevice;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->access$100(Lcom/android/server/hdmi/HdmiCecLocalDevice;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$2;->val$origialCallback:Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;

    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;->onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    return-void
.end method
