.class public Lcom/google/android/gms/wearable/internal/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/z;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final aOi:Landroid/os/ParcelFileDescriptor;

.field public final statusCode:I

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/aa;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/aa;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/z;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILandroid/os/ParcelFileDescriptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/z;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/wearable/internal/z;->statusCode:I

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/z;->aOi:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    or-int/lit8 v0, p2, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/wearable/internal/aa;->a(Lcom/google/android/gms/wearable/internal/z;Landroid/os/Parcel;I)V

    return-void
.end method
