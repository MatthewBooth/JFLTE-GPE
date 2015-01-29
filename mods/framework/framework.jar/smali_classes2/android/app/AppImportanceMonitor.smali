.class public Landroid/app/AppImportanceMonitor;
.super Ljava/lang/Object;
.source "AppImportanceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppImportanceMonitor$AppEntry;
    }
.end annotation


# static fields
.field static final MSG_UPDATE:I = 0x1


# instance fields
.field final mApps:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/app/AppImportanceMonitor$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field final mProcessObserver:Landroid/app/IProcessObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/os/Looper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Landroid/app/AppImportanceMonitor;->mApps:Landroid/util/SparseArray;

    new-instance v4, Landroid/app/AppImportanceMonitor$1;

    invoke-direct {v4, p0}, Landroid/app/AppImportanceMonitor$1;-><init>(Landroid/app/AppImportanceMonitor;)V

    iput-object v4, p0, Landroid/app/AppImportanceMonitor;->mProcessObserver:Landroid/app/IProcessObserver;

    iput-object p1, p0, Landroid/app/AppImportanceMonitor;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/app/AppImportanceMonitor$2;

    invoke-direct {v4, p0, p2}, Landroid/app/AppImportanceMonitor$2;-><init>(Landroid/app/AppImportanceMonitor;Landroid/os/Looper;)V

    iput-object v4, p0, Landroid/app/AppImportanceMonitor;->mHandler:Landroid/os/Handler;

    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    iget-object v5, p0, Landroid/app/AppImportanceMonitor;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/app/AppImportanceMonitor;->updateImportanceLocked(IIIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public getImportance(I)I
    .locals 2
    .param p1    # I

    iget-object v1, p0, Landroid/app/AppImportanceMonitor;->mApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppImportanceMonitor$AppEntry;

    if-nez v0, :cond_0

    const/16 v1, 0x3e8

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/app/AppImportanceMonitor$AppEntry;->importance:I

    goto :goto_0
.end method

.method public onImportanceChanged(III)V
    .locals 0
    .param p1    # I
    .param p2    # I
    .param p3    # I

    return-void
.end method

.method updateImportanceLocked(IIIZ)V
    .locals 3
    .param p1    # I
    .param p2    # I
    .param p3    # I
    .param p4    # Z

    iget-object v1, p0, Landroid/app/AppImportanceMonitor;->mApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppImportanceMonitor$AppEntry;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AppImportanceMonitor$AppEntry;

    invoke-direct {v0, p1}, Landroid/app/AppImportanceMonitor$AppEntry;-><init>(I)V

    iget-object v1, p0, Landroid/app/AppImportanceMonitor;->mApps:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    const/16 v1, 0x3e8

    if-lt p3, v1, :cond_1

    iget-object v1, v0, Landroid/app/AppImportanceMonitor$AppEntry;->procs:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    invoke-virtual {p0, v0, p4}, Landroid/app/AppImportanceMonitor;->updateImportanceLocked(Landroid/app/AppImportanceMonitor$AppEntry;Z)V

    return-void

    :cond_1
    iget-object v1, v0, Landroid/app/AppImportanceMonitor$AppEntry;->procs:Landroid/util/SparseArray;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method updateImportanceLocked(Landroid/app/AppImportanceMonitor$AppEntry;Z)V
    .locals 7
    .param p1    # Landroid/app/AppImportanceMonitor$AppEntry;
    .param p2    # Z

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p1, Landroid/app/AppImportanceMonitor$AppEntry;->procs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p1, Landroid/app/AppImportanceMonitor$AppEntry;->procs:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v3, v0, :cond_0

    move v0, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v4, p1, Landroid/app/AppImportanceMonitor$AppEntry;->importance:I

    if-eq v0, v4, :cond_3

    iget v4, p1, Landroid/app/AppImportanceMonitor$AppEntry;->importance:I

    shl-int/lit8 v4, v4, 0x10

    or-int v2, v0, v4

    iput v0, p1, Landroid/app/AppImportanceMonitor$AppEntry;->importance:I

    const/16 v4, 0x3e8

    if-lt v0, v4, :cond_2

    iget-object v4, p0, Landroid/app/AppImportanceMonitor;->mApps:Landroid/util/SparseArray;

    iget v5, p1, Landroid/app/AppImportanceMonitor$AppEntry;->uid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    if-eqz p2, :cond_3

    iget-object v4, p0, Landroid/app/AppImportanceMonitor;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    iget v6, p1, Landroid/app/AppImportanceMonitor$AppEntry;->uid:I

    invoke-virtual {v4, v5, v6, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void
.end method
