.class Lcom/google/android/gms/analytics/q$e;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic yE:Lcom/google/android/gms/analytics/q;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/analytics/q;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/q$e;->yE:Lcom/google/android/gms/analytics/q;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/analytics/q;Lcom/google/android/gms/analytics/q$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/q$e;-><init>(Lcom/google/android/gms/analytics/q;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/q$e;->yE:Lcom/google/android/gms/analytics/q;

    invoke-static {v0}, Lcom/google/android/gms/analytics/q;->d(Lcom/google/android/gms/analytics/q;)V

    return-void
.end method
