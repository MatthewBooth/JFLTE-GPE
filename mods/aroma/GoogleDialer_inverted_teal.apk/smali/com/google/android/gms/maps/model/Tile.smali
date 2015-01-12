.class public final Lcom/google/android/gms/maps/model/Tile;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/model/u;


# instance fields
.field public final data:[B

.field public final height:I

.field private final mVersionCode:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/model/u;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/u;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/Tile;->CREATOR:Lcom/google/android/gms/maps/model/u;

    return-void
.end method

.method constructor <init>(III[B)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # [B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/maps/model/Tile;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/maps/model/Tile;->width:I

    iput p3, p0, Lcom/google/android/gms/maps/model/Tile;->height:I

    iput-object p4, p0, Lcom/google/android/gms/maps/model/Tile;->data:[B

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # [B

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/maps/model/Tile;-><init>(III[B)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/model/Tile;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {}, Lcom/google/android/gms/maps/internal/v;->nK()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/v;->a(Lcom/google/android/gms/maps/model/Tile;Landroid/os/Parcel;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/model/u;->a(Lcom/google/android/gms/maps/model/Tile;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
