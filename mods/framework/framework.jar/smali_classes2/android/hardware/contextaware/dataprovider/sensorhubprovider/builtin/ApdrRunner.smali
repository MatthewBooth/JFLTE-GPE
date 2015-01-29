.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ApdrRunner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;

    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerResetObservable;)V

    return-void
.end method

.method private checkPacket([BI)Z
    .locals 2
    .param p1    # [B
    .param p2    # I

    add-int/lit8 v0, p2, 0x7

    add-int/lit8 v0, v0, 0x1

    array-length v1, p1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final clear()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    return-void
.end method

.method public final disable()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    return-void
.end method

.method public final enable()V
    .locals 0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getContextValueNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Alert"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DeltaTime"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Speed"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Heading"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Doe"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacket()[B
    .locals 12

    const/4 v6, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaAkmManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaAkmManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/contextaware/utilbundle/CaAkmManager;->loadOrientationInfo()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    const-string v7, "can\'t load the orientation information."

    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v6

    :cond_2
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaAkmManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaAkmManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/contextaware/utilbundle/CaAkmManager;->getOrientationValueNames()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v7, v2

    const/4 v8, 0x6

    if-ge v7, v8, :cond_4

    :cond_3
    const-string v7, "can\'t get the orientation value names."

    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x5

    new-array v6, v7, [B

    const/4 v3, 0x0

    add-int/lit8 v4, v3, 0x1

    aput-byte v10, v6, v3

    add-int/lit8 v3, v4, 0x1

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v8

    double-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    add-int/lit8 v4, v3, 0x1

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v8

    double-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    add-int/lit8 v3, v4, 0x1

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    add-int/lit8 v4, v3, 0x1

    aget-object v7, v2, v10

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7, v11}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v7

    aget-byte v7, v7, v10

    aput-byte v7, v6, v3

    const/4 v1, 0x1

    move v3, v4

    :goto_1
    array-length v7, v2

    if-ge v1, v7, :cond_1

    aget-object v7, v2, v1

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    add-int/lit8 v4, v3, 0x1

    aget-byte v7, v0, v10

    aput-byte v7, v6, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v7, v0, v11

    aput-byte v7, v6, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected final getInstLibType()B
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/IApPowerResetObserver;
    .locals 0

    return-object p0
.end method

.method public final parse([BI)I
    .locals 18
    .param p1    # [B
    .param p2    # I

    move/from16 v12, p2

    move-object/from16 v0, p1

    array-length v14, v0

    sub-int/2addr v14, v12

    add-int/lit8 v14, v14, -0x1

    if-gez v14, :cond_0

    const/4 v13, -0x1

    :goto_0
    return v13

    :cond_0
    add-int/lit8 v13, v12, 0x1

    aget-byte v2, p1, v12

    if-gtz v2, :cond_2

    move-object/from16 v0, p1

    array-length v14, v0

    sub-int/2addr v14, v13

    add-int/lit8 v14, v14, -0x1

    if-gez v14, :cond_1

    const-string v14, "packet is lost."

    invoke-static {v14}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v14, -0x1

    move v12, v13

    move v13, v14

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super {v0, v1, v13}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->parse([BI)I

    move-result v14

    move v12, v13

    move v13, v14

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v2, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->checkPacket([BI)Z

    move-result v14

    if-nez v14, :cond_3

    add-int/lit8 v14, v2, -0x1

    if-lt v8, v14, :cond_3

    const/4 v14, -0x1

    move v12, v13

    move v13, v14

    goto :goto_0

    :cond_3
    add-int/lit8 v12, v13, 0x1

    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    add-int/lit8 v13, v12, 0x1

    aget-byte v15, p1, v12

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v14, v15

    int-to-double v14, v14

    const-wide v16, 0x408f400000000000L

    div-double v4, v14, v16

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    const/4 v15, 0x1

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v4, v5}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    add-int/lit8 v12, v13, 0x1

    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    add-int/lit8 v13, v12, 0x1

    aget-byte v15, p1, v12

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v14, v15

    int-to-double v14, v14

    const-wide/high16 v16, 0x4059000000000000L

    div-double v10, v14, v16

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    const/4 v15, 0x2

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v10, v11}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    add-int/lit8 v12, v13, 0x1

    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    add-int/lit8 v13, v12, 0x1

    aget-byte v15, p1, v12

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v14, v15

    int-to-double v14, v14

    const-wide/high16 v16, 0x4059000000000000L

    div-double v6, v14, v16

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    const/4 v15, 0x3

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v6, v7}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;D)V

    add-int/lit8 v12, v13, 0x1

    aget-byte v3, p1, v13

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v14

    const/4 v15, 0x4

    aget-object v15, v9, v15

    invoke-virtual {v14, v15, v3}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-super/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    add-int/lit8 v8, v8, 0x1

    move v13, v12

    goto/16 :goto_1

    :cond_4
    move v12, v13

    goto/16 :goto_0
.end method

.method public final sendSleepModeCmdToSensorHub([B)V
    .locals 5
    .param p1    # [B

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getInstLibType()B

    move-result v2

    if-ltz v2, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [B

    new-array v1, v3, [B

    aput-byte v3, v1, v4

    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v2, v1

    array-length v3, p1

    invoke-static {p1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/16 v2, -0x4f

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getInstLibType()B

    move-result v3

    invoke-super {p0, v2, v3, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->sendCmdToSensorHub(BB[B)V

    goto :goto_0
.end method
