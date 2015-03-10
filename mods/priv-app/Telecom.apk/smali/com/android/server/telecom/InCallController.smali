.class public final Lcom/android/server/telecom/InCallController;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "InCallController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/InCallController$InCallServiceConnection;
    }
.end annotation


# instance fields
.field private final mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

.field private final mCallListener:Lcom/android/server/telecom/Call$Listener;

.field private final mContext:Landroid/content/Context;

.field private final mInCallComponentName:Landroid/content/ComponentName;

.field private final mInCallServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/internal/telecom/IInCallService;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/telecom/InCallController$InCallServiceConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    new-instance v0, Lcom/android/server/telecom/InCallController$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/InCallController$1;-><init>(Lcom/android/server/telecom/InCallController;)V

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mCallListener:Lcom/android/server/telecom/Call$Listener;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    new-instance v0, Lcom/android/server/telecom/CallIdMapper;

    const-string v1, "InCall"

    invoke-direct {v0, v1}, Lcom/android/server/telecom/CallIdMapper;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    iput-object p1, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const/high16 v2, 0x7f070000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f070001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/InCallController;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    const-string v0, "onConnected to %s"

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/android/internal/telecom/IInCallService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallService;

    move-result-object v1

    :try_start_0
    new-instance v0, Lcom/android/server/telecom/InCallAdapter;

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-direct {v0, v2, v3}, Lcom/android/server/telecom/InCallAdapter;-><init>(Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/CallIdMapper;)V

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IInCallService;->setInCallAdapter(Lcom/android/internal/telecom/IInCallAdapter;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "Adding %s calls to InCallService after onConnected: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    :try_start_1
    const-string v3, "addCall after binding: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/telecom/InCallController;->addCall(Lcom/android/server/telecom/Call;)V

    iget-object v3, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/server/telecom/InCallController;->toParcelableCall(Lcom/android/server/telecom/Call;Z)Landroid/telecom/ParcelableCall;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/internal/telecom/IInCallService;->addCall(Landroid/telecom/ParcelableCall;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Failed to set the in-call adapter."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/telecom/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/telecom/InCallController;->onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/telecom/InCallController;->unbind()V

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/server/telecom/InCallController;Landroid/content/ComponentName;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "onDisconnected from %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "In-call UI %s disconnected."

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->disconnectAllCalls()V

    invoke-direct {p0}, Lcom/android/server/telecom/InCallController;->unbind()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "In-Call Service %s suddenly disconnected"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/InCallController$InCallServiceConnection;

    iget-object v1, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/InCallController;Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method private addCall(Lcom/android/server/telecom/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->addCall(Lcom/android/server/telecom/Call;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mCallListener:Lcom/android/server/telecom/Call$Listener;

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    :cond_0
    return-void
.end method

.method private toParcelableCall(Lcom/android/server/telecom/Call;Z)Landroid/telecom/ParcelableCall;
    .locals 25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getCallCapabilities()I

    move-result v2

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/server/telecom/CallsManager;->isAddCallCapable(Lcom/android/server/telecom/Call;)Z

    move-result v3

    if-eqz v3, :cond_0

    or-int/lit8 v2, v2, 0x10

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v3

    if-eqz v3, :cond_e

    and-int/lit8 v2, v2, -0x41

    and-int/lit8 v2, v2, -0x11

    move v3, v2

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->isConference()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v9, 0x1

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_1

    const/4 v2, 0x7

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->isLocallyDisconnecting()Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x7

    if-eq v2, v5, :cond_d

    const/16 v2, 0x9

    move v5, v2

    :goto_2
    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v6, v2}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v19

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getConnectTimeMillis()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getChildCalls()Ljava/util/List;

    move-result-object v2

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    const-wide v6, 0x7fffffffffffffffL

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/telecom/Call;

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getConnectTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_3

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->getConnectTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v10, v2}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    :cond_5
    move-wide v10, v6

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->isRespondViaSmsCapable()Z

    move-result v2

    if-eqz v2, :cond_c

    or-int/lit8 v8, v3, 0x20

    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v12

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getCallerDisplayNamePresentation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v14

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v2

    new-instance v23, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/telecom/Call;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v6, v2}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    const/4 v12, 0x0

    goto :goto_5

    :cond_9
    const/4 v14, 0x0

    goto :goto_6

    :cond_a
    new-instance v3, Landroid/telecom/ParcelableCall;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getHandlePresentation()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getCallerDisplayNamePresentation()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v17

    if-eqz p2, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v18

    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getVideoState()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v24

    invoke-direct/range {v3 .. v24}, Landroid/telecom/ParcelableCall;-><init>(Ljava/lang/String;ILandroid/telecom/DisconnectCause;Ljava/util/List;IIJLandroid/net/Uri;ILjava/lang/String;ILandroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telecom/IVideoProvider;Ljava/lang/String;Ljava/util/List;Landroid/telecom/StatusHints;ILjava/util/List;Landroid/os/Bundle;)V

    return-object v3

    :cond_b
    const/16 v18, 0x0

    goto :goto_8

    :cond_c
    move v8, v3

    goto :goto_4

    :cond_d
    move v5, v2

    goto/16 :goto_2

    :cond_e
    move v3, v2

    goto/16 :goto_0
.end method

.method private unbind()V
    .locals 3

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unbinding from InCallService %s"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private updateCall(Lcom/android/server/telecom/Call;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    iget-object v3, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/telecom/InCallController;->toParcelableCall(Lcom/android/server/telecom/Call;Z)Landroid/telecom/ParcelableCall;

    move-result-object v1

    const-string v3, "updateCall %s ==> %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IInCallService;->updateCall(Landroid/telecom/ParcelableCall;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method final bringToForeground(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallService;->bringToForeground(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const-string v0, "Asking to bring unbound in-call UI to foreground."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Calling onAudioStateChanged, audioState: %s -> %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    :try_start_0
    invoke-interface {v0, p2}, Lcom/android/internal/telecom/IInCallService;->onAudioStateChanged(Landroid/telecom/AudioState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.telecom.InCallService"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v6, :cond_0

    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v6, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v3, "android.permission.BIND_INCALL_SERVICE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "android.permission.CONTROL_INCALL_EXPERIENCE"

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    :goto_2
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "InCallService does not have BIND_INCALL_SERVICE permission: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    if-nez v3, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "InCall UI does not have CONTROL_INCALL_EXPERIENCE permission: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/android/server/telecom/InCallController$InCallServiceConnection;

    invoke-direct {v0, p0, v2}, Lcom/android/server/telecom/InCallController$InCallServiceConnection;-><init>(Lcom/android/server/telecom/InCallController;B)V

    new-instance v3, Landroid/content/ComponentName;

    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "Attempting to bind to InCall %s, is dupe? %b "

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    aput-object v6, v8, v2

    iget-object v6, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v8, v1

    invoke-static {p0, v7, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.telecom.InCallService"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/telecom/InCallController;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v6, v0, v1, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/telecom/InCallController;->mServiceConnections:Ljava/util/Map;

    invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    const-string v0, "onCallAdded: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController;->addCall(Lcom/android/server/telecom/Call;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    iget-object v3, p0, Lcom/android/server/telecom/InCallController;->mInCallComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/telecom/InCallController;->toParcelableCall(Lcom/android/server/telecom/Call;Z)Landroid/telecom/ParcelableCall;

    move-result-object v1

    :try_start_0
    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IInCallService;->addCall(Landroid/telecom/ParcelableCall;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_6
    return-void
.end method

.method public final onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 3

    const-string v0, "onCallRemoved: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/telecom/InCallController;->unbind()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mCallListener:Lcom/android/server/telecom/Call$Listener;

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->removeListener(Lcom/android/server/telecom/Call$Listener;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallIdMapper;->removeCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final onConnectionServiceChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onIncomingCallAnswered(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIncomingCallAnswered(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onIncomingCallRejected(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIncomingCallRejected(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    return-void
.end method

.method public final onIsConferencedChanged(Lcom/android/server/telecom/Call;)V
    .locals 3

    const-string v0, "onIsConferencedChanged %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/server/telecom/InCallController;->updateCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onIsVoipAudioModeChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIsVoipAudioModeChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method final onPostDialWait(Lcom/android/server/telecom/Call;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Calling onPostDialWait, remaining = %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/InCallController;->mInCallServices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    :try_start_0
    iget-object v2, p0, Lcom/android/server/telecom/InCallController;->mCallIdMapper:Lcom/android/server/telecom/CallIdMapper;

    invoke-virtual {v2, p1}, Lcom/android/server/telecom/CallIdMapper;->getCallId(Lcom/android/server/telecom/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Lcom/android/internal/telecom/IInCallService;->setPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic onRingbackRequested(Lcom/android/server/telecom/Call;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onRingbackRequested(Lcom/android/server/telecom/Call;Z)V

    return-void
.end method
