.class public final enum Landroid/wipower/WipowerManager$PowerLevel;
.super Ljava/lang/Enum;
.source "WipowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/wipower/WipowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PowerLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/wipower/WipowerManager$PowerLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/wipower/WipowerManager$PowerLevel;

.field public static final enum POWER_LEVEL_MAXIMUM:Landroid/wipower/WipowerManager$PowerLevel;

.field public static final enum POWER_LEVEL_MEDIUM:Landroid/wipower/WipowerManager$PowerLevel;

.field public static final enum POWER_LEVEL_MINIMUM:Landroid/wipower/WipowerManager$PowerLevel;

.field public static final enum POWER_LEVEL_UNKNOWN:Landroid/wipower/WipowerManager$PowerLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/wipower/WipowerManager$PowerLevel;

    const-string v1, "POWER_LEVEL_MAXIMUM"

    invoke-direct {v0, v1, v2}, Landroid/wipower/WipowerManager$PowerLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MAXIMUM:Landroid/wipower/WipowerManager$PowerLevel;

    new-instance v0, Landroid/wipower/WipowerManager$PowerLevel;

    const-string v1, "POWER_LEVEL_MEDIUM"

    invoke-direct {v0, v1, v3}, Landroid/wipower/WipowerManager$PowerLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MEDIUM:Landroid/wipower/WipowerManager$PowerLevel;

    new-instance v0, Landroid/wipower/WipowerManager$PowerLevel;

    const-string v1, "POWER_LEVEL_MINIMUM"

    invoke-direct {v0, v1, v4}, Landroid/wipower/WipowerManager$PowerLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MINIMUM:Landroid/wipower/WipowerManager$PowerLevel;

    new-instance v0, Landroid/wipower/WipowerManager$PowerLevel;

    const-string v1, "POWER_LEVEL_UNKNOWN"

    invoke-direct {v0, v1, v5}, Landroid/wipower/WipowerManager$PowerLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_UNKNOWN:Landroid/wipower/WipowerManager$PowerLevel;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/wipower/WipowerManager$PowerLevel;

    sget-object v1, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MAXIMUM:Landroid/wipower/WipowerManager$PowerLevel;

    aput-object v1, v0, v2

    sget-object v1, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MEDIUM:Landroid/wipower/WipowerManager$PowerLevel;

    aput-object v1, v0, v3

    sget-object v1, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_MINIMUM:Landroid/wipower/WipowerManager$PowerLevel;

    aput-object v1, v0, v4

    sget-object v1, Landroid/wipower/WipowerManager$PowerLevel;->POWER_LEVEL_UNKNOWN:Landroid/wipower/WipowerManager$PowerLevel;

    aput-object v1, v0, v5

    sput-object v0, Landroid/wipower/WipowerManager$PowerLevel;->$VALUES:[Landroid/wipower/WipowerManager$PowerLevel;

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

.method public static valueOf(Ljava/lang/String;)Landroid/wipower/WipowerManager$PowerLevel;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Landroid/wipower/WipowerManager$PowerLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/wipower/WipowerManager$PowerLevel;

    return-object v0
.end method

.method public static values()[Landroid/wipower/WipowerManager$PowerLevel;
    .locals 1

    sget-object v0, Landroid/wipower/WipowerManager$PowerLevel;->$VALUES:[Landroid/wipower/WipowerManager$PowerLevel;

    invoke-virtual {v0}, [Landroid/wipower/WipowerManager$PowerLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/wipower/WipowerManager$PowerLevel;

    return-object v0
.end method
