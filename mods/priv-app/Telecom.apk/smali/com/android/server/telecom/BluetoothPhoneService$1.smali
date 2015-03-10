.class final Lcom/android/server/telecom/BluetoothPhoneService$1;
.super Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/BluetoothPhoneService;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/BluetoothPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/BluetoothPhoneService$1;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final answerCall()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$1;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$000(Lcom/android/server/telecom/BluetoothPhoneService;)V

    const-string v0, "BluetoothPhoneService"

    const-string v1, "BT - answering call"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$1;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$100(Lcom/android/server/telecom/BluetoothPhoneService;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final cdmaSetSecondCallState(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "BluetoothPhoneService"

    const-string v1, "cdma 1"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final cdmaSwapSecondCallState()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "BluetoothPhoneService"

    const-string v1, "cdma 2"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 3

    const-string v0, "BluetoothPhoneService"

    const-string v1, "getDeviceId()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$1;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNetworkOperator()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "BluetoothPhoneService"

    const-string v1, "getNetworkOperator"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$1;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$000(Lcom/android/server/telecom/BluetoothPhoneService;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$1;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$100(Lcom/android/server/telecom/BluetoothPhoneService;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getSubscriberId()Ljava/lang/String;
    .locals 3

    const-string v0, "BluetoothPhoneService"

    const-string v1, "getSubscriberId()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$1;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSubscriberNumber()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "BluetoothPhoneService"

    const-string v1, "getSubscriberNumber"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$1;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$000(Lcom/android/server/telecom/BluetoothPhoneService;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$1;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$100(Lcom/android/server/telecom/BluetoothPhoneService;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final hangupCall()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$1;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$000(Lcom/android/server/telecom/BluetoothPhoneService;)V

    const-string v0, "BluetoothPhoneService"

    const-string v1, "BT - hanging up call"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$1;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$100(Lcom/android/server/telecom/BluetoothPhoneService;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final listCurrentCalls()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService$1;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # getter for: Lcom/android/server/telecom/BluetoothPhoneService;->mHeadsetUpdatedRecently:Z
    invoke-static {v1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$300(Lcom/android/server/telecom/BluetoothPhoneService;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/telecom/BluetoothPhoneService$1;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v2, v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$302(Lcom/android/server/telecom/BluetoothPhoneService;Z)Z

    if-eqz v1, :cond_0

    const-string v2, "BluetoothPhoneService"

    const-string v3, "listcurrentCalls"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothPhoneService$1;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v2}, Lcom/android/server/telecom/BluetoothPhoneService;->access$000(Lcom/android/server/telecom/BluetoothPhoneService;)V

    iget-object v2, p0, Lcom/android/server/telecom/BluetoothPhoneService$1;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v3, 0x6

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->sendSynchronousRequest(II)Ljava/lang/Object;
    invoke-static {v2, v3, v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$200(Lcom/android/server/telecom/BluetoothPhoneService;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final processChld(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "BluetoothPhoneService"

    const-string v1, "processChld %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$1;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$000(Lcom/android/server/telecom/BluetoothPhoneService;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$1;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v1, 0x4

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->sendSynchronousRequest(II)Ljava/lang/Object;
    invoke-static {v0, v1, p1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$200(Lcom/android/server/telecom/BluetoothPhoneService;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final queryPhoneState()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "BluetoothPhoneService"

    const-string v1, "queryPhoneState"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$1;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$000(Lcom/android/server/telecom/BluetoothPhoneService;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$1;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$100(Lcom/android/server/telecom/BluetoothPhoneService;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final sendDtmf(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$1;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$000(Lcom/android/server/telecom/BluetoothPhoneService;)V

    const-string v1, "BluetoothPhoneService"

    const-string v2, "BT - sendDtmf %c"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-boolean v0, Lcom/android/server/telecom/Log;->DEBUG:Z

    if-eqz v0, :cond_0

    move v0, p1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$1;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v1, 0x3

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->sendSynchronousRequest(II)Ljava/lang/Object;
    invoke-static {v0, v1, p1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$200(Lcom/android/server/telecom/BluetoothPhoneService;II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x2e

    goto :goto_0
.end method

.method public final updateBtHandsfreeAfterRadioTechnologyChange()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "BluetoothPhoneService"

    const-string v1, "RAT change"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
