.class public final Landroid/media/AmrInputStream;
.super Ljava/io/InputStream;
.source "AmrInputStream.java"


# static fields
.field private static final SAMPLES_PER_FRAME:I = 0xa0

.field private static final TAG:Ljava/lang/String; = "AmrInputStream"


# instance fields
.field private final mBuf:[B

.field private mBufIn:I

.field private mBufOut:I

.field private mGae:J

.field private mInputStream:Ljava/io/InputStream;

.field private mOneByte:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1    # Ljava/io/InputStream;

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x140

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/AmrInputStream;->mBuf:[B

    iput v1, p0, Landroid/media/AmrInputStream;->mBufIn:I

    iput v1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    iput-object p1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-static {}, Landroid/media/AmrInputStream;->GsmAmrEncoderNew()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    invoke-static {v0, v1}, Landroid/media/AmrInputStream;->GsmAmrEncoderInitialize(J)V

    return-void
.end method

.method private static native GsmAmrEncoderCleanup(J)V
.end method

.method private static native GsmAmrEncoderDelete(J)V
.end method

.method private static native GsmAmrEncoderEncode(J[BI[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native GsmAmrEncoderInitialize(J)V
.end method

.method private static native GsmAmrEncoderNew()J
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    :try_start_0
    iget-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :cond_0
    iput-object v1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    :try_start_1
    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    invoke-static {v0, v1}, Landroid/media/AmrInputStream;->GsmAmrEncoderCleanup(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :try_start_2
    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    invoke-static {v0, v1}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    return-void

    :catchall_0
    move-exception v0

    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    invoke-static {v2, v3}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    throw v0

    :catchall_2
    move-exception v0

    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    throw v0

    :catchall_3
    move-exception v0

    iput-object v1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    :try_start_4
    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    invoke-static {v2, v3}, Landroid/media/AmrInputStream;->GsmAmrEncoderCleanup(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :cond_4
    :try_start_5
    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    invoke-static {v2, v3}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_5
    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    throw v0

    :catchall_4
    move-exception v0

    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    throw v0

    :catchall_5
    move-exception v0

    :try_start_6
    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_6

    iget-wide v2, p0, Landroid/media/AmrInputStream;->mGae:J

    invoke-static {v2, v3}, Landroid/media/AmrInputStream;->GsmAmrEncoderDelete(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :cond_6
    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    throw v0

    :catchall_6
    move-exception v0

    iput-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    throw v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/AmrInputStream;->close()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "someone forgot to close AmrInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    invoke-virtual {p0, v1, v2, v3}, Landroid/media/AmrInputStream;->read([BII)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Landroid/media/AmrInputStream;->mOneByte:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/AmrInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 10
    .param p1    # [B
    .param p2    # I
    .param p3    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v3, 0x0

    iget-wide v4, p0, Landroid/media/AmrInputStream;->mGae:J

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    iget v2, p0, Landroid/media/AmrInputStream;->mBufIn:I

    if-lt v1, v2, :cond_3

    iput v3, p0, Landroid/media/AmrInputStream;->mBufOut:I

    iput v3, p0, Landroid/media/AmrInputStream;->mBufIn:I

    const/4 v6, 0x0

    :goto_0
    const/16 v1, 0x140

    if-ge v6, v1, :cond_2

    iget-object v1, p0, Landroid/media/AmrInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v2, p0, Landroid/media/AmrInputStream;->mBuf:[B

    rsub-int v4, v6, 0x140

    invoke-virtual {v1, v2, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ne v7, v0, :cond_1

    :goto_1
    return v0

    :cond_1
    add-int/2addr v6, v7

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Landroid/media/AmrInputStream;->mGae:J

    iget-object v2, p0, Landroid/media/AmrInputStream;->mBuf:[B

    iget-object v4, p0, Landroid/media/AmrInputStream;->mBuf:[B

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/media/AmrInputStream;->GsmAmrEncoderEncode(J[BI[BI)I

    move-result v0

    iput v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    :cond_3
    iget v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    iget v1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    sub-int/2addr v0, v1

    if-le p3, v0, :cond_4

    iget v0, p0, Landroid/media/AmrInputStream;->mBufIn:I

    iget v1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    sub-int p3, v0, v1

    :cond_4
    iget-object v0, p0, Landroid/media/AmrInputStream;->mBuf:[B

    iget v1, p0, Landroid/media/AmrInputStream;->mBufOut:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    iget v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    add-int/2addr v0, p3

    iput v0, p0, Landroid/media/AmrInputStream;->mBufOut:I

    move v0, p3

    goto :goto_1
.end method
