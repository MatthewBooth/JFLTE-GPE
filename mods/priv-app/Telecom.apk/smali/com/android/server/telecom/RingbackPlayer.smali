.class final Lcom/android/server/telecom/RingbackPlayer;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "RingbackPlayer.java"


# instance fields
.field private mCall:Lcom/android/server/telecom/Call;

.field private final mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private final mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

.field private mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/InCallTonePlayer$Factory;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    iput-object p1, p0, Lcom/android/server/telecom/RingbackPlayer;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    iput-object p2, p0, Lcom/android/server/telecom/RingbackPlayer;->mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

    return-void
.end method

.method private shouldStartRinging(Lcom/android/server/telecom/Call;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isRingbackRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startRingbackForCall(Lcom/android/server/telecom/Call;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    iget-object v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mCall:Lcom/android/server/telecom/Call;

    if-ne v0, p1, :cond_2

    const-string v0, "Ignoring duplicate requests to ring for %s."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mCall:Lcom/android/server/telecom/Call;

    if-eqz v0, :cond_3

    const-string v0, "Ringback player thinks there are two foreground-dialing calls."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iput-object p1, p0, Lcom/android/server/telecom/RingbackPlayer;->mCall:Lcom/android/server/telecom/Call;

    iget-object v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;

    if-nez v0, :cond_0

    const-string v0, "Playing the ringback tone for %s."

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/InCallTonePlayer$Factory;->createPlayer(I)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;

    iget-object v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallTonePlayer;->startTone()V

    goto :goto_1
.end method

.method private stopRingbackForCall(Lcom/android/server/telecom/Call;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/telecom/ThreadUtil;->checkOnMainThread()V

    iget-object v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mCall:Lcom/android/server/telecom/Call;

    if-ne v0, p1, :cond_0

    iput-object v3, p0, Lcom/android/server/telecom/RingbackPlayer;->mCall:Lcom/android/server/telecom/Call;

    iget-object v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;

    if-nez v0, :cond_1

    const-string v0, "No player found to stop."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "Stopping the ringback tone for %s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/RingbackPlayer;->mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallTonePlayer;->stopTone()V

    iput-object v3, p0, Lcom/android/server/telecom/RingbackPlayer;->mTonePlayer:Lcom/android/server/telecom/InCallTonePlayer;

    goto :goto_0
.end method


# virtual methods
.method public final onConnectionServiceChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/RingbackPlayer;->shouldStartRinging(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/RingbackPlayer;->startRingbackForCall(Lcom/android/server/telecom/Call;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/RingbackPlayer;->stopRingbackForCall(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method

.method public final onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/RingbackPlayer;->stopRingbackForCall(Lcom/android/server/telecom/Call;)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/telecom/RingbackPlayer;->shouldStartRinging(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/telecom/RingbackPlayer;->startRingbackForCall(Lcom/android/server/telecom/Call;)V

    :cond_1
    return-void
.end method

.method public final onRingbackRequested(Lcom/android/server/telecom/Call;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/telecom/RingbackPlayer;->shouldStartRinging(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/RingbackPlayer;->startRingbackForCall(Lcom/android/server/telecom/Call;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/telecom/RingbackPlayer;->stopRingbackForCall(Lcom/android/server/telecom/Call;)V

    goto :goto_0
.end method
