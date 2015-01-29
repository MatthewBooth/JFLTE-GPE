.class final enum Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList$2;
.super Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
.source "SensorHubParserConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator$1;)V

    return-void
.end method


# virtual methods
.method protected final createObj()V
    .locals 2

    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;-><init>()V

    # setter for: Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;->mPowerResetNotiObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
    invoke-static {v0}, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;->access$102(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NOTI_POWER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    # getter for: Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;->mPowerResetNotiObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;->access$100()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerResetNotiParser;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator$SensorHubNonLibParserList$2;->registerParser(Ljava/lang/String;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;)V

    return-void
.end method
