.class public Lcom/google/android/gms/auth/RecoveryWriteResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/e;


# instance fields
.field public mErrorCode:Ljava/lang/String;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/e;

    invoke-direct {v0}, Lcom/google/android/gms/auth/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/RecoveryWriteResponse;->CREATOR:Lcom/google/android/gms/auth/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/RecoveryWriteResponse;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/RecoveryWriteResponse;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/auth/RecoveryWriteResponse;->mErrorCode:Ljava/lang/String;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/e;->a(Lcom/google/android/gms/auth/RecoveryWriteResponse;Landroid/os/Parcel;I)V

    return-void
.end method
