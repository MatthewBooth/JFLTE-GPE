.class public final Landroid/speech/srec/MicrophoneInputStream;
.super Ljava/io/InputStream;
.source "MicrophoneInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MicrophoneInputStream"


# instance fields
.field private mAudioRecord:J

.field private mOneByte:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "srec_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 6
    .param p1    # I
    .param p2    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-wide v4, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mOneByte:[B

    invoke-static {p1, p2}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordNew(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    iget-wide v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "AudioRecord constructor failed - busy?"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-wide v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    invoke-static {v2, v3}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordStart(J)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/speech/srec/MicrophoneInputStream;->close()V

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioRecord start failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-void
.end method

.method private static native AudioRecordDelete(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native AudioRecordNew(II)J
.end method

.method private static native AudioRecordRead(J[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native AudioRecordStart(J)I
.end method

.method private static native AudioRecordStop(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    :try_start_0
    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    invoke-static {v0, v1}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordStop(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    invoke-static {v0, v1}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordDelete(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-wide v4, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iput-wide v4, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    iget-wide v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    invoke-static {v2, v3}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordDelete(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iput-wide v4, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    throw v0

    :catchall_2
    move-exception v0

    iput-wide v4, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    throw v0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/speech/srec/MicrophoneInputStream;->close()V

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "someone forgot to close MicrophoneInputStream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-wide v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "not open"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-wide v2, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    iget-object v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mOneByte:[B

    invoke-static {v2, v3, v1, v6, v7}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordRead(J[BII)I

    move-result v0

    if-ne v0, v7, :cond_1

    iget-object v1, p0, Landroid/speech/srec/MicrophoneInputStream;->mOneByte:[B

    aget-byte v1, v1, v6

    and-int/lit16 v1, v1, 0xff

    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public read([B)I
    .locals 4
    .param p1    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {v0, v1, p1, v2, v3}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordRead(J[BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 4
    .param p1    # [B
    .param p2    # I
    .param p3    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Landroid/speech/srec/MicrophoneInputStream;->mAudioRecord:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/speech/srec/MicrophoneInputStream;->AudioRecordRead(J[BII)I

    move-result v0

    return v0
.end method
