.class public final enum Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
.super Ljava/lang/Enum;
.source "OtaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

.field public static final enum ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

.field public static final enum NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

.field public static final enum UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    const-string v1, "ENDED"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->$VALUES:[Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    .locals 1

    sget-object v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->$VALUES:[Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v0}, [Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    return-object v0
.end method
