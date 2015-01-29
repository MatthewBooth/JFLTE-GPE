.class public interface abstract Landroid/hardware/location/IActivityRecognitionHardwareWatcher;
.super Ljava/lang/Object;
.source "IActivityRecognitionHardwareWatcher.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IActivityRecognitionHardwareWatcher$Stub;
    }
.end annotation


# virtual methods
.method public abstract onInstanceChanged(Landroid/hardware/location/IActivityRecognitionHardware;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
