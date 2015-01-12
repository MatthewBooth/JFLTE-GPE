.class public Lcom/google/android/gms/drive/internal/OnListParentsResponse;
.super Lcom/google/android/gms/drive/g;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/OnListParentsResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final US:Lcom/google/android/gms/common/data/DataHolder;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/ao;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/ao;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnListParentsResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/data/DataHolder;)V
    .locals 0
    .param p1    # I
    .param p2    # Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {p0}, Lcom/google/android/gms/drive/g;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OnListParentsResponse;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/OnListParentsResponse;->US:Lcom/google/android/gms/common/data/DataHolder;

    return-void
.end method


# virtual methods
.method protected K(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/ao;->a(Lcom/google/android/gms/drive/internal/OnListParentsResponse;Landroid/os/Parcel;I)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
