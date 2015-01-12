.class public final Lcom/google/android/gms/wallet/FullWallet;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/FullWallet;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aKA:Ljava/lang/String;

.field aKB:Lcom/google/android/gms/wallet/ProxyCard;

.field aKC:Ljava/lang/String;

.field aKD:Lcom/google/android/gms/wallet/Address;

.field aKE:Lcom/google/android/gms/wallet/Address;

.field aKF:[Ljava/lang/String;

.field aKG:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field aKH:Lcom/google/android/gms/identity/intents/model/UserAddress;

.field aKI:[Lcom/google/android/gms/wallet/InstrumentInfo;

.field aKz:Ljava/lang/String;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/e;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/FullWallet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/FullWallet;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/wallet/ProxyCard;Ljava/lang/String;Lcom/google/android/gms/wallet/Address;Lcom/google/android/gms/wallet/Address;[Ljava/lang/String;Lcom/google/android/gms/identity/intents/model/UserAddress;Lcom/google/android/gms/identity/intents/model/UserAddress;[Lcom/google/android/gms/wallet/InstrumentInfo;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Lcom/google/android/gms/wallet/ProxyCard;
    .param p5    # Ljava/lang/String;
    .param p6    # Lcom/google/android/gms/wallet/Address;
    .param p7    # Lcom/google/android/gms/wallet/Address;
    .param p8    # [Ljava/lang/String;
    .param p9    # Lcom/google/android/gms/identity/intents/model/UserAddress;
    .param p10    # Lcom/google/android/gms/identity/intents/model/UserAddress;
    .param p11    # [Lcom/google/android/gms/wallet/InstrumentInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/FullWallet;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/FullWallet;->aKz:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/FullWallet;->aKA:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/FullWallet;->aKB:Lcom/google/android/gms/wallet/ProxyCard;

    iput-object p5, p0, Lcom/google/android/gms/wallet/FullWallet;->aKC:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/FullWallet;->aKD:Lcom/google/android/gms/wallet/Address;

    iput-object p7, p0, Lcom/google/android/gms/wallet/FullWallet;->aKE:Lcom/google/android/gms/wallet/Address;

    iput-object p8, p0, Lcom/google/android/gms/wallet/FullWallet;->aKF:[Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/FullWallet;->aKG:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p10, p0, Lcom/google/android/gms/wallet/FullWallet;->aKH:Lcom/google/android/gms/identity/intents/model/UserAddress;

    iput-object p11, p0, Lcom/google/android/gms/wallet/FullWallet;->aKI:[Lcom/google/android/gms/wallet/InstrumentInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/FullWallet;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/e;->a(Lcom/google/android/gms/wallet/FullWallet;Landroid/os/Parcel;I)V

    return-void
.end method
