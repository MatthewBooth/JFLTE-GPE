.class public Lcom/google/android/gms/search/global/SetExperimentIdsCall$Request;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/search/global/SetExperimentIdsCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/search/global/i;


# instance fields
.field public emergency:Z

.field final mVersionCode:I

.field public serializedExperimentConfig:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/search/global/i;

    invoke-direct {v0}, Lcom/google/android/gms/search/global/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/search/global/SetExperimentIdsCall$Request;->CREATOR:Lcom/google/android/gms/search/global/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/search/global/SetExperimentIdsCall$Request;->mVersionCode:I

    return-void
.end method

.method constructor <init>(I[BZ)V
    .locals 0
    .param p1    # I
    .param p2    # [B
    .param p3    # Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/search/global/SetExperimentIdsCall$Request;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/search/global/SetExperimentIdsCall$Request;->serializedExperimentConfig:[B

    iput-boolean p3, p0, Lcom/google/android/gms/search/global/SetExperimentIdsCall$Request;->emergency:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/search/global/SetExperimentIdsCall$Request;->CREATOR:Lcom/google/android/gms/search/global/i;

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/search/global/SetExperimentIdsCall$Request;->CREATOR:Lcom/google/android/gms/search/global/i;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/search/global/i;->a(Lcom/google/android/gms/search/global/SetExperimentIdsCall$Request;Landroid/os/Parcel;I)V

    return-void
.end method
