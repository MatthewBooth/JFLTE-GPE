.class public Lcom/google/android/gms/analytics/Tracker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/Tracker$a;
    }
.end annotation


# instance fields
.field private final Bk:Lcom/google/android/gms/analytics/TrackerHandler;

.field private Bl:Lcom/google/android/gms/analytics/aa;

.field private final Bm:Lcom/google/android/gms/analytics/h;

.field private final Bn:Lcom/google/android/gms/analytics/ab;

.field private final Bo:Lcom/google/android/gms/analytics/g;

.field private Bp:Z

.field private Bq:Lcom/google/android/gms/analytics/Tracker$a;

.field private Br:Lcom/google/android/gms/analytics/ag;

.field private Bs:Lcom/google/android/gms/analytics/ExceptionReporter;

.field private mContext:Landroid/content/Context;

.field private final qN:Ljava/util/Map;
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
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/analytics/TrackerHandler;Landroid/content/Context;)V
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/gms/analytics/TrackerHandler;
    .param p3    # Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/analytics/h;->dM()Lcom/google/android/gms/analytics/h;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/analytics/ab;->eL()Lcom/google/android/gms/analytics/ab;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/analytics/g;->dL()Lcom/google/android/gms/analytics/g;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/analytics/w;

    const-string v0, "tracking"

    invoke-direct {v6, v0}, Lcom/google/android/gms/analytics/w;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/analytics/Tracker;-><init>(Ljava/lang/String;Lcom/google/android/gms/analytics/TrackerHandler;Lcom/google/android/gms/analytics/h;Lcom/google/android/gms/analytics/ab;Lcom/google/android/gms/analytics/g;Lcom/google/android/gms/analytics/aa;Landroid/content/Context;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/analytics/TrackerHandler;Lcom/google/android/gms/analytics/h;Lcom/google/android/gms/analytics/ab;Lcom/google/android/gms/analytics/g;Lcom/google/android/gms/analytics/aa;Landroid/content/Context;)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/google/android/gms/analytics/TrackerHandler;
    .param p3    # Lcom/google/android/gms/analytics/h;
    .param p4    # Lcom/google/android/gms/analytics/ab;
    .param p5    # Lcom/google/android/gms/analytics/g;
    .param p6    # Lcom/google/android/gms/analytics/aa;
    .param p7    # Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->qN:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/gms/analytics/Tracker;->Bk:Lcom/google/android/gms/analytics/TrackerHandler;

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->mContext:Landroid/content/Context;

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->qN:Ljava/util/Map;

    const-string v1, "&tid"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->qN:Ljava/util/Map;

    const-string v1, "useSecure"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/analytics/Tracker;->Bm:Lcom/google/android/gms/analytics/h;

    iput-object p4, p0, Lcom/google/android/gms/analytics/Tracker;->Bn:Lcom/google/android/gms/analytics/ab;

    iput-object p5, p0, Lcom/google/android/gms/analytics/Tracker;->Bo:Lcom/google/android/gms/analytics/g;

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->qN:Ljava/util/Map;

    const-string v1, "&a"

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p6, p0, Lcom/google/android/gms/analytics/Tracker;->Bl:Lcom/google/android/gms/analytics/aa;

    new-instance v0, Lcom/google/android/gms/analytics/Tracker$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/Tracker$a;-><init>(Lcom/google/android/gms/analytics/Tracker;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Bq:Lcom/google/android/gms/analytics/Tracker$a;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/Tracker$a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Bq:Lcom/google/android/gms/analytics/Tracker$a;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/analytics/Tracker;)Lcom/google/android/gms/analytics/ag;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Br:Lcom/google/android/gms/analytics/ag;

    return-object v0
.end method


# virtual methods
.method a(Lcom/google/android/gms/analytics/ag;)V
    .locals 4

    const-string v0, "Loading Tracker config values."

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->v(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/Tracker;->Br:Lcom/google/android/gms/analytics/ag;

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Br:Lcom/google/android/gms/analytics/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ag;->eU()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Br:Lcom/google/android/gms/analytics/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ag;->getTrackingId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&tid"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Tracker] trackingId loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->v(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Br:Lcom/google/android/gms/analytics/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ag;->eV()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Br:Lcom/google/android/gms/analytics/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ag;->eW()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&sf"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Tracker] sample frequency loaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->v(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Br:Lcom/google/android/gms/analytics/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ag;->eX()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Br:Lcom/google/android/gms/analytics/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ag;->getSessionTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->setSessionTimeout(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Tracker] session timeout loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->eO()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->v(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Br:Lcom/google/android/gms/analytics/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ag;->eY()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Br:Lcom/google/android/gms/analytics/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ag;->eZ()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->enableAutoActivityTracking(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Tracker] auto activity tracking loaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/Tracker;->eP()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->v(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Br:Lcom/google/android/gms/analytics/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ag;->fa()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Br:Lcom/google/android/gms/analytics/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ag;->fb()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "&aip"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[Tracker] anonymize ip loaded: true"

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->v(Ljava/lang/String;)V

    :cond_4
    const-string v0, "[Tracker] anonymize ip loaded: false"

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->v(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Br:Lcom/google/android/gms/analytics/ag;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ag;->fc()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/Tracker;->enableExceptionReporting(Z)V

    return-void
.end method

.method eO()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Bq:Lcom/google/android/gms/analytics/Tracker$a;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/Tracker$a;->eO()J

    move-result-wide v0

    return-wide v0
.end method

.method eP()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Bq:Lcom/google/android/gms/analytics/Tracker$a;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/Tracker$a;->eP()Z

    move-result v0

    return v0
.end method

.method public enableAdvertisingIdCollection(Z)V
    .locals 3
    .param p1    # Z

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->qN:Ljava/util/Map;

    const-string v1, "&ate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->qN:Ljava/util/Map;

    const-string v1, "&adid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->qN:Ljava/util/Map;

    const-string v1, "&ate"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->qN:Ljava/util/Map;

    const-string v1, "&ate"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->qN:Ljava/util/Map;

    const-string v1, "&adid"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->qN:Ljava/util/Map;

    const-string v1, "&adid"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public enableAutoActivityTracking(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Bq:Lcom/google/android/gms/analytics/Tracker$a;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/Tracker$a;->enableAutoActivityTracking(Z)V

    return-void
.end method

.method public enableExceptionReporting(Z)V
    .locals 3
    .param p1    # Z

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/Tracker;->Bp:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/analytics/Tracker;->Bp:Z

    if-eqz p1, :cond_1

    new-instance v0, Lcom/google/android/gms/analytics/ExceptionReporter;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/Tracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/analytics/ExceptionReporter;-><init>(Lcom/google/android/gms/analytics/Tracker;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Bs:Lcom/google/android/gms/analytics/ExceptionReporter;

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Bs:Lcom/google/android/gms/analytics/ExceptionReporter;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    const-string v0, "Uncaught exceptions will be reported to Google Analytics."

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Bs:Lcom/google/android/gms/analytics/ExceptionReporter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Bs:Lcom/google/android/gms/analytics/ExceptionReporter;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/ExceptionReporter;->dU()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :goto_1
    const-string v0, "Uncaught exceptions will not be reported to Google Analytics."

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_1
.end method

.method public send(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/android/gms/analytics/r;->ek()Lcom/google/android/gms/analytics/r;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/analytics/r$a;->zp:Lcom/google/android/gms/analytics/r$a;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/r;->a(Lcom/google/android/gms/analytics/r$a;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->qN:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    if-eqz p1, :cond_0

    invoke-interface {v2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    const-string v0, "&tid"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Missing tracking id (%s) parameter."

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "&tid"

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->w(Ljava/lang/String;)V

    :cond_1
    const-string v0, "&t"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "Missing hit type (%s) parameter."

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "&t"

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->w(Ljava/lang/String;)V

    const-string v0, ""

    :cond_2
    iget-object v3, p0, Lcom/google/android/gms/analytics/Tracker;->Bq:Lcom/google/android/gms/analytics/Tracker$a;

    invoke-virtual {v3}, Lcom/google/android/gms/analytics/Tracker$a;->eQ()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "&sc"

    const-string v4, "start"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v0, "screenview"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pageview"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "appview"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->qN:Ljava/util/Map;

    const-string v4, "&a"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const v4, 0x7fffffff

    if-lt v0, v4, :cond_5

    move v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/analytics/Tracker;->qN:Ljava/util/Map;

    const-string v4, "&a"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v0, "transaction"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "item"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Bl:Lcom/google/android/gms/analytics/aa;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/aa;->eE()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Too many hits sent too quickly, rate limiting invoked."

    invoke-static {v0}, Lcom/google/android/gms/analytics/x;->w(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Bk:Lcom/google/android/gms/analytics/TrackerHandler;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/TrackerHandler;->sendHit(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const-string v0, "Key should be non-null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/analytics/r;->ek()Lcom/google/android/gms/analytics/r;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/r$a;->zo:Lcom/google/android/gms/analytics/r$a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/r;->a(Lcom/google/android/gms/analytics/r$a;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->qN:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setScreenName(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "&cd"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/Tracker;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSessionTimeout(J)V
    .locals 5
    .param p1    # J

    iget-object v0, p0, Lcom/google/android/gms/analytics/Tracker;->Bq:Lcom/google/android/gms/analytics/Tracker$a;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/analytics/Tracker$a;->setSessionTimeout(J)V

    return-void
.end method
