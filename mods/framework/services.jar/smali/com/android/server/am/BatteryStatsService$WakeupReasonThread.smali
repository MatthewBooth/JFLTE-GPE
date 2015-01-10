.class final Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;
.super Ljava/lang/Thread;
.source "BatteryStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "WakeupReasonThread"
.end annotation


# instance fields
.field final mIrqs:[I

.field final mReasons:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 2

    const/16 v1, 0x20

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->this$0:Lcom/android/server/am/BatteryStatsService;

    const-string v0, "BatteryStats_wakeupReason"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mIrqs:[I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mReasons:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mIrqs:[I

    iget-object v4, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mReasons:[Ljava/lang/String;

    # invokes: Lcom/android/server/am/BatteryStatsService;->nativeWaitWakeup([I[Ljava/lang/String;)I
    invoke-static {v3, v4}, Lcom/android/server/am/BatteryStatsService;->access$200([I[Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v4, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v5, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->mReasons:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v3, v5}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakeupReasonLocked(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->this$0:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v3, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-string v5, "unknown"

    invoke-virtual {v3, v5}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakeupReasonLocked(Ljava/lang/String;)V

    :cond_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v3, "BatteryStatsService"

    const-string v4, "Failure reading wakeup reasons"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method
