.class public Lcom/google/android/gms/location/copresence/People;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final ALL:Lcom/google/android/gms/location/copresence/People;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/copresence/People;",
            ">;"
        }
    .end annotation
.end field

.field public static final NONE:Lcom/google/android/gms/location/copresence/People;


# instance fields
.field private final anU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final anV:I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/copresence/l;

    invoke-direct {v0}, Lcom/google/android/gms/location/copresence/l;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/copresence/People;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/location/copresence/People;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/location/copresence/People;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/location/copresence/People;->NONE:Lcom/google/android/gms/location/copresence/People;

    new-instance v0, Lcom/google/android/gms/location/copresence/People;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/location/copresence/People;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/location/copresence/People;->ALL:Lcom/google/android/gms/location/copresence/People;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2
    .param p1    # I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/location/copresence/People;-><init>(ILjava/util/List;I)V

    return-void
.end method

.method constructor <init>(ILjava/util/List;I)V
    .locals 1
    .param p1    # I
    .param p3    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/copresence/People;->mVersionCode:I

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/location/copresence/People;->anU:Ljava/util/List;

    iput p3, p0, Lcom/google/android/gms/location/copresence/People;->anV:I

    return-void

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGroup()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/People;->anV:I

    return v0
.end method

.method public getPersonIds()Ljava/util/List;
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

    iget-object v0, p0, Lcom/google/android/gms/location/copresence/People;->anU:Ljava/util/List;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/People;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/copresence/l;->a(Lcom/google/android/gms/location/copresence/People;Landroid/os/Parcel;I)V

    return-void
.end method
