.class public final Landroid/telecom/CallState;
.super Ljava/lang/Object;
.source "CallState.java"


# static fields
.field public static final ABORTED:I = 0x8

.field public static final ACTIVE:I = 0x5

.field public static final CONNECTING:I = 0x1

.field public static final DIALING:I = 0x3

.field public static final DISCONNECTED:I = 0x7

.field public static final DISCONNECTING:I = 0x9

.field public static final NEW:I = 0x0

.field public static final ON_HOLD:I = 0x6

.field public static final PRE_DIAL_WAIT:I = 0x2

.field public static final RINGING:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 1
    .param p0    # I

    packed-switch p0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "NEW"

    goto :goto_0

    :pswitch_1
    const-string v0, "CONNECTING"

    goto :goto_0

    :pswitch_2
    const-string v0, "PRE_DIAL_WAIT"

    goto :goto_0

    :pswitch_3
    const-string v0, "DIALING"

    goto :goto_0

    :pswitch_4
    const-string v0, "RINGING"

    goto :goto_0

    :pswitch_5
    const-string v0, "ACTIVE"

    goto :goto_0

    :pswitch_6
    const-string v0, "ON_HOLD"

    goto :goto_0

    :pswitch_7
    const-string v0, "DISCONNECTED"

    goto :goto_0

    :pswitch_8
    const-string v0, "ABORTED"

    goto :goto_0

    :pswitch_9
    const-string v0, "DISCONNECTING"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
