.class abstract Lcom/android/services/telephony/TelephonyConnection;
.super Landroid/telecom/Connection;
.source "TelephonyConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/TelephonyConnection$4;
    }
.end annotation


# instance fields
.field private mAudioQuality:I

.field private final mHandler:Landroid/os/Handler;

.field private mLocalVideoCapable:Z

.field private mOriginalConnection:Lcom/android/internal/telephony/Connection;

.field private final mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

.field private mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

.field private final mPostDialListener:Lcom/android/internal/telephony/Connection$PostDialListener;

.field private mRemoteVideoCapable:Z


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1    # Lcom/android/internal/telephony/Connection;

    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    new-instance v0, Lcom/android/services/telephony/TelephonyConnection$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConnection$1;-><init>(Lcom/android/services/telephony/TelephonyConnection;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/services/telephony/TelephonyConnection$2;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConnection$2;-><init>(Lcom/android/services/telephony/TelephonyConnection;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mPostDialListener:Lcom/android/internal/telephony/Connection$PostDialListener;

    new-instance v0, Lcom/android/services/telephony/TelephonyConnection$3;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/TelephonyConnection$3;-><init>(Lcom/android/services/telephony/TelephonyConnection;)V

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/services/telephony/TelephonyConnection;->setOriginalConnection(Lcom/android/internal/telephony/Connection;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p0    # Lcom/android/services/telephony/TelephonyConnection;

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->getForegroundConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p0    # Lcom/android/services/telephony/TelephonyConnection;

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method private applyAudioQualityCapabilities(I)I
    .locals 4
    .param p1    # I

    const/16 v3, 0x400

    move v0, p1

    iget v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mAudioQuality:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0, v3}, Lcom/android/services/telephony/TelephonyConnection;->applyCapability(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v0, v3}, Lcom/android/services/telephony/TelephonyConnection;->removeCapability(II)I

    move-result v0

    goto :goto_0
.end method

.method private applyCapability(II)I
    .locals 1
    .param p1    # I
    .param p2    # I

    or-int v0, p1, p2

    return v0
.end method

.method private applyConferenceTerminationCapabilities(I)I
    .locals 3
    .param p1    # I

    move v0, p1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    instance-of v1, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-nez v1, :cond_0

    or-int/lit16 v0, v0, 0x3000

    :cond_0
    return v0
.end method

.method private applyVideoCapabilities(I)I
    .locals 4
    .param p1    # I

    const/16 v3, 0x200

    const/16 v2, 0x100

    move v0, p1

    iget-boolean v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mRemoteVideoCapable:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0, v3}, Lcom/android/services/telephony/TelephonyConnection;->applyCapability(II)I

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mLocalVideoCapable:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, v2}, Lcom/android/services/telephony/TelephonyConnection;->applyCapability(II)I

    move-result v0

    :goto_1
    return v0

    :cond_0
    invoke-direct {p0, v0, v3}, Lcom/android/services/telephony/TelephonyConnection;->removeCapability(II)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/android/services/telephony/TelephonyConnection;->removeCapability(II)I

    move-result v0

    goto :goto_1
.end method

.method private close()V
    .locals 2

    const-string v0, "close"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForHandoverStateChanged(Landroid/os/Handler;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->destroy()V

    return-void
.end method

.method private static getAddressFromNumber(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0    # Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const-string v0, "tel"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getForegroundConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasMultipleTopLevelCalls()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-le v0, v2, :cond_3

    :goto_0
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isValidRingingCall()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "isValidRingingCall, phone is null"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "isValidRingingCall, ringing call is not in ringing state"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eq v2, v3, :cond_2

    const-string v2, "isValidRingingCall, ringing call connection does not match"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v2, "isValidRingingCall, returning true"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private removeCapability(II)I
    .locals 2
    .param p1    # I
    .param p2    # I

    xor-int/lit8 v1, p2, -0x1

    and-int v0, p1, v1

    return v0
.end method

.method private setActiveInternal()V
    .locals 5

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v3

    if-ne v3, v4, :cond_0

    const-string v3, "Should not be called if this is already ACTIVE"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConnectionService()Landroid/telecom/ConnectionService;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getConnectionService()Landroid/telecom/ConnectionService;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/ConnectionService;->getAllConnections()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    if-eq v0, p0, :cond_1

    instance-of v3, v0, Lcom/android/services/telephony/TelephonyConnection;

    if-eqz v3, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v3

    if-ne v3, v4, :cond_1

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setActive()V

    goto :goto_0
.end method


# virtual methods
.method protected abstract buildCallCapabilities()I
.end method

.method protected getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getOriginalConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method getPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected hangup(I)V
    .locals 5
    .param p1    # I

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->isValidRingingCall()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "Attempting to hangup a connection without backing call."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Call to Connection.hangup failed with exception"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onAbort()V
    .locals 2

    const-string v0, "onAbort"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->hangup(I)V

    return-void
.end method

.method public onAnswer(I)V
    .locals 4
    .param p1    # I

    const/4 v3, 0x0

    const-string v1, "onAnswer"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->isValidRingingCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->acceptCall(I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to accept call."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 1
    .param p1    # Landroid/telecom/AudioState;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled()V

    :cond_0
    return-void
.end method

.method public onDisconnect()V
    .locals 2

    const-string v0, "onDisconnect"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->hangup(I)V

    return-void
.end method

.method public onHold()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->performHold()V

    return-void
.end method

.method public onPostDialContinue(Z)V
    .locals 2
    .param p1    # Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostDialContinue, proceed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->proceedAfterWaitChar()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    goto :goto_0
.end method

.method public onReject()V
    .locals 2

    const-string v0, "onReject"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->isValidRingingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->hangup(I)V

    :cond_0
    invoke-super {p0}, Landroid/telecom/Connection;->onReject()V

    return-void
.end method

.method public onSeparate()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "onSeparate"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Call to Connection.separate failed with exception"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStateChanged(I)V
    .locals 2
    .param p1    # I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChanged, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onUnhold()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->performUnhold()V

    return-void
.end method

.method public performConference(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 0
    .param p1    # Lcom/android/services/telephony/TelephonyConnection;

    return-void
.end method

.method public performHold()V
    .locals 6

    const/4 v5, 0x0

    const-string v3, "performHold"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_1

    const-string v3, "Holding active call"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "Exception occurred while trying to put call on hold."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v3, v4}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v3, "Cannot put a call that is not currently active on hold."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public performUnhold()V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "performUnhold"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->hasMultipleTopLevelCalls()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "Skipping unhold command for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred while trying to release call from hold."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "Cannot release a call that is not already on hold from hold."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method resetStateForConference()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setActive()V

    :cond_0
    return-void
.end method

.method public setAudioQuality(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mAudioQuality:I

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateCallCapabilities()V

    return-void
.end method

.method setHoldingForConference()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setOnHold()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLocalVideoCapable(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mLocalVideoCapable:Z

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateCallCapabilities()V

    return-void
.end method

.method setOriginalConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .param p1    # Lcom/android/internal/telephony/Connection;

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new TelephonyConnection, originalConnection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForHandoverStateChanged(Landroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    :cond_0
    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForHandoverStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mPostDialListener:Lcom/android/internal/telephony/Connection$PostDialListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->addPostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionListener:Lcom/android/internal/telephony/Connection$Listener;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->addListener(Lcom/android/internal/telephony/Connection$Listener;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setVideoState(I)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isLocalVideoCapable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setLocalVideoCapable(Z)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isRemoteVideoCapable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setRemoteVideoCapable(Z)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAudioQuality()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setAudioQuality(I)V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateAddress()V

    return-void
.end method

.method public setRemoteVideoCapable(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/services/telephony/TelephonyConnection;->mRemoteVideoCapable:Z

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateCallCapabilities()V

    return-void
.end method

.method protected final updateAddress()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateCallCapabilities()V

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/services/telephony/TelephonyConnection;->getAddressFromNumber(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getAddress()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getAddressPresentation()I

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_0
    const-string v4, "updateAddress, address changed"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v3}, Lcom/android/services/telephony/TelephonyConnection;->setAddress(Landroid/net/Uri;I)V

    :cond_1
    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallerDisplayNamePresentation()I

    move-result v4

    if-eq v2, v4, :cond_3

    :cond_2
    const-string v4, "updateAddress, caller display name changed"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/services/telephony/TelephonyConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method protected final updateCallCapabilities()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->buildCallCapabilities()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->applyVideoCapabilities(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->applyAudioQualityCapabilities(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->applyConferenceTerminationCapabilities(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->getCallCapabilities()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/TelephonyConnection;->setCallCapabilities(I)V

    :cond_0
    return-void
.end method

.method updateState()V
    .locals 5

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    const-string v1, "Update state from %s to %s for %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object p0, v2, v3

    invoke-static {p0, v1, v2}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v0, :cond_1

    iput-object v0, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/services/telephony/TelephonyConnection$4;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateCallCapabilities()V

    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->updateAddress()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->setActiveInternal()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setOnHold()V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setDialing()V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/services/telephony/TelephonyConnection;->setRinging()V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(I)Landroid/telecom/DisconnectCause;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/TelephonyConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    invoke-direct {p0}, Lcom/android/services/telephony/TelephonyConnection;->close()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
