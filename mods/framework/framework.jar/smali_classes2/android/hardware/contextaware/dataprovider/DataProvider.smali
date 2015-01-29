.class public abstract Landroid/hardware/contextaware/dataprovider/DataProvider;
.super Landroid/hardware/contextaware/manager/ContextProvider;
.source "DataProvider.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/os/Looper;
    .param p3    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/manager/ContextProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    return-void
.end method


# virtual methods
.method protected final initialize()V
    .locals 1

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "mContext is null."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/DataProvider;->initializeManager()V

    goto :goto_0
.end method

.method protected abstract initializeManager()V
.end method

.method protected final terminate()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/DataProvider;->terminateManager()V

    return-void
.end method

.method protected abstract terminateManager()V
.end method
