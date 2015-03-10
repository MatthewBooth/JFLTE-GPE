.class final Lcom/android/services/telephony/CdmaConnection;
.super Lcom/android/services/telephony/TelephonyConnection;
.source "CdmaConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/CdmaConnection$2;
    }
.end annotation


# instance fields
.field private final mAllowMute:Z

.field private mDtmfBurstConfirmationPending:Z

.field private final mDtmfQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private final mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

.field private final mHandler:Landroid/os/Handler;

.field private mIsCallWaiting:Z

.field private final mIsOutgoing:Z


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Connection;Lcom/android/services/telephony/EmergencyTonePlayer;ZZ)V
    .locals 3
    .param p1    # Lcom/android/internal/telephony/Connection;
    .param p2    # Lcom/android/services/telephony/EmergencyTonePlayer;
    .param p3    # Z
    .param p4    # Z

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/services/telephony/TelephonyConnection;-><init>(Lcom/android/internal/telephony/Connection;)V

    new-instance v1, Lcom/android/services/telephony/CdmaConnection$1;

    invoke-direct {v1, p0}, Lcom/android/services/telephony/CdmaConnection$1;-><init>(Lcom/android/services/telephony/CdmaConnection;)V

    iput-object v1, p0, Lcom/android/services/telephony/CdmaConnection;->mHandler:Landroid/os/Handler;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    iput-boolean v0, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfBurstConfirmationPending:Z

    iput-object p2, p0, Lcom/android/services/telephony/CdmaConnection;->mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

    iput-boolean p3, p0, Lcom/android/services/telephony/CdmaConnection;->mAllowMute:Z

    iput-boolean p4, p0, Lcom/android/services/telephony/CdmaConnection;->mIsOutgoing:Z

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/services/telephony/CdmaConnection;->mIsCallWaiting:Z

    iget-boolean v0, p0, Lcom/android/services/telephony/CdmaConnection;->mIsCallWaiting:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConnection;->startCallWaitingTimer()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/services/telephony/CdmaConnection;I)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/CdmaConnection;
    .param p1    # I

    invoke-direct {p0, p1}, Lcom/android/services/telephony/CdmaConnection;->hangupCallWaiting(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/services/telephony/CdmaConnection;)V
    .locals 0
    .param p0    # Lcom/android/services/telephony/CdmaConnection;

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConnection;->handleBurstDtmfConfirmation()V

    return-void
.end method

.method private handleBurstDtmfConfirmation()V
    .locals 7

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfBurstConfirmationPending:Z

    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%d dtmf character[s] removed from the queue"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p0, v2, v4}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/android/services/telephony/CdmaConnection;->sendBurstDtmfStringLocked(Ljava/lang/String;)V

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private hangupCallWaiting(I)V
    .locals 4
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(I)Landroid/telecom/DisconnectCause;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/services/telephony/CdmaConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Failed to hangup call waiting call"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private isEmergency()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getAddress()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendBurstDtmfStringLocked(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/android/services/telephony/CdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v3, v3, v1}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfBurstConfirmationPending:Z

    return-void
.end method

.method private sendShortDtmfToNetwork(C)V
    .locals 3
    .param p1    # C

    iget-object v1, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfBurstConfirmationPending:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/services/telephony/CdmaConnection;->mDtmfQueue:Ljava/util/Queue;

    new-instance v2, Ljava/lang/Character;

    invoke-direct {v2, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-interface {v0, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/services/telephony/CdmaConnection;->sendBurstDtmfStringLocked(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private startCallWaitingTimer()V
    .locals 4

    iget-object v0, p0, Lcom/android/services/telephony/CdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private useBurstDtmf()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method protected buildCallCapabilities()I
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/services/telephony/CdmaConnection;->mAllowMute:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x40

    :cond_0
    return v0
.end method

.method forceAsDialing(Z)V
    .locals 0
    .param p1    # Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->setDialing()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->updateState()V

    goto :goto_0
.end method

.method isCallWaiting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/CdmaConnection;->mIsCallWaiting:Z

    return v0
.end method

.method isOutgoing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/services/telephony/CdmaConnection;->mIsOutgoing:Z

    return v0
.end method

.method public onAnswer()V
    .locals 2

    iget-object v0, p0, Lcom/android/services/telephony/CdmaConnection;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->onAnswer()V

    return-void
.end method

.method public onPlayDtmfTone(C)V
    .locals 2
    .param p1    # C

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConnection;->useBurstDtmf()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sending dtmf digit as burst"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/services/telephony/CdmaConnection;->sendShortDtmfToNetwork(C)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "sending dtmf digit directly"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    goto :goto_0
.end method

.method public onReject()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/services/telephony/CdmaConnection$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "Rejecting a non-ringing call"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->onReject()V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-super {p0}, Lcom/android/services/telephony/TelephonyConnection;->onReject()V

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/services/telephony/CdmaConnection;->hangupCallWaiting(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStateChanged(I)V
    .locals 3
    .param p1    # I

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/services/telephony/CdmaConnection;->mIsCallWaiting:Z

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConnection;->isEmergency()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/services/telephony/CdmaConnection;->mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

    invoke-virtual {v1}, Lcom/android/services/telephony/EmergencyTonePlayer;->start()V

    :cond_0
    :goto_1
    invoke-super {p0, p1}, Lcom/android/services/telephony/TelephonyConnection;->onStateChanged(I)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/services/telephony/CdmaConnection;->mEmergencyTonePlayer:Lcom/android/services/telephony/EmergencyTonePlayer;

    invoke-virtual {v1}, Lcom/android/services/telephony/EmergencyTonePlayer;->stop()V

    goto :goto_1
.end method

.method public onStopDtmfTone()V
    .locals 1

    invoke-direct {p0}, Lcom/android/services/telephony/CdmaConnection;->useBurstDtmf()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/services/telephony/CdmaConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    :cond_0
    return-void
.end method
