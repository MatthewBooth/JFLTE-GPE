.class public final Lcom/google/android/gms/wallet/shared/BrokerAndRelationships;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/shared/BrokerAndRelationships;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aMN:Ljava/lang/String;

.field aMO:[Ljava/lang/String;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/shared/b;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/shared/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/shared/BrokerAndRelationships;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/gms/wallet/shared/BrokerAndRelationships;-><init>(ILjava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/shared/BrokerAndRelationships;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/shared/BrokerAndRelationships;->aMN:Ljava/lang/String;

    if-eqz p3, :cond_0

    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/wallet/shared/BrokerAndRelationships;->aMO:[Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array p3, v0, [Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/shared/BrokerAndRelationships;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/shared/b;->a(Lcom/google/android/gms/wallet/shared/BrokerAndRelationships;Landroid/os/Parcel;I)V

    return-void
.end method
