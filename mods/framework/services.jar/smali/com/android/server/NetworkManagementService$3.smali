.class Lcom/android/server/NetworkManagementService$3;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkManagementService;->removeIdleTimer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;

.field final synthetic val$params:Lcom/android/server/NetworkManagementService$IdleTimerParams;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$IdleTimerParams;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/NetworkManagementService$3;->this$0:Lcom/android/server/NetworkManagementService;

    iput-object p2, p0, Lcom/android/server/NetworkManagementService$3;->val$params:Lcom/android/server/NetworkManagementService$IdleTimerParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v1, p0, Lcom/android/server/NetworkManagementService$3;->this$0:Lcom/android/server/NetworkManagementService;

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$3;->val$params:Lcom/android/server/NetworkManagementService$IdleTimerParams;

    iget v2, v0, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    sget v3, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    const/4 v6, 0x0

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IIJZ)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/NetworkManagementService;->access$100(Lcom/android/server/NetworkManagementService;IIJZ)V

    return-void
.end method
