.class public final enum Landroid/wipower/WipowerManager$WipowerAlert;
.super Ljava/lang/Enum;
.source "WipowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/wipower/WipowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WipowerAlert"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/wipower/WipowerManager$WipowerAlert;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/wipower/WipowerManager$WipowerAlert;

.field public static final enum ALERT_CHARGE_COMPLETE:Landroid/wipower/WipowerManager$WipowerAlert;

.field public static final enum ALERT_CHARGE_PORT:Landroid/wipower/WipowerManager$WipowerAlert;

.field public static final enum ALERT_NONE:Landroid/wipower/WipowerManager$WipowerAlert;

.field public static final enum ALERT_OVER_CURRENT:Landroid/wipower/WipowerManager$WipowerAlert;

.field public static final enum ALERT_OVER_TEMPERATURE:Landroid/wipower/WipowerManager$WipowerAlert;

.field public static final enum ALERT_OVER_VOLTAGE:Landroid/wipower/WipowerManager$WipowerAlert;

.field public static final enum ALERT_SELF_PROTECTION:Landroid/wipower/WipowerManager$WipowerAlert;

.field public static final enum ALERT_WIRED_CHARGER_DETECTED:Landroid/wipower/WipowerManager$WipowerAlert;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/wipower/WipowerManager$WipowerAlert;

    const-string v1, "ALERT_NONE"

    invoke-direct {v0, v1, v3}, Landroid/wipower/WipowerManager$WipowerAlert;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/wipower/WipowerManager$WipowerAlert;->ALERT_NONE:Landroid/wipower/WipowerManager$WipowerAlert;

    new-instance v0, Landroid/wipower/WipowerManager$WipowerAlert;

    const-string v1, "ALERT_OVER_VOLTAGE"

    invoke-direct {v0, v1, v4}, Landroid/wipower/WipowerManager$WipowerAlert;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/wipower/WipowerManager$WipowerAlert;->ALERT_OVER_VOLTAGE:Landroid/wipower/WipowerManager$WipowerAlert;

    new-instance v0, Landroid/wipower/WipowerManager$WipowerAlert;

    const-string v1, "ALERT_OVER_CURRENT"

    invoke-direct {v0, v1, v5}, Landroid/wipower/WipowerManager$WipowerAlert;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/wipower/WipowerManager$WipowerAlert;->ALERT_OVER_CURRENT:Landroid/wipower/WipowerManager$WipowerAlert;

    new-instance v0, Landroid/wipower/WipowerManager$WipowerAlert;

    const-string v1, "ALERT_OVER_TEMPERATURE"

    invoke-direct {v0, v1, v6}, Landroid/wipower/WipowerManager$WipowerAlert;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/wipower/WipowerManager$WipowerAlert;->ALERT_OVER_TEMPERATURE:Landroid/wipower/WipowerManager$WipowerAlert;

    new-instance v0, Landroid/wipower/WipowerManager$WipowerAlert;

    const-string v1, "ALERT_SELF_PROTECTION"

    invoke-direct {v0, v1, v7}, Landroid/wipower/WipowerManager$WipowerAlert;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/wipower/WipowerManager$WipowerAlert;->ALERT_SELF_PROTECTION:Landroid/wipower/WipowerManager$WipowerAlert;

    new-instance v0, Landroid/wipower/WipowerManager$WipowerAlert;

    const-string v1, "ALERT_CHARGE_COMPLETE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/wipower/WipowerManager$WipowerAlert;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/wipower/WipowerManager$WipowerAlert;->ALERT_CHARGE_COMPLETE:Landroid/wipower/WipowerManager$WipowerAlert;

    new-instance v0, Landroid/wipower/WipowerManager$WipowerAlert;

    const-string v1, "ALERT_WIRED_CHARGER_DETECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/wipower/WipowerManager$WipowerAlert;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/wipower/WipowerManager$WipowerAlert;->ALERT_WIRED_CHARGER_DETECTED:Landroid/wipower/WipowerManager$WipowerAlert;

    new-instance v0, Landroid/wipower/WipowerManager$WipowerAlert;

    const-string v1, "ALERT_CHARGE_PORT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/wipower/WipowerManager$WipowerAlert;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/wipower/WipowerManager$WipowerAlert;->ALERT_CHARGE_PORT:Landroid/wipower/WipowerManager$WipowerAlert;

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/wipower/WipowerManager$WipowerAlert;

    sget-object v1, Landroid/wipower/WipowerManager$WipowerAlert;->ALERT_NONE:Landroid/wipower/WipowerManager$WipowerAlert;

    aput-object v1, v0, v3

    sget-object v1, Landroid/wipower/WipowerManager$WipowerAlert;->ALERT_OVER_VOLTAGE:Landroid/wipower/WipowerManager$WipowerAlert;

    aput-object v1, v0, v4

    sget-object v1, Landroid/wipower/WipowerManager$WipowerAlert;->ALERT_OVER_CURRENT:Landroid/wipower/WipowerManager$WipowerAlert;

    aput-object v1, v0, v5

    sget-object v1, Landroid/wipower/WipowerManager$WipowerAlert;->ALERT_OVER_TEMPERATURE:Landroid/wipower/WipowerManager$WipowerAlert;

    aput-object v1, v0, v6

    sget-object v1, Landroid/wipower/WipowerManager$WipowerAlert;->ALERT_SELF_PROTECTION:Landroid/wipower/WipowerManager$WipowerAlert;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/wipower/WipowerManager$WipowerAlert;->ALERT_CHARGE_COMPLETE:Landroid/wipower/WipowerManager$WipowerAlert;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/wipower/WipowerManager$WipowerAlert;->ALERT_WIRED_CHARGER_DETECTED:Landroid/wipower/WipowerManager$WipowerAlert;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/wipower/WipowerManager$WipowerAlert;->ALERT_CHARGE_PORT:Landroid/wipower/WipowerManager$WipowerAlert;

    aput-object v2, v0, v1

    sput-object v0, Landroid/wipower/WipowerManager$WipowerAlert;->$VALUES:[Landroid/wipower/WipowerManager$WipowerAlert;

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

.method public static valueOf(Ljava/lang/String;)Landroid/wipower/WipowerManager$WipowerAlert;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Landroid/wipower/WipowerManager$WipowerAlert;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/wipower/WipowerManager$WipowerAlert;

    return-object v0
.end method

.method public static values()[Landroid/wipower/WipowerManager$WipowerAlert;
    .locals 1

    sget-object v0, Landroid/wipower/WipowerManager$WipowerAlert;->$VALUES:[Landroid/wipower/WipowerManager$WipowerAlert;

    invoke-virtual {v0}, [Landroid/wipower/WipowerManager$WipowerAlert;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/wipower/WipowerManager$WipowerAlert;

    return-object v0
.end method
