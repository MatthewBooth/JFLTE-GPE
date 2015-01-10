.class public Lcom/android/server/notification/NotificationUsageStats$Aggregate;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aggregate"
.end annotation


# instance fields
.field avg:D

.field numSamples:J

.field sum2:D

.field var:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addSample(J)V
    .locals 13
    .param p1    # J

    const-wide/16 v10, 0x1

    const-wide/high16 v2, 0x3ff0000000000000L

    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    long-to-double v4, v6

    long-to-double v6, p1

    iget-wide v8, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    sub-double v0, v6, v8

    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    div-double v8, v2, v4

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->sum2:D

    sub-double v8, v4, v2

    div-double/2addr v8, v4

    mul-double/2addr v8, v0

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->sum2:D

    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_0

    :goto_0
    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->sum2:D

    div-double/2addr v6, v2

    iput-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->var:D

    return-void

    :cond_0
    sub-double v2, v4, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Aggregate{numSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->numSamples:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->avg:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", var="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats$Aggregate;->var:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
