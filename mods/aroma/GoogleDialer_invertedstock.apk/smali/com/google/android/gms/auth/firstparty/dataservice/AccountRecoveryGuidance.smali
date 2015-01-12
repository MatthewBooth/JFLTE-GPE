.class public Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/e;


# instance fields
.field public final accountName:Ljava/lang/String;

.field public final isRecoveryInfoNeeded:Z

.field public final isRecoveryInterstitialSuggested:Z

.field public final isRecoveryUpdateAllowed:Z

.field final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/firstparty/dataservice/e;

    invoke-direct {v0}, Lcom/google/android/gms/auth/firstparty/dataservice/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->CREATOR:Lcom/google/android/gms/auth/firstparty/dataservice/e;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;ZZZ)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Z
    .param p4    # Z
    .param p5    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->version:I

    iput-object p2, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->accountName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->isRecoveryInfoNeeded:Z

    iput-boolean p4, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->isRecoveryInterstitialSuggested:Z

    iput-boolean p5, p0, Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;->isRecoveryUpdateAllowed:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/firstparty/dataservice/e;->a(Lcom/google/android/gms/auth/firstparty/dataservice/AccountRecoveryGuidance;Landroid/os/Parcel;I)V

    return-void
.end method
