.class public final Lcom/android/server/telecom/BluetoothPhoneService;
.super Landroid/app/Service;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothAdapterReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothCallState:I

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mCallsManagerListener:Lcom/android/server/telecom/CallsManager$CallsManagerListener;

.field private mClccIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/telecom/Call;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mHeadsetUpdatedRecently:Z

.field private mNumActiveCalls:I

.field private mNumHeldCalls:I

.field private mOldHeldCall:Lcom/android/server/telecom/Call;

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRingingAddress:Ljava/lang/String;

.field private mRingingAddressType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    iput v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    iput-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddress:Ljava/lang/String;

    iput v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddressType:I

    iput-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mOldHeldCall:Lcom/android/server/telecom/Call;

    new-instance v0, Lcom/android/server/telecom/BluetoothPhoneService$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/BluetoothPhoneService$1;-><init>(Lcom/android/server/telecom/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

    new-instance v0, Lcom/android/server/telecom/BluetoothPhoneService$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/BluetoothPhoneService$2;-><init>(Lcom/android/server/telecom/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/telecom/BluetoothPhoneService$3;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/BluetoothPhoneService$3;-><init>(Lcom/android/server/telecom/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCallsManagerListener:Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    new-instance v0, Lcom/android/server/telecom/BluetoothPhoneService$4;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/BluetoothPhoneService$4;-><init>(Lcom/android/server/telecom/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    new-instance v0, Lcom/android/server/telecom/BluetoothPhoneService$5;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/BluetoothPhoneService$5;-><init>(Lcom/android/server/telecom/BluetoothPhoneService;)V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothAdapterReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;

    iput-boolean v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHeadsetUpdatedRecently:Z

    const-string v0, "BluetoothPhoneService"

    const-string v1, "Constructor"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/BluetoothPhoneService;)V
    .locals 2

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/BluetoothPhoneService;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/BluetoothPhoneService;->sendSynchronousRequest(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/telecom/BluetoothPhoneService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/telecom/BluetoothPhoneService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/BluetoothPhoneService;II)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/BluetoothPhoneService;->sendSynchronousRequest(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/telecom/BluetoothPhoneService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHeadsetUpdatedRecently:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/telecom/BluetoothPhoneService;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHeadsetUpdatedRecently:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/BluetoothPhoneService;)Lcom/android/server/telecom/CallsManager;
    .locals 1

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/telecom/BluetoothPhoneService;I)Z
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v5

    const-string v6, "BluetoothPhoneService"

    const-string v7, "Active: %s\nBluetoothPhoneService: Ringing: %s\nBluetoothPhoneService: Held: %s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v3, v8, v0

    aput-object v4, v8, v1

    aput-object v5, v8, v9

    invoke-static {v6, v7, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_2

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v0, v3}, Lcom/android/server/telecom/CallsManager;->rejectCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v5, :cond_0

    invoke-virtual {v2, v5}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V

    move v0, v1

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_6

    if-eqz v3, :cond_5

    invoke-virtual {v2, v3}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V

    if-eqz v4, :cond_4

    invoke-virtual {v2, v4, v0}, Lcom/android/server/telecom/CallsManager;->answerCall(Lcom/android/server/telecom/Call;I)V

    :cond_3
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    if-eqz v5, :cond_3

    invoke-virtual {v2, v5}, Lcom/android/server/telecom/CallsManager;->unholdCall(Lcom/android/server/telecom/Call;)V

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_0

    invoke-virtual {v2, v4, v0}, Lcom/android/server/telecom/CallsManager;->answerCall(Lcom/android/server/telecom/Call;I)V

    move v0, v1

    goto :goto_0

    :cond_6
    if-ne p1, v9, :cond_a

    if-eqz v3, :cond_7

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->swapConference()V

    move v0, v1

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v2, v4, v0}, Lcom/android/server/telecom/CallsManager;->answerCall(Lcom/android/server/telecom/Call;I)V

    move v0, v1

    goto :goto_0

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v2, v5}, Lcom/android/server/telecom/CallsManager;->unholdCall(Lcom/android/server/telecom/Call;)V

    move v0, v1

    goto :goto_0

    :cond_9
    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Lcom/android/server/telecom/CallsManager;->holdCall(Lcom/android/server/telecom/Call;)V

    move v0, v1

    goto :goto_0

    :cond_a
    if-ne p1, v10, :cond_0

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->mergeConference()V

    move v0, v1

    goto :goto_0

    :cond_b
    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-static {v3, v0}, Lcom/android/server/telecom/CallsManager;->conference(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V

    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$600(Lcom/android/server/telecom/BluetoothPhoneService;)Landroid/telecom/PhoneAccount;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/telecom/BluetoothPhoneService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/TelecomApp;

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v1

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "tel"

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/telecom/BluetoothPhoneService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/BluetoothPhoneService;->sendListOfCalls(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/telecom/BluetoothPhoneService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/telecom/BluetoothPhoneService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;

    return-object v0
.end method

.method private sendListOfCalls(Z)V
    .locals 11

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isConference()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    if-ne v1, v0, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v3, 0x6

    :goto_2
    const/4 v5, 0x0

    const/4 v1, 0x6

    if-eq v3, v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v5, 0x1

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getConferenceLevelActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->wasConferencePreviouslyMerged()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_1
    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_2

    const/4 v5, 0x0

    if-ne v0, v2, :cond_7

    const/4 v3, 0x0

    :cond_2
    :goto_4
    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_5
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isIncoming()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/GatewayInfo;->getOriginalAddress()Landroid/net/Uri;

    move-result-object v0

    :goto_7
    if-nez v0, :cond_c

    const/4 v6, 0x0

    :goto_8
    if-nez v6, :cond_d

    const/4 v7, -0x1

    :goto_9
    if-eqz p1, :cond_3

    const-string v0, "sending clcc for call %d, %d, %d, %b, %s, %d"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x4

    invoke-static {v6}, Lcom/android/server/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    invoke-static {p0, v0, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1

    :pswitch_0
    const/4 v3, 0x6

    goto/16 :goto_2

    :pswitch_1
    const/4 v3, 0x0

    goto/16 :goto_2

    :pswitch_2
    const/4 v3, 0x3

    goto/16 :goto_2

    :pswitch_3
    const/4 v3, 0x1

    goto/16 :goto_2

    :pswitch_4
    if-eqz v1, :cond_5

    const/4 v3, 0x4

    goto/16 :goto_2

    :cond_5
    const/4 v3, 0x5

    goto/16 :goto_2

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_4

    :cond_8
    const/4 v1, 0x1

    :goto_a
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_9
    iget-object v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_6

    :cond_b
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_7

    :cond_c
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_8

    :cond_d
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_9

    :cond_e
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/bluetooth/BluetoothHeadset;->clccResponse(IIIIZLjava/lang/String;I)V

    :cond_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private sendSynchronousRequest(II)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II)TT;"
        }
    .end annotation

    new-instance v1, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;

    invoke-direct {v1, p2}, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;-><init>(I)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v0, v1, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, v1, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->result:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->result:Ljava/lang/Object;

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static final start(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method

.method private updateHeadsetWithCallState(Z)V
    .locals 14

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v11

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v12

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getDialingCall()Lcom/android/server/telecom/Call;

    move-result-object v5

    const/4 v0, 0x6

    if-eqz v1, :cond_5

    move v8, v9

    :goto_0
    const/4 v1, 0x0

    const/16 v0, 0x80

    if-eqz v4, :cond_f

    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v0

    move v5, v0

    move-object v0, v1

    :goto_1
    if-nez v0, :cond_d

    const-string v0, ""

    move-object v4, v0

    :goto_2
    if-nez v11, :cond_6

    move v1, v6

    :goto_3
    invoke-virtual {v2}, Lcom/android/server/telecom/CallsManager;->getNumHeldCalls()I

    move-result v0

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Lcom/android/server/telecom/Call;->isConference()Z

    move-result v2

    if-eqz v2, :cond_c

    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v11}, Lcom/android/server/telecom/Call;->wasConferencePreviouslyMerged()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v6

    :goto_4
    move v2, v0

    :goto_5
    invoke-virtual {v11}, Lcom/android/server/telecom/Call;->getChildCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    iget-object v13, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mOldHeldCall:Lcom/android/server/telecom/Call;

    if-ne v13, v0, :cond_0

    move v0, v7

    :goto_6
    iget-object v11, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v11, :cond_4

    iget v11, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    if-ne v1, v11, :cond_2

    iget v11, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    if-ne v2, v11, :cond_2

    iget v11, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    if-ne v8, v11, :cond_2

    iget-object v11, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddress:Ljava/lang/String;

    invoke-static {v4, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    iget v11, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddressType:I

    if-ne v5, v11, :cond_2

    iget-object v11, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mOldHeldCall:Lcom/android/server/telecom/Call;

    if-eq v12, v11, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_4

    :cond_2
    iget v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    if-eq v0, v8, :cond_9

    if-ne v8, v10, :cond_9

    move v0, v7

    :goto_7
    iput-object v12, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mOldHeldCall:Lcom/android/server/telecom/Call;

    iput v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    iput v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    iput v8, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    iput-object v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddress:Ljava/lang/String;

    iput v5, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddressType:I

    if-eqz v0, :cond_3

    const-string v0, "BluetoothPhoneService"

    const-string v1, "Sending dialing state"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "BluetoothPhoneService"

    const-string v1, "updateHeadsetWithCallState numActive %s, numHeld %s, callState %s, ringing number %s, ringing type %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v10

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddressType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v9

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    iget v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    iget-object v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddress:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddressType:I

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    const-string v0, "BluetoothPhoneService"

    const-string v1, "Send fake +CLCC for CDMA if UconnectClccCarkit"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v7}, Lcom/android/server/telecom/BluetoothPhoneService;->sendListOfCalls(Z)V

    :cond_3
    const-string v0, "BluetoothPhoneService"

    const-string v1, "updateHeadsetWithCallState numActive %s, numHeld %s, callState %s, ringing number %s, ringing type %s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v7

    iget v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddress:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    iget v3, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddressType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumActiveCalls:I

    iget v2, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mNumHeldCalls:I

    iget v3, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothCallState:I

    iget-object v4, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddress:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mRingingAddressType:I

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/BluetoothHeadset;->phoneStateChanged(IIILjava/lang/String;I)V

    iput-boolean v7, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mHeadsetUpdatedRecently:Z

    :cond_4
    return-void

    :cond_5
    if-eqz v5, :cond_10

    move v8, v10

    goto/16 :goto_0

    :cond_6
    move v1, v7

    goto/16 :goto_3

    :cond_7
    move v0, v7

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v11, v9}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v7

    goto/16 :goto_5

    :cond_9
    move v0, v6

    goto/16 :goto_7

    :cond_a
    move v0, v6

    goto/16 :goto_6

    :cond_b
    move v2, v0

    goto/16 :goto_5

    :cond_c
    move v2, v0

    move v0, v6

    goto/16 :goto_6

    :cond_d
    move-object v4, v0

    goto/16 :goto_2

    :cond_e
    move v5, v0

    move-object v0, v1

    goto/16 :goto_1

    :cond_f
    move v5, v0

    move-object v0, v1

    goto/16 :goto_1

    :cond_10
    move v8, v0

    goto/16 :goto_0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const-string v0, "BluetoothPhoneService"

    const-string v1, "Binding service"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBinder:Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;

    return-object v0
.end method

.method public final onCreate()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "BluetoothPhoneService"

    const-string v1, "onCreate"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const-string v0, "BluetoothPhoneService"

    const-string v1, "BluetoothPhoneService shutting down, no BT Adapter found."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mBluetoothAdapterReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/telecom/BluetoothPhoneService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCallsManagerListener:Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->addListener(Lcom/android/server/telecom/CallsManager$CallsManagerListener;)V

    invoke-direct {p0, v3}, Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 3

    const-string v0, "BluetoothPhoneService"

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/BluetoothPhoneService;->mCallsManagerListener:Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/CallsManager;->removeListener(Lcom/android/server/telecom/CallsManager$CallsManagerListener;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
