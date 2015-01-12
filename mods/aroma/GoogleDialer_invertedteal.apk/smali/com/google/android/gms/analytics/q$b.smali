.class Lcom/google/android/gms/analytics/q$b;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic yE:Lcom/google/android/gms/analytics/q;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/q$b;->yE:Lcom/google/android/gms/analytics/q;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/q;Lcom/google/android/gms/analytics/q$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/q$b;-><init>(Lcom/google/android/gms/analytics/q;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/q$b;->yE:Lcom/google/android/gms/analytics/q;

    invoke-static {v0}, Lcom/google/android/gms/analytics/q;->b(Lcom/google/android/gms/analytics/q;)Lcom/google/android/gms/analytics/q$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/q$a;->yH:Lcom/google/android/gms/analytics/q$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/q$b;->yE:Lcom/google/android/gms/analytics/q;

    invoke-static {v0}, Lcom/google/android/gms/analytics/q;->e(Lcom/google/android/gms/analytics/q;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/q$b;->yE:Lcom/google/android/gms/analytics/q;

    invoke-static {v0}, Lcom/google/android/gms/analytics/q;->f(Lcom/google/android/gms/analytics/q;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/analytics/q$b;->yE:Lcom/google/android/gms/analytics/q;

    invoke-static {v2}, Lcom/google/android/gms/analytics/q;->g(Lcom/google/android/gms/analytics/q;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/analytics/q$b;->yE:Lcom/google/android/gms/analytics/q;

    invoke-static {v2}, Lcom/google/android/gms/analytics/q;->h(Lcom/google/android/gms/analytics/q;)Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string v0, "Disconnecting due to inactivity"

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/q$b;->yE:Lcom/google/android/gms/analytics/q;

    invoke-static {v0}, Lcom/google/android/gms/analytics/q;->i(Lcom/google/android/gms/analytics/q;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/q$b;->yE:Lcom/google/android/gms/analytics/q;

    invoke-static {v0}, Lcom/google/android/gms/analytics/q;->j(Lcom/google/android/gms/analytics/q;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/q$b;

    iget-object v2, p0, Lcom/google/android/gms/analytics/q$b;->yE:Lcom/google/android/gms/analytics/q;

    invoke-direct {v1, v2}, Lcom/google/android/gms/analytics/q$b;-><init>(Lcom/google/android/gms/analytics/q;)V

    iget-object v2, p0, Lcom/google/android/gms/analytics/q$b;->yE:Lcom/google/android/gms/analytics/q;

    invoke-static {v2}, Lcom/google/android/gms/analytics/q;->g(Lcom/google/android/gms/analytics/q;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method
