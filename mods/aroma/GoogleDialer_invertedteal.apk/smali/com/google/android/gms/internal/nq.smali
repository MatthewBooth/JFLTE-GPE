.class public final Lcom/google/android/gms/internal/nq;
.super Lcom/google/android/gms/location/places/Place;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/nr;


# instance fields
.field private final BJ:Ljava/lang/String;

.field private final ZY:Ljava/lang/String;

.field private final aqA:J

.field private final aqB:Ljava/lang/String;

.field private final aqC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aqD:Lcom/google/android/gms/internal/ns;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final aqE:Z

.field private final aqF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final aqG:Ljava/util/TimeZone;

.field private aqH:Ljava/util/Locale;

.field private aqI:Lcom/google/android/gms/internal/nu;

.field private final aqo:Lcom/google/android/gms/maps/model/LatLng;

.field private final aqp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;"
        }
    .end annotation
.end field

.field private final aqs:Landroid/os/Bundle;

.field private final aqt:F

.field private final aqu:Lcom/google/android/gms/maps/model/LatLngBounds;

.field private final aqv:Ljava/lang/String;

.field private final aqw:Landroid/net/Uri;

.field private final aqx:Z

.field private final aqy:F

.field private final aqz:I

.field private final mName:Ljava/lang/String;

.field private final mPhoneNumber:Ljava/lang/String;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/nr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/nr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/nq;->CREATOR:Lcom/google/android/gms/internal/nr;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/maps/model/LatLng;FLcom/google/android/gms/maps/model/LatLngBounds;Ljava/lang/String;Landroid/net/Uri;ZFIJZLcom/google/android/gms/internal/ns;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/places/PlaceType;",
            ">;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "F",
            "Lcom/google/android/gms/maps/model/LatLngBounds;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "ZFIJZ",
            "Lcom/google/android/gms/internal/ns;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/location/places/Place;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/nq;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/nq;->BJ:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/nq;->aqp:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/nq;->aqs:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/google/android/gms/internal/nq;->mName:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/nq;->ZY:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/nq;->mPhoneNumber:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/nq;->aqB:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/nq;->aqC:Ljava/util/List;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/google/android/gms/internal/nq;->aqo:Lcom/google/android/gms/maps/model/LatLng;

    move/from16 v0, p11

    iput v0, p0, Lcom/google/android/gms/internal/nq;->aqt:F

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/android/gms/internal/nq;->aqu:Lcom/google/android/gms/maps/model/LatLngBounds;

    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/android/gms/internal/nq;->aqv:Ljava/lang/String;

    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/nq;->aqw:Landroid/net/Uri;

    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/google/android/gms/internal/nq;->aqx:Z

    move/from16 v0, p16

    iput v0, p0, Lcom/google/android/gms/internal/nq;->aqy:F

    move/from16 v0, p17

    iput v0, p0, Lcom/google/android/gms/internal/nq;->aqz:I

    move-wide/from16 v0, p18

    iput-wide v0, p0, Lcom/google/android/gms/internal/nq;->aqA:J

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/location/places/PlaceType;->create(Ljava/lang/String;)Lcom/google/android/gms/location/places/PlaceType;

    move-result-object v5

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/nq;->aqF:Ljava/util/Map;

    iget-object v2, p0, Lcom/google/android/gms/internal/nq;->aqv:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/nq;->aqG:Ljava/util/TimeZone;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/internal/nq;->aqH:Ljava/util/Locale;

    move/from16 v0, p20

    iput-boolean v0, p0, Lcom/google/android/gms/internal/nq;->aqE:Z

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/internal/nq;->aqD:Lcom/google/android/gms/internal/ns;

    return-void
.end method

.method private cw(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/nq;->nf()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nq;->aqI:Lcom/google/android/gms/internal/nu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nq;->aqI:Lcom/google/android/gms/internal/nu;

    iget-object v1, p0, Lcom/google/android/gms/internal/nq;->BJ:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/nu;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/nq;->CREATOR:Lcom/google/android/gms/internal/nr;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/nq;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/nq;

    iget-object v2, p0, Lcom/google/android/gms/internal/nq;->BJ:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/nq;->BJ:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/nq;->aqH:Ljava/util/Locale;

    iget-object v3, p1, Lcom/google/android/gms/internal/nq;->aqH:Ljava/util/Locale;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/n;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/google/android/gms/internal/nq;->aqA:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/nq;->aqA:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    const-string v0, "getAddress"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nq;->cw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nq;->ZY:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    const-string v0, "getId"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nq;->cw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nq;->BJ:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    const-string v0, "getLatLng"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nq;->cw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nq;->aqo:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getLevelNumber()F
    .locals 1

    const-string v0, "getLevelNumber"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nq;->cw(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/nq;->aqt:F

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "getName"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nq;->cw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nq;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    const-string v0, "getPhoneNumber"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nq;->cw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nq;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceLevel()I
    .locals 1

    const-string v0, "getPriceLevel"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nq;->cw(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/nq;->aqz:I

    return v0
.end method

.method public getRating()F
    .locals 1

    const-string v0, "getRating"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nq;->cw(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/nq;->aqy:F

    return v0
.end method

.method public getTypes()Ljava/util/List;
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

    const-string v0, "getTypes"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nq;->cw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nq;->aqp:Ljava/util/List;

    return-object v0
.end method

.method public getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 1

    const-string v0, "getViewport"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nq;->cw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nq;->aqu:Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getWebsiteUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "getWebsiteUri"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nq;->cw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nq;->aqw:Landroid/net/Uri;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/internal/nq;->BJ:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/nq;->aqH:Ljava/util/Locale;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/internal/nq;->aqA:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isPermanentlyClosed()Z
    .locals 1

    const-string v0, "isPermanentlyClosed"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nq;->cw(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/nq;->aqx:Z

    return v0
.end method

.method public nc()Ljava/lang/String;
    .locals 1

    const-string v0, "getRegularOpenHours"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nq;->cw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nq;->aqB:Ljava/lang/String;

    return-object v0
.end method

.method public nd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getAttributions"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nq;->cw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nq;->aqC:Ljava/util/List;

    return-object v0
.end method

.method public ne()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/nq;->aqA:J

    return-wide v0
.end method

.method public nf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/nq;->aqE:Z

    return v0
.end method

.method public ng()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nq;->aqs:Landroid/os/Bundle;

    return-object v0
.end method

.method public nh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nq;->aqv:Ljava/lang/String;

    return-object v0
.end method

.method public ni()Lcom/google/android/gms/internal/ns;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nq;->aqD:Lcom/google/android/gms/internal/ns;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/n;->j(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/internal/nq;->BJ:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "types"

    iget-object v2, p0, Lcom/google/android/gms/internal/nq;->aqp:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "locale"

    iget-object v2, p0, Lcom/google/android/gms/internal/nq;->aqH:Ljava/util/Locale;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/internal/nq;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "address"

    iget-object v2, p0, Lcom/google/android/gms/internal/nq;->ZY:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "phoneNumber"

    iget-object v2, p0, Lcom/google/android/gms/internal/nq;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "regularOpenHours"

    iget-object v2, p0, Lcom/google/android/gms/internal/nq;->aqB:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "latlng"

    iget-object v2, p0, Lcom/google/android/gms/internal/nq;->aqo:Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "levelNumber"

    iget v2, p0, Lcom/google/android/gms/internal/nq;->aqt:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "viewport"

    iget-object v2, p0, Lcom/google/android/gms/internal/nq;->aqu:Lcom/google/android/gms/maps/model/LatLngBounds;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "timeZone"

    iget-object v2, p0, Lcom/google/android/gms/internal/nq;->aqv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "websiteUri"

    iget-object v2, p0, Lcom/google/android/gms/internal/nq;->aqw:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "isPermanentlyClosed"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/nq;->aqx:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "priceLevel"

    iget v2, p0, Lcom/google/android/gms/internal/nq;->aqz:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    const-string v1, "timestampSecs"

    iget-wide v2, p0, Lcom/google/android/gms/internal/nq;->aqA:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/n$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/n$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/n$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/internal/nq;->CREATOR:Lcom/google/android/gms/internal/nr;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/nr;->a(Lcom/google/android/gms/internal/nq;Landroid/os/Parcel;I)V

    return-void
.end method
