.class final enum Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;
.super Ljava/lang/Enum;
.source "ApnProfileOmh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/ApnProfileOmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ApnProfileTypeModem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

.field public static final enum PROFILE_TYPE_LBS:Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

.field public static final enum PROFILE_TYPE_MMS:Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

.field public static final enum PROFILE_TYPE_TETHERED:Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

.field public static final enum PROFILE_TYPE_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;


# instance fields
.field id:I

.field serviceType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    const-string v1, "PROFILE_TYPE_UNSPECIFIED"

    const-string v2, "default"

    invoke-direct {v0, v1, v6, v4, v2}, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    const-string v1, "PROFILE_TYPE_MMS"

    const-string v2, "mms"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_MMS:Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    const-string v1, "PROFILE_TYPE_LBS"

    const/16 v2, 0x20

    const-string v3, "supl"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_LBS:Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    new-instance v0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    const-string v1, "PROFILE_TYPE_TETHERED"

    const/16 v2, 0x40

    const-string v3, "dun"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_TETHERED:Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_MMS:Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_LBS:Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_TETHERED:Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->$VALUES:[Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->id:I

    iput-object p4, p0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->serviceType:Ljava/lang/String;

    return-void
.end method

.method public static getApnProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-string v0, "default"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "mms"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_MMS:Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    goto :goto_0

    :cond_1
    const-string v0, "supl"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_LBS:Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    goto :goto_0

    :cond_2
    const-string v0, "dun"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_TETHERED:Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->$VALUES:[Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;

    return-object v0
.end method


# virtual methods
.method public getDataServiceType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->serviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getid()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/dataconnection/ApnProfileOmh$ApnProfileTypeModem;->id:I

    return v0
.end method
