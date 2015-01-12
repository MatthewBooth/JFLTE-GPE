.class Lcom/google/android/gms/analytics/GAThread$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/GAThread;->sendHit(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic yY:Ljava/util/Map;

.field final synthetic yZ:Lcom/google/android/gms/analytics/GAThread;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/GAThread;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/GAThread$1;->yZ:Lcom/google/android/gms/analytics/GAThread;

    iput-object p2, p0, Lcom/google/android/gms/analytics/GAThread$1;->yY:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAThread$1;->yZ:Lcom/google/android/gms/analytics/GAThread;

    iget-object v1, p0, Lcom/google/android/gms/analytics/GAThread$1;->yY:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/GAThread;->a(Lcom/google/android/gms/analytics/GAThread;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAThread$1;->yY:Ljava/util/Map;

    const-string v1, "&cid"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAThread$1;->yY:Ljava/util/Map;

    const-string v1, "&cid"

    invoke-static {}, Lcom/google/android/gms/analytics/h;->dM()Lcom/google/android/gms/analytics/h;

    move-result-object v2

    const-string v3, "&cid"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/h;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/GAThread$1;->yZ:Lcom/google/android/gms/analytics/GAThread;

    invoke-static {v0}, Lcom/google/android/gms/analytics/GAThread;->a(Lcom/google/android/gms/analytics/GAThread;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getAppOptOut()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAThread$1;->yZ:Lcom/google/android/gms/analytics/GAThread;

    iget-object v1, p0, Lcom/google/android/gms/analytics/GAThread$1;->yY:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/GAThread;->b(Lcom/google/android/gms/analytics/GAThread;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/GAThread$1;->yZ:Lcom/google/android/gms/analytics/GAThread;

    invoke-static {v0}, Lcom/google/android/gms/analytics/GAThread;->b(Lcom/google/android/gms/analytics/GAThread;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/analytics/r;->ek()Lcom/google/android/gms/analytics/r;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/r;->B(Z)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAThread$1;->yY:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/analytics/GAThread$1;->yZ:Lcom/google/android/gms/analytics/GAThread;

    invoke-static {v2}, Lcom/google/android/gms/analytics/GAThread;->b(Lcom/google/android/gms/analytics/GAThread;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->setCampaignParamsFromUrl(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$HitBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/google/android/gms/analytics/r;->ek()Lcom/google/android/gms/analytics/r;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/r;->B(Z)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAThread$1;->yZ:Lcom/google/android/gms/analytics/GAThread;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/GAThread;->a(Lcom/google/android/gms/analytics/GAThread;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/analytics/GAThread$1;->yZ:Lcom/google/android/gms/analytics/GAThread;

    iget-object v1, p0, Lcom/google/android/gms/analytics/GAThread$1;->yY:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/android/gms/analytics/GAThread;->c(Lcom/google/android/gms/analytics/GAThread;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAThread$1;->yY:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/android/gms/analytics/v;->y(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/analytics/GAThread$1;->yZ:Lcom/google/android/gms/analytics/GAThread;

    invoke-static {v0}, Lcom/google/android/gms/analytics/GAThread;->d(Lcom/google/android/gms/analytics/GAThread;)Lcom/google/android/gms/analytics/ad;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/GAThread$1;->yY:Ljava/util/Map;

    const-string v3, "&ht"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/gms/analytics/GAThread$1;->yZ:Lcom/google/android/gms/analytics/GAThread;

    iget-object v5, p0, Lcom/google/android/gms/analytics/GAThread$1;->yY:Ljava/util/Map;

    invoke-static {v4, v5}, Lcom/google/android/gms/analytics/GAThread;->d(Lcom/google/android/gms/analytics/GAThread;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/analytics/GAThread$1;->yZ:Lcom/google/android/gms/analytics/GAThread;

    invoke-static {v5}, Lcom/google/android/gms/analytics/GAThread;->c(Lcom/google/android/gms/analytics/GAThread;)Ljava/util/List;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/analytics/ad;->b(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    goto :goto_0
.end method
