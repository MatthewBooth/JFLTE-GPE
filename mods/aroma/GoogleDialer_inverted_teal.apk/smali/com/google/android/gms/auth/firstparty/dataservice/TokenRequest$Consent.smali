.class public final enum Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Consent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum GRANTED:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

.field private static final synthetic Hc:[Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

.field public static final enum REJECTED:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

.field public static final enum UNKNOWN:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->UNKNOWN:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    const-string v1, "GRANTED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->GRANTED:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    const-string v1, "REJECTED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->REJECTED:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    sget-object v1, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->UNKNOWN:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->GRANTED:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->REJECTED:Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->Hc:[Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;
    .locals 1

    sget-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->Hc:[Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    invoke-virtual {v0}, [Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/auth/firstparty/dataservice/TokenRequest$Consent;

    return-object v0
.end method
