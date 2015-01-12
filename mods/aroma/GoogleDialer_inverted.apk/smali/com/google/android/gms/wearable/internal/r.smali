.class public Lcom/google/android/gms/wearable/internal/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/r;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final aOe:Lcom/google/android/gms/wearable/ConnectionConfiguration;

.field public final statusCode:I

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/s;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/s;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/r;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/wearable/ConnectionConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/r;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/wearable/internal/r;->statusCode:I

    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/r;->aOe:Lcom/google/android/gms/wearable/ConnectionConfiguration;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/s;->a(Lcom/google/android/gms/wearable/internal/r;Landroid/os/Parcel;I)V

    return-void
.end method
