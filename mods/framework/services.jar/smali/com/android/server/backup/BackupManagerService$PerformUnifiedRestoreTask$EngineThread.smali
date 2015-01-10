.class Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EngineThread"
.end annotation


# instance fields
.field mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

.field mEngineStream:Ljava/io/FileInputStream;

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;Landroid/os/ParcelFileDescriptor;)V
    .locals 2
    .param p2    # Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;
    .param p3    # Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->this$1:Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setRunning(Z)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->isRunning()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngineStream:Ljava/io/FileInputStream;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->restoreOneFile(Ljava/io/InputStream;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public waitForResult()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformUnifiedRestoreTask$EngineThread;->mEngine:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-virtual {v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->waitForResult()I

    move-result v0

    return v0
.end method
