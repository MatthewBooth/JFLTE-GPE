.class Landroid/hardware/contextaware/utilbundle/autotest/SensorHubOperationDebugging;
.super Landroid/hardware/contextaware/utilbundle/autotest/OperationDebugging;
.source "SensorHubOperationDebugging.java"


# instance fields
.field private final mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # I

    invoke-direct {p0, p2}, Landroid/hardware/contextaware/utilbundle/autotest/OperationDebugging;-><init>(I)V

    const-string v0, "sensorhub"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/sensorhub/SensorHubManager;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    return-void
.end method


# virtual methods
.method protected final doDebugging([B)V
    .locals 3
    .param p1    # [B

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/autotest/SensorHubOperationDebugging;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Landroid/hardware/sensorhub/SensorHub;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v0, v1, v2, p1}, Landroid/hardware/sensorhub/SensorHubManager;->SendSensorHubData(Landroid/hardware/sensorhub/SensorHub;I[B)I

    goto :goto_0
.end method
