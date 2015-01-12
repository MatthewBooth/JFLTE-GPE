.class public Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/r;


# instance fields
.field public final bearing:F

.field private final mVersionCode:I

.field public final panoId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/r;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->CREATOR:Lcom/google/android/gms/maps/model/r;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;F)V
    .locals 5
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # F

    const/high16 v4, 0x43b40000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->panoId:Ljava/lang/String;

    float-to-double v0, p3

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    rem-float v0, p3, v4

    add-float p3, v0, v4

    :cond_0
    rem-float v0, p3, v4

    iput v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->bearing:F

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
    instance-of v2, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;

    iget-object v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->panoId:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->panoId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->bearing:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    iget v3, p1, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->bearing:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->panoId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->bearing:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/n;->j(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "panoId"

    iget-object v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->panoId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "bearing"

    iget v2, p0, Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;->bearing:F

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/r;->a(Lcom/google/android/gms/maps/model/StreetViewPanoramaLink;Landroid/os/Parcel;I)V

    return-void
.end method
