.class final Lcom/android/server/telecom/BluetoothPhoneService$3;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
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

    iput-object p1, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$800(Lcom/android/server/telecom/BluetoothPhoneService;Z)V

    return-void
.end method

.method public final onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # getter for: Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$900(Lcom/android/server/telecom/BluetoothPhoneService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$800(Lcom/android/server/telecom/BluetoothPhoneService;Z)V

    return-void
.end method

.method public final onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    const/4 v0, 0x6

    if-ne p3, v0, :cond_2

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    if-ne p2, v2, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$800(Lcom/android/server/telecom/BluetoothPhoneService;Z)V

    goto :goto_0
.end method

.method public final onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public final onIsConferencedChanged(Lcom/android/server/telecom/Call;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Ignoring onIsConferenceChanged from child call with new parent"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getChildCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "Ignoring onIsConferenceChanged from parent with only one child call"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V
    invoke-static {v0, v2}, Lcom/android/server/telecom/BluetoothPhoneService;->access$800(Lcom/android/server/telecom/BluetoothPhoneService;Z)V

    goto :goto_0
.end method
