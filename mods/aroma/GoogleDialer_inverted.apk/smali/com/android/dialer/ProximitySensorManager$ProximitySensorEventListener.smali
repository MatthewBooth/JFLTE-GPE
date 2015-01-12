.class Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;
.super Ljava/lang/Object;
.source "ProximitySensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/ProximitySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProximitySensorEventListener"
.end annotation


# instance fields
.field private mLastState:Lcom/android/dialer/ProximitySensorManager$State;

.field private final mListener:Lcom/android/dialer/ProximitySensorManager$Listener;

.field private final mMaxValue:F

.field private final mProximitySensor:Landroid/hardware/Sensor;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mWaitingForFarState:Z


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/dialer/ProximitySensorManager$Listener;)V
    .locals 1
    .param p1    # Landroid/hardware/SensorManager;
    .param p2    # Landroid/hardware/Sensor;
    .param p3    # Lcom/android/dialer/ProximitySensorManager$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    iput v0, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mMaxValue:F

    iput-object p3, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mListener:Lcom/android/dialer/ProximitySensorManager$Listener;

    sget-object v0, Lcom/android/dialer/ProximitySensorManager$State;->FAR:Lcom/android/dialer/ProximitySensorManager$State;

    iput-object v0, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/dialer/ProximitySensorManager$State;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mWaitingForFarState:Z

    return-void
.end method

.method private getStateFromValue(F)Lcom/android/dialer/ProximitySensorManager$State;
    .locals 1
    .param p1    # F

    const/high16 v0, 0x40a00000

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mMaxValue:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/dialer/ProximitySensorManager$State;->FAR:Lcom/android/dialer/ProximitySensorManager$State;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/dialer/ProximitySensorManager$State;->NEAR:Lcom/android/dialer/ProximitySensorManager$State;

    goto :goto_0
.end method

.method private unregisterWithoutNotification()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mWaitingForFarState:Z

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
    .locals 4
    .param p1    # Landroid/hardware/SensorEvent;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v1, v2, v3

    invoke-direct {p0, v1}, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->getStateFromValue(F)Lcom/android/dialer/ProximitySensorManager$State;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/dialer/ProximitySensorManager$State;

    if-ne v0, v2, :cond_2

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    iput-object v0, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/dialer/ProximitySensorManager$State;

    iget-boolean v2, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mWaitingForFarState:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/dialer/ProximitySensorManager$State;

    sget-object v3, Lcom/android/dialer/ProximitySensorManager$State;->FAR:Lcom/android/dialer/ProximitySensorManager$State;

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->unregisterWithoutNotification()V

    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v2, Lcom/android/dialer/ProximitySensorManager$1;->$SwitchMap$com$android$dialer$ProximitySensorManager$State:[I

    invoke-virtual {v0}, Lcom/android/dialer/ProximitySensorManager$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mListener:Lcom/android/dialer/ProximitySensorManager$Listener;

    invoke-interface {v2}, Lcom/android/dialer/ProximitySensorManager$Listener;->onNear()V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mListener:Lcom/android/dialer/ProximitySensorManager$Listener;

    invoke-interface {v2}, Lcom/android/dialer/ProximitySensorManager$Listener;->onFar()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized register()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mWaitingForFarState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregister()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->unregisterWithoutNotification()V

    iget-object v0, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/dialer/ProximitySensorManager$State;

    sget-object v1, Lcom/android/dialer/ProximitySensorManager$State;->FAR:Lcom/android/dialer/ProximitySensorManager$State;

    iput-object v1, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/dialer/ProximitySensorManager$State;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/android/dialer/ProximitySensorManager$State;->FAR:Lcom/android/dialer/ProximitySensorManager$State;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mListener:Lcom/android/dialer/ProximitySensorManager$Listener;

    invoke-interface {v1}, Lcom/android/dialer/ProximitySensorManager$Listener;->onFar()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized unregisterWhenFar()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mLastState:Lcom/android/dialer/ProximitySensorManager$State;

    sget-object v1, Lcom/android/dialer/ProximitySensorManager$State;->FAR:Lcom/android/dialer/ProximitySensorManager$State;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->unregisterWithoutNotification()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/dialer/ProximitySensorManager$ProximitySensorEventListener;->mWaitingForFarState:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
