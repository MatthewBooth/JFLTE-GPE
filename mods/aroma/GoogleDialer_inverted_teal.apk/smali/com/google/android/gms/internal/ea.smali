.class public final Lcom/google/android/gms/internal/ea;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/dz;


# instance fields
.field public final lP:Lcom/google/android/gms/internal/eq;

.field public final lW:Lcom/google/android/gms/internal/ej;

.field public final si:Lcom/google/android/gms/internal/el;

.field public final sj:Landroid/content/Context;

.field public final versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/dz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/dz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ea;->CREATOR:Lcom/google/android/gms/internal/dz;

    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ea;->versionCode:I

    invoke-static {p2}, Lcom/google/android/gms/dynamic/d$a;->aQ(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->i(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/eq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ea;->lP:Lcom/google/android/gms/internal/eq;

    invoke-static {p3}, Lcom/google/android/gms/dynamic/d$a;->aQ(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->i(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ej;

    iput-object v0, p0, Lcom/google/android/gms/internal/ea;->lW:Lcom/google/android/gms/internal/ej;

    invoke-static {p4}, Lcom/google/android/gms/dynamic/d$a;->aQ(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->i(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/el;

    iput-object v0, p0, Lcom/google/android/gms/internal/ea;->si:Lcom/google/android/gms/internal/el;

    invoke-static {p5}, Lcom/google/android/gms/dynamic/d$a;->aQ(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->i(Lcom/google/android/gms/dynamic/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ea;->sj:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method cj()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ea;->lP:Lcom/google/android/gms/internal/eq;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->q(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method ck()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ea;->lW:Lcom/google/android/gms/internal/ej;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->q(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method cl()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ea;->si:Lcom/google/android/gms/internal/el;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->q(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method cm()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ea;->sj:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/e;->q(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/dz;->a(Lcom/google/android/gms/internal/ea;Landroid/os/Parcel;I)V

    return-void
.end method
