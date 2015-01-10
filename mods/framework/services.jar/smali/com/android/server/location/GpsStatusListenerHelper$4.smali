.class Lcom/android/server/location/GpsStatusListenerHelper$4;
.super Lcom/android/server/location/GpsStatusListenerHelper$Operation;
.source "GpsStatusListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GpsStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsStatusListenerHelper;

.field final synthetic val$nmea:Ljava/lang/String;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsStatusListenerHelper;JLjava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    iput-wide p2, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$timestamp:J

    iput-object p4, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$nmea:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/GpsStatusListenerHelper$Operation;-><init>(Lcom/android/server/location/GpsStatusListenerHelper;Lcom/android/server/location/GpsStatusListenerHelper$1;)V

    return-void
.end method


# virtual methods
.method public execute(Landroid/location/IGpsStatusListener;)V
    .locals 3
    .param p1    # Landroid/location/IGpsStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$timestamp:J

    iget-object v2, p0, Lcom/android/server/location/GpsStatusListenerHelper$4;->val$nmea:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic execute(Landroid/os/IInterface;)V
    .locals 0
    .param p1    # Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Landroid/location/IGpsStatusListener;

    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsStatusListenerHelper$4;->execute(Landroid/location/IGpsStatusListener;)V

    return-void
.end method
