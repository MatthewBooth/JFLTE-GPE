.class Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreFileRunnable"
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

.field mSocket:Landroid/os/ParcelFileDescriptor;

.field mToken:I

.field final synthetic this$1:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;Landroid/app/IBackupAgent;Lcom/android/server/backup/BackupManagerService$FileMetadata;Landroid/os/ParcelFileDescriptor;I)V
    .locals 1
    .param p2    # Landroid/app/IBackupAgent;
    .param p3    # Lcom/android/server/backup/BackupManagerService$FileMetadata;
    .param p4    # Landroid/os/ParcelFileDescriptor;
    .param p5    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->this$1:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mAgent:Landroid/app/IBackupAgent;

    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    iput p5, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mToken:I

    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mSocket:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mAgent:Landroid/app/IBackupAgent;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mSocket:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    iget-wide v3, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->size:J

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    iget v5, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->type:I

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    iget-wide v8, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mode:J

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mInfo:Lcom/android/server/backup/BackupManagerService$FileMetadata;

    iget-wide v10, v0, Lcom/android/server/backup/BackupManagerService$FileMetadata;->mtime:J

    iget v12, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->mToken:I

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;->this$1:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v13, v0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface/range {v1 .. v13}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
