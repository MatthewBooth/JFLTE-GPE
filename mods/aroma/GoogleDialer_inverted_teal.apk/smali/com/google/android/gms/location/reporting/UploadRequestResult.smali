.class public final Lcom/google/android/gms/location/reporting/UploadRequestResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/location/reporting/f;


# instance fields
.field private final Le:J

.field private final mVersionCode:I

.field private final sE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/location/reporting/f;

    invoke-direct {v0}, Lcom/google/android/gms/location/reporting/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->CREATOR:Lcom/google/android/gms/location/reporting/f;

    return-void
.end method

.method constructor <init>(IIJ)V
    .locals 1
    .param p1    # I
    .param p2    # I
    .param p3    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->mVersionCode:I

    iput p2, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->sE:I

    iput-wide p3, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Le:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->CREATOR:Lcom/google/android/gms/location/reporting/f;

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/location/reporting/UploadRequestResult;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/location/reporting/UploadRequestResult;

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Le:J

    iget-wide v4, p1, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Le:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->sE:I

    iget v2, p1, Lcom/google/android/gms/location/reporting/UploadRequestResult;->sE:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getRequestId()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Le:J

    return-wide v0
.end method

.method public getResultCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->sE:I

    return v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->sE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Le:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result{mVersionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mResultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->sE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->Le:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    sget-object v0, Lcom/google/android/gms/location/reporting/UploadRequestResult;->CREATOR:Lcom/google/android/gms/location/reporting/f;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/reporting/f;->a(Lcom/google/android/gms/location/reporting/UploadRequestResult;Landroid/os/Parcel;I)V

    return-void
.end method
