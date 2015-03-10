.class public Lcom/android/services/telephony/GsmConference;
.super Landroid/telecom/Conference;
.source "GsmConference.java"


# direct methods
.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;)V
    .locals 1
    .param p1    # Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0, p1}, Landroid/telecom/Conference;-><init>(Landroid/telecom/PhoneAccountHandle;)V

    const/16 v0, 0xc3

    invoke-virtual {p0, v0}, Lcom/android/services/telephony/GsmConference;->setCapabilities(I)V

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConference;->setActive()V

    return-void
.end method

.method private getFirstConnection()Lcom/android/services/telephony/GsmConnection;
    .locals 2

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConference;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/services/telephony/GsmConnection;

    goto :goto_0
.end method

.method private getMultipartyCallForConnection(Landroid/telecom/Connection;Ljava/lang/String;)Lcom/android/internal/telephony/Call;
    .locals 3
    .param p1    # Landroid/telecom/Connection;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/android/services/telephony/GsmConference;->getOriginalConnection(Landroid/telecom/Connection;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getOriginalConnection(Landroid/telecom/Connection;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 4
    .param p1    # Landroid/telecom/Connection;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/services/telephony/GsmConnection;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/services/telephony/GsmConnection;

    invoke-virtual {p1}, Lcom/android/services/telephony/GsmConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "Non GSM connection found in a Gsm conference (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {p0, v0, v1, v2}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public onDisconnect()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/services/telephony/GsmConference;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Connection;

    const-string v4, "onDisconnect"

    invoke-direct {p0, v1, v4}, Lcom/android/services/telephony/GsmConference;->getMultipartyCallForConnection(Landroid/telecom/Connection;Ljava/lang/String;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, "Found multiparty call to hangup for conference."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v2

    const-string v4, "Exception thrown trying to hangup conference"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v2, v4, v5}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onHold()V
    .locals 1

    invoke-direct {p0}, Lcom/android/services/telephony/GsmConference;->getFirstConnection()Lcom/android/services/telephony/GsmConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/GsmConnection;->performHold()V

    :cond_0
    return-void
.end method

.method public onMerge(Landroid/telecom/Connection;)V
    .locals 4
    .param p1    # Landroid/telecom/Connection;

    :try_start_0
    check-cast p1, Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {p1}, Lcom/android/services/telephony/TelephonyConnection;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->conference()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Exception thrown trying to merge call into a conference"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onPlayDtmfTone(C)V
    .locals 1
    .param p1    # C

    invoke-direct {p0}, Lcom/android/services/telephony/GsmConference;->getFirstConnection()Lcom/android/services/telephony/GsmConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/services/telephony/GsmConnection;->onPlayDtmfTone(C)V

    :cond_0
    return-void
.end method

.method public onSeparate(Landroid/telecom/Connection;)V
    .locals 4
    .param p1    # Landroid/telecom/Connection;

    const-string v2, "onSeparate"

    invoke-direct {p0, p1, v2}, Lcom/android/services/telephony/GsmConference;->getOriginalConnection(Landroid/telecom/Connection;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->separate()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Exception thrown trying to separate a conference call"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v2, v3}, Lcom/android/services/telephony/Log;->e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onStopDtmfTone()V
    .locals 1

    invoke-direct {p0}, Lcom/android/services/telephony/GsmConference;->getFirstConnection()Lcom/android/services/telephony/GsmConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/GsmConnection;->onStopDtmfTone()V

    :cond_0
    return-void
.end method

.method public onUnhold()V
    .locals 1

    invoke-direct {p0}, Lcom/android/services/telephony/GsmConference;->getFirstConnection()Lcom/android/services/telephony/GsmConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/GsmConnection;->performUnhold()V

    :cond_0
    return-void
.end method
