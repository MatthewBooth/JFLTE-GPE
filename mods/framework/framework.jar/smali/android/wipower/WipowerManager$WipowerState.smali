.class public final enum Landroid/wipower/WipowerManager$WipowerState;
.super Ljava/lang/Enum;
.source "WipowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/wipower/WipowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WipowerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/wipower/WipowerManager$WipowerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/wipower/WipowerManager$WipowerState;

.field public static final enum OFF:Landroid/wipower/WipowerManager$WipowerState;

.field public static final enum ON:Landroid/wipower/WipowerManager$WipowerState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/wipower/WipowerManager$WipowerState;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v2}, Landroid/wipower/WipowerManager$WipowerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/wipower/WipowerManager$WipowerState;->OFF:Landroid/wipower/WipowerManager$WipowerState;

    new-instance v0, Landroid/wipower/WipowerManager$WipowerState;

    const-string v1, "ON"

    invoke-direct {v0, v1, v3}, Landroid/wipower/WipowerManager$WipowerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/wipower/WipowerManager$WipowerState;->ON:Landroid/wipower/WipowerManager$WipowerState;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/wipower/WipowerManager$WipowerState;

    sget-object v1, Landroid/wipower/WipowerManager$WipowerState;->OFF:Landroid/wipower/WipowerManager$WipowerState;

    aput-object v1, v0, v2

    sget-object v1, Landroid/wipower/WipowerManager$WipowerState;->ON:Landroid/wipower/WipowerManager$WipowerState;

    aput-object v1, v0, v3

    sput-object v0, Landroid/wipower/WipowerManager$WipowerState;->$VALUES:[Landroid/wipower/WipowerManager$WipowerState;

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

.method public static valueOf(Ljava/lang/String;)Landroid/wipower/WipowerManager$WipowerState;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Landroid/wipower/WipowerManager$WipowerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/wipower/WipowerManager$WipowerState;

    return-object v0
.end method

.method public static values()[Landroid/wipower/WipowerManager$WipowerState;
    .locals 1

    sget-object v0, Landroid/wipower/WipowerManager$WipowerState;->$VALUES:[Landroid/wipower/WipowerManager$WipowerState;

    invoke-virtual {v0}, [Landroid/wipower/WipowerManager$WipowerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/wipower/WipowerManager$WipowerState;

    return-object v0
.end method
