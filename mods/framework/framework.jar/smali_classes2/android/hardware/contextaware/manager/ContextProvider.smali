.class public abstract Landroid/hardware/contextaware/manager/ContextProvider;
.super Ljava/lang/Object;
.source "ContextProvider.java"

# interfaces
.implements Landroid/hardware/contextaware/manager/IApPowerObserver;
.implements Landroid/hardware/contextaware/manager/IApPowerResetObserver;
.implements Landroid/hardware/contextaware/manager/ICmdProcessFaultDetection;
.implements Landroid/hardware/contextaware/manager/IContextObservable;


# instance fields
.field private final mApPowerResetObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;

.field private mApStatus:I

.field private final mContext:Landroid/content/Context;

.field private final mContextBean:Landroid/hardware/contextaware/manager/ContextBean;

.field private final mFaultDetectionObservers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/IContextObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooper:Landroid/os/Looper;

.field private final mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/IContextObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mPreparedCollection:I

.field private mTimeStampForApStatus:J


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/os/Looper;
    .param p3    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mFaultDetectionObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mLooper:Landroid/os/Looper;

    iput-object p3, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mApPowerResetObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;

    new-instance v0, Landroid/hardware/contextaware/manager/ContextBean;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextBean;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mContextBean:Landroid/hardware/contextaware/manager/ContextBean;

    return-void
.end method

.method private clearContextBean()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mContextBean:Landroid/hardware/contextaware/manager/ContextBean;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextBean;->clearContextBean()V

    return-void
.end method

.method private notifyFaultDetectionResult(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # I

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "Fault Detection Result is null."

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getUsedServiceCount()I

    move-result v1

    if-eq v1, p2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResult(I)Landroid/os/Bundle;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextTypeOfFaultDetection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Landroid/hardware/contextaware/manager/ContextProvider;->notifyFaultDetectionObserver(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private notifyObserver(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->display()V

    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/IContextObserver;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Landroid/hardware/contextaware/manager/IContextObserver;->updateContext(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->clearContextBean()V

    return-void
.end method


# virtual methods
.method protected checkNotifyCondition()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->clearContextBean()V

    return-void
.end method

.method public abstract disable()V
.end method

.method protected disableForRestore()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->disable()V

    return-void
.end method

.method protected disableForStop(Z)V
    .locals 0
    .param p1    # Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->disableForRestore()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->disable()V

    goto :goto_0
.end method

.method protected final display()V
    .locals 6

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/contextaware/manager/ContextBean;->getContextBundleForDisplay()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "================= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ================="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/manager/ContextProvider;->getDisplayContents(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public abstract enable()V
.end method

.method protected enableForRestore()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->enable()V

    return-void
.end method

.method protected enableForStart(Z)V
    .locals 0
    .param p1    # Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->enableForRestore()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->enable()V

    goto :goto_0
.end method

.method public final getAPStatus()I
    .locals 1

    iget v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mApStatus:I

    return v0
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected final getContextBean()Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mContextBean:Landroid/hardware/contextaware/manager/ContextBean;

    return-object v0
.end method

.method public abstract getContextType()Ljava/lang/String;
.end method

.method public final getContextTypeOfFaultDetection()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getContextValueNames()[Ljava/lang/String;
.end method

.method protected getDisplayContents(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/os/Bundle;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getFaultDetectionResult()Landroid/os/Bundle;
.end method

.method protected final getFaultDetectionResult(I)Landroid/os/Bundle;
    .locals 5
    .param p1    # I

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResultValueNames()[Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v3

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/contextaware/ContextList;->getServiceOrdinal(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final getFaultDetectionResultValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Service"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CheckResult"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getInitContextBundle()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method protected abstract getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
.end method

.method protected abstract getPowerResetObserver()Landroid/hardware/contextaware/manager/IApPowerResetObserver;
.end method

.method public final getTimeStampForApStatus()J
    .locals 2

    iget-wide v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mTimeStampForApStatus:J

    return-wide v0
.end method

.method protected final getUsedServiceCount()I
    .locals 2

    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedServiceCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final getUsedSubCollectionCount()I
    .locals 2

    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedSubCollectionCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final getUsedTotalCount()I
    .locals 2

    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected abstract initialize()V
.end method

.method public final initializePreparedSubCollection()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mPreparedCollection:I

    return-void
.end method

.method protected final isDisable()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getUsedTotalCount()I

    move-result v1

    if-ge v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isEnable()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getUsedTotalCount()I

    move-result v1

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isRunning()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getUsedTotalCount()I

    move-result v1

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final notifyFaultDetectionObserver(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Landroid/os/Bundle;

    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mFaultDetectionObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/IContextObserver;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/contextaware/manager/IContextObserver;->updateFaultDetectionResult(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final notifyInitContext()V
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getInitContextBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/hardware/contextaware/manager/ContextProvider;->notifyObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final notifyObserver()V
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->checkNotifyCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextBean;->getContextBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/contextaware/manager/ContextProvider;->notifyObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->disable()V

    return-void
.end method

.method protected processApPowerStatus()V
    .locals 2

    iget v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mApStatus:I

    const/16 v1, -0x2e

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->updateApSleep()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mApStatus:I

    const/16 v1, -0x2f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->updateApWakeup()V

    goto :goto_0
.end method

.method protected final registerApPowerObserver()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mApPowerResetObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mApPowerResetObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getPowerResetObserver()Landroid/hardware/contextaware/manager/IApPowerResetObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;->registerApResetObserver(Landroid/hardware/contextaware/manager/IApPowerResetObserver;)V

    :cond_0
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->registerApPowerObserver(Landroid/hardware/contextaware/manager/IApPowerObserver;)V

    return-void
.end method

.method public final registerFaultDetectionObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V
    .locals 1
    .param p1    # Landroid/hardware/contextaware/manager/IContextObserver;

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mFaultDetectionObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mFaultDetectionObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final registerObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V
    .locals 1
    .param p1    # Landroid/hardware/contextaware/manager/IContextObserver;

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected reset()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->enable()V

    return-void
.end method

.method public final setAPStatus(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mApStatus:I

    return-void
.end method

.method protected final setProperty(ILjava/lang/Object;)Z
    .locals 1
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/hardware/contextaware/manager/ContextProvider;->setPropertyValue(ILjava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPropertyValue(ILjava/lang/Object;)V
    .locals 0
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)V"
        }
    .end annotation

    return-void
.end method

.method public start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Z)V
    .locals 2
    .param p1    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    .param p2    # Z

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->initialize()V

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->clear()V

    invoke-virtual {p0, p2}, Landroid/hardware/contextaware/manager/ContextProvider;->enableForStart(Z)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->registerApPowerObserver()V

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "START"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/hardware/contextaware/manager/ContextProvider;->notifyFaultDetectionResult(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;Z)V
    .locals 2
    .param p1    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    .param p2    # Z

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->unregisterApPowerObserver()V

    invoke-virtual {p0, p2}, Landroid/hardware/contextaware/manager/ContextProvider;->disableForStop(Z)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->clear()V

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->terminate()V

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "STOP"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/hardware/contextaware/manager/ContextProvider;->notifyFaultDetectionResult(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method protected abstract terminate()V
.end method

.method protected final unregisterApPowerObserver()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mApPowerResetObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mApPowerResetObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getPowerResetObserver()Landroid/hardware/contextaware/manager/IApPowerResetObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;->unregisterApResetObserver(Landroid/hardware/contextaware/manager/IApPowerResetObserver;)V

    :cond_0
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->unregisterApPowerObserver(Landroid/hardware/contextaware/manager/IApPowerObserver;)V

    return-void
.end method

.method public final unregisterFaultDetectionObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V
    .locals 1
    .param p1    # Landroid/hardware/contextaware/manager/IContextObserver;

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mFaultDetectionObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mFaultDetectionObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final unregisterObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V
    .locals 1
    .param p1    # Landroid/hardware/contextaware/manager/IContextObserver;

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mObservers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateApPowerResetStatus(I)V
    .locals 1
    .param p1    # I

    const/16 v0, -0x2b

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->reset()V

    :cond_0
    return-void
.end method

.method public updateApPowerStatus(IJ)V
    .locals 2
    .param p1    # I
    .param p2    # J

    iput p1, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mApStatus:I

    iput-wide p2, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mTimeStampForApStatus:J

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getUsedSubCollectionCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getUsedSubCollectionCount()I

    move-result v0

    iget v1, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mPreparedCollection:I

    if-le v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->processApPowerStatus()V

    goto :goto_0
.end method

.method public final updateApPowerStatusForPreparedCollection()V
    .locals 2

    iget v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mPreparedCollection:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mPreparedCollection:I

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getUsedSubCollectionCount()I

    move-result v0

    iget v1, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mPreparedCollection:I

    if-le v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->processApPowerStatus()V

    goto :goto_0
.end method

.method protected updateApReset()V
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mApStatus:I

    return-void
.end method

.method protected updateApSleep()V
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->pause()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mApStatus:I

    return-void
.end method

.method protected updateApWakeup()V
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->resume()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mApStatus:I

    return-void
.end method
