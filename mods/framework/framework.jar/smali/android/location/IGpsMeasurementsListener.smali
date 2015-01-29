.class public interface abstract Landroid/location/IGpsMeasurementsListener;
.super Ljava/lang/Object;
.source "IGpsMeasurementsListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGpsMeasurementsListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGpsMeasurementsReceived(Landroid/location/GpsMeasurementsEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
