.class public Lcom/google/android/gms/drive/internal/OnListEntriesResponse;
.super Lcom/google/android/gms/drive/g;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/OnListEntriesResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final TB:Z

.field final UR:Lcom/google/android/gms/common/data/DataHolder;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/an;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/an;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/common/data/DataHolder;Z)V
    .locals 0
    .param p1    # I
    .param p2    # Lcom/google/android/gms/common/data/DataHolder;
    .param p3    # Z

    invoke-direct {p0}, Lcom/google/android/gms/drive/g;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->UR:Lcom/google/android/gms/common/data/DataHolder;

    iput-boolean p3, p0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->TB:Z

    return-void
.end method


# virtual methods
.method protected K(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/an;->a(Lcom/google/android/gms/drive/internal/OnListEntriesResponse;Landroid/os/Parcel;I)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
