.class Landroid/hardware/contextaware/utilbundle/autotest/ApPowerStressTest;
.super Landroid/hardware/contextaware/utilbundle/autotest/InnerProcessStressTest;
.source "ApPowerStressTest.java"


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1    # I

    invoke-direct {p0, p1}, Landroid/hardware/contextaware/utilbundle/autotest/InnerProcessStressTest;-><init>(I)V

    return-void
.end method

.method private getPacket(B)[B
    .locals 3
    .param p1    # B

    const/4 v1, 0x3

    new-array v0, v1, [B

    const/4 v1, 0x0

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_NOTI:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    iget-byte v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NOTI_POWER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    iget-byte v2, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte p1, v0, v1

    return-object v0
.end method


# virtual methods
.method protected final getPacket(I)[B
    .locals 2
    .param p1    # I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    return-object v0

    :pswitch_0
    const/16 v0, -0x2f

    invoke-direct {p0, v0}, Landroid/hardware/contextaware/utilbundle/autotest/ApPowerStressTest;->getPacket(B)[B

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const/16 v0, -0x2e

    invoke-direct {p0, v0}, Landroid/hardware/contextaware/utilbundle/autotest/ApPowerStressTest;->getPacket(B)[B

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
