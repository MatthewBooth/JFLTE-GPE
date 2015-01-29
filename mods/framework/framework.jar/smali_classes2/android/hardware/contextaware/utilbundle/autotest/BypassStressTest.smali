.class Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;
.super Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;
.source "BypassStressTest.java"


# instance fields
.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I

    invoke-direct {p0, p2}, Landroid/hardware/contextaware/utilbundle/autotest/CmdProcessStressTest;-><init>(I)V

    new-instance v0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest$1;-><init>(Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorListener:Landroid/hardware/SensorEventListener;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorManager:Landroid/hardware/SensorManager;

    return-void
.end method

.method private getSensorRate()I
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0xb4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    return v0
.end method


# virtual methods
.method protected final clear()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method protected final getType()I
    .locals 4

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_4
    const/16 v1, 0x8

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected final registerListener()V
    .locals 4

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->getSensorRate()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method protected final unregisterListener()V
    .locals 4

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/autotest/BypassStressTest;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    goto :goto_0
.end method
