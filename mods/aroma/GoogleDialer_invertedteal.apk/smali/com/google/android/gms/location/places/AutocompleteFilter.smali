.class public Lcom/google/android/gms/location/places/AutocompleteFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/places/a;


# instance fields
.field private final apw:Z

.field private final apx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;"
        }
    .end annotation
.end field

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/places/a;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/AutocompleteFilter;->CREATOR:Lcom/google/android/gms/location/places/a;

    return-void
.end method

.method constructor <init>(IZLjava/util/List;)V
    .locals 0
    .param p1    # I
    .param p2    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->mVersionCode:I

    iput-boolean p2, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->apw:Z

    iput-object p3, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->apx:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/places/AutocompleteFilter;->CREATOR:Lcom/google/android/gms/location/places/a;

    const/4 v0, 0x0

    return v0
.end method

.method public getPlaceTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->apx:Ljava/util/List;

    return-object v0
.end method

.method public getRestrictToPlaces()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/location/places/AutocompleteFilter;->apw:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/location/places/AutocompleteFilter;->CREATOR:Lcom/google/android/gms/location/places/a;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/a;->a(Lcom/google/android/gms/location/places/AutocompleteFilter;Landroid/os/Parcel;I)V

    return-void
.end method
