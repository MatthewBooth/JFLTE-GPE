.class Landroid/app/job/JobService$1;
.super Landroid/app/job/IJobService$Stub;
.source "JobService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/job/JobService;


# direct methods
.method constructor <init>(Landroid/app/job/JobService;)V
    .locals 0

    iput-object p1, p0, Landroid/app/job/JobService$1;->this$0:Landroid/app/job/JobService;

    invoke-direct {p0}, Landroid/app/job/IJobService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startJob(Landroid/app/job/JobParameters;)V
    .locals 3
    .param p1    # Landroid/app/job/JobParameters;

    iget-object v1, p0, Landroid/app/job/JobService$1;->this$0:Landroid/app/job/JobService;

    invoke-virtual {v1}, Landroid/app/job/JobService;->ensureHandler()V

    iget-object v1, p0, Landroid/app/job/JobService$1;->this$0:Landroid/app/job/JobService;

    iget-object v1, v1, Landroid/app/job/JobService;->mHandler:Landroid/app/job/JobService$JobHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public stopJob(Landroid/app/job/JobParameters;)V
    .locals 3
    .param p1    # Landroid/app/job/JobParameters;

    iget-object v1, p0, Landroid/app/job/JobService$1;->this$0:Landroid/app/job/JobService;

    invoke-virtual {v1}, Landroid/app/job/JobService;->ensureHandler()V

    iget-object v1, p0, Landroid/app/job/JobService$1;->this$0:Landroid/app/job/JobService;

    iget-object v1, v1, Landroid/app/job/JobService;->mHandler:Landroid/app/job/JobService$JobHandler;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
