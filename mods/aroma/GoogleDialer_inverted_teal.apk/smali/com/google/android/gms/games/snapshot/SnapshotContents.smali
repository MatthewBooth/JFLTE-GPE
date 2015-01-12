.class public final Lcom/google/android/gms/games/snapshot/SnapshotContents;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotContentsCreator;

.field private static final aky:Ljava/lang/Object;


# instance fields
.field private Tz:Lcom/google/android/gms/drive/Contents;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotContents;->aky:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotContentsCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/SnapshotContentsCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotContents;->CREATOR:Lcom/google/android/gms/games/snapshot/SnapshotContentsCreator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/drive/Contents;)V
    .locals 0
    .param p1    # I
    .param p2    # Lcom/google/android/gms/drive/Contents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotContents;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/games/snapshot/SnapshotContents;->Tz:Lcom/google/android/gms/drive/Contents;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContents()Lcom/google/android/gms/drive/Contents;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotContents;->Tz:Lcom/google/android/gms/drive/Contents;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotContents;->mVersionCode:I

    return v0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotContents;->Tz:Lcom/google/android/gms/drive/Contents;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/snapshot/SnapshotContentsCreator;->a(Lcom/google/android/gms/games/snapshot/SnapshotContents;Landroid/os/Parcel;I)V

    return-void
.end method
