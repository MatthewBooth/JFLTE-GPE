.class public Lcom/google/android/gms/analytics/x;
.super Ljava/lang/Object;


# static fields
.field private static AR:Lcom/google/android/gms/analytics/GoogleAnalytics;


# direct methods
.method public static e(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/analytics/x;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static eF()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/analytics/x;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/analytics/x;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/analytics/Logger;->getLogLevel()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static getLogger()Lcom/google/android/gms/analytics/Logger;
    .locals 1

    sget-object v0, Lcom/google/android/gms/analytics/x;->AR:Lcom/google/android/gms/analytics/GoogleAnalytics;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/analytics/GoogleAnalytics;->ey()Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/analytics/x;->AR:Lcom/google/android/gms/analytics/GoogleAnalytics;

    :cond_0
    sget-object v0, Lcom/google/android/gms/analytics/x;->AR:Lcom/google/android/gms/analytics/GoogleAnalytics;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/android/gms/analytics/x;->AR:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/analytics/x;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->info(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/analytics/x;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->verbose(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .param p0    # Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/analytics/x;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/analytics/Logger;->warn(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
