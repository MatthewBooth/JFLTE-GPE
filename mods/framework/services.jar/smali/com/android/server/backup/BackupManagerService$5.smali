.class Lcom/android/server/backup/BackupManagerService$5;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/BackupManagerService;->dataChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$targets:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$5;->this$0:Lcom/android/server/backup/BackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$5;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$5;->val$targets:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$5;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$5;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$5;->val$targets:Ljava/util/HashSet;

    # invokes: Lcom/android/server/backup/BackupManagerService;->dataChangedImpl(Ljava/lang/String;Ljava/util/HashSet;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->access$2200(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method
