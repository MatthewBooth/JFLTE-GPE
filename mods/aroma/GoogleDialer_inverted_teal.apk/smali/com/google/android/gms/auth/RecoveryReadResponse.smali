.class public Lcom/google/android/gms/auth/RecoveryReadResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/c;


# instance fields
.field public mAction:Ljava/lang/String;

.field public mAllowedOptions:Ljava/lang/String;

.field public mCountryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/Country;",
            ">;"
        }
    .end annotation
.end field

.field public mError:Ljava/lang/String;

.field public mPhoneCountryCode:Ljava/lang/String;

.field public mPhoneNumber:Ljava/lang/String;

.field public mSecondaryEmail:Ljava/lang/String;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/c;

    invoke-direct {v0}, Lcom/google/android/gms/auth/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/RecoveryReadResponse;->CREATOR:Lcom/google/android/gms/auth/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p6    # Ljava/lang/String;
    .param p7    # Ljava/lang/String;
    .param p8    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/Country;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->mSecondaryEmail:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->mPhoneNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->mPhoneCountryCode:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->mCountryList:Ljava/util/List;

    iput-object p6, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->mError:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->mAction:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/RecoveryReadResponse;->mAllowedOptions:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/c;->a(Lcom/google/android/gms/auth/RecoveryReadResponse;Landroid/os/Parcel;I)V

    return-void
.end method
