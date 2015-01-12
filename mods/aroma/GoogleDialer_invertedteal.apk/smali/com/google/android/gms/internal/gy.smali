.class public final Lcom/google/android/gms/internal/gy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/gz;


# instance fields
.field public final versionCode:I

.field public wC:Ljava/lang/String;

.field public wD:I

.field public wE:I

.field public wF:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gy;->CREATOR:Lcom/google/android/gms/internal/gz;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/gy;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/gy;->wC:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/gy;->wD:I

    iput p4, p0, Lcom/google/android/gms/internal/gy;->wE:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/gy;->wF:Z

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/gz;->a(Lcom/google/android/gms/internal/gy;Landroid/os/Parcel;I)V

    return-void
.end method
