.class public Lcom/android/server/twilight/TwilightState;
.super Ljava/lang/Object;
.source "TwilightState.java"


# instance fields
.field private final mIsNight:Z

.field private final mTodaySunrise:J

.field private final mTodaySunset:J

.field private final mTomorrowSunrise:J

.field private final mYesterdaySunset:J


# direct methods
.method constructor <init>(ZJJJJ)V
    .locals 0
    .param p1    # Z
    .param p2    # J
    .param p4    # J
    .param p6    # J
    .param p8    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/twilight/TwilightState;->mIsNight:Z

    iput-wide p2, p0, Lcom/android/server/twilight/TwilightState;->mYesterdaySunset:J

    iput-wide p4, p0, Lcom/android/server/twilight/TwilightState;->mTodaySunrise:J

    iput-wide p6, p0, Lcom/android/server/twilight/TwilightState;->mTodaySunset:J

    iput-wide p8, p0, Lcom/android/server/twilight/TwilightState;->mTomorrowSunrise:J

    return-void
.end method


# virtual methods
.method public equals(Lcom/android/server/twilight/TwilightState;)Z
    .locals 4
    .param p1    # Lcom/android/server/twilight/TwilightState;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightState;->mIsNight:Z

    iget-boolean v1, p1, Lcom/android/server/twilight/TwilightState;->mIsNight:Z

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mYesterdaySunset:J

    iget-wide v2, p1, Lcom/android/server/twilight/TwilightState;->mYesterdaySunset:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mTodaySunrise:J

    iget-wide v2, p1, Lcom/android/server/twilight/TwilightState;->mTodaySunrise:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mTodaySunset:J

    iget-wide v2, p1, Lcom/android/server/twilight/TwilightState;->mTodaySunset:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mTomorrowSunrise:J

    iget-wide v2, p1, Lcom/android/server/twilight/TwilightState;->mTomorrowSunrise:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;

    instance-of v0, p1, Lcom/android/server/twilight/TwilightState;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/twilight/TwilightState;

    invoke-virtual {p0, p1}, Lcom/android/server/twilight/TwilightState;->equals(Lcom/android/server/twilight/TwilightState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTodaySunrise()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mTodaySunrise:J

    return-wide v0
.end method

.method public getTodaySunset()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mTodaySunset:J

    return-wide v0
.end method

.method public getTomorrowSunrise()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mTomorrowSunrise:J

    return-wide v0
.end method

.method public getYesterdaySunset()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mYesterdaySunset:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNight()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/twilight/TwilightState;->mIsNight:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{TwilightState: isNight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/twilight/TwilightState;->mIsNight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mYesterdaySunset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/twilight/TwilightState;->mYesterdaySunset:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTodaySunrise="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/twilight/TwilightState;->mTodaySunrise:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTodaySunset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/twilight/TwilightState;->mTodaySunset:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTomorrowSunrise="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/twilight/TwilightState;->mTomorrowSunrise:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
