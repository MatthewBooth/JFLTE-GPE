.class public final Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aLj:Lcom/google/android/gms/wallet/wobs/TimeInterval;

.field aNe:Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;

.field label:Ljava/lang/String;

.field private final mVersionCode:I

.field type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/wobs/e;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;Ljava/lang/String;Lcom/google/android/gms/wallet/wobs/TimeInterval;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;
    .param p4    # Ljava/lang/String;
    .param p5    # Lcom/google/android/gms/wallet/wobs/TimeInterval;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;->label:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;->aNe:Lcom/google/android/gms/wallet/wobs/LoyaltyPointsBalance;

    iput-object p4, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;->type:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;->aLj:Lcom/google/android/gms/wallet/wobs/TimeInterval;

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

    iget v0, p0, Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/e;->a(Lcom/google/android/gms/wallet/wobs/LoyaltyPoints;Landroid/os/Parcel;I)V

    return-void
.end method
