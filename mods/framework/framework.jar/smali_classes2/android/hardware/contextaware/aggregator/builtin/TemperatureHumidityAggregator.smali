.class public Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;
.super Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;
.source "TemperatureHumidityAggregator.java"


# instance fields
.field private mCompensationEngine:Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

.field private mSleepTime:J

.field private mWakeupTime:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 4
    .param p2    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextProvider;",
            ">;",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;",
            ")V"
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    iput-wide v2, p0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    return-void
.end method


# virtual methods
.method protected final checkCompensationData([D)Z
    .locals 2
    .param p1    # [D

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final clear()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->clear()V

    return-void
.end method

.method protected final compensateForRawData([[D)[D
    .locals 24
    .param p1    # [[D

    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v3, v0

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v18

    const/4 v3, 0x1

    new-array v8, v3, [D

    const/4 v3, 0x1

    new-array v9, v3, [D

    const/4 v3, 0x0

    aget-object v3, p1, v3

    array-length v0, v3

    move/from16 v17, v0

    const/4 v3, 0x1

    aget-object v3, p1, v3

    array-length v0, v3

    move/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->getLoggingStatus()I

    move-result v19

    const-wide/16 v14, 0x0

    const-wide/16 v20, 0x0

    if-eqz v17, :cond_2

    if-nez v16, :cond_3

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v13, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    if-gt v0, v1, :cond_5

    mul-int/lit8 v13, v17, 0x2

    :goto_1
    new-array v2, v13, [D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sleepTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wakeupTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    sub-long/2addr v4, v6

    div-int/lit8 v3, v13, 0x2

    int-to-long v6, v3

    div-long v14, v4, v6

    const/4 v3, 0x2

    if-le v13, v3, :cond_6

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    move-wide/from16 v22, v0

    sub-long v6, v6, v22

    div-int/lit8 v3, v13, 0x2

    add-int/lit8 v3, v3, -0x1

    int-to-long v0, v3

    move-wide/from16 v22, v0

    mul-long v22, v22, v14

    sub-long v6, v6, v22

    const-wide/16 v22, 0x2

    div-long v6, v6, v22

    add-long v20, v4, v6

    :goto_2
    const/4 v12, 0x0

    :goto_3
    div-int/lit8 v3, v13, 0x2

    if-ge v12, v3, :cond_8

    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    invoke-virtual {v3, v8, v9}, Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;->native_temperaturehumidity_getLastCompensatedData([D[D)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastCompensatedData : compensatedTemp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v8, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", compensatedHumid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v9, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :cond_4
    :goto_4
    const/4 v3, 0x0

    aget-wide v4, v8, v3

    aput-wide v4, v2, v12

    add-int v3, v12, v17

    const/4 v4, 0x0

    aget-wide v4, v9, v4

    aput-wide v4, v2, v3

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_5
    mul-int/lit8 v13, v16, 0x2

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    move-wide/from16 v22, v0

    sub-long v6, v6, v22

    const-wide/16 v22, 0x2

    div-long v6, v6, v22

    add-long v20, v4, v6

    goto :goto_2

    :cond_7
    const/4 v3, 0x2

    move/from16 v0, v19

    if-ne v0, v3, :cond_4

    int-to-long v4, v12

    mul-long/2addr v4, v14

    add-long v10, v20, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    aget-wide v4, v4, v12

    const/4 v6, 0x1

    aget-object v6, p1, v6

    aget-wide v6, v6, v12

    invoke-virtual/range {v3 .. v11}, Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;->native_temperaturehumidity_getCompensatedData(DD[D[DJ)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RawData : rawTempData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    aget-wide v4, v4, v12

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", rawHumidData = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, p1, v4

    aget-wide v4, v4, v12

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", compensatedTemp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v8, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  compensatedHumid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v9, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    goto/16 :goto_0
.end method

.method public final disable()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->disable()V

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_TEMPERATURE_HUMIDITY:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Temperature"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Humidity"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/IApPowerResetObserver;
    .locals 0

    return-object p0
.end method

.method protected final getRawSensorValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Temperature"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Humidity"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final initializeAggregator()V
    .locals 1

    new-instance v0, Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    invoke-direct {v0}, Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    return-void
.end method

.method protected final notifyCompensationData([D)V
    .locals 8
    .param p1    # [D

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v4

    array-length v5, p1

    div-int/lit8 v3, v5, 0x2

    new-array v1, v3, [D

    new-array v0, v3, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-wide v6, p1, v2

    aput-wide v6, v1, v2

    add-int v5, v2, v3

    aget-wide v6, p1, v5

    aput-wide v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->notifyObserver()V

    return-void
.end method

.method protected final terminateAggregator()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mCompensationEngine:Landroid/hardware/contextaware/lib/builtin/TemperatureHumidityCompensationLibEngine;

    return-void
.end method

.method protected final updateApSleep()V
    .locals 6

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->getTimeStampForApStatus()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    mul-long v0, v2, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeStamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iput-wide v0, p0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;->updateApSleep()V

    return-void
.end method
