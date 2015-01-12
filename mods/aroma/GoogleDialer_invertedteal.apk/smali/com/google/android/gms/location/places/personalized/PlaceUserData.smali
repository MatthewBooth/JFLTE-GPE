.class public Lcom/google/android/gms/location/places/personalized/PlaceUserData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/personalized/b;


# instance fields
.field private final Et:Ljava/lang/String;

.field private final apz:Ljava/lang/String;

.field private final aqW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final aqX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/personalized/PlaceAlias;",
            ">;"
        }
    .end annotation
.end field

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/personalized/b;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/personalized/b;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->CREATOR:Lcom/google/android/gms/location/places/personalized/b;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/personalized/PlaceAlias;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->Et:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->apz:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->aqW:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->aqX:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->CREATOR:Lcom/google/android/gms/location/places/personalized/b;

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
    instance-of v2, p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->Et:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->Et:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->apz:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->apz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->aqW:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->aqW:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->aqX:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->aqX:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getPlaceAliases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/personalized/PlaceAlias;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->aqX:Ljava/util/List;

    return-object v0
.end method

.method public getPlaceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->apz:Ljava/lang/String;

    return-object v0
.end method

.method public getTestDataImpls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/personalized/internal/TestDataImpl;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->aqW:Ljava/util/List;

    return-object v0
.end method

.method public getUserAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->Et:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->Et:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->apz:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->aqW:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->aqX:Ljava/util/List;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/location/places/personalized/PlaceUserData;->CREATOR:Lcom/google/android/gms/location/places/personalized/b;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/personalized/b;->a(Lcom/google/android/gms/location/places/personalized/PlaceUserData;Landroid/os/Parcel;I)V

    return-void
.end method
