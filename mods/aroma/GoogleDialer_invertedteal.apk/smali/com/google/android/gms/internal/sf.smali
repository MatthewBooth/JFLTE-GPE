.class public Lcom/google/android/gms/internal/sf;
.super Lcom/google/android/gms/internal/sa;

# interfaces
.implements Lcom/google/android/gms/reminders/model/Task;


# direct methods
.method private dc(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/DateTime;
    .locals 4

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/sf;->dd(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/Time;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "year"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->aX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "month"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->aX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "day"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->aX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "period"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->aX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "absolute_time_ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->aX(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/reminders/model/DateTime$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/reminders/model/DateTime$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "year"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/sf;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->setYear(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/DateTime$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "month"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/sf;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->setMonth(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/DateTime$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "day"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/sf;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->setDay(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/DateTime$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->setTime(Lcom/google/android/gms/reminders/model/Time;)Lcom/google/android/gms/reminders/model/DateTime$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "period"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->setPeriod(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/DateTime$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "absolute_time_ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->setAbsoluteTimeMs(Ljava/lang/Long;)Lcom/google/android/gms/reminders/model/DateTime$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/DateTime$Builder;->build()Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private dd(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/Time;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hour"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->aX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "minute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->aX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "second"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->aX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/reminders/model/Time$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/Time$Builder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hour"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Time$Builder;->setHour(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Time$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "minute"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Time$Builder;->setMinute(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Time$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "second"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Time$Builder;->setSecond(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Time$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/Time$Builder;->build()Lcom/google/android/gms/reminders/model/Time;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/sf;->ps()Lcom/google/android/gms/reminders/model/Task;

    move-result-object v0

    return-object v0
.end method

.method public getArchived()Ljava/lang/Boolean;
    .locals 1

    const-string v0, "archived"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getArchivedTimeMs()Ljava/lang/Long;
    .locals 1

    const-string v0, "archived_time_ms"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedTimeMillis()Ljava/lang/Long;
    .locals 1

    const-string v0, "created_time_millis"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDeleted()Ljava/lang/Boolean;
    .locals 1

    const-string v0, "deleted"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDueDate()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 1

    const-string v0, "due_date_"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/sf;->dc(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public getEventDate()Lcom/google/android/gms/reminders/model/DateTime;
    .locals 1

    const-string v0, "event_date_"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/sf;->dc(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lcom/google/android/gms/reminders/model/Location;
    .locals 2

    const-string v0, "lat"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->aX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lng"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->aX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->aX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "radius_meters"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->aX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "location_type"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->aX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "display_address"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->aX(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/reminders/model/Location$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/Location$Builder;-><init>()V

    const-string v1, "lat"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Location$Builder;->setLat(Ljava/lang/Double;)Lcom/google/android/gms/reminders/model/Location$Builder;

    move-result-object v0

    const-string v1, "lng"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getAsDouble(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Location$Builder;->setLng(Ljava/lang/Double;)Lcom/google/android/gms/reminders/model/Location$Builder;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Location$Builder;->setName(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/Location$Builder;

    move-result-object v0

    const-string v1, "radius_meters"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Location$Builder;->setRadiusMeters(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Location$Builder;

    move-result-object v0

    const-string v1, "location_type"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Location$Builder;->setLocationType(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/Location$Builder;

    move-result-object v0

    const-string v1, "display_address"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/Location$Builder;->setDisplayAddress(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/Location$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/Location$Builder;->build()Lcom/google/android/gms/reminders/model/Location;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocationSnoozedUntilMs()Ljava/lang/Long;
    .locals 1

    const-string v0, "location_snoozed_until_ms"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getPinned()Ljava/lang/Boolean;
    .locals 1

    const-string v0, "pinned"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getSnoozed()Ljava/lang/Boolean;
    .locals 1

    const-string v0, "snoozed"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getSnoozedTimeMillis()Ljava/lang/Long;
    .locals 1

    const-string v0, "snoozed_time_millis"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getTaskId()Lcom/google/android/gms/reminders/model/TaskId;
    .locals 2

    new-instance v0, Lcom/google/android/gms/reminders/model/TaskId$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/TaskId$Builder;-><init>()V

    const-string v1, "server_assigned_id"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/TaskId$Builder;->setServerAssignedId(Ljava/lang/Long;)Lcom/google/android/gms/reminders/model/TaskId$Builder;

    move-result-object v0

    const-string v1, "client_assigned_id"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/TaskId$Builder;->setClientAssignedId(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/TaskId$Builder;

    move-result-object v0

    const-string v1, "client_assigned_thread_id"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/TaskId$Builder;->setClientAssignedThreadId(Ljava/lang/String;)Lcom/google/android/gms/reminders/model/TaskId$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/TaskId$Builder;->build()Lcom/google/android/gms/reminders/model/TaskId;

    move-result-object v0

    return-object v0
.end method

.method public getTaskList()Lcom/google/android/gms/reminders/model/TaskList;
    .locals 2

    new-instance v0, Lcom/google/android/gms/reminders/model/TaskList$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/reminders/model/TaskList$Builder;-><init>()V

    const-string v1, "task_list"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/sf;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/reminders/model/TaskList$Builder;->setSystemListId(Ljava/lang/Integer;)Lcom/google/android/gms/reminders/model/TaskList$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/reminders/model/TaskList$Builder;->build()Lcom/google/android/gms/reminders/model/TaskList;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/sf;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ps()Lcom/google/android/gms/reminders/model/Task;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/sn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/sn;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
    .param p2    # I

    new-instance v0, Lcom/google/android/gms/internal/sn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/sn;-><init>(Lcom/google/android/gms/reminders/model/Task;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/sn;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
