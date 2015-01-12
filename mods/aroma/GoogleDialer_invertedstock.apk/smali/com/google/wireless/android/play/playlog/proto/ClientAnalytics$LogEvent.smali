.class public final Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;
.super Lcom/google/android/gms/internal/vy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vy",
        "<",
        "Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public appUsage1P:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

.field public eventCode:I

.field public eventFlowId:I

.field public eventTimeMs:J

.field public exp:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

.field public isUserInitiated:Z

.field public sourceExtension:[B

.field public sourceExtensionJs:[B

.field public sourceExtensionJson:[B

.field public tag:Ljava/lang/String;

.field public testId:Ljava/lang/String;

.field public value:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/vy;-><init>()V

    invoke-virtual {p0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->clear()Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    return-void
.end method


# virtual methods
.method protected c()I
    .locals 7

    invoke-super {p0}, Lcom/google/android/gms/internal/vy;->c()I

    move-result v0

    iget-wide v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventTimeMs:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/vx;->d(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->tag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->tag:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->value:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->value:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    array-length v1, v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_0
    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->value:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->value:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/vx;->c(ILcom/google/android/gms/internal/we;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtension:[B

    sget-object v2, Lcom/google/android/gms/internal/wh;->aPH:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtension:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->exp:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->exp:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->c(ILcom/google/android/gms/internal/we;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtensionJs:[B

    sget-object v2, Lcom/google/android/gms/internal/wh;->aPH:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtensionJs:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->appUsage1P:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->appUsage1P:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->c(ILcom/google/android/gms/internal/we;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-boolean v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->isUserInitiated:Z

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->isUserInitiated:Z

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->c(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventCode:I

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    iget v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventCode:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->z(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventFlowId:I

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventFlowId:I

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->z(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtensionJson:[B

    sget-object v2, Lcom/google/android/gms/internal/wh;->aPH:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtensionJson:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->b(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->testId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->testId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/vx;->j(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    return v0
.end method

.method public clear()Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventTimeMs:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->tag:Ljava/lang/String;

    iput v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventCode:I

    iput v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventFlowId:I

    iput-boolean v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->isUserInitiated:Z

    invoke-static {}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;->emptyArray()[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->value:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    iput-object v3, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->appUsage1P:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    sget-object v0, Lcom/google/android/gms/internal/wh;->aPH:[B

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtension:[B

    sget-object v0, Lcom/google/android/gms/internal/wh;->aPH:[B

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtensionJs:[B

    sget-object v0, Lcom/google/android/gms/internal/wh;->aPH:[B

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtensionJson:[B

    iput-object v3, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->exp:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->testId:Ljava/lang/String;

    iput-object v3, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->aPo:Lcom/google/android/gms/internal/wa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->aPz:I

    return-object p0
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
    instance-of v1, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;

    iget-wide v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventTimeMs:J

    iget-wide v4, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventTimeMs:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->tag:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->tag:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_2
    iget v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventCode:I

    iget v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventCode:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventFlowId:I

    iget v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventFlowId:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->isUserInitiated:Z

    iget-boolean v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->isUserInitiated:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->value:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    iget-object v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->value:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/wc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->appUsage1P:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->appUsage1P:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    if-nez v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtension:[B

    iget-object v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtension:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtensionJs:[B

    iget-object v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtensionJs:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtensionJson:[B

    iget-object v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtensionJson:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->exp:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->exp:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    if-nez v1, :cond_0

    :cond_4
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->testId:Ljava/lang/String;

    if-nez v1, :cond_9

    iget-object v1, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->testId:Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->a(Lcom/google/android/gms/internal/vy;)Z

    move-result v0

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->tag:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->appUsage1P:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    iget-object v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->appUsage1P:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    invoke-virtual {v1, v2}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->exp:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    iget-object v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->exp:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    invoke-virtual {v1, v2}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->testId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->testId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 6

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventTimeMs:J

    iget-wide v4, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventTimeMs:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->tag:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventCode:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventFlowId:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->isUserInitiated:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4cf

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->value:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    invoke-static {v2}, Lcom/google/android/gms/internal/wc;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->appUsage1P:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtension:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtensionJs:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtensionJson:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->exp:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->testId:Ljava/lang/String;

    if-nez v2, :cond_4

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sP()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x4d5

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->appUsage1P:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    invoke-virtual {v0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->exp:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    invoke-virtual {v0}, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;->hashCode()I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->testId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4
.end method

.method public writeTo(Lcom/google/android/gms/internal/vx;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/internal/vx;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventTimeMs:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/vx;->b(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->tag:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->b(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->value:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->value:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    array-length v0, v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->value:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->value:[Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEventKeyValues;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/vx;->a(ILcom/google/android/gms/internal/we;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtension:[B

    sget-object v1, Lcom/google/android/gms/internal/wh;->aPH:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtension:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->a(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->exp:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->exp:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$ActiveExperiments;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->a(ILcom/google/android/gms/internal/we;)V

    :cond_5
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtensionJs:[B

    sget-object v1, Lcom/google/android/gms/internal/wh;->aPH:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtensionJs:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->a(I[B)V

    :cond_6
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->appUsage1P:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->appUsage1P:Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$AppUsage1pLogEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->a(ILcom/google/android/gms/internal/we;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->isUserInitiated:Z

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->isUserInitiated:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->b(IZ)V

    :cond_8
    iget v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventCode:I

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    iget v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventCode:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->x(II)V

    :cond_9
    iget v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventFlowId:I

    if-eqz v0, :cond_a

    const/16 v0, 0xc

    iget v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->eventFlowId:I

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->x(II)V

    :cond_a
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtensionJson:[B

    sget-object v1, Lcom/google/android/gms/internal/wh;->aPH:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->sourceExtensionJson:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->a(I[B)V

    :cond_b
    iget-object v0, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->testId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/google/wireless/android/play/playlog/proto/ClientAnalytics$LogEvent;->testId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/vx;->b(ILjava/lang/String;)V

    :cond_c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/vy;->writeTo(Lcom/google/android/gms/internal/vx;)V

    return-void
.end method
