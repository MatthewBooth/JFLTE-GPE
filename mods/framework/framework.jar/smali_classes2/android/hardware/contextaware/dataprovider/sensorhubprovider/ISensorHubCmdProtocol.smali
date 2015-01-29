.class public interface abstract Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubCmdProtocol;
.super Ljava/lang/Object;
.source "ISensorHubCmdProtocol.java"


# static fields
.field public static final APDR_MODE_SLEEP:B = 0x1t

.field public static final APDR_MODE_WAKEUP:B = 0x0t

.field public static final AP_SLEEP:B = -0x2et

.field public static final AP_WAKEUP:B = -0x2ft

.field public static final INST_LIB_ADD:B = -0x4ft

.field public static final INST_LIB_GETVALUE:B = -0x48t

.field public static final INST_LIB_NOTI:B = -0x4ct

.field public static final INST_LIB_PUTVALUE:B = -0x3ft

.field public static final INST_LIB_REMOVE:B = -0x4et

.field public static final LIBRARY_VALUE_MOVEMENT_FOR_POSITIONING_CURRENT_STATUS:B = 0x1t

.field public static final TYPE_ACCELEROMETER:B = 0x0t

.field public static final TYPE_APDR_SERVICE:B = 0x1t

.field public static final TYPE_AUTO_ROTATION_SERVICE:B = 0x7t

.field public static final TYPE_BAROMETER:B = 0x3t

.field public static final TYPE_CALL_POSE_SERVICE:B = 0x2t

.field public static final TYPE_CURRENT_TIME_NOTI:B = 0xet

.field public static final TYPE_DIRECT_CALL_SERVICE:B = 0xat

.field public static final TYPE_ENVIRONMENT_SENSOR_SERVICE:B = 0xct

.field public static final TYPE_FLIP_COVER_ACTION_SERVICE:B = 0xet

.field public static final TYPE_GEOMAGNETIC:B = 0x2t

.field public static final TYPE_GESTURE:B = 0x4t

.field public static final TYPE_GESTURE_SERVICE:B = 0x5t

.field public static final TYPE_GYROSCOPE:B = 0x1t

.field public static final TYPE_GYRO_TEMPERATURE_SERVICE:B = 0xft

.field public static final TYPE_LIGHT:B = 0x7t

.field public static final TYPE_MOTION_SERVICE:B = 0x4t

.field public static final TYPE_MOVEMENT_FOR_POSITIONING_SERVICE:B = 0x9t

.field public static final TYPE_MOVEMENT_SERVICE:B = 0x8t

.field public static final TYPE_PEDOMETER_SERVICE:B = 0x3t

.field public static final TYPE_POWER_NOTI:B = 0xdt

.field public static final TYPE_PROXIMITY:B = 0x5t

.field public static final TYPE_PUT_DOWN_MOTION_SERVICE:B = 0x10t

.field public static final TYPE_SHAKE_MOTION_SERVICE:B = 0xdt

.field public static final TYPE_STEP_COUNT_ALERT_SERVICE:B = 0x6t

.field public static final TYPE_STOP_ALERT_SERVICE:B = 0xbt

.field public static final TYPE_TELEPHONY_NOTI:B = 0x11t

.field public static final TYPE_TEMPERATURE_HUMIDITY:B = 0x6t

.field public static final TYPE_WAKE_UP_VOICE_SERVICE:B = 0x11t


# virtual methods
.method public abstract sendCmdToSensorHub(BB[B)V
.end method
