.class public final Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;
.super Lcom/google/android/gms/internal/vy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActiveExperiments"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vy",
        "<",
        "Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;",
        ">;"
    }
.end annotation


# instance fields
.field public clientAlteringExperiment:[Ljava/lang/String;

.field public gwsExperiment:[I

.field public otherExperiment:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/vy;-><init>()V

    invoke-virtual {p0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clear()Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    return-void
.end method


# virtual methods
.method protected c()I
    .locals 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/vy;->c()I

    move-result v4

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_7

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    iget-object v5, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    aget-object v5, v5, v0

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/vx;->eo(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v2, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int v0, v4, v2

    mul-int/lit8 v2, v3, 0x1

    add-int/2addr v0, v2

    :goto_1
    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_4

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_2
    iget-object v5, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    aget-object v5, v5, v2

    if-eqz v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/vx;->eo(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v3, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v0, v3

    mul-int/lit8 v2, v4, 0x1

    add-int/2addr v0, v2

    :cond_4
    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    array-length v2, v2

    if-lez v2, :cond_6

    move v2, v1

    :goto_3
    iget-object v3, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    array-length v3, v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    aget v3, v3, v1

    invoke-static {v3}, Lcom/google/android/gms/internal/vx;->kE(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    :cond_6
    return v0

    :cond_7
    move v0, v4

    goto :goto_1
.end method

.method public clear()Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/wh;->aPF:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/wh;->aPF:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/wh;->aPA:[I

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->aPo:Lcom/google/android/gms/internal/wa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->aPz:I

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/wc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    iget-object v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/wc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    iget-object v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/wc;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->a(Lcom/google/android/gms/internal/vy;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/wc;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/wc;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    invoke-static {v1}, Lcom/google/android/gms/internal/wc;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->sP()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeTo(Lcom/google/android/gms/internal/vx;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/vx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->clientAlteringExperiment:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/vx;->b(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->otherExperiment:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/vx;->b(ILjava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    array-length v0, v0

    if-lez v0, :cond_4

    :goto_2
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    array-length v0, v0

    if-ge v1, v0, :cond_4

    const/4 v0, 0x3

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->gwsExperiment:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/vx;->x(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/vy;->writeTo(Lcom/google/android/gms/internal/vx;)V

    return-void
.end method
