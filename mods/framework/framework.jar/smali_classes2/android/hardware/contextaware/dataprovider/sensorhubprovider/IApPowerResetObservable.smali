.class public interface abstract Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;
.super Ljava/lang/Object;
.source "IApPowerResetObservable.java"


# static fields
.field public static final AP_NONE:B = 0x0t

.field public static final AP_RESET:B = -0x2bt


# virtual methods
.method public abstract notifyApResetObserver(I)V
.end method

.method public abstract registerApResetObserver(Landroid/hardware/contextaware/manager/IApPowerResetObserver;)V
.end method

.method public abstract unregisterApResetObserver(Landroid/hardware/contextaware/manager/IApPowerResetObserver;)V
.end method
