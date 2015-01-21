.class public final Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;
.super Lcom/google/android/gms/internal/vy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogEventKeyValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vy",
        "<",
        "Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile aPL:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;


# instance fields
.field public key:Ljava/lang/String;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/vy;-><init>()V

    invoke-virtual {p0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->clear()Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;
    .locals 2

    sget-object v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->aPL:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/wc;->aPy:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->aPL:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    sput-object v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->aPL:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->aPL:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected c()I
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/vy;->c()I

    move-result v0

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public clear()Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->aPo:Lcom/google/android/gms/internal/wa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->aPz:I

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
    instance-of v1, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->a(Lcom/google/android/gms/internal/vy;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->sP()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public writeTo(Lcom/google/android/gms/internal/vx;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/vx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->key:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->b(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->b(ILjava/lang/String;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/vy;->writeTo(Lcom/google/android/gms/internal/vx;)V

    return-void
.end method
