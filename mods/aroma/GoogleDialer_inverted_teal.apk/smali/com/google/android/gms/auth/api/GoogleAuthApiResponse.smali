.class public Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/api/GoogleAuthApiResponseCreator;


# instance fields
.field final FG:Landroid/os/Bundle;

.field final FH:[B

.field final responseCode:I

.field final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/GoogleAuthApiResponseCreator;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/GoogleAuthApiResponseCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;->CREATOR:Lcom/google/android/gms/auth/api/GoogleAuthApiResponseCreator;

    return-void
.end method

.method public constructor <init>(IILandroid/os/Bundle;[B)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/os/Bundle;
    .param p4    # [B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;->responseCode:I

    iput-object p3, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;->FG:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;->FH:[B

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/GoogleAuthApiResponseCreator;->a(Lcom/google/android/gms/auth/api/GoogleAuthApiResponse;Landroid/os/Parcel;I)V

    return-void
.end method
