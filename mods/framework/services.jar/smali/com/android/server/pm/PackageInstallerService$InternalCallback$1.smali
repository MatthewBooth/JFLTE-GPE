.class Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;
.super Ljava/lang/Object;
.source "PackageInstallerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field final synthetic val$session:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Lcom/android/server/pm/PackageInstallerSession;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    # getter for: Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->access$000(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    # getter for: Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->access$000(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    iget v3, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    # getter for: Lcom/android/server/pm/PackageInstallerService;->mHistoricalSessions:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->access$800(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    iget v3, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->val$session:Lcom/android/server/pm/PackageInstallerSession;

    iget v3, v3, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    # invokes: Lcom/android/server/pm/PackageInstallerService;->buildAppIconFile(I)Ljava/io/File;
    invoke-static {v1, v3}, Lcom/android/server/pm/PackageInstallerService;->access$900(Lcom/android/server/pm/PackageInstallerService;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;->this$1:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->this$0:Lcom/android/server/pm/PackageInstallerService;

    # invokes: Lcom/android/server/pm/PackageInstallerService;->writeSessionsLocked()V
    invoke-static {v1}, Lcom/android/server/pm/PackageInstallerService;->access$100(Lcom/android/server/pm/PackageInstallerService;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
