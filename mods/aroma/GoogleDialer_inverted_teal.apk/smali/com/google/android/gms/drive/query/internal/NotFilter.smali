.class public Lcom/google/android/gms/drive/query/internal/NotFilter;
.super Lcom/google/android/gms/drive/query/internal/AbstractFilter;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/query/internal/NotFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final Wu:Lcom/google/android/gms/drive/query/internal/FilterHolder;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/query/internal/k;

    invoke-direct {v0}, Lcom/google/android/gms/drive/query/internal/k;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/query/internal/NotFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/query/internal/FilterHolder;)V
    .locals 0
    .param p1    # I
    .param p2    # Lcom/google/android/gms/drive/query/internal/FilterHolder;

    invoke-direct {p0}, Lcom/google/android/gms/drive/query/internal/AbstractFilter;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/query/internal/NotFilter;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/drive/query/internal/NotFilter;->Wu:Lcom/google/android/gms/drive/query/internal/FilterHolder;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/drive/query/internal/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/drive/query/internal/f",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/drive/query/internal/NotFilter;->Wu:Lcom/google/android/gms/drive/query/internal/FilterHolder;

    invoke-virtual {v0}, Lcom/google/android/gms/drive/query/internal/FilterHolder;->getFilter()Lcom/google/android/gms/drive/query/Filter;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/drive/query/Filter;->a(Lcom/google/android/gms/drive/query/internal/f;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/drive/query/internal/f;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/query/internal/k;->a(Lcom/google/android/gms/drive/query/internal/NotFilter;Landroid/os/Parcel;I)V

    return-void
.end method
