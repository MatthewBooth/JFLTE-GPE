.class Lcom/google/android/gms/analytics/ag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/i;


# instance fields
.field BA:Ljava/lang/String;

.field BB:D

.field BC:I

.field BD:I

.field BE:I

.field BF:I

.field BG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/analytics/ag;->BB:D

    iput v2, p0, Lcom/google/android/gms/analytics/ag;->BC:I

    iput v2, p0, Lcom/google/android/gms/analytics/ag;->BD:I

    iput v2, p0, Lcom/google/android/gms/analytics/ag;->BE:I

    iput v2, p0, Lcom/google/android/gms/analytics/ag;->BF:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/ag;->BG:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public al(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/ag;->BG:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public eU()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/ag;->BA:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public eV()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/analytics/ag;->BB:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public eW()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/ag;->BB:D

    return-wide v0
.end method

.method public eX()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/ag;->BC:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public eY()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/analytics/ag;->BD:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public eZ()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/ag;->BD:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fa()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/analytics/ag;->BE:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fb()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/ag;->BE:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fc()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/ag;->BF:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSessionTimeout()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/ag;->BC:I

    return v0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/ag;->BA:Ljava/lang/String;

    return-object v0
.end method

.method public k(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/ag;->al(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
