.class public final enum Lcom/android/internal/telephony/cat/PresentationType;
.super Ljava/lang/Enum;
.source "PresentationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/PresentationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/PresentationType;

.field public static final enum DATA_VALUES:Lcom/android/internal/telephony/cat/PresentationType;

.field public static final enum NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cat/PresentationType;

.field public static final enum NOT_SPECIFIED:Lcom/android/internal/telephony/cat/PresentationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/cat/PresentationType;

    const-string v1, "NOT_SPECIFIED"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cat/PresentationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/PresentationType;->NOT_SPECIFIED:Lcom/android/internal/telephony/cat/PresentationType;

    new-instance v0, Lcom/android/internal/telephony/cat/PresentationType;

    const-string v1, "DATA_VALUES"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/cat/PresentationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/cat/PresentationType;

    new-instance v0, Lcom/android/internal/telephony/cat/PresentationType;

    const-string v1, "NAVIGATION_OPTIONS"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/cat/PresentationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/cat/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cat/PresentationType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/cat/PresentationType;

    sget-object v1, Lcom/android/internal/telephony/cat/PresentationType;->NOT_SPECIFIED:Lcom/android/internal/telephony/cat/PresentationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/cat/PresentationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cat/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/cat/PresentationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cat/PresentationType;->$VALUES:[Lcom/android/internal/telephony/cat/PresentationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/PresentationType;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/internal/telephony/cat/PresentationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/PresentationType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/PresentationType;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/cat/PresentationType;->$VALUES:[Lcom/android/internal/telephony/cat/PresentationType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cat/PresentationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/PresentationType;

    return-object v0
.end method
