.class public Lcom/google/android/gms/fitness/request/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/request/ac;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final acm:Lcom/google/android/gms/fitness/request/l;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/request/ad;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/request/ad;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/request/ac;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/request/ac;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/fitness/request/l$a;->be(Landroid/os/IBinder;)Lcom/google/android/gms/fitness/request/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/request/ac;->acm:Lcom/google/android/gms/fitness/request/l;

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

    iget v0, p0, Lcom/google/android/gms/fitness/request/ac;->mVersionCode:I

    return v0
.end method

.method public kc()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/request/ac;->acm:Lcom/google/android/gms/fitness/request/l;

    invoke-interface {v0}, Lcom/google/android/gms/fitness/request/l;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/request/ad;->a(Lcom/google/android/gms/fitness/request/ac;Landroid/os/Parcel;I)V

    return-void
.end method
