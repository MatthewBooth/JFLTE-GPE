.class public Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ah;


# instance fields
.field public final rapt:Ljava/lang/String;

.field public final status:I

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/ah;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/ah;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/ah;

    return-void
.end method

.method constructor <init>(IILjava/lang/String;)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;->version:I

    iput p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;->status:I

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;->rapt:Ljava/lang/String;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/ah;->a(Lcom/google/android/gms/auth/firstparty/dataservice/VerifyPinResponse;Landroid/os/Parcel;I)V

    return-void
.end method
