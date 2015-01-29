.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;
.super Ljava/lang/Object;
.source "TimeOutCheckService.java"

# interfaces
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ITimeOutCheckObserverable;
.implements Ljava/lang/Runnable;


# instance fields
.field private mCmdReceiveFlag:Z

.field private mObserver:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ITimeOutCheckObserver;

.field private mStopFlag:Z

.field private final mTimeOut:I


# direct methods
.method public constructor <init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ITimeOutCheckObserver;I)V
    .locals 1
    .param p1    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ITimeOutCheckObserver;
    .param p2    # I

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;->mStopFlag:Z

    iput-boolean v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;->mCmdReceiveFlag:Z

    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;->registerObserver(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ITimeOutCheckObserver;)V

    iput p2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;->mTimeOut:I

    return-void
.end method


# virtual methods
.method public final notifyTimeOut()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;->mObserver:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ITimeOutCheckObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;->mObserver:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ITimeOutCheckObserver;

    invoke-interface {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ITimeOutCheckObserver;->occurTimeOut()V

    :cond_0
    return-void
.end method

.method public final registerObserver(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ITimeOutCheckObserver;)V
    .locals 0
    .param p1    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ITimeOutCheckObserver;

    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;->mObserver:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ITimeOutCheckObserver;

    return-void
.end method

.method public final run()V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;->mTimeOut:I

    mul-int/lit8 v2, v2, 0xa

    if-ge v1, v2, :cond_2

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    iget-boolean v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;->mStopFlag:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;->mCmdReceiveFlag:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    :cond_2
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;->notifyTimeOut()V

    goto :goto_1
.end method

.method protected final setCmdReceiveFlag(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;->mCmdReceiveFlag:Z

    return-void
.end method

.method protected final setStopFlag(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;->mStopFlag:Z

    return-void
.end method

.method public final unregisterObserver()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/TimeOutCheckService;->mObserver:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ITimeOutCheckObserver;

    return-void
.end method
