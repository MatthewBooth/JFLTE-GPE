.class Lcom/android/server/hdmi/HdmiCecController$3;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecController;->allocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;

.field final synthetic val$callback:Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;

.field final synthetic val$deviceType:I

.field final synthetic val$preferredAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$3;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$deviceType:I

    iput p3, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$preferredAddress:I

    iput-object p4, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$callback:Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$3;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$deviceType:I

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$preferredAddress:I

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController$3;->val$callback:Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;

    # invokes: Lcom/android/server/hdmi/HdmiCecController;->handleAllocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecController;->access$100(Lcom/android/server/hdmi/HdmiCecController;IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V

    return-void
.end method
