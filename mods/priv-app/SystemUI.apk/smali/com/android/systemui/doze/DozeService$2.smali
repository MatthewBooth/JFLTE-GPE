.class Lcom/android/systemui/doze/DozeService$2;
.super Lcom/android/systemui/doze/DozeService$ProximityCheck;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/doze/DozeService;->requestPulse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeService;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeService;J)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    iput-wide p2, p0, Lcom/android/systemui/doze/DozeService$2;->val$start:J

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/doze/DozeService$ProximityCheck;-><init>(Lcom/android/systemui/doze/DozeService;Lcom/android/systemui/doze/DozeService$1;)V

    return-void
.end method


# virtual methods
.method public onProximityResult(I)V
    .locals 6
    .param p1    # I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/doze/DozeService$2;->val$start:J

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/android/systemui/doze/DozeLog;->traceProximityResult(ZJ)V

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    # setter for: Lcom/android/systemui/doze/DozeService;->mPulsing:Z
    invoke-static {v2, v1}, Lcom/android/systemui/doze/DozeService;->access$202(Lcom/android/systemui/doze/DozeService;Z)Z

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/android/systemui/doze/DozeService;->access$300(Lcom/android/systemui/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    # getter for: Lcom/android/systemui/doze/DozeService;->mHost:Lcom/android/systemui/doze/DozeHost;
    invoke-static {v1}, Lcom/android/systemui/doze/DozeService;->access$600(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/doze/DozeService$2$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/doze/DozeService$2$1;-><init>(Lcom/android/systemui/doze/DozeService$2;)V

    invoke-interface {v1, v2}, Lcom/android/systemui/doze/DozeHost;->pulseWhileDozing(Lcom/android/systemui/doze/DozeHost$PulseCallback;)V

    goto :goto_1
.end method
