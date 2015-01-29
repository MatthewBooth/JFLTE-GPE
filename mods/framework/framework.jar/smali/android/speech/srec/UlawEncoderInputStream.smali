.class public final Landroid/speech/srec/UlawEncoderInputStream;
.super Ljava/io/InputStream;
.source "UlawEncoderInputStream.java"


# static fields
.field private static final MAX_ULAW:I = 0x2000

.field private static final SCALE_BITS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "UlawEncoderInputStream"


# instance fields
.field private final mBuf:[B

.field private mBufCount:I

.field private mIn:Ljava/io/InputStream;

.field private mMax:I

.field private final mOneByte:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .param p1    # Ljava/io/InputStream;
    .param p2    # I

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mMax:I

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    iput v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mOneByte:[B

    iput-object p1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    iput p2, p0, Landroid/speech/srec/UlawEncoderInputStream;->mMax:I

    return-void
.end method

.method public static encode([BI[BIII)V
    .locals 8
    .param p0    # [B
    .param p1    # I
    .param p2    # [B
    .param p3    # I
    .param p4    # I
    .param p5    # I

    if-gtz p5, :cond_0

    const/16 p5, 0x2000

    :cond_0
    const/high16 v6, 0x20000000

    div-int v0, v6, p5

    const/4 v1, 0x0

    move v5, p3

    move v3, p1

    :goto_0
    if-ge v1, p4, :cond_14

    add-int/lit8 p1, v3, 0x1

    aget-byte v6, p0, v3

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v3, p1, 0x1

    aget-byte v7, p0, p1

    shl-int/lit8 v7, v7, 0x8

    add-int v2, v6, v7

    mul-int v6, v2, v0

    shr-int/lit8 v2, v6, 0x10

    if-ltz v2, :cond_a

    if-gtz v2, :cond_1

    const/16 v4, 0xff

    :goto_1
    add-int/lit8 p3, v5, 0x1

    int-to-byte v6, v4

    aput-byte v6, p2, v5

    add-int/lit8 v1, v1, 0x1

    move v5, p3

    goto :goto_0

    :cond_1
    const/16 v6, 0x1e

    if-gt v2, v6, :cond_2

    rsub-int/lit8 v6, v2, 0x1e

    shr-int/lit8 v6, v6, 0x1

    add-int/lit16 v4, v6, 0xf0

    goto :goto_1

    :cond_2
    const/16 v6, 0x5e

    if-gt v2, v6, :cond_3

    rsub-int/lit8 v6, v2, 0x5e

    shr-int/lit8 v6, v6, 0x2

    add-int/lit16 v4, v6, 0xe0

    goto :goto_1

    :cond_3
    const/16 v6, 0xde

    if-gt v2, v6, :cond_4

    rsub-int v6, v2, 0xde

    shr-int/lit8 v6, v6, 0x3

    add-int/lit16 v4, v6, 0xd0

    goto :goto_1

    :cond_4
    const/16 v6, 0x1de

    if-gt v2, v6, :cond_5

    rsub-int v6, v2, 0x1de

    shr-int/lit8 v6, v6, 0x4

    add-int/lit16 v4, v6, 0xc0

    goto :goto_1

    :cond_5
    const/16 v6, 0x3de

    if-gt v2, v6, :cond_6

    rsub-int v6, v2, 0x3de

    shr-int/lit8 v6, v6, 0x5

    add-int/lit16 v4, v6, 0xb0

    goto :goto_1

    :cond_6
    const/16 v6, 0x7de

    if-gt v2, v6, :cond_7

    rsub-int v6, v2, 0x7de

    shr-int/lit8 v6, v6, 0x6

    add-int/lit16 v4, v6, 0xa0

    goto :goto_1

    :cond_7
    const/16 v6, 0xfde

    if-gt v2, v6, :cond_8

    rsub-int v6, v2, 0xfde

    shr-int/lit8 v6, v6, 0x7

    add-int/lit16 v4, v6, 0x90

    goto :goto_1

    :cond_8
    const/16 v6, 0x1fde

    if-gt v2, v6, :cond_9

    rsub-int v6, v2, 0x1fde

    shr-int/lit8 v6, v6, 0x8

    add-int/lit16 v4, v6, 0x80

    goto :goto_1

    :cond_9
    const/16 v4, 0x80

    goto :goto_1

    :cond_a
    const/4 v6, -0x1

    if-gt v6, v2, :cond_b

    const/16 v4, 0x7f

    :goto_2
    goto :goto_1

    :cond_b
    const/16 v6, -0x1f

    if-gt v6, v2, :cond_c

    add-int/lit8 v6, v2, 0x1f

    shr-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v6, 0x70

    goto :goto_2

    :cond_c
    const/16 v6, -0x5f

    if-gt v6, v2, :cond_d

    add-int/lit8 v6, v2, 0x5f

    shr-int/lit8 v6, v6, 0x2

    add-int/lit8 v4, v6, 0x60

    goto :goto_2

    :cond_d
    const/16 v6, -0xdf

    if-gt v6, v2, :cond_e

    add-int/lit16 v6, v2, 0xdf

    shr-int/lit8 v6, v6, 0x3

    add-int/lit8 v4, v6, 0x50

    goto :goto_2

    :cond_e
    const/16 v6, -0x1df

    if-gt v6, v2, :cond_f

    add-int/lit16 v6, v2, 0x1df

    shr-int/lit8 v6, v6, 0x4

    add-int/lit8 v4, v6, 0x40

    goto :goto_2

    :cond_f
    const/16 v6, -0x3df

    if-gt v6, v2, :cond_10

    add-int/lit16 v6, v2, 0x3df

    shr-int/lit8 v6, v6, 0x5

    add-int/lit8 v4, v6, 0x30

    goto :goto_2

    :cond_10
    const/16 v6, -0x7df

    if-gt v6, v2, :cond_11

    add-int/lit16 v6, v2, 0x7df

    shr-int/lit8 v6, v6, 0x6

    add-int/lit8 v4, v6, 0x20

    goto :goto_2

    :cond_11
    const/16 v6, -0xfdf

    if-gt v6, v2, :cond_12

    add-int/lit16 v6, v2, 0xfdf

    shr-int/lit8 v6, v6, 0x7

    add-int/lit8 v4, v6, 0x10

    goto :goto_2

    :cond_12
    const/16 v6, -0x1fdf

    if-gt v6, v2, :cond_13

    add-int/lit16 v6, v2, 0x1fdf

    shr-int/lit8 v6, v6, 0x8

    add-int/lit8 v4, v6, 0x0

    goto :goto_2

    :cond_13
    const/4 v4, 0x0

    goto :goto_2

    :cond_14
    return-void
.end method

.method public static maxAbsPcm([BII)I
    .locals 6
    .param p0    # [B
    .param p1    # I
    .param p2    # I

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v2, p1

    :goto_0
    if-ge v0, p2, :cond_2

    add-int/lit8 p1, v2, 0x1

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v2, p1, 0x1

    aget-byte v5, p0, p1

    shl-int/lit8 v5, v5, 0x8

    add-int v3, v4, v5

    if-gez v3, :cond_0

    neg-int v3, v3

    :cond_0
    if-le v3, v1, :cond_1

    move v1, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, -0x1

    iget-object v2, p0, Landroid/speech/srec/UlawEncoderInputStream;->mOneByte:[B

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v4, v3}, Landroid/speech/srec/UlawEncoderInputStream;->read([BII)I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mOneByte:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

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

    invoke-virtual {p0, p1, v0, v1}, Landroid/speech/srec/UlawEncoderInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 9
    .param p1    # [B
    .param p2    # I
    .param p3    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    add-int/2addr v1, v4

    iput v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    :cond_1
    iget v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    iget-object v2, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    iget v3, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    mul-int/lit8 v5, p3, 0x2

    iget-object v7, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    array-length v7, v7

    iget v8, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    sub-int/2addr v7, v8

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1, v2, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v0, :cond_0

    :goto_0
    return v0

    :cond_2
    iget v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    const/4 v1, 0x0

    iget v5, p0, Landroid/speech/srec/UlawEncoderInputStream;->mMax:I

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroid/speech/srec/UlawEncoderInputStream;->encode([BI[BIII)V

    iget v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    mul-int/lit8 v1, v4, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    const/4 v6, 0x0

    :goto_1
    iget v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    if-ge v6, v0, :cond_3

    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    mul-int/lit8 v2, v4, 0x2

    add-int/2addr v2, v6

    aget-byte v1, v1, v2

    aput-byte v1, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_0
.end method
