.class public final Lcom/android/server/telecom/CallsManager;
.super Lcom/android/server/telecom/Call$Listener;
.source "CallsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/CallsManager$CallsManagerListener;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/android/server/telecom/CallsManager;

.field private static final LIVE_CALL_STATES:[I

.field private static final OUTGOING_CALL_STATES:[I


# instance fields
.field private final mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

.field private final mCallLogManager:Lcom/android/server/telecom/CallLogManager;

.field private final mCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionServiceRepository$f45da5c:Lcom/android/server/telecom/ServiceBinder$Listener;

.field private final mContext:Landroid/content/Context;

.field private final mDtmfLocalTonePlayer:Lcom/android/server/telecom/DtmfLocalTonePlayer;

.field private mForegroundCall:Lcom/android/server/telecom/Call;

.field private final mHeadsetMediaButton:Lcom/android/server/telecom/HeadsetMediaButton;

.field private final mInCallController:Lcom/android/server/telecom/InCallController;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/telecom/CallsManager$CallsManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocallyDisconnectingCalls:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

.field private final mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

.field private final mPhoneStateBroadcaster:Lcom/android/server/telecom/PhoneStateBroadcaster;

.field private final mProximitySensorManager:Lcom/android/server/telecom/ProximitySensorManager;

.field private final mRinger:Lcom/android/server/telecom/Ringer;

.field private final mTtyManager:Lcom/android/server/telecom/TtyManager;

.field private final mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/telecom/CallsManager;->INSTANCE:Lcom/android/server/telecom/CallsManager;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/telecom/CallsManager;->LIVE_CALL_STATES:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/telecom/CallsManager;->OUTGOING_CALL_STATES:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/telecom/MissedCallNotifier;Lcom/android/server/telecom/PhoneAccountRegistrar;)V
    .locals 4

    const/4 v3, 0x1

    const v2, 0x3f666666    # 0.9f

    invoke-direct {p0}, Lcom/android/server/telecom/Call$Listener;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mLocallyDisconnectingCalls:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    iput-object p2, p0, Lcom/android/server/telecom/CallsManager;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    new-instance v0, Lcom/android/server/telecom/StatusBarNotifier;

    invoke-direct {v0, p1, p0}, Lcom/android/server/telecom/StatusBarNotifier;-><init>(Landroid/content/Context;Lcom/android/server/telecom/CallsManager;)V

    new-instance v1, Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-direct {v1, p1}, Lcom/android/server/telecom/WiredHeadsetManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/telecom/CallsManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    new-instance v1, Lcom/android/server/telecom/CallAudioManager;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/server/telecom/CallAudioManager;-><init>(Landroid/content/Context;Lcom/android/server/telecom/StatusBarNotifier;Lcom/android/server/telecom/WiredHeadsetManager;)V

    iput-object v1, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    new-instance v1, Lcom/android/server/telecom/InCallTonePlayer$Factory;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-direct {v1, v2}, Lcom/android/server/telecom/InCallTonePlayer$Factory;-><init>(Lcom/android/server/telecom/CallAudioManager;)V

    new-instance v2, Lcom/android/server/telecom/Ringer;

    iget-object v3, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-direct {v2, v3, p0, v1, p1}, Lcom/android/server/telecom/Ringer;-><init>(Lcom/android/server/telecom/CallAudioManager;Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/InCallTonePlayer$Factory;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/telecom/CallsManager;->mRinger:Lcom/android/server/telecom/Ringer;

    new-instance v2, Lcom/android/server/telecom/HeadsetMediaButton;

    invoke-direct {v2, p1, p0}, Lcom/android/server/telecom/HeadsetMediaButton;-><init>(Landroid/content/Context;Lcom/android/server/telecom/CallsManager;)V

    iput-object v2, p0, Lcom/android/server/telecom/CallsManager;->mHeadsetMediaButton:Lcom/android/server/telecom/HeadsetMediaButton;

    new-instance v2, Lcom/android/server/telecom/TtyManager;

    iget-object v3, p0, Lcom/android/server/telecom/CallsManager;->mWiredHeadsetManager:Lcom/android/server/telecom/WiredHeadsetManager;

    invoke-direct {v2, p1, v3}, Lcom/android/server/telecom/TtyManager;-><init>(Landroid/content/Context;Lcom/android/server/telecom/WiredHeadsetManager;)V

    iput-object v2, p0, Lcom/android/server/telecom/CallsManager;->mTtyManager:Lcom/android/server/telecom/TtyManager;

    new-instance v2, Lcom/android/server/telecom/ProximitySensorManager;

    invoke-direct {v2, p1}, Lcom/android/server/telecom/ProximitySensorManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/telecom/CallsManager;->mProximitySensorManager:Lcom/android/server/telecom/ProximitySensorManager;

    new-instance v2, Lcom/android/server/telecom/PhoneStateBroadcaster;

    invoke-direct {v2}, Lcom/android/server/telecom/PhoneStateBroadcaster;-><init>()V

    iput-object v2, p0, Lcom/android/server/telecom/CallsManager;->mPhoneStateBroadcaster:Lcom/android/server/telecom/PhoneStateBroadcaster;

    new-instance v2, Lcom/android/server/telecom/CallLogManager;

    invoke-direct {v2, p1}, Lcom/android/server/telecom/CallLogManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/telecom/CallsManager;->mCallLogManager:Lcom/android/server/telecom/CallLogManager;

    new-instance v2, Lcom/android/server/telecom/InCallController;

    invoke-direct {v2, p1}, Lcom/android/server/telecom/InCallController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/telecom/CallsManager;->mInCallController:Lcom/android/server/telecom/InCallController;

    new-instance v2, Lcom/android/server/telecom/DtmfLocalTonePlayer;

    invoke-direct {v2, p1}, Lcom/android/server/telecom/DtmfLocalTonePlayer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/telecom/CallsManager;->mDtmfLocalTonePlayer:Lcom/android/server/telecom/DtmfLocalTonePlayer;

    new-instance v2, Lcom/android/server/telecom/ServiceBinder$Listener;

    iget-object v3, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-direct {v2, v3, p1}, Lcom/android/server/telecom/ServiceBinder$Listener;-><init>(Lcom/android/server/telecom/PhoneAccountRegistrar;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/telecom/CallsManager;->mConnectionServiceRepository$f45da5c:Lcom/android/server/telecom/ServiceBinder$Listener;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mCallLogManager:Lcom/android/server/telecom/CallLogManager;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mPhoneStateBroadcaster:Lcom/android/server/telecom/PhoneStateBroadcaster;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mInCallController:Lcom/android/server/telecom/InCallController;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mRinger:Lcom/android/server/telecom/Ringer;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    new-instance v2, Lcom/android/server/telecom/RingbackPlayer;

    invoke-direct {v2, p0, v1}, Lcom/android/server/telecom/RingbackPlayer;-><init>(Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/InCallTonePlayer$Factory;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    new-instance v2, Lcom/android/server/telecom/InCallToneMonitor;

    invoke-direct {v2, v1, p0}, Lcom/android/server/telecom/InCallToneMonitor;-><init>(Lcom/android/server/telecom/InCallTonePlayer$Factory;Lcom/android/server/telecom/CallsManager;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mDtmfLocalTonePlayer:Lcom/android/server/telecom/DtmfLocalTonePlayer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mHeadsetMediaButton:Lcom/android/server/telecom/HeadsetMediaButton;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-static {}, Lcom/android/server/telecom/RespondViaSmsManager;->getInstance()Lcom/android/server/telecom/RespondViaSmsManager;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mProximitySensorManager:Lcom/android/server/telecom/ProximitySensorManager;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addCall(Lcom/android/server/telecom/Call;)V
    .locals 3

    const-string v0, "addCall(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onCallAdded(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->updateForegroundCall()V

    return-void
.end method

.method static conference(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/Call;->conferenceWith(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method private varargs getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;
    .locals 6

    array-length v2, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget v3, p2, v1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v5

    if-ne v3, v5, :cond_1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static getInstance()Lcom/android/server/telecom/CallsManager;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/CallsManager;->INSTANCE:Lcom/android/server/telecom/CallsManager;

    return-object v0
.end method

.method private varargs getNumCallsWithState([I)I
    .locals 6

    const/4 v0, 0x0

    array-length v3, p1

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget v4, p1, v2

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    if-ne v0, v4, :cond_2

    add-int/lit8 v0, v1, 0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method static initialize(Lcom/android/server/telecom/CallsManager;)V
    .locals 0

    sput-object p0, Lcom/android/server/telecom/CallsManager;->INSTANCE:Lcom/android/server/telecom/CallsManager;

    return-void
.end method

.method private makeRoomForOutgoingCall(Lcom/android/server/telecom/Call;Z)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-object v2, Lcom/android/server/telecom/CallsManager;->LIVE_CALL_STATES:[I

    invoke-direct {p0, v2}, Lcom/android/server/telecom/CallsManager;->getNumCallsWithState([I)I

    move-result v2

    if-gt v0, v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/telecom/CallsManager;->LIVE_CALL_STATES:[I

    invoke-direct {p0, p1, v2}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v3

    if-ne p1, v3, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/server/telecom/CallsManager;->OUTGOING_CALL_STATES:[I

    invoke-direct {p0, v2}, Lcom/android/server/telecom/CallsManager;->getNumCallsWithState([I)I

    move-result v2

    if-gt v0, v2, :cond_3

    move v2, v0

    :goto_2
    if-eqz v2, :cond_5

    if-eqz p2, :cond_4

    sget-object v2, Lcom/android/server/telecom/CallsManager;->OUTGOING_CALL_STATES:[I

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->disconnect()V

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    new-array v2, v0, [I

    const/4 v4, 0x6

    aput v4, v2, v1

    invoke-direct {p0, v2}, Lcom/android/server/telecom/CallsManager;->getNumCallsWithState([I)I

    move-result v2

    if-gt v0, v2, :cond_6

    move v2, v0

    :goto_3
    if-eqz v2, :cond_8

    if-eqz p2, :cond_7

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->disconnect()V

    goto :goto_1

    :cond_6
    move v2, v1

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v3, v0}, Lcom/android/server/telecom/Call;->can(I)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->hold()V

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_1
.end method

.method private setCallState(Lcom/android/server/telecom/Call;I)V
    .locals 5

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    const-string v0, "setCallState %s -> %s, call: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Landroid/telecom/CallState;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Landroid/telecom/CallState;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq p2, v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/telecom/Call;->setState(I)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onCallStateChanged(Lcom/android/server/telecom/Call;II)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->updateForegroundCall()V

    goto :goto_0
.end method

.method private updateForegroundCall()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isActive()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    if-eq v0, v1, :cond_3

    const-string v1, "Updating foreground call, %s -> %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    iput-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    iget-object v3, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    :cond_2
    :goto_3
    move-object v1, v0

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method final addListener(Lcom/android/server/telecom/CallsManager$CallsManagerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v0, "android.telecom.extra.UNKNOWN_CALL_HANDLE"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    const-string v0, "addNewUnknownCall with handle: %s"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/server/telecom/Call;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mConnectionServiceRepository$f45da5c:Lcom/android/server/telecom/ServiceBinder$Listener;

    move-object v5, v4

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/telecom/Call;-><init>(Landroid/content/Context;Lcom/android/server/telecom/ServiceBinder$Listener;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZ)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/telecom/Call;->setConnectTimeMillis(J)V

    invoke-virtual {v0, v7}, Lcom/android/server/telecom/Call;->setIsUnknown(Z)V

    invoke-virtual {v0, p2}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/Call;->startCreateConnection(Lcom/android/server/telecom/PhoneAccountRegistrar;)V

    return-void
.end method

.method final answerCall(Lcom/android/server/telecom/Call;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Request to answer a non-existent call %s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getCallCapabilities()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->disconnect()V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIncomingCallAnswered(Lcom/android/server/telecom/Call;)V

    goto :goto_2

    :cond_3
    const-string v0, "Holding active/dialing call %s before answering incoming call %s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    aput-object v2, v1, v3

    aput-object p1, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->hold()V

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/server/telecom/Call;->answer(I)V

    goto :goto_0
.end method

.method final createConferenceCall(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ParcelableConference;)Lcom/android/server/telecom/Call;
    .locals 9

    const/4 v3, 0x0

    new-instance v0, Lcom/android/server/telecom/Call;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mConnectionServiceRepository$f45da5c:Lcom/android/server/telecom/ServiceBinder$Listener;

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/telecom/Call;-><init>(Landroid/content/Context;Lcom/android/server/telecom/ServiceBinder$Listener;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZ)V

    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/telecom/Call;->getStateFromConnectionState(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/telecom/Call;->setConnectTimeMillis(J)V

    :cond_0
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getCapabilities()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/Call;->setCallCapabilities(I)V

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallsManager;->addCall(Lcom/android/server/telecom/Call;)V

    return-object v0
.end method

.method final disconnectAllCalls()V
    .locals 2

    const-string v0, "disconnectAllCalls"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallsManager;->disconnectCall(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final disconnectCall(Lcom/android/server/telecom/Call;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "disconnectCall %s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unknown call (%s) asked to disconnect"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mLocallyDisconnectingCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->disconnect()V

    goto :goto_0
.end method

.method public final dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "CallsManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    if-eqz v0, :cond_1

    const-string v0, "mCalls: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method final getActiveCall()Lcom/android/server/telecom/Call;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v2, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method final getAudioState()Landroid/telecom/AudioState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallAudioManager;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    return-object v0
.end method

.method final getCallState()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mPhoneStateBroadcaster:Lcom/android/server/telecom/PhoneStateBroadcaster;

    invoke-virtual {v0}, Lcom/android/server/telecom/PhoneStateBroadcaster;->getCallState()I

    move-result v0

    return v0
.end method

.method final getCalls()Lcom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection",
            "<",
            "Lcom/android/server/telecom/Call;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method final getCurrentTtyMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mTtyManager:Lcom/android/server/telecom/TtyManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/TtyManager;->getCurrentTtyMode()I

    move-result v0

    return v0
.end method

.method final getDialingCall()Lcom/android/server/telecom/Call;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method final varargs getFirstCallWithState([I)Lcom/android/server/telecom/Call;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method final getForegroundCall()Lcom/android/server/telecom/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    return-object v0
.end method

.method final getHeldCall()Lcom/android/server/telecom/Call;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x6

    aput v2, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method final getInCallController()Lcom/android/server/telecom/InCallController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mInCallController:Lcom/android/server/telecom/InCallController;

    return-object v0
.end method

.method final getMissedCallNotifier()Lcom/android/server/telecom/MissedCallNotifier;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    return-object v0
.end method

.method final getNumHeldCalls()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method final getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    return-object v0
.end method

.method final getRinger()Lcom/android/server/telecom/Ringer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mRinger:Lcom/android/server/telecom/Ringer;

    return-object v0
.end method

.method final getRingingCall()Lcom/android/server/telecom/Call;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v0

    return-object v0
.end method

.method final handleConnectionServiceDeath(Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 4

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v2

    if-ne v2, p1, :cond_0

    new-instance v2, Landroid/telecom/DisconnectCause;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/telecom/CallsManager;->markCallAsDisconnected(Lcom/android/server/telecom/Call;Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method final hasAnyCalls()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final hasEmergencyCall()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final hasRingingCall()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-array v2, v0, [I

    const/4 v3, 0x4

    aput v3, v2, v1

    const/4 v3, 0x0

    invoke-direct {p0, v3, v2}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method final holdCall(Lcom/android/server/telecom/Call;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unknown call (%s) asked to be put on hold"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Putting call on hold: (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->hold()V

    goto :goto_0
.end method

.method protected final isAddCallCapable(Lcom/android/server/telecom/Call;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/16 v0, 0x80

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getCallCapabilities()I

    move-result v3

    and-int/lit16 v3, v3, 0x80

    if-ne v0, v3, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isConference()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    if-eq p1, v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_0
.end method

.method final isTtySupported()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mTtyManager:Lcom/android/server/telecom/TtyManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/TtyManager;->isTtySupported()Z

    move-result v0

    return v0
.end method

.method final markCallAsActive(Lcom/android/server/telecom/Call;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getConnectTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/telecom/Call;->setConnectTimeMillis(J)V

    :cond_0
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getStartWithSpeakerphoneOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallsManager;->setAudioRoute(I)V

    :cond_1
    return-void
.end method

.method final markCallAsDialing(Lcom/android/server/telecom/Call;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    return-void
.end method

.method final markCallAsDisconnected(Lcom/android/server/telecom/Call;Landroid/telecom/DisconnectCause;)V
    .locals 1

    invoke-virtual {p1, p2}, Lcom/android/server/telecom/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    return-void
.end method

.method final markCallAsOnHold(Lcom/android/server/telecom/Call;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    return-void
.end method

.method final markCallAsRemoved(Lcom/android/server/telecom/Call;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "removeCall(%s)"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v0

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/telecom/Call;->setParentCall(Lcom/android/server/telecom/Call;)V

    invoke-virtual {p1, p0}, Lcom/android/server/telecom/Call;->removeListener(Lcom/android/server/telecom/Call$Listener;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->clearConnectionService()V

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move v0, v1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onCallRemoved(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->updateForegroundCall()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getCallCapabilities()I

    move-result v3

    invoke-virtual {v0, v3, v1}, Lcom/android/server/telecom/Call;->setCallCapabilities(IZ)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mLocallyDisconnectingCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mLocallyDisconnectingCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mForegroundCall:Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->unhold()V

    :cond_4
    return-void
.end method

.method final markCallAsRinging(Lcom/android/server/telecom/Call;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    return-void
.end method

.method final mute(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallAudioManager;->mute(Z)V

    return-void
.end method

.method final onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V
    .locals 3

    const-string v0, "onAudioStateChanged, audioState: %s -> %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic onCallCapabilitiesChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/Call$Listener;->onCallCapabilitiesChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onCallerDisplayNameChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/Call$Listener;->onCallerDisplayNameChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onCallerInfoChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/Call$Listener;->onCallerInfoChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onCannedSmsResponsesLoaded(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/Call$Listener;->onCannedSmsResponsesLoaded(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final onChildrenChanged(Lcom/android/server/telecom/Call;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->updateForegroundCall()V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIsConferencedChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic onConferenceableCallsChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/Call$Listener;->onConferenceableCallsChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final onFailedIncomingCall(Lcom/android/server/telecom/Call;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    invoke-virtual {p1, p0}, Lcom/android/server/telecom/Call;->removeListener(Lcom/android/server/telecom/Call$Listener;)V

    return-void
.end method

.method public final onFailedOutgoingCall$47ced4ac(Lcom/android/server/telecom/Call;)V
    .locals 3

    const-string v0, "onFailedOutgoingCall, call: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/server/telecom/CallsManager;->markCallAsRemoved(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final onFailedUnknownCall(Lcom/android/server/telecom/Call;)V
    .locals 3

    const-string v0, "onFailedUnknownCall for call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    invoke-virtual {p1, p0}, Lcom/android/server/telecom/Call;->removeListener(Lcom/android/server/telecom/Call$Listener;)V

    return-void
.end method

.method public final bridge synthetic onHandleChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/Call$Listener;->onHandleChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final onIsVoipAudioModeChanged(Lcom/android/server/telecom/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIsVoipAudioModeChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final onMediaButton(I)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/server/telecom/CallsManager;->hasAnyCalls()Z

    move-result v2

    if-eqz v2, :cond_2

    if-ne v0, p1, :cond_1

    new-array v2, v0, [I

    aput v4, v2, v1

    invoke-direct {p0, v5, v2}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v1}, Lcom/android/server/telecom/CallAudioManager;->toggleMute()V

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/telecom/Call;->getVideoState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/Call;->answer(I)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v2, p1, :cond_2

    const-string v2, "handleHeadsetHook: longpress -> hangup"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    invoke-direct {p0, v5, v2}, Lcom/android/server/telecom/CallsManager;->getFirstCallWithState(Lcom/android/server/telecom/Call;[I)Lcom/android/server/telecom/Call;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/telecom/Call;->disconnect()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x4
        0x3
        0x5
        0x6
    .end array-data
.end method

.method public final onParentChanged(Lcom/android/server/telecom/Call;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager;->updateForegroundCall()V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIsConferencedChanged(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostDialWait(Lcom/android/server/telecom/Call;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mInCallController:Lcom/android/server/telecom/InCallController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/telecom/InCallController;->onPostDialWait(Lcom/android/server/telecom/Call;Ljava/lang/String;)V

    return-void
.end method

.method public final onRingbackRequested(Lcom/android/server/telecom/Call;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onRingbackRequested(Lcom/android/server/telecom/Call;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic onStatusHintsChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/Call$Listener;->onStatusHintsChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final onSuccessfulIncomingCall(Lcom/android/server/telecom/Call;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "onSuccessfulIncomingCall"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, v4}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    new-array v2, v0, [I

    aput v4, v2, v1

    invoke-direct {p0, v2}, Lcom/android/server/telecom/CallsManager;->getNumCallsWithState([I)I

    move-result v2

    if-gt v0, v2, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->reject$2598ce09()V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/MissedCallNotifier;->showMissedCallNotification(Lcom/android/server/telecom/Call;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallLogManager:Lcom/android/server/telecom/CallLogManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/android/server/telecom/CallLogManager;->logCall(Lcom/android/server/telecom/Call;I)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallsManager;->addCall(Lcom/android/server/telecom/Call;)V

    goto :goto_1
.end method

.method public final onSuccessfulOutgoingCall(Lcom/android/server/telecom/Call;I)V
    .locals 4

    const-string v0, "onSuccessfulOutgoingCall, %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallsManager;->addCall(Lcom/android/server/telecom/Call;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getConnectionService()Lcom/android/server/telecom/ConnectionServiceWrapper;

    move-result-object v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onConnectionServiceChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/server/telecom/ConnectionServiceWrapper;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    return-void
.end method

.method public final onSuccessfulUnknownCall(Lcom/android/server/telecom/Call;I)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/CallsManager;->setCallState(Lcom/android/server/telecom/Call;I)V

    const-string v0, "onSuccessfulUnknownCall for call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/server/telecom/CallsManager;->addCall(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onTargetPhoneAccountChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/Call$Listener;->onTargetPhoneAccountChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onVideoCallProviderChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/Call$Listener;->onVideoCallProviderChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final onVideoStateChanged(Lcom/android/server/telecom/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method final phoneAccountSelected(Lcom/android/server/telecom/Call;Landroid/telecom/PhoneAccountHandle;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Attempted to add account to unknown call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/telecom/Call;->setTargetPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    invoke-direct {p0, p1, v2}, Lcom/android/server/telecom/CallsManager;->makeRoomForOutgoingCall(Lcom/android/server/telecom/Call;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->startCreateConnection(Lcom/android/server/telecom/PhoneAccountRegistrar;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->disconnect()V

    goto :goto_0
.end method

.method final placeOutgoingCall(Lcom/android/server/telecom/Call;Landroid/net/Uri;Landroid/telecom/GatewayInfo;ZI)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_1

    const-string v0, "Canceling unknown call."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_4

    move-object v0, p2

    :goto_1
    if-nez p3, :cond_5

    const-string v1, "Creating a new outgoing call with handle: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/server/telecom/Log;->piiHandle(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->setHandle(Landroid/net/Uri;)V

    invoke-virtual {p1, p3}, Lcom/android/server/telecom/Call;->setGatewayInfo(Landroid/telecom/GatewayInfo;)V

    invoke-virtual {p1, p4}, Lcom/android/server/telecom/Call;->setStartWithSpeakerphoneOn(Z)V

    invoke-virtual {p1, p5}, Lcom/android/server/telecom/Call;->setVideoState(I)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/telecom/TelephonyUtil;->shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/telecom/Call;->setTargetPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getTargetPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {p1, v0}, Lcom/android/server/telecom/Call;->startCreateConnection(Lcom/android/server/telecom/PhoneAccountRegistrar;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Landroid/telecom/GatewayInfo;->getGatewayAddress()Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v1, "Creating a new outgoing call with gateway handle: %s, original handle: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Lcom/android/server/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method final playDtmfTone(Lcom/android/server/telecom/Call;C)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Request to play DTMF in a non-existent call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/telecom/Call;->playDtmfTone(C)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mDtmfLocalTonePlayer:Lcom/android/server/telecom/DtmfLocalTonePlayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/telecom/DtmfLocalTonePlayer;->playTone(Lcom/android/server/telecom/Call;C)V

    goto :goto_0
.end method

.method final postDialContinue(Lcom/android/server/telecom/Call;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Request to continue post-dial string in a non-existent call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/telecom/Call;->postDialContinue(Z)V

    goto :goto_0
.end method

.method final processIncomingCallIntent(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    const-string v0, "processIncomingCallIntent"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "incoming_number"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    new-instance v0, Lcom/android/server/telecom/Call;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mConnectionServiceRepository$f45da5c:Lcom/android/server/telecom/ServiceBinder$Listener;

    const/4 v7, 0x1

    move-object v5, v4

    move-object v6, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/telecom/Call;-><init>(Landroid/content/Context;Lcom/android/server/telecom/ServiceBinder$Listener;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZ)V

    invoke-virtual {v0, p2}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/Call;->startCreateConnection(Lcom/android/server/telecom/PhoneAccountRegistrar;)V

    return-void
.end method

.method final rejectCall(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Request to reject a non-existent call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CallsManagerListener;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIncomingCallRejected(Lcom/android/server/telecom/Call;ZLjava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->reject$2598ce09()V

    goto :goto_0
.end method

.method final removeListener(Lcom/android/server/telecom/CallsManager$CallsManagerListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final setAudioRoute(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/CallAudioManager;->setAudioRoute(I)V

    return-void
.end method

.method final startOutgoingCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)Lcom/android/server/telecom/Call;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    new-instance v0, Lcom/android/server/telecom/Call;

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mConnectionServiceRepository$f45da5c:Lcom/android/server/telecom/ServiceBinder$Listener;

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/telecom/Call;-><init>(Landroid/content/Context;Lcom/android/server/telecom/ServiceBinder$Listener;Landroid/net/Uri;Landroid/telecom/GatewayInfo;Landroid/telecom/PhoneAccountHandle;Landroid/telecom/PhoneAccountHandle;ZZ)V

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getCallCapablePhoneAccounts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz p2, :cond_b

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    move-object v2, v4

    :goto_0
    if-nez v2, :cond_a

    iget-object v1, p0, Lcom/android/server/telecom/CallsManager;->mPhoneAccountRegistrar:Lcom/android/server/telecom/PhoneAccountRegistrar;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    if-eqz v1, :cond_a

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/server/telecom/Call;->setTargetPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    iget-object v2, p0, Lcom/android/server/telecom/CallsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getHandle()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/telecom/TelephonyUtil;->shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v5

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v6, "tel"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_2

    :cond_0
    const-string v6, "2"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v10, :cond_2

    :cond_1
    const-string v6, "3"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "4"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "5"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v9

    :goto_2
    if-nez v2, :cond_5

    invoke-direct {p0, v0, v5}, Lcom/android/server/telecom/CallsManager;->makeRoomForOutgoingCall(Lcom/android/server/telecom/Call;Z)Z

    move-result v6

    if-nez v6, :cond_5

    :goto_3
    return-object v4

    :cond_3
    move v2, v7

    goto :goto_2

    :cond_4
    move v2, v7

    goto :goto_2

    :cond_5
    if-nez v1, :cond_8

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v9, :cond_8

    if-nez v5, :cond_8

    invoke-virtual {v0, v10}, Lcom/android/server/telecom/Call;->setState(I)V

    const-string v1, "selectPhoneAccountAccounts"

    invoke-virtual {p3, v1, v3}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    :goto_4
    invoke-virtual {v0, p3}, Lcom/android/server/telecom/Call;->setExtras(Landroid/os/Bundle;)V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v3, "#"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v7, v9

    :cond_6
    if-nez v7, :cond_7

    if-eqz v2, :cond_9

    :cond_7
    invoke-virtual {v0, p0}, Lcom/android/server/telecom/Call;->addListener(Lcom/android/server/telecom/Call$Listener;)V

    :goto_5
    move-object v4, v0

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v9}, Lcom/android/server/telecom/Call;->setState(I)V

    goto :goto_4

    :cond_9
    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallsManager;->addCall(Lcom/android/server/telecom/Call;)V

    goto :goto_5

    :cond_a
    move-object v1, v2

    goto/16 :goto_1

    :cond_b
    move-object v2, p2

    goto/16 :goto_0
.end method

.method final stopDtmfTone(Lcom/android/server/telecom/Call;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Request to stop DTMF in a non-existent call %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->stopDtmfTone()V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mDtmfLocalTonePlayer:Lcom/android/server/telecom/DtmfLocalTonePlayer;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/DtmfLocalTonePlayer;->stopTone(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method final turnOffProximitySensor(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mProximitySensorManager:Lcom/android/server/telecom/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/android/server/telecom/ProximitySensorManager;->turnOff(Z)V

    return-void
.end method

.method final turnOnProximitySensor()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mProximitySensorManager:Lcom/android/server/telecom/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/ProximitySensorManager;->turnOn()V

    return-void
.end method

.method final unholdCall(Lcom/android/server/telecom/Call;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Unknown call (%s) asked to be removed from hold"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "unholding call: (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/CallsManager;->mCalls:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->hold()V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->unhold()V

    goto :goto_0
.end method
