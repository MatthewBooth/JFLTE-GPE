.class Landroid/hardware/contextaware/utilbundle/autotest/CaOperationDebugging;
.super Landroid/hardware/contextaware/utilbundle/autotest/OperationDebugging;
.source "CaOperationDebugging.java"


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .param p1    # I

    invoke-direct {p0, p1}, Landroid/hardware/contextaware/utilbundle/autotest/OperationDebugging;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected final doDebugging([B)V
    .locals 1
    .param p1    # [B

    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseForScenarioTesting([B)Z

    return-void
.end method
