.class Lcom/google/android/gms/analytics/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/i;


# instance fields
.field Ar:Ljava/lang/String;

.field As:I

.field At:I

.field xK:Ljava/lang/String;

.field xL:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/analytics/t;->As:I

    iput v0, p0, Lcom/google/android/gms/analytics/t;->At:I

    return-void
.end method


# virtual methods
.method public eo()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->xK:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ep()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->xK:Ljava/lang/String;

    return-object v0
.end method

.method public eq()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->xL:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public er()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->xL:Ljava/lang/String;

    return-object v0
.end method

.method public es()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->Ar:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public et()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/t;->Ar:Ljava/lang/String;

    return-object v0
.end method

.method public eu()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/t;->As:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ev()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/t;->As:I

    return v0
.end method

.method public ew()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/analytics/t;->At:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ex()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/t;->At:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
