.class public interface abstract Landroid/location/IGeoFenceListener;
.super Ljava/lang/Object;
.source "IGeoFenceListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGeoFenceListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract geoFenceExpired(Landroid/app/PendingIntent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
