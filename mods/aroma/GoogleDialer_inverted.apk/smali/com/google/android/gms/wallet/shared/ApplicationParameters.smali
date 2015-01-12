.class public final Lcom/google/android/gms/wallet/shared/ApplicationParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/shared/ApplicationParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field aLO:I

.field aMK:Landroid/accounts/Account;

.field aML:Z

.field mArgs:Landroid/os/Bundle;

.field mTheme:I

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/shared/a;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/shared/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->aML:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->mVersionCode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->aLO:I

    iput v1, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->mTheme:I

    return-void
.end method

.method constructor <init>(IILandroid/accounts/Account;Landroid/os/Bundle;ZI)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/accounts/Account;
    .param p4    # Landroid/os/Bundle;
    .param p5    # Z
    .param p6    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->aML:Z

    iput p1, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->aLO:I

    iput-object p3, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->aMK:Landroid/accounts/Account;

    iput-object p4, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->mArgs:Landroid/os/Bundle;

    iput-boolean p5, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->aML:Z

    iput p6, p0, Lcom/google/android/gms/wallet/shared/ApplicationParameters;->mTheme:I

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/shared/a;->a(Lcom/google/android/gms/wallet/shared/ApplicationParameters;Landroid/os/Parcel;I)V

    return-void
.end method
