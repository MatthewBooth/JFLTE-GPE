.class public Lcom/google/android/gms/drive/internal/QueryRequest;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/internal/QueryRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final UU:Lcom/google/android/gms/drive/query/Query;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/internal/ax;

    invoke-direct {v0}, Lcom/google/android/gms/drive/internal/ax;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/internal/QueryRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/query/Query;)V
    .locals 0
    .param p1    # I
    .param p2    # Lcom/google/android/gms/drive/query/Query;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/internal/QueryRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/internal/QueryRequest;->UU:Lcom/google/android/gms/drive/query/Query;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/internal/ax;->a(Lcom/google/android/gms/drive/internal/QueryRequest;Landroid/os/Parcel;I)V

    return-void
.end method
