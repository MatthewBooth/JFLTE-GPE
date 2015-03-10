.class public final Lcom/android/server/telecom/InCallToneMonitor;
.super Lcom/android/server/telecom/CallsManager$CallsManagerListener;
.source "InCallToneMonitor.java"


# instance fields
.field private final mCallsManager:Lcom/android/server/telecom/CallsManager;

.field private final mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/InCallTonePlayer$Factory;Lcom/android/server/telecom/CallsManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;-><init>()V

    iput-object p1, p0, Lcom/android/server/telecom/InCallToneMonitor;->mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

    iput-object p2, p0, Lcom/android/server/telecom/InCallToneMonitor;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    return-void
.end method


# virtual methods
.method public final bridge synthetic onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onAudioStateChanged(Landroid/telecom/AudioState;Landroid/telecom/AudioState;)V

    return-void
.end method

.method public final bridge synthetic onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onCallAdded(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onCallRemoved(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 6

    const/4 v0, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/telecom/InCallToneMonitor;->mCallsManager:Lcom/android/server/telecom/CallsManager;

    invoke-virtual {v3}, Lcom/android/server/telecom/CallsManager;->getForegroundCall()Lcom/android/server/telecom/Call;

    move-result-object v3

    if-eq v3, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p3, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "Disconnect cause: %s."

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/DisconnectCause;->getTone()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v0, v2

    :goto_1
    :sswitch_0
    const-string v3, "Found a disconnected call with tone to play %d."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p0, v3, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/InCallToneMonitor;->mPlayerFactory:Lcom/android/server/telecom/InCallTonePlayer$Factory;

    invoke-virtual {v1, v0}, Lcom/android/server/telecom/InCallTonePlayer$Factory;->createPlayer(I)Lcom/android/server/telecom/InCallTonePlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/InCallTonePlayer;->startTone()V

    goto :goto_0

    :sswitch_1
    move v0, v1

    goto :goto_1

    :sswitch_2
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const/16 v0, 0xa

    goto :goto_1

    :sswitch_4
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const/16 v0, 0xc

    goto :goto_1

    :sswitch_6
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_1
        0x12 -> :sswitch_2
        0x15 -> :sswitch_5
        0x1b -> :sswitch_6
        0x25 -> :sswitch_0
        0x26 -> :sswitch_3
        0x5f -> :sswitch_4
    .end sparse-switch
.end method

.method public final bridge synthetic onConnectionServiceChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onConnectionServiceChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/server/telecom/ConnectionServiceWrapper;)V

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

.method public final bridge synthetic onIsConferencedChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIsConferencedChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onIsVoipAudioModeChanged(Lcom/android/server/telecom/Call;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onIsVoipAudioModeChanged(Lcom/android/server/telecom/Call;)V

    return-void
.end method

.method public final bridge synthetic onRingbackRequested(Lcom/android/server/telecom/Call;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/server/telecom/CallsManager$CallsManagerListener;->onRingbackRequested(Lcom/android/server/telecom/Call;Z)V

    return-void
.end method
