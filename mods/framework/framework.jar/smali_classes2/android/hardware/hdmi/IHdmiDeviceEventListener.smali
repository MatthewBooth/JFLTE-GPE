.class public interface abstract Landroid/hardware/hdmi/IHdmiDeviceEventListener;
.super Ljava/lang/Object;
.source "IHdmiDeviceEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/hdmi/IHdmiDeviceEventListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onStatusChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
