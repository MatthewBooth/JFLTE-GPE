.class public Landroid/telephony/DisconnectCause;
.super Ljava/lang/Object;
.source "DisconnectCause.java"


# static fields
.field public static final BUSY:I = 0x4

.field public static final CALL_BARRED:I = 0x14

.field public static final CDMA_ACCESS_BLOCKED:I = 0x23

.field public static final CDMA_ACCESS_FAILURE:I = 0x20

.field public static final CDMA_CALL_LOST:I = 0x29

.field public static final CDMA_DROP:I = 0x1b

.field public static final CDMA_INTERCEPT:I = 0x1c

.field public static final CDMA_LOCKED_UNTIL_POWER_CYCLE:I = 0x1a

.field public static final CDMA_NOT_EMERGENCY:I = 0x22

.field public static final CDMA_PREEMPTED:I = 0x21

.field public static final CDMA_REORDER:I = 0x1d

.field public static final CDMA_RETRY_ORDER:I = 0x1f

.field public static final CDMA_SO_REJECT:I = 0x1e

.field public static final CONGESTION:I = 0x5

.field public static final CS_RESTRICTED:I = 0x16

.field public static final CS_RESTRICTED_EMERGENCY:I = 0x18

.field public static final CS_RESTRICTED_NORMAL:I = 0x17

.field public static final DIALED_MMI:I = 0x27

.field public static final DIAL_MODIFIED_TO_DIAL:I = 0x2f

.field public static final DIAL_MODIFIED_TO_SS:I = 0x2e

.field public static final DIAL_MODIFIED_TO_USSD:I = 0x2d

.field public static final EMERGENCY_ONLY:I = 0x25

.field public static final ERROR_UNSPECIFIED:I = 0x24

.field public static final EXITED_ECM:I = 0x2a

.field public static final FDN_BLOCKED:I = 0x15

.field public static final ICC_ERROR:I = 0x13

.field public static final INCOMING_MISSED:I = 0x1

.field public static final INCOMING_REJECTED:I = 0x10

.field public static final INVALID_CREDENTIALS:I = 0xa

.field public static final INVALID_NUMBER:I = 0x7

.field public static final LIMIT_EXCEEDED:I = 0xf

.field public static final LOCAL:I = 0x3

.field public static final LOST_SIGNAL:I = 0xe

.field public static final MAXIMUM_VALID_VALUE:I = 0x2c

.field public static final MINIMUM_VALID_VALUE:I = 0x0

.field public static final MMI:I = 0x6

.field public static final NORMAL:I = 0x2

.field public static final NOT_DISCONNECTED:I = 0x0

.field public static final NOT_VALID:I = -0x1

.field public static final NO_PHONE_NUMBER_SUPPLIED:I = 0x26

.field public static final NUMBER_UNREACHABLE:I = 0x8

.field public static final OUTGOING_CANCELED:I = 0x2c

.field public static final OUTGOING_FAILURE:I = 0x2b

.field public static final OUT_OF_NETWORK:I = 0xb

.field public static final OUT_OF_SERVICE:I = 0x12

.field public static final POWER_OFF:I = 0x11

.field public static final SERVER_ERROR:I = 0xc

.field public static final SERVER_UNREACHABLE:I = 0x9

.field public static final TIMED_OUT:I = 0xd

.field public static final UNOBTAINABLE_NUMBER:I = 0x19

.field public static final VOICEMAIL_NUMBER_MISSING:I = 0x28


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 2
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INVALID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "NOT_DISCONNECTED"

    goto :goto_0

    :pswitch_2
    const-string v0, "INCOMING_MISSED"

    goto :goto_0

    :pswitch_3
    const-string v0, "NORMAL"

    goto :goto_0

    :pswitch_4
    const-string v0, "LOCAL"

    goto :goto_0

    :pswitch_5
    const-string v0, "BUSY"

    goto :goto_0

    :pswitch_6
    const-string v0, "CONGESTION"

    goto :goto_0

    :pswitch_7
    const-string v0, "INVALID_NUMBER"

    goto :goto_0

    :pswitch_8
    const-string v0, "NUMBER_UNREACHABLE"

    goto :goto_0

    :pswitch_9
    const-string v0, "SERVER_UNREACHABLE"

    goto :goto_0

    :pswitch_a
    const-string v0, "INVALID_CREDENTIALS"

    goto :goto_0

    :pswitch_b
    const-string v0, "OUT_OF_NETWORK"

    goto :goto_0

    :pswitch_c
    const-string v0, "SERVER_ERROR"

    goto :goto_0

    :pswitch_d
    const-string v0, "TIMED_OUT"

    goto :goto_0

    :pswitch_e
    const-string v0, "LOST_SIGNAL"

    goto :goto_0

    :pswitch_f
    const-string v0, "LIMIT_EXCEEDED"

    goto :goto_0

    :pswitch_10
    const-string v0, "INCOMING_REJECTED"

    goto :goto_0

    :pswitch_11
    const-string v0, "POWER_OFF"

    goto :goto_0

    :pswitch_12
    const-string v0, "OUT_OF_SERVICE"

    goto :goto_0

    :pswitch_13
    const-string v0, "ICC_ERROR"

    goto :goto_0

    :pswitch_14
    const-string v0, "CALL_BARRED"

    goto :goto_0

    :pswitch_15
    const-string v0, "FDN_BLOCKED"

    goto :goto_0

    :pswitch_16
    const-string v0, "CS_RESTRICTED"

    goto :goto_0

    :pswitch_17
    const-string v0, "CS_RESTRICTED_NORMAL"

    goto :goto_0

    :pswitch_18
    const-string v0, "CS_RESTRICTED_EMERGENCY"

    goto :goto_0

    :pswitch_19
    const-string v0, "UNOBTAINABLE_NUMBER"

    goto :goto_0

    :pswitch_1a
    const-string v0, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    goto :goto_0

    :pswitch_1b
    const-string v0, "CDMA_DROP"

    goto :goto_0

    :pswitch_1c
    const-string v0, "CDMA_INTERCEPT"

    goto :goto_0

    :pswitch_1d
    const-string v0, "CDMA_REORDER"

    goto :goto_0

    :pswitch_1e
    const-string v0, "CDMA_SO_REJECT"

    goto :goto_0

    :pswitch_1f
    const-string v0, "CDMA_RETRY_ORDER"

    goto :goto_0

    :pswitch_20
    const-string v0, "CDMA_ACCESS_FAILURE"

    goto :goto_0

    :pswitch_21
    const-string v0, "CDMA_PREEMPTED"

    goto :goto_0

    :pswitch_22
    const-string v0, "CDMA_NOT_EMERGENCY"

    goto :goto_0

    :pswitch_23
    const-string v0, "CDMA_ACCESS_BLOCKED"

    goto :goto_0

    :pswitch_24
    const-string v0, "EMERGENCY_ONLY"

    goto :goto_0

    :pswitch_25
    const-string v0, "NO_PHONE_NUMBER_SUPPLIED"

    goto :goto_0

    :pswitch_26
    const-string v0, "DIALED_MMI"

    goto :goto_0

    :pswitch_27
    const-string v0, "VOICEMAIL_NUMBER_MISSING"

    goto :goto_0

    :pswitch_28
    const-string v0, "CDMA_CALL_LOST"

    goto :goto_0

    :pswitch_29
    const-string v0, "EXITED_ECM"

    goto :goto_0

    :pswitch_2a
    const-string v0, "DIAL_MODIFIED_TO_USSD"

    goto :goto_0

    :pswitch_2b
    const-string v0, "DIAL_MODIFIED_TO_SS"

    goto/16 :goto_0

    :pswitch_2c
    const-string v0, "DIAL_MODIFIED_TO_DIAL"

    goto/16 :goto_0

    :pswitch_2d
    const-string v0, "ERROR_UNSPECIFIED"

    goto/16 :goto_0

    :pswitch_2e
    const-string v0, "OUTGOING_FAILURE"

    goto/16 :goto_0

    :pswitch_2f
    const-string v0, "OUTGOING_CANCELED"

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_2d
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2e
        :pswitch_2f
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
    .end packed-switch
.end method
