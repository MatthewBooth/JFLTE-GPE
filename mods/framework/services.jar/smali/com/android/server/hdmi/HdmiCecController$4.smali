.class Lcom/android/server/hdmi/HdmiCecController$4;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiCecController;->handleAllocateLogicalAddress(IILcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;

.field final synthetic val$assignedAddress:I

.field final synthetic val$callback:Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;

.field final synthetic val$deviceType:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$4;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecController$4;->val$callback:Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;

    iput p3, p0, Lcom/android/server/hdmi/HdmiCecController$4;->val$deviceType:I

    iput p4, p0, Lcom/android/server/hdmi/HdmiCecController$4;->val$assignedAddress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$4;->val$callback:Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecController$4;->val$deviceType:I

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecController$4;->val$assignedAddress:I

    invoke-interface {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecController$AllocateAddressCallback;->onAllocated(II)V

    return-void
.end method
