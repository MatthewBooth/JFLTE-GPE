.class public final enum Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;
.super Ljava/lang/Enum;
.source "ApnSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/ApnSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApnProfileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;

.field public static final enum PROFILE_TYPE_APN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;

.field public static final enum PROFILE_TYPE_CDMA:Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;

.field public static final enum PROFILE_TYPE_OMH:Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;


# instance fields
.field id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;

    const-string v1, "PROFILE_TYPE_APN"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;->PROFILE_TYPE_APN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;

    const-string v1, "PROFILE_TYPE_CDMA"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;->PROFILE_TYPE_CDMA:Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;

    const-string v1, "PROFILE_TYPE_OMH"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;->PROFILE_TYPE_OMH:Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;->PROFILE_TYPE_APN:Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;->PROFILE_TYPE_CDMA:Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;->PROFILE_TYPE_OMH:Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;->$VALUES:[Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;->$VALUES:[Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;

    return-object v0
.end method


# virtual methods
.method public getid()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnSetting$ApnProfileType;->id:I

    return v0
.end method
