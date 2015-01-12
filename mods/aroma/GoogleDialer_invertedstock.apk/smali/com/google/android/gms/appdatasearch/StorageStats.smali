.class public Lcom/google/android/gms/appdatasearch/StorageStats;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/appdatasearch/ag;


# instance fields
.field public final allServicesDiskUsageBytes:J

.field final mVersionCode:I

.field public final otherReclaimableBytes:J

.field public final packageStats:[Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;

.field public final searchDiskUsageBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/appdatasearch/ag;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/ag;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/StorageStats;->CREATOR:Lcom/google/android/gms/appdatasearch/ag;

    return-void
.end method

.method constructor <init>(I[Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;JJJ)V
    .locals 1
    .param p1    # I
    .param p2    # [Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;
    .param p3    # J
    .param p5    # J
    .param p7    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/appdatasearch/StorageStats;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/appdatasearch/StorageStats;->packageStats:[Lcom/google/android/gms/appdatasearch/RegisteredPackageInfo;

    iput-wide p3, p0, Lcom/google/android/gms/appdatasearch/StorageStats;->otherReclaimableBytes:J

    iput-wide p5, p0, Lcom/google/android/gms/appdatasearch/StorageStats;->searchDiskUsageBytes:J

    iput-wide p7, p0, Lcom/google/android/gms/appdatasearch/StorageStats;->allServicesDiskUsageBytes:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/StorageStats;->CREATOR:Lcom/google/android/gms/appdatasearch/ag;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/appdatasearch/StorageStats;->CREATOR:Lcom/google/android/gms/appdatasearch/ag;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/appdatasearch/ag;->a(Lcom/google/android/gms/appdatasearch/StorageStats;Landroid/os/Parcel;I)V

    return-void
.end method
