.class public abstract Landroid/telecom/RemoteConnection$VideoProvider$Listener;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection$VideoProvider;
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
.method public onCallDataUsageChanged(Landroid/telecom/RemoteConnection$VideoProvider;I)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConnection$VideoProvider;
    .param p2    # I

    return-void
.end method

.method public onCameraCapabilitiesChanged(Landroid/telecom/RemoteConnection$VideoProvider;Landroid/telecom/CameraCapabilities;)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConnection$VideoProvider;
    .param p2    # Landroid/telecom/CameraCapabilities;

    return-void
.end method

.method public onHandleCallSessionEvent(Landroid/telecom/RemoteConnection$VideoProvider;I)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConnection$VideoProvider;
    .param p2    # I

    return-void
.end method

.method public onPeerDimensionsChanged(Landroid/telecom/RemoteConnection$VideoProvider;II)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConnection$VideoProvider;
    .param p2    # I
    .param p3    # I

    return-void
.end method

.method public onReceiveSessionModifyRequest(Landroid/telecom/RemoteConnection$VideoProvider;Landroid/telecom/VideoProfile;)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConnection$VideoProvider;
    .param p2    # Landroid/telecom/VideoProfile;

    return-void
.end method

.method public onReceiveSessionModifyResponse(Landroid/telecom/RemoteConnection$VideoProvider;ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 0
    .param p1    # Landroid/telecom/RemoteConnection$VideoProvider;
    .param p2    # I
    .param p3    # Landroid/telecom/VideoProfile;
    .param p4    # Landroid/telecom/VideoProfile;

    return-void
.end method
