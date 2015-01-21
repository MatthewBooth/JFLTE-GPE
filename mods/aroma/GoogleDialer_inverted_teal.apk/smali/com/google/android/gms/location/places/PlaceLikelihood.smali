.class public Lcom/google/android/gms/location/places/PlaceLikelihood;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/places/PlaceLikelihood;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final apN:Lcom/google/android/gms/internal/nq;

.field final apO:F

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/e;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/e;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/PlaceLikelihood;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/nq;F)V
    .locals 0
    .param p1    # I
    .param p2    # Lcom/google/android/gms/internal/nq;
    .param p3    # F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/PlaceLikelihood;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/PlaceLikelihood;->apN:Lcom/google/android/gms/internal/nq;

    iput p3, p0, Lcom/google/android/gms/location/places/PlaceLikelihood;->apO:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/location/places/PlaceLikelihood;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/PlaceLikelihood;

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceLikelihood;->apN:Lcom/google/android/gms/internal/nq;

    iget-object v3, p1, Lcom/google/android/gms/location/places/PlaceLikelihood;->apN:Lcom/google/android/gms/internal/nq;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/nq;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/location/places/PlaceLikelihood;->apO:F

    iget v3, p1, Lcom/google/android/gms/location/places/PlaceLikelihood;->apO:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlaceLikelihood;->apN:Lcom/google/android/gms/internal/nq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/nq;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/n;->j(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "place"

    iget-object v2, p0, Lcom/google/android/gms/location/places/PlaceLikelihood;->apN:Lcom/google/android/gms/internal/nq;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "likelihood"

    iget v2, p0, Lcom/google/android/gms/location/places/PlaceLikelihood;->apO:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/e;->a(Lcom/google/android/gms/location/places/PlaceLikelihood;Landroid/os/Parcel;I)V

    return-void
.end method
