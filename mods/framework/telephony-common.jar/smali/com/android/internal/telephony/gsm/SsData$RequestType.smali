.class public final enum Lcom/android/internal/telephony/gsm/SsData$RequestType;
.super Ljava/lang/Enum;
.source "SsData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/SsData$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/SsData$RequestType;

.field public static final enum SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

.field public static final enum SS_DEACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

.field public static final enum SS_ERASURE:Lcom/android/internal/telephony/gsm/SsData$RequestType;

.field public static final enum SS_INTERROGATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

.field public static final enum SS_REGISTRATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;

    const-string v1, "SS_ACTIVATION"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SsData$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;

    const-string v1, "SS_DEACTIVATION"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/gsm/SsData$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_DEACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;

    const-string v1, "SS_INTERROGATION"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/gsm/SsData$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_INTERROGATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;

    const-string v1, "SS_REGISTRATION"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/gsm/SsData$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_REGISTRATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    new-instance v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;

    const-string v1, "SS_ERASURE"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/gsm/SsData$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ERASURE:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/SsData$RequestType;

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_DEACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_INTERROGATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_REGISTRATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ERASURE:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->$VALUES:[Lcom/android/internal/telephony/gsm/SsData$RequestType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SsData$RequestType;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/SsData$RequestType;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->$VALUES:[Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/SsData$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/SsData$RequestType;

    return-object v0
.end method


# virtual methods
.method public isTypeInterrogation()Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_INTERROGATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
