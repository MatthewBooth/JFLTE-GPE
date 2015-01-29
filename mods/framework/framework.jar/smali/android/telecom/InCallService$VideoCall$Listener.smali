.class public abstract Landroid/telecom/InCallService$VideoCall$Listener;
.super Ljava/lang/Object;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService$VideoCall;
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
.method public abstract onCallDataUsageChanged(I)V
.end method

.method public abstract onCallSessionEvent(I)V
.end method

.method public abstract onCameraCapabilitiesChanged(Landroid/telecom/CameraCapabilities;)V
.end method

.method public abstract onPeerDimensionsChanged(II)V
.end method

.method public abstract onSessionModifyRequestReceived(Landroid/telecom/VideoProfile;)V
.end method

.method public abstract onSessionModifyResponseReceived(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
.end method
