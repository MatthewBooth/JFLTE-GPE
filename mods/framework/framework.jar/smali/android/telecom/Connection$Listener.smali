.class public abstract Landroid/telecom/Connection$Listener;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Listener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddressChanged(Landroid/telecom/Connection;Landroid/net/Uri;I)V
    .locals 0
    .param p1    # Landroid/telecom/Connection;
    .param p2    # Landroid/net/Uri;
    .param p3    # I

    return-void
.end method

.method public onAudioModeIsVoipChanged(Landroid/telecom/Connection;Z)V
    .locals 0
    .param p1    # Landroid/telecom/Connection;
    .param p2    # Z

    return-void
.end method

.method public onCallCapabilitiesChanged(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1    # Landroid/telecom/Connection;
    .param p2    # I

    return-void
.end method

.method public onCallerDisplayNameChanged(Landroid/telecom/Connection;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Landroid/telecom/Connection;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    return-void
.end method

.method public onConferenceChanged(Landroid/telecom/Connection;Landroid/telecom/Conference;)V
    .locals 0
    .param p1    # Landroid/telecom/Connection;
    .param p2    # Landroid/telecom/Conference;

    return-void
.end method

.method public onConferenceableConnectionsChanged(Landroid/telecom/Connection;Ljava/util/List;)V
    .locals 0
    .param p1    # Landroid/telecom/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/Connection;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onDestroyed(Landroid/telecom/Connection;)V
    .locals 0
    .param p1    # Landroid/telecom/Connection;

    return-void
.end method

.method public onDisconnected(Landroid/telecom/Connection;Landroid/telecom/DisconnectCause;)V
    .locals 0
    .param p1    # Landroid/telecom/Connection;
    .param p2    # Landroid/telecom/DisconnectCause;

    return-void
.end method

.method public onPostDialWait(Landroid/telecom/Connection;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/telecom/Connection;
    .param p2    # Ljava/lang/String;

    return-void
.end method

.method public onRingbackRequested(Landroid/telecom/Connection;Z)V
    .locals 0
    .param p1    # Landroid/telecom/Connection;
    .param p2    # Z

    return-void
.end method

.method public onStateChanged(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1    # Landroid/telecom/Connection;
    .param p2    # I

    return-void
.end method

.method public onStatusHintsChanged(Landroid/telecom/Connection;Landroid/telecom/StatusHints;)V
    .locals 0
    .param p1    # Landroid/telecom/Connection;
    .param p2    # Landroid/telecom/StatusHints;

    return-void
.end method

.method public onVideoProviderChanged(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .locals 0
    .param p1    # Landroid/telecom/Connection;
    .param p2    # Landroid/telecom/Connection$VideoProvider;

    return-void
.end method

.method public onVideoStateChanged(Landroid/telecom/Connection;I)V
    .locals 0
    .param p1    # Landroid/telecom/Connection;
    .param p2    # I

    return-void
.end method
