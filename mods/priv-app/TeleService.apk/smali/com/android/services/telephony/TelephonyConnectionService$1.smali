.class Lcom/android/services/telephony/TelephonyConnectionService$1;
.super Ljava/lang/Object;
.source "TelephonyConnectionService.java"

# interfaces
.implements Lcom/android/services/telephony/EmergencyCallHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/services/telephony/TelephonyConnectionService;->onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelephonyConnectionService;

.field final synthetic val$connection:Lcom/android/services/telephony/TelephonyConnection;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;

.field final synthetic val$request:Landroid/telecom/ConnectionRequest;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelephonyConnectionService;Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConnectionService$1;->this$0:Lcom/android/services/telephony/TelephonyConnectionService;

    iput-object p2, p0, Lcom/android/services/telephony/TelephonyConnectionService$1;->val$connection:Lcom/android/services/telephony/TelephonyConnection;

    iput-object p3, p0, Lcom/android/services/telephony/TelephonyConnectionService$1;->val$phone:Lcom/android/internal/telephony/Phone;

    iput-object p4, p0, Lcom/android/services/telephony/TelephonyConnectionService$1;->val$request:Landroid/telecom/ConnectionRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Z)V
    .locals 4
    .param p1    # Z

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService$1;->val$connection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService$1;->val$connection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->setInitialized()V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService$1;->this$0:Lcom/android/services/telephony/TelephonyConnectionService;

    iget-object v1, p0, Lcom/android/services/telephony/TelephonyConnectionService$1;->val$connection:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnectionService$1;->val$phone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnectionService$1;->val$request:Landroid/telecom/ConnectionRequest;

    # invokes: Lcom/android/services/telephony/TelephonyConnectionService;->placeOutgoingConnection(Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/services/telephony/TelephonyConnectionService;->access$000(Lcom/android/services/telephony/TelephonyConnectionService;Lcom/android/services/telephony/TelephonyConnection;Lcom/android/internal/telephony/Phone;Landroid/telecom/ConnectionRequest;)V

    goto :goto_0

    :cond_1
    const-string v0, "onCreateOutgoingConnection, failed to turn on radio"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService$1;->val$connection:Lcom/android/services/telephony/TelephonyConnection;

    const/16 v1, 0x11

    const-string v2, "Failed to turn on radio."

    invoke-static {v1, v2}, Lcom/android/services/telephony/DisconnectCauseUtil;->toTelecomDisconnectCause(ILjava/lang/String;)Landroid/telecom/DisconnectCause;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/services/telephony/TelephonyConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    iget-object v0, p0, Lcom/android/services/telephony/TelephonyConnectionService$1;->val$connection:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v0}, Lcom/android/services/telephony/TelephonyConnection;->destroy()V

    goto :goto_0
.end method
