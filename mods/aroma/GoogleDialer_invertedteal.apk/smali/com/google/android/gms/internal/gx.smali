.class public final Lcom/google/android/gms/internal/gx;
.super Ljava/lang/Object;


# direct methods
.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->u(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static u(I)Z
    .locals 1

    const/4 v0, 0x5

    if-ge p0, v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/google/android/gms/internal/gx;->u(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Ads"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
