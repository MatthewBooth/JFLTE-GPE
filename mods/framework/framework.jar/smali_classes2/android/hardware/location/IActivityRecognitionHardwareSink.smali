.class public interface abstract Landroid/hardware/location/IActivityRecognitionHardwareSink;
.super Ljava/lang/Object;
.source "IActivityRecognitionHardwareSink.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IActivityRecognitionHardwareSink$Stub;
    }
.end annotation


# virtual methods
.method public abstract onActivityChanged(Landroid/hardware/location/ActivityChangedEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
