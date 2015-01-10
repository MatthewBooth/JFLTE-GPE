.class Lcom/android/server/hdmi/RoutingControlAction$1;
.super Ljava/lang/Object;
.source "RoutingControlAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/RoutingControlAction;->handleTimerEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/RoutingControlAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/RoutingControlAction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/hdmi/RoutingControlAction$1;->this$0:Lcom/android/server/hdmi/RoutingControlAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 2
    .param p1    # I

    iget-object v1, p0, Lcom/android/server/hdmi/RoutingControlAction$1;->this$0:Lcom/android/server/hdmi/RoutingControlAction;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/android/server/hdmi/RoutingControlAction;->handlDevicePowerStatusAckResult(Z)V
    invoke-static {v1, v0}, Lcom/android/server/hdmi/RoutingControlAction;->access$000(Lcom/android/server/hdmi/RoutingControlAction;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
