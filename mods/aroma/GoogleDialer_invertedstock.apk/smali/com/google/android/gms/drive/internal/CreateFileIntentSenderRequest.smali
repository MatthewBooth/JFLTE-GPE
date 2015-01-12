.class public Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Sx:Ljava/lang/String;

.field final Sz:Lcom/google/android/gms/drive/DriveId;

.field final Tl:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

.field final Tm:Ljava/lang/Integer;

.field final mVersionCode:I

.field final uQ:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/i;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/metadata/internal/MetadataBundle;ILjava/lang/String;Lcom/google/android/gms/drive/DriveId;Ljava/lang/Integer;)V
    .locals 0
    .param p1    # I
    .param p2    # Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;
    .param p3    # I
    .param p4    # Ljava/lang/String;
    .param p5    # Lcom/google/android/gms/drive/DriveId;
    .param p6    # Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->Tl:Lcom/google/android/gms/drive/metadata/internal/MetadataBundle;

    iput p3, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->uQ:I

    iput-object p4, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->Sx:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->Sz:Lcom/google/android/gms/drive/DriveId;

    iput-object p6, p0, Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;->Tm:Ljava/lang/Integer;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/i;->a(Lcom/google/android/gms/drive/internal/CreateFileIntentSenderRequest;Landroid/os/Parcel;I)V

    return-void
.end method
