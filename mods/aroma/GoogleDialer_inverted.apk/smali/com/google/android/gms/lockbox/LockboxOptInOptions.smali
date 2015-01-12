.class public Lcom/google/android/gms/lockbox/LockboxOptInOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/lockbox/a;


# instance fields
.field arx:I

.field ary:I

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/lockbox/a;

    invoke-direct {v0}, Lcom/google/android/gms/lockbox/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/lockbox/LockboxOptInOptions;->CREATOR:Lcom/google/android/gms/lockbox/a;

    return-void
.end method

.method constructor <init>(III)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/lockbox/LockboxOptInOptions;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/lockbox/LockboxOptInOptions;->arx:I

    iput p3, p0, Lcom/google/android/gms/lockbox/LockboxOptInOptions;->ary:I

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

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/lockbox/a;->a(Lcom/google/android/gms/lockbox/LockboxOptInOptions;Landroid/os/Parcel;I)V

    return-void
.end method
