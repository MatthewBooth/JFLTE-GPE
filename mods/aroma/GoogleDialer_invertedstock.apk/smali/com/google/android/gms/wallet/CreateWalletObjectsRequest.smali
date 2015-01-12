.class public final Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aKx:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

.field aKy:Lcom/google/android/gms/wallet/OfferWalletObject;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/d;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/wallet/LoyaltyWalletObject;Lcom/google/android/gms/wallet/OfferWalletObject;)V
    .locals 0
    .param p1    # I
    .param p2    # Lcom/google/android/gms/wallet/LoyaltyWalletObject;
    .param p3    # Lcom/google/android/gms/wallet/OfferWalletObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->aKx:Lcom/google/android/gms/wallet/LoyaltyWalletObject;

    iput-object p3, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->aKy:Lcom/google/android/gms/wallet/OfferWalletObject;

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

    iget v0, p0, Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/d;->a(Lcom/google/android/gms/wallet/CreateWalletObjectsRequest;Landroid/os/Parcel;I)V

    return-void
.end method
