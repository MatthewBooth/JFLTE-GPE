.class public interface abstract Lcom/android/internal/widget/IRemoteViewsAdapterConnection;
.super Ljava/lang/Object;
.source "IRemoteViewsAdapterConnection.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/IRemoteViewsAdapterConnection$Stub;
    }
.end annotation


# virtual methods
.method public abstract onServiceConnected(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onServiceDisconnected()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
