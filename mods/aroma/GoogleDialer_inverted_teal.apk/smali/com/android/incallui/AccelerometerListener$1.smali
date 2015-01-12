.class Lcom/android/incallui/AccelerometerListener$1;
.super Ljava/lang/Object;
.source "AccelerometerListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AccelerometerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AccelerometerListener;


# direct methods
.method constructor <init>(Lcom/android/incallui/AccelerometerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/AccelerometerListener$1;->this$0:Lcom/android/incallui/AccelerometerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1    # Landroid/hardware/Sensor;
    .param p2    # I

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1    # Landroid/hardware/SensorEvent;

    iget-object v1, p0, Lcom/android/incallui/AccelerometerListener$1;->this$0:Lcom/android/incallui/AccelerometerListener;

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    float-to-double v2, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v0, v0, v4

    float-to-double v4, v0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v6, 0x2

    aget v0, v0, v6

    float-to-double v6, v0

    # invokes: Lcom/android/incallui/AccelerometerListener;->onSensorEvent(DDD)V
    invoke-static/range {v1 .. v7}, Lcom/android/incallui/AccelerometerListener;->access$000(Lcom/android/incallui/AccelerometerListener;DDD)V

    return-void
.end method
