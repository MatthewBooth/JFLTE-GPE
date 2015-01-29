.class Landroid/telecom/Connection$FailureSignalingConnection;
.super Landroid/telecom/Connection;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FailureSignalingConnection"
.end annotation


# direct methods
.method public constructor <init>(Landroid/telecom/DisconnectCause;)V
    .locals 0
    .param p1    # Landroid/telecom/DisconnectCause;

    invoke-direct {p0}, Landroid/telecom/Connection;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telecom/Connection$FailureSignalingConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    return-void
.end method
