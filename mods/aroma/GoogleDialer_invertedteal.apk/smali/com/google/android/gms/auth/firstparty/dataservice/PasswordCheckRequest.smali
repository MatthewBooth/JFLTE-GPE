.class public Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/x;


# instance fields
.field FK:Ljava/lang/String;

.field FL:Ljava/lang/String;

.field GS:Ljava/lang/String;

.field GT:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

.field accountName:Ljava/lang/String;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/x;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/x;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/x;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/auth/firstparty/shared/AppDescription;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .param p6    # Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->accountName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->GS:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->FK:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->FL:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;->GT:Lcom/google/android/gms/auth/firstparty/shared/AppDescription;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/x;->a(Lcom/google/android/gms/auth/firstparty/dataservice/PasswordCheckRequest;Landroid/os/Parcel;I)V

    return-void
.end method
