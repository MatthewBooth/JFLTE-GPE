.class public Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/aa;


# instance fields
.field public final blocked:Z

.field final mVersionCode:I

.field public final packageName:Ljava/lang/String;

.field public final reclaimableDiskBytes:J

.field public final usedDiskBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/aa;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/aa;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/aa;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JZJ)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/String;
    .param p3    # J
    .param p5    # Z
    .param p6    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;->packageName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;->usedDiskBytes:J

    iput-boolean p5, p0, Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;->blocked:Z

    iput-wide p6, p0, Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;->reclaimableDiskBytes:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/aa;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;->CREATOR:Lcom/google/android/gms/appdatasearch/aa;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/aa;->a(Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;Landroid/os/Parcel;I)V

    return-void
.end method
