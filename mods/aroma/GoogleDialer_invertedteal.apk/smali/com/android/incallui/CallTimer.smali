.class public Lcom/android/incallui/CallTimer;
.super Landroid/os/Handler;
.source "CallTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallTimer$1;,
        Lcom/android/incallui/CallTimer$CallTimerCallback;
    }
.end annotation


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field private mInternalCallback:Ljava/lang/Runnable;

.field private mInterval:J

.field private mLastReportedTime:J

.field private mRunning:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-wide v0, p0, Lcom/android/incallui/CallTimer;->mInterval:J

    iput-wide v0, p0, Lcom/android/incallui/CallTimer;->mLastReportedTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallTimer;->mRunning:Z

    iput-object p1, p0, Lcom/android/incallui/CallTimer;->mCallback:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/incallui/CallTimer$CallTimerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/CallTimer$CallTimerCallback;-><init>(Lcom/android/incallui/CallTimer;Lcom/android/incallui/CallTimer$1;)V

    iput-object v0, p0, Lcom/android/incallui/CallTimer;->mInternalCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/CallTimer;)V
    .locals 0
    .param p0    # Lcom/android/incallui/CallTimer;

    invoke-direct {p0}, Lcom/android/incallui/CallTimer;->periodicUpdateTimer()V

    return-void
.end method

.method private periodicUpdateTimer()V
    .locals 8

    iget-boolean v4, p0, Lcom/android/incallui/CallTimer;->mRunning:Z

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/incallui/CallTimer;->mLastReportedTime:J

    iget-wide v6, p0, Lcom/android/incallui/CallTimer;->mInterval:J

    add-long v0, v4, v6

    :goto_1
    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    iget-wide v4, p0, Lcom/android/incallui/CallTimer;->mInterval:J

    add-long/2addr v0, v4

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/CallTimer;->mInternalCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/incallui/CallTimer;->postAtTime(Ljava/lang/Runnable;J)Z

    iput-wide v0, p0, Lcom/android/incallui/CallTimer;->mLastReportedTime:J

    iget-object v4, p0, Lcom/android/incallui/CallTimer;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CallTimer;->mInternalCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallTimer;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallTimer;->mRunning:Z

    return-void
.end method

.method public start(J)Z
    .locals 5
    .param p1    # J

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallTimer;->cancel()V

    iput-wide p1, p0, Lcom/android/incallui/CallTimer;->mInterval:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/incallui/CallTimer;->mLastReportedTime:J

    iput-boolean v0, p0, Lcom/android/incallui/CallTimer;->mRunning:Z

    invoke-direct {p0}, Lcom/android/incallui/CallTimer;->periodicUpdateTimer()V

    goto :goto_0
.end method
