.class public Landroid/hardware/scontext/SContextConstants;
.super Ljava/lang/Object;
.source "SContextConstants.java"


# static fields
.field static final AIRMOTION:I = 0x7

.field public static final AIRMOTION_DOWN:I = 0x3

.field public static final AIRMOTION_LEFT:I = 0x2

.field public static final AIRMOTION_RIGHT:I = 0x1

.field public static final AIRMOTION_UNKNOWN:I = 0x0

.field public static final AIRMOTION_UP:I = 0x4

.field static final APPROACH:I = 0x1

.field public static final APPROACH_FAR:I = 0x0

.field public static final APPROACH_NEAR:I = 0x1

.field static final AUTO_ROTATION:I = 0x6

.field public static final AUTO_ROTATION_0:I = 0x0

.field public static final AUTO_ROTATION_180:I = 0x2

.field public static final AUTO_ROTATION_270:I = 0x3

.field public static final AUTO_ROTATION_90:I = 0x1

.field public static final AUTO_ROTATION_DEVICE_TYPE_MOBILE:I = 0x0

.field public static final AUTO_ROTATION_DEVICE_TYPE_TABLET:I = 0x2

.field public static final AUTO_ROTATION_DEVICE_TYPE_WIDE_TABLET:I = 0x4

.field public static final AUTO_ROTATION_NONE:I = -0x1

.field static final CALL_POSE:I = 0xb

.field public static final CALL_POSE_LEFT:I = 0x1

.field public static final CALL_POSE_RIGHT:I = 0x2

.field public static final CALL_POSE_UNKNOWN:I = 0x0

.field static final CURRENT_STATUS_FOR_POSITIONING:I = 0xa

.field static final ENVIRONMENT:I = 0x8

.field public static final ENVIRONMENT_SENSOR_TEMPERATURE_HUMIDITY:I = 0x1

.field public static final ENVIRONMENT_VALUE_UNKNOWN:D = 0.0

.field static final FLIP_COVER_ACTION:I = 0xd

.field public static final FLIP_COVER_ACTION_CLOSE:I = 0x1

.field public static final FLIP_COVER_ACTION_OPEN:I = 0x0

.field public static final FLIP_COVER_ACTION_UNKNOWN:I = -0x1

.field static final GYRO_TEMPERATURE:I = 0xe

.field static final MOTION:I = 0x4

.field public static final MOTION_TYPE_FLAT:I = 0x47

.field public static final MOTION_TYPE_PICKUP:I = 0x1

.field public static final MOTION_TYPE_PUTDOWN:I = 0x2

.field public static final MOTION_TYPE_SMART_ALERT:I = 0x43

.field public static final MOTION_TYPE_TURN_OVER:I = 0xa

.field public static final MOTION_TYPE_UNKNOWN:I = 0x0

.field static final MOVEMENT:I = 0x5

.field public static final MOVEMENT_ACTION:I = 0x1

.field static final MOVEMENT_FOR_POSITIONING:I = 0x9

.field public static final MOVEMENT_FOR_POSITIONING_CURRENT_STATUS_MOVE:I = 0x5

.field public static final MOVEMENT_FOR_POSITIONING_CURRENT_STATUS_NOMOVE:I = 0x4

.field public static final MOVEMENT_FOR_POSITIONING_CURRENT_STATUS_UNKNOWN:I = 0x6

.field public static final MOVEMENT_FOR_POSITIONING_MOVE_DISTANCE:I = 0x2

.field public static final MOVEMENT_FOR_POSITIONING_MOVE_DURATION:I = 0x3

.field public static final MOVEMENT_FOR_POSITIONING_NOMOVE:I = 0x1

.field public static final MOVEMENT_FOR_POSITIONING_NONE:I = 0x0

.field public static final MOVEMENT_NONE:I = 0x0

.field static final PEDOMETER:I = 0x2

.field public static final PEDOMETER_GENDER_MAN:I = 0x1

.field public static final PEDOMETER_GENDER_WOMAN:I = 0x2

.field public static final PEDOMETER_STEP_STATUS_DOWN:I = 0x7

.field public static final PEDOMETER_STEP_STATUS_MARK:I = 0x1

.field public static final PEDOMETER_STEP_STATUS_RUN:I = 0x4

.field public static final PEDOMETER_STEP_STATUS_RUSH:I = 0x5

.field public static final PEDOMETER_STEP_STATUS_STOP:I = 0x0

.field public static final PEDOMETER_STEP_STATUS_STROLL:I = 0x2

.field public static final PEDOMETER_STEP_STATUS_UNKNOWN:I = -0x1

.field public static final PEDOMETER_STEP_STATUS_UP:I = 0x6

.field public static final PEDOMETER_STEP_STATUS_WALK:I = 0x3

.field static final PUT_DOWN_MOTION:I = 0xf

.field public static final PUT_DOWN_MOTION_FALSE:I = 0x2

.field public static final PUT_DOWN_MOTION_NONE:I = 0x0

.field public static final PUT_DOWN_MOTION_TRUE:I = 0x1

.field static SERVICE_FOR_VER01:[I = null

.field static SERVICE_FOR_VER02:[I = null

.field static SERVICE_FOR_VER03:[I = null

.field static final SERVICE_NONE:I = 0x0

.field static final SHAKE_MOTION:I = 0xc

.field public static final SHAKE_MOTION_NONE:I = 0x0

.field public static final SHAKE_MOTION_START:I = 0x1

.field public static final SHAKE_MOTION_STOP:I = 0x2

.field static final STEP_COUNT_ALERT:I = 0x3

.field public static final STEP_COUNT_ALERT_EXPIRED:I = 0x1

.field public static final STEP_COUNT_ALERT_UNKNOWN:I = 0x0

.field static final WAKE_UP_VOICE:I = 0x10

.field public static final WAKE_UP_VOICE_ACTION:I = 0x1

.field public static final WAKE_UP_VOICE_NONE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/hardware/scontext/SContextConstants;->SERVICE_FOR_VER01:[I

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/hardware/scontext/SContextConstants;->SERVICE_FOR_VER02:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/hardware/scontext/SContextConstants;->SERVICE_FOR_VER03:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x4
        0x5
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
