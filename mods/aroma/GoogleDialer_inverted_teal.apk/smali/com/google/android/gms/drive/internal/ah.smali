.class public final Lcom/google/android/gms/drive/internal/ah;
.super Lcom/google/android/gms/internal/vy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vy",
        "<",
        "Lcom/google/android/gms/drive/internal/ah;",
        ">;"
    }
.end annotation


# instance fields
.field public UJ:Ljava/lang/String;

.field public UK:J

.field public UL:J

.field public versionCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/vy;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/ah;->hT()Lcom/google/android/gms/drive/internal/ah;

    return-void
.end method


# virtual methods
.method protected c()I
    .locals 4

    invoke-super {p0}, Lcom/google/android/gms/internal/vy;->c()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/internal/ah;->versionCode:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->z(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/drive/internal/ah;->UJ:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/ah;->UK:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/vx;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/ah;->UL:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/vx;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/android/gms/drive/internal/ah;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/android/gms/drive/internal/ah;

    iget v1, p0, Lcom/google/android/gms/drive/internal/ah;->versionCode:I

    iget v2, p1, Lcom/google/android/gms/drive/internal/ah;->versionCode:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/ah;->UJ:Ljava/lang/String;

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/google/android/gms/drive/internal/ah;->UJ:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/ah;->UK:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/ah;->UK:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/ah;->UL:J

    iget-wide v4, p1, Lcom/google/android/gms/drive/internal/ah;->UL:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/internal/ah;->a(Lcom/google/android/gms/internal/vy;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/drive/internal/ah;->UJ:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/drive/internal/ah;->UJ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method

.method public hT()Lcom/google/android/gms/drive/internal/ah;
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/ah;->versionCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/ah;->UJ:Ljava/lang/String;

    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/ah;->UK:J

    iput-wide v2, p0, Lcom/google/android/gms/drive/internal/ah;->UL:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/drive/internal/ah;->aPo:Lcom/google/android/gms/internal/wa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/drive/internal/ah;->aPz:I

    return-object p0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget v0, p0, Lcom/google/android/gms/drive/internal/ah;->versionCode:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/drive/internal/ah;->UJ:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/ah;->UK:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/ah;->UK:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/ah;->UL:J

    iget-wide v4, p0, Lcom/google/android/gms/drive/internal/ah;->UL:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/ah;->sP()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/drive/internal/ah;->UJ:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public writeTo(Lcom/google/android/gms/internal/vx;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/vx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/drive/internal/ah;->versionCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->x(II)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/drive/internal/ah;->UJ:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->b(ILjava/lang/String;)V

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/ah;->UK:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/vx;->c(IJ)V

    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/google/android/gms/drive/internal/ah;->UL:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/vx;->c(IJ)V

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/vy;->writeTo(Lcom/google/android/gms/internal/vx;)V

    return-void
.end method
