.class Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice$1;
.super Landroid/content/BroadcastReceiver;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice;


# direct methods
.method constructor <init>(Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice$1;->this$0:Landroid/hardware/sensorhub/SensorHubManager$SensorHubNotice;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v1, 0x3

    new-array v0, v1, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    aput-byte v2, v0, v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SensorHubManager"

    const-string v2, "send screen-off notice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x2e

    aput-byte v1, v0, v3

    :goto_0
    array-length v1, v0

    # invokes: Landroid/hardware/sensorhub/SensorHubManager;->SendSensorHubData(I[B)I
    invoke-static {v1, v0}, Landroid/hardware/sensorhub/SensorHubManager;->access$100(I[B)I

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SensorHubManager"

    const-string v2, "send screen-on notice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x2f

    aput-byte v1, v0, v3

    goto :goto_0
.end method
