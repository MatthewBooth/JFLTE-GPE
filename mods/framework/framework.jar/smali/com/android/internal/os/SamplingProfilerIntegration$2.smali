.class final Lcom/android/internal/os/SamplingProfilerIntegration$2;
.super Ljava/lang/Object;
.source "SamplingProfilerIntegration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshot(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$packageInfo:Landroid/content/pm/PackageInfo;

.field final synthetic val$processName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/SamplingProfilerIntegration$2;->val$processName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/os/SamplingProfilerIntegration$2;->val$packageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/SamplingProfilerIntegration$2;->val$processName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/os/SamplingProfilerIntegration$2;->val$packageInfo:Landroid/content/pm/PackageInfo;

    # invokes: Lcom/android/internal/os/SamplingProfilerIntegration;->writeSnapshotFile(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    invoke-static {v0, v1}, Lcom/android/internal/os/SamplingProfilerIntegration;->access$000(Ljava/lang/String;Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    # getter for: Lcom/android/internal/os/SamplingProfilerIntegration;->pending:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v0

    # getter for: Lcom/android/internal/os/SamplingProfilerIntegration;->pending:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
