.class Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;
.super Landroid/database/ContentObserver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProvisionedObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1    # Z

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v1, v2, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/BackupManagerService;->deviceIsProvisioned()Z

    move-result v0

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v3, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v3, v2, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mProvisioned:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-boolean v2, v2, Lcom/android/server/backup/BackupManagerService;->mEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$ProvisionedObserver;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/32 v4, 0x2932e00

    # invokes: Lcom/android/server/backup/BackupManagerService;->startBackupAlarmsLocked(J)V
    invoke-static {v2, v4, v5}, Lcom/android/server/backup/BackupManagerService;->access$000(Lcom/android/server/backup/BackupManagerService;J)V

    :cond_1
    monitor-exit v3

    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
