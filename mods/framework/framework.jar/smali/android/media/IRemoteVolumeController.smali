.class public interface abstract Landroid/media/IRemoteVolumeController;
.super Ljava/lang/Object;
.source "IRemoteVolumeController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/IRemoteVolumeController$Stub;
    }
.end annotation


# virtual methods
.method public abstract remoteVolumeChanged(Landroid/media/session/ISessionController;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateRemoteController(Landroid/media/session/ISessionController;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
