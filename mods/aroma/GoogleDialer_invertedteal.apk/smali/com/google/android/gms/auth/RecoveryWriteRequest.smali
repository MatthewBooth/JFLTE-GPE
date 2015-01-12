.class public Lcom/google/android/gms/auth/RecoveryWriteRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/d;


# instance fields
.field public mAccount:Ljava/lang/String;

.field public mIsBroadUse:Z

.field public mPhoneCountryCode:Ljava/lang/String;

.field public mPhoneNumber:Ljava/lang/String;

.field public mSecondaryEmail:Ljava/lang/String;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/d;

    invoke-direct {v0}, Lcom/google/android/gms/auth/d;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->CREATOR:Lcom/google/android/gms/auth/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->mAccount:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->mSecondaryEmail:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->mPhoneNumber:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->mPhoneCountryCode:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/auth/RecoveryWriteRequest;->mIsBroadUse:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/d;->a(Lcom/google/android/gms/auth/RecoveryWriteRequest;Landroid/os/Parcel;I)V

    return-void
.end method
