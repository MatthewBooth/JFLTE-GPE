.class public abstract Landroid/telecom/RemoteConnection$Callback;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressChanged(Landroid/telecom/RemoteConnection;Landroid/net/Uri;I)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConnection;
    .param p2    # Landroid/net/Uri;
    .param p3    # I

    return-void
.end method

.method public onCallCapabilitiesChanged(Landroid/telecom/RemoteConnection;I)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConnection;
    .param p2    # I

    return-void
.end method

.method public onCallerDisplayNameChanged(Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConnection;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    return-void
.end method

.method public onConferenceChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConnection;
    .param p2    # Landroid/telecom/RemoteConference;

    return-void
.end method

.method public onConferenceableConnectionsChanged(Landroid/telecom/RemoteConnection;Ljava/util/List;)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/RemoteConnection;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onDestroyed(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConnection;

    return-void
.end method

.method public onDisconnected(Landroid/telecom/RemoteConnection;Landroid/telecom/DisconnectCause;)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConnection;
    .param p2    # Landroid/telecom/DisconnectCause;

    return-void
.end method

.method public onPostDialWait(Landroid/telecom/RemoteConnection;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConnection;
    .param p2    # Ljava/lang/String;

    return-void
.end method

.method public onRingbackRequested(Landroid/telecom/RemoteConnection;Z)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConnection;
    .param p2    # Z

    return-void
.end method

.method public onStateChanged(Landroid/telecom/RemoteConnection;I)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConnection;
    .param p2    # I

    return-void
.end method

.method public onStatusHintsChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/StatusHints;)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConnection;
    .param p2    # Landroid/telecom/StatusHints;

    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$VideoProvider;)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConnection;
    .param p2    # Landroid/telecom/RemoteConnection$VideoProvider;

    return-void
.end method

.method public onVideoStateChanged(Landroid/telecom/RemoteConnection;I)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConnection;
    .param p2    # I

    return-void
.end method

.method public onVoipAudioChanged(Landroid/telecom/RemoteConnection;Z)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConnection;
    .param p2    # Z

    return-void
.end method
