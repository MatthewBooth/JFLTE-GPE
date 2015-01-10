.class Lcom/android/server/backup/BackupManagerService$3;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;

.field final synthetic val$latency:J


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    iput-wide p2, p0, Lcom/android/server/backup/BackupManagerService$3;->val$latency:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$3;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerService$3;->val$latency:J

    invoke-static {v0, v2, v3}, Lcom/android/server/backup/FullBackupJob;->schedule(Landroid/content/Context;J)V

    return-void
.end method
