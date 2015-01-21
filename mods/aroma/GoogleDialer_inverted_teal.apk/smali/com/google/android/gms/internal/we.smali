.class public abstract Lcom/google/android/gms/internal/we;
.super Ljava/lang/Object;


# instance fields
.field protected volatile aPz:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/we;->aPz:I

    return-void
.end method

.method public static final toByteArray(Lcom/google/android/gms/internal/we;[BII)V
    .locals 3
    .param p0    # Lcom/google/android/gms/internal/we;
    .param p1    # [B
    .param p2    # I
    .param p3    # I

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/vx;->b([BII)Lcom/google/android/gms/internal/vx;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/we;->writeTo(Lcom/google/android/gms/internal/vx;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vx;->sO()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final toByteArray(Lcom/google/android/gms/internal/we;)[B
    .locals 3
    .param p0    # Lcom/google/android/gms/internal/we;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/we;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/we;->toByteArray(Lcom/google/android/gms/internal/we;[BII)V

    return-object v0
.end method


# virtual methods
.method protected c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/we;->aPz:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/we;->getSerializedSize()I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/we;->aPz:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/we;->c()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/we;->aPz:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/wf;->f(Lcom/google/android/gms/internal/we;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/vx;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/vx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
