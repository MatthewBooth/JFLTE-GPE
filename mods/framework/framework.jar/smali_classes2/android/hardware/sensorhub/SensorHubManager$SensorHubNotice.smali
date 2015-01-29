.class Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice;
.super Ljava/lang/Object;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/sensorhub/SensorHubManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorHubNotice"
.end annotation


# static fields
.field private static volatile instance:Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice;


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice$1;

    invoke-direct {v0, p0}, Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice$1;-><init>(Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice;)V

    iput-object v0, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static getInstance()Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice;
    .locals 2

    sget-object v0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice;->instance:Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice;

    if-nez v0, :cond_1

    const-class v1, Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice;->instance:Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice;

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice;

    invoke-direct {v0}, Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice;-><init>()V

    sput-object v0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice;->instance:Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice;->instance:Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public initialize(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    const-string v1, "SensorHubManager"

    const-string v2, "SensorHubNotice initialize()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
