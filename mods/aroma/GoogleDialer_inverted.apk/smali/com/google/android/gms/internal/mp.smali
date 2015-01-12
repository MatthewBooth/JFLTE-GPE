.class public Lcom/google/android/gms/internal/mp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/mp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final aot:I

.field public final aou:Lcom/google/android/gms/internal/mr;

.field public final aov:Lcom/google/android/gms/internal/mx;

.field public final aow:Lcom/google/android/gms/internal/mv;

.field public final aox:Lcom/google/android/gms/internal/mz;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/mq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/mq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/mp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IILcom/google/android/gms/internal/mr;Lcom/google/android/gms/internal/mx;Lcom/google/android/gms/internal/mv;Lcom/google/android/gms/internal/mz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mp;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/internal/mp;->aot:I

    iput-object p3, p0, Lcom/google/android/gms/internal/mp;->aou:Lcom/google/android/gms/internal/mr;

    iput-object p4, p0, Lcom/google/android/gms/internal/mp;->aov:Lcom/google/android/gms/internal/mx;

    iput-object p5, p0, Lcom/google/android/gms/internal/mp;->aow:Lcom/google/android/gms/internal/mv;

    iput-object p6, p0, Lcom/google/android/gms/internal/mp;->aox:Lcom/google/android/gms/internal/mz;

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

    iget v0, p0, Lcom/google/android/gms/internal/mp;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/mq;->a(Lcom/google/android/gms/internal/mp;Landroid/os/Parcel;I)V

    return-void
.end method
