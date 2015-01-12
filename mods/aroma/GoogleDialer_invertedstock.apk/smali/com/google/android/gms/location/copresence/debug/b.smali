.class public Lcom/google/android/gms/location/copresence/debug/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/copresence/debug/c;


# instance fields
.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/copresence/debug/c;

    invoke-direct {v0}, Lcom/google/android/gms/location/copresence/debug/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/copresence/debug/b;->CREATOR:Lcom/google/android/gms/location/copresence/debug/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/location/copresence/debug/b;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/copresence/debug/b;->mVersionCode:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/copresence/debug/b;->CREATOR:Lcom/google/android/gms/location/copresence/debug/c;

    const/4 v0, 0x0

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/copresence/debug/b;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/copresence/debug/c;->a(Lcom/google/android/gms/location/copresence/debug/b;Landroid/os/Parcel;I)V

    return-void
.end method
