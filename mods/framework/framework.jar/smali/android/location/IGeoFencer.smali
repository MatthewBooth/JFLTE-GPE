.class public interface abstract Landroid/location/IGeoFencer;
.super Ljava/lang/Object;
.source "IGeoFencer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGeoFencer$Stub;
    }
.end annotation


# virtual methods
.method public abstract clearGeoFence(Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract clearGeoFenceUser(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setGeoFence(Landroid/os/IBinder;Landroid/location/GeoFenceParams;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
