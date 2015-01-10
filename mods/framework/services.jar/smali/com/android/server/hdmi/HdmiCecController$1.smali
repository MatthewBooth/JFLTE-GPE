.class Lcom/android/server/hdmi/HdmiCecController$1;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$1;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Integer;)Z
    .locals 2
    .param p1    # Ljava/lang/Integer;

    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$1;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/android/server/hdmi/HdmiCecController;->isAllocatedLocalDeviceAddress(I)Z
    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->access$000(Lcom/android/server/hdmi/HdmiCecController;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecController$1;->apply(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method
