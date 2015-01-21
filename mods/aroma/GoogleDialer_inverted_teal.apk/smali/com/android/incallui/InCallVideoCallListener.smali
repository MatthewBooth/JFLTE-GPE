.class public Lcom/android/incallui/InCallVideoCallListener;
.super Landroid/telecom/InCallService$VideoCall$Listener;
.source "InCallVideoCallListener.java"


# instance fields
.field private mCall:Lcom/android/incallui/Call;


# direct methods
.method public constructor <init>(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1    # Lcom/android/incallui/Call;

    invoke-direct {p0}, Landroid/telecom/InCallService$VideoCall$Listener;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/InCallVideoCallListener;->mCall:Lcom/android/incallui/Call;

    return-void
.end method


# virtual methods
.method public onCallDataUsageChanged(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onCallSessionEvent(I)V
    .locals 0
    .param p1    # I

    return-void
.end method

.method public onCameraCapabilitiesChanged(Landroid/telecom/CameraCapabilities;)V
    .locals 4
    .param p1    # Landroid/telecom/CameraCapabilities;

    invoke-static {}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallListenerNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallListener;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {p1}, Landroid/telecom/CameraCapabilities;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/telecom/CameraCapabilities;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->cameraDimensionsChanged(Lcom/android/incallui/Call;II)V

    return-void
.end method

.method public onPeerDimensionsChanged(II)V
    .locals 2
    .param p1    # I
    .param p2    # I

    invoke-static {}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallListenerNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallVideoCallListener;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->peerDimensionsChanged(Lcom/android/incallui/Call;II)V

    return-void
.end method

.method public onSessionModifyRequestReceived(Landroid/telecom/VideoProfile;)V
    .locals 9
    .param p1    # Landroid/telecom/VideoProfile;

    iget-object v7, p0, Lcom/android/incallui/InCallVideoCallListener;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v4

    invoke-virtual {p1}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v2

    invoke-static {v4}, Landroid/telecom/VideoProfile$VideoState;->isBidirectional(I)Z

    move-result v6

    invoke-static {v2}, Landroid/telecom/VideoProfile$VideoState;->isBidirectional(I)Z

    move-result v1

    invoke-static {v4}, Landroid/telecom/VideoProfile$VideoState;->isPaused(I)Z

    move-result v5

    invoke-static {v2}, Landroid/telecom/VideoProfile$VideoState;->isPaused(I)Z

    move-result v0

    if-nez v6, :cond_1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallListenerNotifier;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/InCallVideoCallListener;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v7, v8}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->upgradeToVideoRequest(Lcom/android/incallui/Call;)V

    :cond_0
    :goto_0
    if-nez v5, :cond_2

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallListenerNotifier;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/InCallVideoCallListener;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v7, v8, v3}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->peerPausedStateChanged(Lcom/android/incallui/Call;Z)V

    return-void

    :cond_1
    if-eqz v6, :cond_0

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallListenerNotifier;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/InCallVideoCallListener;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v7, v8}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->downgradeToAudio(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onSessionModifyResponseReceived(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 5
    .param p1    # I
    .param p2    # Landroid/telecom/VideoProfile;
    .param p3    # Landroid/telecom/VideoProfile;

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v3

    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v4

    if-ne v3, v4, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {p3}, Landroid/telecom/VideoProfile;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/VideoProfile$VideoState;->isBidirectional(I)Z

    move-result v0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallListenerNotifier;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallVideoCallListener;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->upgradeToVideoSuccess(Lcom/android/incallui/Call;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    if-eq p1, v2, :cond_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallListenerNotifier;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallVideoCallListener;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallVideoCallListenerNotifier;->upgradeToVideoFail(Lcom/android/incallui/Call;)V

    goto :goto_1
.end method
