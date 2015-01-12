.class public Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;
.super Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/HitBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExceptionBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/HitBuilders$HitBuilder",
        "<",
        "Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;-><init>()V

    invoke-static {}, Lcom/google/android/gms/analytics/r;->ek()Lcom/google/android/gms/analytics/r;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/r$a;->zL:Lcom/google/android/gms/analytics/r$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/r;->a(Lcom/google/android/gms/analytics/r$a;)V

    const-string v0, "&t"

    const-string v1, "exception"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->build()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "&exd"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method

.method public setFatal(Z)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;
    .locals 2
    .param p1    # Z

    const-string v0, "&exf"

    invoke-static {p1}, Lcom/google/android/gms/analytics/ah;->C(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    return-object p0
.end method
