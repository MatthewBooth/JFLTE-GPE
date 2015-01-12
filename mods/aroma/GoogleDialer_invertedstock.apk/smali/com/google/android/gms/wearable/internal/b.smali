.class public Lcom/google/android/gms/wearable/internal/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wearable/internal/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final aNJ:Lcom/google/android/gms/wearable/internal/ae;

.field public final aNK:[Landroid/content/IntentFilter;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wearable/internal/c;

    invoke-direct {v0}, Lcom/google/android/gms/wearable/internal/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/wearable/internal/b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;[Landroid/content/IntentFilter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wearable/internal/b;->mVersionCode:I

    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/wearable/internal/ae$a;->dt(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/b;->aNJ:Lcom/google/android/gms/wearable/internal/ae;

    :goto_0
    iput-object p3, p0, Lcom/google/android/gms/wearable/internal/b;->aNK:[Landroid/content/IntentFilter;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/wearable/internal/b;->aNJ:Lcom/google/android/gms/wearable/internal/ae;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method sk()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/b;->aNJ:Lcom/google/android/gms/wearable/internal/ae;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/wearable/internal/b;->aNJ:Lcom/google/android/gms/wearable/internal/ae;

    invoke-interface {v0}, Lcom/google/android/gms/wearable/internal/ae;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wearable/internal/c;->a(Lcom/google/android/gms/wearable/internal/b;Landroid/os/Parcel;I)V

    return-void
.end method
