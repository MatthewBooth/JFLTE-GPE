.class Landroid/location/GpsMeasurementListenerTransport;
.super Landroid/location/LocalListenerHelper;
.source "GpsMeasurementListenerTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsMeasurementListenerTransport$1;,
        Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/LocalListenerHelper",
        "<",
        "Landroid/location/GpsMeasurementsEvent$Listener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListenerTransport:Landroid/location/IGpsMeasurementsListener;

.field private final mLocationManager:Landroid/location/ILocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/location/ILocationManager;

    const-string v0, "GpsMeasurementListenerTransport"

    invoke-direct {p0, v0}, Landroid/location/LocalListenerHelper;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GpsMeasurementListenerTransport$ListenerTransport;-><init>(Landroid/location/GpsMeasurementListenerTransport;Landroid/location/GpsMeasurementListenerTransport$1;)V

    iput-object v0, p0, Landroid/location/GpsMeasurementListenerTransport;->mListenerTransport:Landroid/location/IGpsMeasurementsListener;

    iput-object p1, p0, Landroid/location/GpsMeasurementListenerTransport;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/location/GpsMeasurementListenerTransport;->mLocationManager:Landroid/location/ILocationManager;

    return-void
.end method


# virtual methods
.method protected registerWithServer()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/location/GpsMeasurementListenerTransport;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/GpsMeasurementListenerTransport;->mListenerTransport:Landroid/location/IGpsMeasurementsListener;

    iget-object v2, p0, Landroid/location/GpsMeasurementListenerTransport;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/location/ILocationManager;->addGpsMeasurementsListener(Landroid/location/IGpsMeasurementsListener;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected unregisterFromServer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/location/GpsMeasurementListenerTransport;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/GpsMeasurementListenerTransport;->mListenerTransport:Landroid/location/IGpsMeasurementsListener;

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->removeGpsMeasurementsListener(Landroid/location/IGpsMeasurementsListener;)Z

    return-void
.end method
