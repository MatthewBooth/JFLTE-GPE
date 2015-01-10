.class Lcom/android/systemui/statusbar/policy/WimaxIcons;
.super Ljava/lang/Object;
.source "WimaxIcons.java"


# static fields
.field static final WIMAX_DISCONNECTED:I

.field static final WIMAX_IDLE:I

.field static final WIMAX_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_SIGNAL_STRENGTH:[[I

    sput-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    sget-object v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v1

    aget v0, v0, v1

    sput v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    sget v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    sput v0, Lcom/android/systemui/statusbar/policy/WimaxIcons;->WIMAX_IDLE:I

    return-void
.end method
