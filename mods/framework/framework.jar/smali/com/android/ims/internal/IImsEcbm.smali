.class public interface abstract Lcom/android/ims/internal/IImsEcbm;
.super Ljava/lang/Object;
.source "IImsEcbm.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsEcbm$Stub;
    }
.end annotation


# virtual methods
.method public abstract exitEmergencyCallbackMode()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setListener(Lcom/android/ims/internal/IImsEcbmListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
