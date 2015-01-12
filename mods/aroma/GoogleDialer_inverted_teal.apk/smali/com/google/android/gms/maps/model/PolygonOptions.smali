.class public final Lcom/google/android/gms/maps/model/PolygonOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/m;


# instance fields
.field private final atL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private final atM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;>;"
        }
    .end annotation
.end field

.field private atN:Z

.field private ati:F

.field private atj:I

.field private atk:I

.field private atl:F

.field private atm:Z

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/m;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/m;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/PolygonOptions;->CREATOR:Lcom/google/android/gms/maps/model/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->ati:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atj:I

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atk:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atl:F

    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atm:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atN:Z

    iput v2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->mVersionCode:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atL:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atM:Ljava/util/List;

    return-void
.end method

.method constructor <init>(ILjava/util/List;Ljava/util/List;FIIFZZ)V
    .locals 2
    .param p1    # I
    .param p3    # Ljava/util/List;
    .param p4    # F
    .param p5    # I
    .param p6    # I
    .param p7    # F
    .param p8    # Z
    .param p9    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;",
            "Ljava/util/List;",
            "FIIFZZ)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->ati:F

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atj:I

    iput v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atk:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atl:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atm:Z

    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atN:Z

    iput p1, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atL:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atM:Ljava/util/List;

    iput p4, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->ati:F

    iput p5, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atj:I

    iput p6, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atk:I

    iput p7, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atl:F

    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atm:Z

    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atN:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFillColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atk:I

    return v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atL:Ljava/util/List;

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atj:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->ati:F

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->mVersionCode:I

    return v0
.end method

.method public getZIndex()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atl:F

    return v0
.end method

.method public isGeodesic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atN:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atm:Z

    return v0
.end method

.method nO()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/model/PolygonOptions;->atM:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {}, Lcom/google/android/gms/maps/internal/v;->nK()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/n;->a(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/m;->a(Lcom/google/android/gms/maps/model/PolygonOptions;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
