.class public Landroid/net/SamplingDataTracker;
.super Ljava/lang/Object;
.source "SamplingDataTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SamplingDataTracker$SamplingSnapshot;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "SamplingDataTracker"


# instance fields
.field private final MINIMUM_SAMPLED_PACKETS:I

.field private final MINIMUM_SAMPLING_INTERVAL:I

.field private mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

.field private mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

.field private mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

.field public final mSamplingDataLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    const/16 v0, 0x3a98

    iput v0, p0, Landroid/net/SamplingDataTracker;->MINIMUM_SAMPLING_INTERVAL:I

    const/16 v0, 0x1e

    iput v0, p0, Landroid/net/SamplingDataTracker;->MINIMUM_SAMPLED_PACKETS:I

    return-void
.end method

.method public static getSamplingSnapshots(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/SamplingDataTracker$SamplingSnapshot;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/proc/net/dev"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v7, "[ ]+"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/16 v8, 0x11

    if-lt v7, v8, :cond_0

    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v0, v7, v8

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-eqz v7, :cond_0

    :try_start_2
    new-instance v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;

    invoke-direct {v5}, Landroid/net/SamplingDataTracker$SamplingSnapshot;-><init>()V

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxByteCount:J

    const/4 v7, 0x2

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketCount:J

    const/4 v7, 0x3

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketErrorCount:J

    const/16 v7, 0x9

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxByteCount:J

    const/16 v7, 0xa

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketCount:J

    const/16 v7, 0xb

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketErrorCount:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v5, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTimestamp:J

    invoke-interface {p0, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v7

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    move-object v3, v4

    :cond_3
    :goto_1
    return-void

    :catch_1
    move-exception v1

    const-string v7, "SamplingDataTracker"

    const-string v8, "could not close /proc/net/dev"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    goto :goto_1

    :catch_2
    move-exception v1

    :goto_2
    :try_start_4
    const-string v7, "SamplingDataTracker"

    const-string v8, "could not find /proc/net/dev"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_3

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    const-string v7, "SamplingDataTracker"

    const-string v8, "could not close /proc/net/dev"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_4
    move-exception v1

    :goto_3
    :try_start_6
    const-string v7, "SamplingDataTracker"

    const-string v8, "could not read /proc/net/dev"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_1

    :catch_5
    move-exception v1

    const-string v7, "SamplingDataTracker"

    const-string v8, "could not close /proc/net/dev"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v7

    :goto_4
    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_4
    :goto_5
    throw v7

    :catch_6
    move-exception v1

    const-string v8, "SamplingDataTracker"

    const-string v9, "could not close /proc/net/dev"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception v7

    move-object v3, v4

    goto :goto_4

    :catch_7
    move-exception v1

    move-object v3, v4

    goto :goto_3

    :catch_8
    move-exception v1

    move-object v3, v4

    goto :goto_2
.end method


# virtual methods
.method public getSampleDuration()I
    .locals 6

    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v2, v0, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTimestamp:J

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v4, v0, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTimestamp:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSampleTimestamp()J
    .locals 3

    iget-object v2, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v0, v0, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTimestamp:J

    monitor-exit v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSampledPacketCount()J
    .locals 2

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    invoke-virtual {p0, v0, v1}, Landroid/net/SamplingDataTracker;->getSampledPacketCount(Landroid/net/SamplingDataTracker$SamplingSnapshot;Landroid/net/SamplingDataTracker$SamplingSnapshot;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSampledPacketCount(Landroid/net/SamplingDataTracker$SamplingSnapshot;Landroid/net/SamplingDataTracker$SamplingSnapshot;)J
    .locals 8
    .param p1    # Landroid/net/SamplingDataTracker$SamplingSnapshot;
    .param p2    # Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-wide v4, p2, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketCount:J

    iget-wide v6, p1, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketCount:J

    sub-long v0, v4, v6

    iget-wide v4, p2, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketCount:J

    iget-wide v6, p1, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketCount:J

    sub-long v2, v4, v6

    add-long v4, v0, v2

    :goto_0
    return-wide v4

    :cond_0
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getSampledPacketErrorCount()J
    .locals 6

    iget-object v4, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Landroid/net/SamplingDataTracker;->getSampledRxPacketErrorCount()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/net/SamplingDataTracker;->getSampledTxPacketErrorCount()J

    move-result-wide v2

    add-long v4, v0, v2

    :goto_0
    return-wide v4

    :cond_0
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getSampledRxByteCount()J
    .locals 6

    iget-object v2, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v0, v0, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxByteCount:J

    iget-object v3, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v4, v3, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxByteCount:J

    sub-long/2addr v0, v4

    monitor-exit v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSampledRxPacketCount()J
    .locals 6

    iget-object v2, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v0, v0, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketCount:J

    iget-object v3, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v4, v3, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketCount:J

    sub-long/2addr v0, v4

    monitor-exit v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSampledRxPacketErrorCount()J
    .locals 6

    iget-object v2, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v0, v0, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketErrorCount:J

    iget-object v3, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v4, v3, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mRxPacketErrorCount:J

    sub-long/2addr v0, v4

    monitor-exit v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSampledTxByteCount()J
    .locals 6

    iget-object v2, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v0, v0, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxByteCount:J

    iget-object v3, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v4, v3, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxByteCount:J

    sub-long/2addr v0, v4

    monitor-exit v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSampledTxPacketCount()J
    .locals 6

    iget-object v2, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v0, v0, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketCount:J

    iget-object v3, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v4, v3, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketCount:J

    sub-long/2addr v0, v4

    monitor-exit v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSampledTxPacketErrorCount()J
    .locals 6

    iget-object v2, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v0, v0, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketErrorCount:J

    iget-object v3, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v4, v3, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTxPacketErrorCount:J

    sub-long/2addr v0, v4

    monitor-exit v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetSamplingData()V
    .locals 2

    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/net/SamplingDataTracker;->mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCommonLinkQualityInfoFields(Landroid/net/LinkQualityInfo;)V
    .locals 4
    .param p1    # Landroid/net/LinkQualityInfo;

    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/net/SamplingDataTracker;->getSampleTimestamp()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/LinkQualityInfo;->setLastDataSampleTime(J)V

    invoke-virtual {p0}, Landroid/net/SamplingDataTracker;->getSampleDuration()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/net/LinkQualityInfo;->setDataSampleDuration(I)V

    invoke-virtual {p0}, Landroid/net/SamplingDataTracker;->getSampledPacketCount()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/LinkQualityInfo;->setPacketCount(J)V

    invoke-virtual {p0}, Landroid/net/SamplingDataTracker;->getSampledPacketErrorCount()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/net/LinkQualityInfo;->setPacketErrorCount(J)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 2
    .param p1    # Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Landroid/net/SamplingDataTracker;->mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stopSampling(Landroid/net/SamplingDataTracker$SamplingSnapshot;)V
    .locals 6
    .param p1    # Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-object v1, p0, Landroid/net/SamplingDataTracker;->mSamplingDataLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    if-eqz v0, :cond_0

    iget-wide v2, p1, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTimestamp:J

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iget-wide v4, v0, Landroid/net/SamplingDataTracker$SamplingSnapshot;->mTimestamp:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3a98

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    invoke-virtual {p0, v0, p1}, Landroid/net/SamplingDataTracker;->getSampledPacketCount(Landroid/net/SamplingDataTracker$SamplingSnapshot;Landroid/net/SamplingDataTracker$SamplingSnapshot;)J

    move-result-wide v2

    const-wide/16 v4, 0x1e

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/net/SamplingDataTracker;->mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iput-object v0, p0, Landroid/net/SamplingDataTracker;->mBeginningSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    iput-object p1, p0, Landroid/net/SamplingDataTracker;->mEndingSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/SamplingDataTracker;->mLastSample:Landroid/net/SamplingDataTracker$SamplingSnapshot;

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
