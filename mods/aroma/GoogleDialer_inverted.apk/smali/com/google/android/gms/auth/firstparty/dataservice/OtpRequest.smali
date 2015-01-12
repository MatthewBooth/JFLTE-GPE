.class public Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/v;


# instance fields
.field final Fl:I

.field public final accountName:Ljava/lang/String;

.field public final callerDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field public final challenge:[B

.field public final isLegacyRequest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/v;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/v;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/v;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;[BZ)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;
    .param p4    # [B
    .param p5    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->Fl:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->accountName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->challenge:[B

    const-string v0, "Caller\'s app description cannot be null!"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-object v0, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->callerDescription:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    iput-boolean p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;->isLegacyRequest:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/v;->a(Lcom/google/android/gms/auth/firstparty/dataservice/OtpRequest;Landroid/os/Parcel;I)V

    return-void
.end method
