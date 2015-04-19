.class Lcom/google/android/gms/analytics/q$c;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic yE:Lcom/google/android/gms/analytics/q;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/q$c;->yE:Lcom/google/android/gms/analytics/q;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/q;Lcom/google/android/gms/analytics/q$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/q$c;-><init>(Lcom/google/android/gms/analytics/q;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/q$c;->yE:Lcom/google/android/gms/analytics/q;

    invoke-static {v0}, Lcom/google/android/gms/analytics/q;->b(Lcom/google/android/gms/analytics/q;)Lcom/google/android/gms/analytics/q$a;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/analytics/q$a;->yG:Lcom/google/android/gms/analytics/q$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/q$c;->yE:Lcom/google/android/gms/analytics/q;

    invoke-static {v0}, Lcom/google/android/gms/analytics/q;->c(Lcom/google/android/gms/analytics/q;)V

    :cond_0
    return-void
.end method
