.class public final enum Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;
.super Ljava/lang/Enum;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BatteryMeterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BatteryMeterMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

.field public static final enum BATTERY_METER_CIRCLE:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

.field public static final enum BATTERY_METER_GONE:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

.field public static final enum BATTERY_METER_ICON_LANDSCAPE:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

.field public static final enum BATTERY_METER_ICON_PORTRAIT:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

.field public static final enum BATTERY_METER_TEXT:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    const-string v1, "BATTERY_METER_GONE"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_GONE:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    new-instance v0, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    const-string v1, "BATTERY_METER_ICON_PORTRAIT"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_ICON_PORTRAIT:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    new-instance v0, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    const-string v1, "BATTERY_METER_ICON_LANDSCAPE"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_ICON_LANDSCAPE:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    new-instance v0, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    const-string v1, "BATTERY_METER_CIRCLE"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_CIRCLE:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    new-instance v0, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    const-string v1, "BATTERY_METER_TEXT"

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_TEXT:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    sget-object v1, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_GONE:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_ICON_PORTRAIT:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_ICON_LANDSCAPE:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_CIRCLE:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->BATTERY_METER_TEXT:Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->$VALUES:[Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;
    .locals 1

    sget-object v0, Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->$VALUES:[Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    invoke-virtual {v0}, [Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/BatteryMeterView$BatteryMeterMode;

    return-object v0
.end method
