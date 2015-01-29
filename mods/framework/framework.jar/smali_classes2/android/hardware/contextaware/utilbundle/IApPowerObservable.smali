.class public interface abstract Landroid/hardware/contextaware/utilbundle/IApPowerObservable;
.super Ljava/lang/Object;
.source "IApPowerObservable.java"


# static fields
.field public static final AP_NONE:B = 0x0t

.field public static final AP_SLEEP:B = -0x2et

.field public static final AP_WAKEUP:B = -0x2ft

.field public static final POWER_CONNECTED:B = -0x2at

.field public static final POWER_DISCONNECTED:B = -0x29t


# virtual methods
.method public abstract notifyApPowerObserver(IJ)V
.end method

.method public abstract registerApPowerObserver(Landroid/hardware/contextaware/manager/IApPowerObserver;)V
.end method

.method public abstract unregisterApPowerObserver(Landroid/hardware/contextaware/manager/IApPowerObserver;)V
.end method
