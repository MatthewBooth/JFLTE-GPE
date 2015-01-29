.class public final enum Landroid/hardware/contextaware/ContextList$ContextType;
.super Ljava/lang/Enum;
.source "ContextList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/ContextList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/ContextList$ContextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum AGGREGATOR_LOCATION:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum AGGREGATOR_MOVING:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum AGGREGATOR_TEMPERATURE_HUMIDITY:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum ANDROID_RUNNER_ACCELEROMETER_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum ANDROID_RUNNER_GYROSCOPE_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum ANDROID_RUNNER_MAGNETIC_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum ANDROID_RUNNER_ORIENTATION_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum ANDROID_RUNNER_RAW_GPS:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum ANDROID_RUNNER_RAW_SATELLITE:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum ANDROID_RUNNER_RAW_WPS:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum CMD_PROCESS_FAULT_DETECTION:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum NONE_CONTEXT:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_PARSER_NONLIB_ORIENTATION:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_PARSER_NOTI_POWER_RESET:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_PARSER_SENSORHUB_DEBUG_MSG:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_RUNNER_APDR:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_RUNNER_AUTO_ROTATION:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_RUNNER_CALL_POSE:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_RUNNER_CURRENT_STATUS_FOR_POSITIONING:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_RUNNER_DIRECT_CALL:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_RUNNER_FLIP_COVER_ACTION:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_RUNNER_GESTURE_APPROACH:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_RUNNER_GYRO_TEMPERATURE:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_RUNNER_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_RUNNER_MOVEMENT:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_RUNNER_MOVEMENT_FOR_POSITIONING:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_RUNNER_PEDOMETER:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_RUNNER_POWER_NOTI:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_RUNNER_PUT_DOWN_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_RUNNER_RAW_BAROMETER_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_RUNNER_RAW_TEMPERATURE_HUMIDITY_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_RUNNER_SHAKE_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_RUNNER_STEP_COUNT_ALERT:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_RUNNER_STOP_ALERT:Landroid/hardware/contextaware/ContextList$ContextType;

.field public static final enum SENSORHUB_RUNNER_WAKE_UP_VOICE:Landroid/hardware/contextaware/ContextList$ContextType;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "NONE_CONTEXT"

    const-string v2, "NONE"

    invoke-direct {v0, v1, v4, v2}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->NONE_CONTEXT:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "AGGREGATOR_LOCATION"

    const-string v2, "LOCATION"

    invoke-direct {v0, v1, v5, v2}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "AGGREGATOR_MOVING"

    const-string v2, "MOVING"

    invoke-direct {v0, v1, v6, v2}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_MOVING:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "AGGREGATOR_TEMPERATURE_HUMIDITY"

    const-string v2, "TEMPERATURE_HUMIDITY"

    invoke-direct {v0, v1, v7, v2}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_TEMPERATURE_HUMIDITY:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "ANDROID_RUNNER_RAW_GPS"

    const-string v2, "RAW_GPS"

    invoke-direct {v0, v1, v8, v2}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_GPS:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "ANDROID_RUNNER_RAW_SATELLITE"

    const/4 v2, 0x5

    const-string v3, "RAW_SATELLITE"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_SATELLITE:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "ANDROID_RUNNER_RAW_WPS"

    const/4 v2, 0x6

    const-string v3, "RAW_WPS"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_WPS:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "ANDROID_RUNNER_ACCELEROMETER_SENSOR"

    const/4 v2, 0x7

    const-string v3, "ACCELEROMETER_SENSOR"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ACCELEROMETER_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "ANDROID_RUNNER_ORIENTATION_SENSOR"

    const/16 v2, 0x8

    const-string v3, "ORIENTATION_SENSOR"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ORIENTATION_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "ANDROID_RUNNER_MAGNETIC_SENSOR"

    const/16 v2, 0x9

    const-string v3, "MAGNETIC_SENSOR"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_MAGNETIC_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "ANDROID_RUNNER_GYROSCOPE_SENSOR"

    const/16 v2, 0xa

    const-string v3, "GYROSCOPE_SENSOR"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_GYROSCOPE_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_RUNNER_APDR"

    const/16 v2, 0xb

    const-string v3, "APDR"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_RUNNER_PEDOMETER"

    const/16 v2, 0xc

    const-string v3, "PEDOMETER"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_RUNNER_GESTURE_APPROACH"

    const/16 v2, 0xd

    const-string v3, "GESTURE_APPROACH"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_GESTURE_APPROACH:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_RUNNER_STEP_COUNT_ALERT"

    const/16 v2, 0xe

    const-string v3, "STEP_COUNT_ALERT"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STEP_COUNT_ALERT:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_RUNNER_MOTION"

    const/16 v2, 0xf

    const-string v3, "MOTION"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_RUNNER_MOVEMENT"

    const/16 v2, 0x10

    const-string v3, "MOVEMENT"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_RUNNER_AUTO_ROTATION"

    const/16 v2, 0x11

    const-string v3, "AUTO_ROTATION"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_AUTO_ROTATION:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_RUNNER_POWER_NOTI"

    const/16 v2, 0x12

    const-string v3, "POWER_NOTI"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_POWER_NOTI:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_RUNNER_MOVEMENT_FOR_POSITIONING"

    const/16 v2, 0x13

    const-string v3, "MOVEMENT_FOR_POSITIONING"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT_FOR_POSITIONING:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_RUNNER_CURRENT_STATUS_FOR_POSITIONING"

    const/16 v2, 0x14

    const-string v3, "CURRENT_STATUS_FOR_POSITIONING"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CURRENT_STATUS_FOR_POSITIONING:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_RUNNER_DIRECT_CALL"

    const/16 v2, 0x15

    const-string v3, "DIRECT_CALL"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_DIRECT_CALL:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_RUNNER_STOP_ALERT"

    const/16 v2, 0x16

    const-string v3, "STOP_ALERT"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STOP_ALERT:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_RUNNER_RAW_TEMPERATURE_HUMIDITY_SENSOR"

    const/16 v2, 0x17

    const-string v3, "RAW_TEMPERATURE_HUMIDITY_SENSOR"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_TEMPERATURE_HUMIDITY_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_RUNNER_RAW_BAROMETER_SENSOR"

    const/16 v2, 0x18

    const-string v3, "RAW_BAROMETER_SENSOR"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_BAROMETER_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_RUNNER_CALL_POSE"

    const/16 v2, 0x19

    const-string v3, "CALL_POSE"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CALL_POSE:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_RUNNER_SHAKE_MOTION"

    const/16 v2, 0x1a

    const-string v3, "SHAKE_MOTION"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SHAKE_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_RUNNER_FLIP_COVER_ACTION"

    const/16 v2, 0x1b

    const-string v3, "FLIP_COVER_ACTION"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_FLIP_COVER_ACTION:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_RUNNER_GYRO_TEMPERATURE"

    const/16 v2, 0x1c

    const-string v3, "GYRO_TEMPERATURE"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_GYRO_TEMPERATURE:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_RUNNER_PUT_DOWN_MOTION"

    const/16 v2, 0x1d

    const-string v3, "PUT_DOWN_MOTION"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PUT_DOWN_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_RUNNER_WAKE_UP_VOICE"

    const/16 v2, 0x1e

    const-string v3, "WAKE_UP_VOICE"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_WAKE_UP_VOICE:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_PARSER_NONLIB_ORIENTATION"

    const/16 v2, 0x1f

    const-string v3, "ORIENTATION_PARSER"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_PARSER_NONLIB_ORIENTATION:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_PARSER_NOTI_POWER_RESET"

    const/16 v2, 0x20

    const-string v3, "POWER_PARSER_RESET"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_PARSER_NOTI_POWER_RESET:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "SENSORHUB_PARSER_SENSORHUB_DEBUG_MSG"

    const/16 v2, 0x21

    const-string v3, "SENSORHUB_DEBUG_MSG"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_PARSER_SENSORHUB_DEBUG_MSG:Landroid/hardware/contextaware/ContextList$ContextType;

    new-instance v0, Landroid/hardware/contextaware/ContextList$ContextType;

    const-string v1, "CMD_PROCESS_FAULT_DETECTION"

    const/16 v2, 0x22

    const-string v3, "CMD_PROCESS_FAULT_DETECTION"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Landroid/hardware/contextaware/ContextList$ContextType;

    const/16 v0, 0x23

    new-array v0, v0, [Landroid/hardware/contextaware/ContextList$ContextType;

    sget-object v1, Landroid/hardware/contextaware/ContextList$ContextType;->NONE_CONTEXT:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_MOVING:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_TEMPERATURE_HUMIDITY:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v1, v0, v7

    sget-object v1, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_GPS:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_SATELLITE:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_WPS:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ACCELEROMETER_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ORIENTATION_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_MAGNETIC_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_GYROSCOPE_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_GESTURE_APPROACH:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STEP_COUNT_ALERT:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_AUTO_ROTATION:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_POWER_NOTI:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT_FOR_POSITIONING:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CURRENT_STATUS_FOR_POSITIONING:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_DIRECT_CALL:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STOP_ALERT:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_TEMPERATURE_HUMIDITY_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_BAROMETER_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CALL_POSE:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SHAKE_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_FLIP_COVER_ACTION:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_GYRO_TEMPERATURE:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PUT_DOWN_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_WAKE_UP_VOICE:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_PARSER_NONLIB_ORIENTATION:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_PARSER_NOTI_POWER_RESET:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_PARSER_SENSORHUB_DEBUG_MSG:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Landroid/hardware/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Landroid/hardware/contextaware/ContextList$ContextType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->$VALUES:[Landroid/hardware/contextaware/ContextList$ContextType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Landroid/hardware/contextaware/ContextList$ContextType;->code:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/ContextList$ContextType;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/ContextList$ContextType;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/ContextList$ContextType;
    .locals 1

    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->$VALUES:[Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, [Landroid/hardware/contextaware/ContextList$ContextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/ContextList$ContextType;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/ContextList$ContextType;->code:Ljava/lang/String;

    return-object v0
.end method
