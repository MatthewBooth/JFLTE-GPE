.class public Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;
.super Ljava/lang/Object;
.source "SensorHubCommManager.java"

# interfaces
.implements Landroid/hardware/contextaware/utilbundle/IUtilManager;


# static fields
.field private static volatile instance:Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;


# instance fields
.field private mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;
    .locals 2

    sget-object v0, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->instance:Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    if-nez v0, :cond_1

    const-class v1, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->instance:Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    invoke-direct {v0}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->instance:Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->instance:Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getSensorHubManager()Landroid/hardware/sensorhub/SensorHubManager;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    return-object v0
.end method

.method private setSensorHubManager(Landroid/hardware/sensorhub/SensorHubManager;)V
    .locals 0
    .param p1    # Landroid/hardware/sensorhub/SensorHubManager;

    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    return-void
.end method


# virtual methods
.method public final initializeManager(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    if-nez p1, :cond_1

    const-string v0, "Context is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "sensorhub"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/sensorhub/SensorHubManager;

    invoke-direct {p0, v0}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->setSensorHubManager(Landroid/hardware/sensorhub/SensorHubManager;)V

    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getSensorHubManager()Landroid/hardware/sensorhub/SensorHubManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "mSensorHubManager is null."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final sendCmdToSensorHub(BB[B)I
    .locals 10
    .param p1    # B
    .param p2    # B
    .param p3    # [B

    const/4 v3, 0x0

    array-length v9, p3

    add-int/lit8 v9, v9, 0x2

    new-array v6, v9, [B

    add-int/lit8 v4, v3, 0x1

    aput-byte p1, v6, v3

    add-int/lit8 v3, v4, 0x1

    aput-byte p2, v6, v4

    move-object v0, p3

    array-length v5, v0

    const/4 v2, 0x0

    move v4, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-byte v1, v0, v2

    add-int/lit8 v3, v4, 0x1

    aput-byte v1, v6, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_0

    :cond_0
    array-length v9, v6

    invoke-virtual {p0, v9, v6}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->sendPacketToSensorHub(I[B)I

    move-result v7

    if-lez v7, :cond_3

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    const-string v9, "Packet is null"

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    :goto_1
    return v7

    :cond_2
    invoke-static {v8}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v9, "fail to send cmd to SensorHub"

    invoke-static {v9}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final sendPacketToSensorHub(I[B)I
    .locals 3
    .param p1    # I
    .param p2    # [B

    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getSensorHubManager()Landroid/hardware/sensorhub/SensorHubManager;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "mSensorHubManager is null."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/16 v0, -0x3e7

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getSensorHubManager()Landroid/hardware/sensorhub/SensorHubManager;

    move-result-object v0

    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getSensorHubManager()Landroid/hardware/sensorhub/SensorHubManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Landroid/hardware/sensorhub/SensorHub;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/hardware/sensorhub/SensorHubManager;->SendSensorHubData(Landroid/hardware/sensorhub/SensorHub;I[B)I

    move-result v0

    goto :goto_0
.end method

.method public final terminateManager()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->setSensorHubManager(Landroid/hardware/sensorhub/SensorHubManager;)V

    return-void
.end method
