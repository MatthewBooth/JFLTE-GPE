.class public final Lcom/google/android/gms/internal/ba;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/bb;


# instance fields
.field public final extras:Landroid/os/Bundle;

.field public final nV:J

.field public final nW:I

.field public final nX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final nY:Z

.field public final nZ:I

.field public final oa:Z

.field public final ob:Ljava/lang/String;

.field public final oc:Lcom/google/android/gms/internal/bo;

.field public final od:Landroid/location/Location;

.field public final oe:Ljava/lang/String;

.field public final of:Landroid/os/Bundle;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/bb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ba;->CREATOR:Lcom/google/android/gms/internal/bb;

    return-void
.end method

.method public constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/bo;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZIZ",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/bo;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ba;->versionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/ba;->nV:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ba;->extras:Landroid/os/Bundle;

    iput p5, p0, Lcom/google/android/gms/internal/ba;->nW:I

    iput-object p6, p0, Lcom/google/android/gms/internal/ba;->nX:Ljava/util/List;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/ba;->nY:Z

    iput p8, p0, Lcom/google/android/gms/internal/ba;->nZ:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ba;->oa:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/ba;->ob:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/ba;->oc:Lcom/google/android/gms/internal/bo;

    iput-object p12, p0, Lcom/google/android/gms/internal/ba;->od:Landroid/location/Location;

    iput-object p13, p0, Lcom/google/android/gms/internal/ba;->oe:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/internal/ba;->of:Landroid/os/Bundle;

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/bb;->a(Lcom/google/android/gms/internal/ba;Landroid/os/Parcel;I)V

    return-void
.end method
