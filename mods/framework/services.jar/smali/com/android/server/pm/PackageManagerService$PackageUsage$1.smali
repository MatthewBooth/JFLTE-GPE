.class Lcom/android/server/pm/PackageManagerService$PackageUsage$1;
.super Ljava/lang/Thread;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$PackageUsage;->write(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$PackageUsage;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$PackageUsage;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;->this$1:Lcom/android/server/pm/PackageManagerService$PackageUsage;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;->this$1:Lcom/android/server/pm/PackageManagerService$PackageUsage;

    # invokes: Lcom/android/server/pm/PackageManagerService$PackageUsage;->writeInternal()V
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->access$300(Lcom/android/server/pm/PackageManagerService$PackageUsage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;->this$1:Lcom/android/server/pm/PackageManagerService$PackageUsage;

    # getter for: Lcom/android/server/pm/PackageManagerService$PackageUsage;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->access$400(Lcom/android/server/pm/PackageManagerService$PackageUsage;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;->this$1:Lcom/android/server/pm/PackageManagerService$PackageUsage;

    # getter for: Lcom/android/server/pm/PackageManagerService$PackageUsage;->mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService$PackageUsage;->access$400(Lcom/android/server/pm/PackageManagerService$PackageUsage;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
