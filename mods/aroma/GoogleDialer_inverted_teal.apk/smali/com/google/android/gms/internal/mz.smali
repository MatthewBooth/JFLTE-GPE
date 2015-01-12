.class public Lcom/google/android/gms/internal/mz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/mz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final aoH:Landroid/app/PendingIntent;

.field private final mVersionCode:I

.field public final messageListener:Lcom/google/android/gms/internal/mn;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/na;

    invoke-direct {v0}, Lcom/google/android/gms/internal/na;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mz;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILandroid/os/IBinder;Landroid/app/PendingIntent;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mz;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/mz;->type:I

    if-nez p3, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/mz;->messageListener:Lcom/google/android/gms/internal/mn;

    :goto_0
    iput-object p4, p0, Lcom/google/android/gms/internal/mz;->aoH:Landroid/app/PendingIntent;

    return-void

    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/internal/mn$a;->bv(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/mz;->messageListener:Lcom/google/android/gms/internal/mn;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/mz;

    iget v2, p0, Lcom/google/android/gms/internal/mz;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/mz;->type:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/mz;->messageListener:Lcom/google/android/gms/internal/mn;

    iget-object v3, p1, Lcom/google/android/gms/internal/mz;->messageListener:Lcom/google/android/gms/internal/mn;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/n;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/mz;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/mz;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/mz;->messageListener:Lcom/google/android/gms/internal/mn;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method mF()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mz;->messageListener:Lcom/google/android/gms/internal/mn;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/mz;->messageListener:Lcom/google/android/gms/internal/mn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/mn;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/na;->a(Lcom/google/android/gms/internal/mz;Landroid/os/Parcel;I)V

    return-void
.end method
