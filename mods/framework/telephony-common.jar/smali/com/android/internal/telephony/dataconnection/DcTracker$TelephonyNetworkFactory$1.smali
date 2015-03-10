.class Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory$1;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Lcom/android/internal/telephony/SubscriptionController$OnDemandDdsLockNotifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->registerOnDemandDdsCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyOnDemandDdsLockGranted(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1    # Landroid/net/NetworkRequest;

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got the tempDds lock for the request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory$1;->this$1:Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->processPendingNetworkRequests(Landroid/net/NetworkRequest;)V

    return-void
.end method
