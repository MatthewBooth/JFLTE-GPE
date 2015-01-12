.class public final Lcom/google/android/gms/maps/GoogleMapOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/a;


# instance fields
.field private ash:Ljava/lang/Boolean;

.field private asi:Ljava/lang/Boolean;

.field private asj:I

.field private ask:Lcom/google/android/gms/maps/model/CameraPosition;

.field private asl:Ljava/lang/Boolean;

.field private asm:Ljava/lang/Boolean;

.field private asn:Ljava/lang/Boolean;

.field private aso:Ljava/lang/Boolean;

.field private asp:Ljava/lang/Boolean;

.field private asq:Ljava/lang/Boolean;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/a;

    invoke-direct {v0}, Lcom/google/android/gms/maps/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/GoogleMapOptions;->CREATOR:Lcom/google/android/gms/maps/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->asj:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->mVersionCode:I

    return-void
.end method

.method constructor <init>(IBBILcom/google/android/gms/maps/model/CameraPosition;BBBBBB)V
    .locals 1
    .param p1    # I
    .param p2    # B
    .param p3    # B
    .param p4    # I
    .param p5    # Lcom/google/android/gms/maps/model/CameraPosition;
    .param p6    # B
    .param p7    # B
    .param p8    # B
    .param p9    # B
    .param p10    # B
    .param p11    # B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->asj:I

    iput p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ash:Ljava/lang/Boolean;

    invoke-static {p3}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->asi:Ljava/lang/Boolean;

    iput p4, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->asj:I

    iput-object p5, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ask:Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-static {p6}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->asl:Ljava/lang/Boolean;

    invoke-static {p7}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->asm:Ljava/lang/Boolean;

    invoke-static {p8}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->asn:Ljava/lang/Boolean;

    invoke-static {p9}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->aso:Ljava/lang/Boolean;

    invoke-static {p10}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->asp:Ljava/lang/Boolean;

    invoke-static {p11}, Lcom/google/android/gms/maps/internal/a;->a(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->asq:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCamera()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ask:Lcom/google/android/gms/maps/model/CameraPosition;

    return-object v0
.end method

.method public getMapType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->asj:I

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->mVersionCode:I

    return v0
.end method

.method np()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->ash:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->c(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method nq()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->asi:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->c(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method nr()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->asl:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->c(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method ns()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->asm:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->c(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method nt()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->asn:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->c(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method nu()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->aso:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->c(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method nv()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->asp:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->c(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method nw()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->asq:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/a;->c(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {}, Lcom/google/android/gms/maps/internal/v;->nK()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/b;->a(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/a;->a(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
