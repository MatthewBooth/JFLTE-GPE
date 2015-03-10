.class public final enum Lcom/android/phone/Constants$CallStatusCode;
.super Ljava/lang/Enum;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallStatusCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/Constants$CallStatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum CDMA_CALL_LOST:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum DIALED_MMI:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

.field public static final enum VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "POWER_OFF"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "EMERGENCY_ONLY"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "OUT_OF_SERVICE"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "NO_PHONE_NUMBER_SUPPLIED"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "DIALED_MMI"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->DIALED_MMI:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "CALL_FAILED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "VOICEMAIL_NUMBER_MISSING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "CDMA_CALL_LOST"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->CDMA_CALL_LOST:Lcom/android/phone/Constants$CallStatusCode;

    new-instance v0, Lcom/android/phone/Constants$CallStatusCode;

    const-string v1, "EXITED_ECM"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/phone/Constants$CallStatusCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/phone/Constants$CallStatusCode;

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->SUCCESS:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->POWER_OFF:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->DIALED_MMI:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->CALL_FAILED:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->CDMA_CALL_LOST:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/phone/Constants$CallStatusCode;->EXITED_ECM:Lcom/android/phone/Constants$CallStatusCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/Constants$CallStatusCode;->$VALUES:[Lcom/android/phone/Constants$CallStatusCode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/Constants$CallStatusCode;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/phone/Constants$CallStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/Constants$CallStatusCode;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/Constants$CallStatusCode;
    .locals 1

    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->$VALUES:[Lcom/android/phone/Constants$CallStatusCode;

    invoke-virtual {v0}, [Lcom/android/phone/Constants$CallStatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/Constants$CallStatusCode;

    return-object v0
.end method
