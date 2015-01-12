.class public final Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aKL:Ljava/lang/String;

.field aKM:I

.field aKN:Z

.field aKO:Z

.field aKP:Z

.field aKQ:Z

.field aKR:[Lcom/google/android/gms/wallet/CountrySpecification;

.field aKS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;"
        }
    .end annotation
.end field

.field account:Landroid/accounts/Account;

.field environment:I

.field private final mVersionCode:I

.field tB:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/g;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/g;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->mVersionCode:I

    return-void
.end method

.method constructor <init>(IILandroid/accounts/Account;Ljava/lang/String;IZZZLjava/lang/String;Z[Lcom/google/android/gms/wallet/CountrySpecification;Ljava/util/ArrayList;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/accounts/Account;
    .param p4    # Ljava/lang/String;
    .param p5    # I
    .param p6    # Z
    .param p7    # Z
    .param p8    # Z
    .param p9    # Ljava/lang/String;
    .param p10    # Z
    .param p11    # [Lcom/google/android/gms/wallet/CountrySpecification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "IZZZ",
            "Ljava/lang/String;",
            "Z[",
            "Lcom/google/android/gms/wallet/CountrySpecification;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->environment:I

    iput-object p3, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->account:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->aKL:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->aKM:I

    iput-boolean p6, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->aKN:Z

    iput-boolean p7, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->aKO:Z

    iput-boolean p8, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->aKP:Z

    iput-object p9, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->tB:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->aKQ:Z

    iput-object p11, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->aKR:[Lcom/google/android/gms/wallet/CountrySpecification;

    iput-object p12, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->aKS:Ljava/util/ArrayList;

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

    iget v0, p0, Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/g;->a(Lcom/google/android/gms/wallet/ImmediateFullWalletRequest;Landroid/os/Parcel;I)V

    return-void
.end method
