.class public abstract Lcom/android/server/location/GpsMeasurementsProvider;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GpsMeasurementsProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper",
        "<",
        "Landroid/location/IGpsMeasurementsListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "GpsMeasurementsProvider"

    invoke-direct {p0, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onMeasurementsAvailable(Landroid/location/GpsMeasurementsEvent;)V
    .locals 1
    .param p1    # Landroid/location/GpsMeasurementsEvent;

    new-instance v0, Lcom/android/server/location/GpsMeasurementsProvider$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/GpsMeasurementsProvider$1;-><init>(Lcom/android/server/location/GpsMeasurementsProvider;Landroid/location/GpsMeasurementsEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsMeasurementsProvider;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    return-void
.end method
