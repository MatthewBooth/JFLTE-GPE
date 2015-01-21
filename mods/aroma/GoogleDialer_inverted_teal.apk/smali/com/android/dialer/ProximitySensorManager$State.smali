.class public final enum Lcom/android/dialer/ProximitySensorManager$State;
.super Ljava/lang/Enum;
.source "ProximitySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/ProximitySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/dialer/ProximitySensorManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/dialer/ProximitySensorManager$State;

.field public static final enum FAR:Lcom/android/dialer/ProximitySensorManager$State;

.field public static final enum NEAR:Lcom/android/dialer/ProximitySensorManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/dialer/ProximitySensorManager$State;

    const-string v1, "NEAR"

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/ProximitySensorManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/ProximitySensorManager$State;->NEAR:Lcom/android/dialer/ProximitySensorManager$State;

    new-instance v0, Lcom/android/dialer/ProximitySensorManager$State;

    const-string v1, "FAR"

    invoke-direct {v0, v1, v3}, Lcom/android/dialer/ProximitySensorManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/dialer/ProximitySensorManager$State;->FAR:Lcom/android/dialer/ProximitySensorManager$State;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/dialer/ProximitySensorManager$State;

    sget-object v1, Lcom/android/dialer/ProximitySensorManager$State;->NEAR:Lcom/android/dialer/ProximitySensorManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/dialer/ProximitySensorManager$State;->FAR:Lcom/android/dialer/ProximitySensorManager$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/dialer/ProximitySensorManager$State;->$VALUES:[Lcom/android/dialer/ProximitySensorManager$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/dialer/ProximitySensorManager$State;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/dialer/ProximitySensorManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/ProximitySensorManager$State;

    return-object v0
.end method

.method public static values()[Lcom/android/dialer/ProximitySensorManager$State;
    .locals 1

    sget-object v0, Lcom/android/dialer/ProximitySensorManager$State;->$VALUES:[Lcom/android/dialer/ProximitySensorManager$State;

    invoke-virtual {v0}, [Lcom/android/dialer/ProximitySensorManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/dialer/ProximitySensorManager$State;

    return-object v0
.end method
