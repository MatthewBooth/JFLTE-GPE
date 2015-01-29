.class public abstract Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;
.super Landroid/hardware/contextaware/dataprovider/DataProvider;
.source "AndroidProvider.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/os/Looper;
    .param p3    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/dataprovider/DataProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    return-void
.end method


# virtual methods
.method public final getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    const-string v0, "success"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/hardware/contextaware/dataprovider/DataProvider;->getFaultDetectionResult(I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public updateAPStatus(I)V
    .locals 0
    .param p1    # I

    invoke-super {p0, p1}, Landroid/hardware/contextaware/dataprovider/DataProvider;->setAPStatus(I)V

    return-void
.end method
