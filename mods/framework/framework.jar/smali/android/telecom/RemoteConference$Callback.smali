.class public abstract Landroid/telecom/RemoteConference$Callback;
.super Ljava/lang/Object;
.source "RemoteConference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConference;
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
.method public onCapabilitiesChanged(Landroid/telecom/RemoteConference;I)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConference;
    .param p2    # I

    return-void
.end method

.method public onConferenceableConnectionsChanged(Landroid/telecom/RemoteConference;Ljava/util/List;)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/RemoteConference;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onConnectionAdded(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConference;
    .param p2    # Landroid/telecom/RemoteConnection;

    return-void
.end method

.method public onConnectionRemoved(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConference;
    .param p2    # Landroid/telecom/RemoteConnection;

    return-void
.end method

.method public onDestroyed(Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConference;

    return-void
.end method

.method public onDisconnected(Landroid/telecom/RemoteConference;Landroid/telecom/DisconnectCause;)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConference;
    .param p2    # Landroid/telecom/DisconnectCause;

    return-void
.end method

.method public onStateChanged(Landroid/telecom/RemoteConference;II)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConference;
    .param p2    # I
    .param p3    # I

    return-void
.end method
