.class Landroid/app/AppImportanceMonitor$1;
.super Landroid/app/IProcessObserver$Stub;
.source "AppImportanceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppImportanceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/AppImportanceMonitor;


# direct methods
.method constructor <init>(Landroid/app/AppImportanceMonitor;)V
    .locals 0

    iput-object p1, p0, Landroid/app/AppImportanceMonitor$1;->this$0:Landroid/app/AppImportanceMonitor;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # Z

    return-void
.end method

.method public onProcessDied(II)V
    .locals 4
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Landroid/app/AppImportanceMonitor$1;->this$0:Landroid/app/AppImportanceMonitor;

    iget-object v1, v0, Landroid/app/AppImportanceMonitor;->mApps:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/AppImportanceMonitor$1;->this$0:Landroid/app/AppImportanceMonitor;

    const/16 v2, 0x3e8

    const/4 v3, 0x1

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/app/AppImportanceMonitor;->updateImportanceLocked(IIIZ)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onProcessStateChanged(III)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # I

    iget-object v0, p0, Landroid/app/AppImportanceMonitor$1;->this$0:Landroid/app/AppImportanceMonitor;

    iget-object v1, v0, Landroid/app/AppImportanceMonitor;->mApps:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/app/AppImportanceMonitor$1;->this$0:Landroid/app/AppImportanceMonitor;

    invoke-static {p3}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/app/AppImportanceMonitor;->updateImportanceLocked(IIIZ)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
