.class final Lcom/android/services/telephony/sip/SipConnection;
.super Landroid/telecom/Connection;
.source "SipConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/sip/SipConnection$2;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mOriginalConnection:Lcom/android/internal/telephony/Connection;

.field private mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    new-instance v0, Lcom/android/services/telephony/sip/SipConnection$1;

    invoke-direct {v0, p0}, Lcom/android/services/telephony/sip/SipConnection$1;-><init>(Lcom/android/services/telephony/sip/SipConnection;)V

    iput-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->setInitializing()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/sip/SipConnection;Z)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/sip/SipConnection;
    .param p1    # Z

    invoke-direct {p0, p1}, Lcom/android/services/telephony/sip/SipConnection;->updateState(Z)V

    return-void
.end method

.method private buildCallCapabilities()I
    .locals 3

    const/16 v0, 0x42

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    or-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method private close()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/sip/SipPhone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->destroy()V

    return-void
.end method

.method private static getAddressFromNumber(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0    # Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    const-string v0, "sip"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getCall()Lcom/android/internal/telephony/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidRingingCall()Z
    .locals 3

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;

    const-string v0, "SIP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SipConnection] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateAddress()V
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/services/telephony/sip/SipConnection;->getAddressFromNumber(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v4, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getAddress()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getAddressPresentation()I

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_0
    const-string v4, "updateAddress, address changed"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v3}, Lcom/android/services/telephony/sip/SipConnection;->setAddress(Landroid/net/Uri;I)V

    :cond_1
    iget-object v4, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCallerDisplayNamePresentation()I

    move-result v4

    if-eq v2, v4, :cond_3

    :cond_2
    const-string v4, "updateAddress, caller display name changed"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/services/telephony/sip/SipConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method private updateState(Z)V
    .locals 3
    .param p1    # Z

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v0, :cond_0

    :cond_2
    iput-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnectionState:Lcom/android/internal/telephony/Call$State;

    sget-object v1, Lcom/android/services/telephony/sip/SipConnection$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/services/telephony/sip/SipConnection;->updateCallCapabilities(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->setActive()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->setOnHold()V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->setDialing()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipConnection;->setRingbackRequested(Z)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->setRinging()V

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()I

    move-result v1

    invoke-static {v1}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(I)Landroid/telecom/DisconnectCause;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/services/telephony/sip/SipConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->close()V

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


# virtual methods
.method getPhone()Lcom/android/internal/telephony/sip/SipPhone;
    .locals 2

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/sip/SipPhone;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method initialize(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .param p1    # Lcom/android/internal/telephony/Connection;

    iput-object p1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/sip/SipPhone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->updateAddress()V

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->setInitialized()V

    return-void
.end method

.method public onAbort()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->onDisconnect()V

    return-void
.end method

.method onAddedToCallService()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/services/telephony/sip/SipConnection;->updateState(Z)V

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/SipConnection;->updateCallCapabilities(Z)V

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/SipConnection;->setAudioModeIsVoip(Z)V

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/services/telephony/sip/SipConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onAnswer(I)V
    .locals 3
    .param p1    # I

    :try_start_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->isValidRingingCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/sip/SipPhone;->acceptCall(I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnswer, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 1
    .param p1    # Landroid/telecom/AudioState;

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->setEchoSuppressionEnabled()V

    :cond_0
    return-void
.end method

.method public onDisconnect()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->hangup()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisconnect, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onHold()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone;->switchHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHold, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPlayDtmfTone(C)V
    .locals 1
    .param p1    # C

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->startDtmf(C)V

    :cond_0
    return-void
.end method

.method public onPostDialContinue(Z)V
    .locals 0
    .param p1    # Z

    return-void
.end method

.method public onReject()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->isValidRingingCall()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReject, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSeparate()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/sip/SipConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeparate, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStateChanged(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onStopDtmfTone()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/sip/SipPhone;->stopDtmf()V

    :cond_0
    return-void
.end method

.method public onUnhold()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getPhone()Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/sip/SipPhone;->switchHoldingAndActive()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUnhold, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/sip/SipConnection;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method updateCallCapabilities(Z)V
    .locals 2
    .param p1    # Z

    invoke-direct {p0}, Lcom/android/services/telephony/sip/SipConnection;->buildCallCapabilities()I

    move-result v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/sip/SipConnection;->getCallCapabilities()I

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/services/telephony/sip/SipConnection;->setCallCapabilities(I)V

    :cond_1
    return-void
.end method
