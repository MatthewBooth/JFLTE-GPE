.class public Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/aa;


# instance fields
.field public final length:I

.field public final resetUrl:Ljava/lang/String;

.field public final setupUrl:Ljava/lang/String;

.field public final status:Ljava/lang/String;

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/aa;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/aa;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/aa;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;->status:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;->resetUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;->setupUrl:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;->length:I

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/aa;->a(Lcom/google/android/gms/auth/firstparty/dataservice/PinSettings;Landroid/os/Parcel;I)V

    return-void
.end method
