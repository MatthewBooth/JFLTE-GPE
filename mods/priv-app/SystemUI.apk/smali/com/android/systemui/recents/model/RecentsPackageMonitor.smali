.class public Lcom/android/systemui/recents/model/RecentsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "RecentsPackageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;
    }
.end annotation


# instance fields
.field mCb:Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

.field mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field mTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # I
    .param p3    # [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->onPackageModified(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mCb:Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mTasks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v5, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v5, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mCb:Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    invoke-interface {v5, v2}, Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;->onComponentRemoved(Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # I

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mCb:Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mTasks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v4, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mCb:Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    invoke-interface {v4, v1}, Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;->onComponentRemoved(Ljava/util/HashSet;)V

    goto :goto_0
.end method

.method public register(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    new-instance v1, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {v1, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iput-object p2, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mCb:Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method setTasks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/model/Task$TaskKey;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mTasks:Ljava/util/List;

    return-void
.end method

.method public unregister()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iput-object v1, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mCb:Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
