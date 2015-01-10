.class Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState$CaptivePortalLoggedInBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptivePortalLoggedInBroadcastReceiver"
.end annotation


# instance fields
.field private final mToken:I

.field final synthetic this$1:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;I)V
    .locals 0
    .param p2    # I

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState$CaptivePortalLoggedInBroadcastReceiver;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput p2, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState$CaptivePortalLoggedInBroadcastReceiver;->mToken:I

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState$CaptivePortalLoggedInBroadcastReceiver;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mNetworkAgentInfo:Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1900(Lcom/android/server/connectivity/NetworkMonitor;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v1, v1, Landroid/net/Network;->netId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState$CaptivePortalLoggedInBroadcastReceiver;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    iget-object v0, v0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState$CaptivePortalLoggedInBroadcastReceiver;->this$1:Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;

    iget-object v1, v1, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const v2, 0x82009

    iget v3, p0, Lcom/android/server/connectivity/NetworkMonitor$CaptivePortalState$CaptivePortalLoggedInBroadcastReceiver;->mToken:I

    const-string v4, "result"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method
