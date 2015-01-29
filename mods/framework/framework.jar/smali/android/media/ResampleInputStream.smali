.class public final Landroid/media/ResampleInputStream;
.super Ljava/io/InputStream;
.source "ResampleInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResampleInputStream"

.field private static final mFirLength:I = 0x1d


# instance fields
.field private mBuf:[B

.field private mBufCount:I

.field private mInputStream:Ljava/io/InputStream;

.field private final mOneByte:[B

.field private final mRateIn:I

.field private final mRateOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 2
    .param p1    # Ljava/io/InputStream;
    .param p2    # I
    .param p3    # I

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    mul-int/lit8 v0, p3, 0x2

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only support 2:1 at the moment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 p2, 0x2

    const/4 p3, 0x1

    iput-object p1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    iput p2, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    iput p3, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    return-void
.end method

.method private static native fir21([BI[BII)V
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/ResampleInputStream;->close()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "someone forgot to close ResampleInputStream"

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

    iget-object v1, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    invoke-virtual {p0, v1, v2, v3}, Landroid/media/ResampleInputStream;->read([BII)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

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

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/ResampleInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 12
    .param p1    # [B
    .param p2    # I
    .param p3    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, -0x1

    const/4 v11, 0x0

    iget-object v6, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-nez v6, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "not open"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    div-int/lit8 v6, p3, 0x2

    iget v7, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    div-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1d

    mul-int/lit8 v4, v6, 0x2

    iget-object v6, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    if-nez v6, :cond_4

    new-array v6, v4, [B

    iput-object v6, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    :cond_1
    :goto_0
    iget v6, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x1d

    iget v7, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    mul-int/2addr v6, v7

    iget v7, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    div-int/2addr v6, v7

    mul-int/lit8 v1, v6, 0x2

    if-lez v1, :cond_6

    if-ge v1, p3, :cond_5

    move p3, v1

    :goto_1
    iget-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    div-int/lit8 v6, p3, 0x2

    invoke-static {v5, v11, p1, p2, v6}, Landroid/media/ResampleInputStream;->fir21([BI[BII)V

    iget v5, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    mul-int/2addr v5, p3

    iget v6, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    div-int v3, v5, v6

    iget v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    sub-int/2addr v5, v3

    iput v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    iget v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    if-lez v5, :cond_2

    iget-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget-object v6, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v7, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    invoke-static {v5, v3, v6, v11, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_2
    move v5, p3

    :cond_3
    return v5

    :cond_4
    iget-object v6, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    array-length v6, v6

    if-le v4, v6, :cond_1

    new-array v0, v4, [B

    iget-object v6, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v7, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    invoke-static {v6, v11, v0, v11, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    iput-object v0, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    goto :goto_0

    :cond_5
    div-int/lit8 v5, p3, 0x2

    mul-int/lit8 p3, v5, 0x2

    goto :goto_1

    :cond_6
    iget-object v6, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v7, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v8, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    iget-object v9, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    array-length v9, v9

    iget v10, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-eq v2, v5, :cond_3

    iget v6, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    add-int/2addr v6, v2

    iput v6, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    goto :goto_0
.end method
