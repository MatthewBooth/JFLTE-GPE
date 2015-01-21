.class final Lcom/google/android/gms/gcm/nts/PendingCallback$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/gcm/nts/PendingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/gcm/nts/PendingCallback;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/nts/PendingCallback$1;->ej(Landroid/os/Parcel;)Lcom/google/android/gms/gcm/nts/PendingCallback;

    move-result-object v0

    return-object v0
.end method

.method public ej(Landroid/os/Parcel;)Lcom/google/android/gms/gcm/nts/PendingCallback;
    .locals 1

    new-instance v0, Lcom/google/android/gms/gcm/nts/PendingCallback;

    invoke-direct {v0, p1}, Lcom/google/android/gms/gcm/nts/PendingCallback;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public fV(I)[Lcom/google/android/gms/gcm/nts/PendingCallback;
    .locals 1

    new-array v0, p1, [Lcom/google/android/gms/gcm/nts/PendingCallback;

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1    # I

    invoke-virtual {p0, p1}, Lcom/google/android/gms/gcm/nts/PendingCallback$1;->fV(I)[Lcom/google/android/gms/gcm/nts/PendingCallback;

    move-result-object v0

    return-object v0
.end method
