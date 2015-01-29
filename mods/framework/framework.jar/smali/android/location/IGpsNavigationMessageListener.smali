.class public interface abstract Landroid/location/IGpsNavigationMessageListener;
.super Ljava/lang/Object;
.source "IGpsNavigationMessageListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGpsNavigationMessageListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGpsNavigationMessageReceived(Landroid/location/GpsNavigationMessageEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
