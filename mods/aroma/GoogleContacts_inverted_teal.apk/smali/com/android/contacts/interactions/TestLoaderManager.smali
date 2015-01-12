.class public Lcom/android/contacts/interactions/TestLoaderManager;
.super Landroid/app/LoaderManager;
.source "TestLoaderManager.java"


# instance fields
.field private mDelegate:Landroid/app/LoaderManager;

.field private final mFinishedLoaders:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/LoaderManager;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mFinishedLoaders:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/interactions/TestLoaderManager;)Ljava/util/HashSet;
    .locals 1
    .param p0    # Lcom/android/contacts/interactions/TestLoaderManager;

    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mFinishedLoaders:Ljava/util/HashSet;

    return-object v0
.end method

.method public static varargs waitForLoaders([Landroid/content/Loader;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Loader",
            "<*>;)V"
        }
    .end annotation

    array-length v7, p0

    new-array v6, v7, [Ljava/lang/Thread;

    const/4 v1, 0x0

    :goto_0
    array-length v7, p0

    if-ge v1, v7, :cond_0

    aget-object v4, p0, v1

    check-cast v4, Landroid/content/AsyncTaskLoader;

    new-instance v7, Lcom/android/contacts/interactions/TestLoaderManager$1;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LoaderWaitingThread"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/android/contacts/interactions/TestLoaderManager$1;-><init>(Ljava/lang/String;Landroid/content/AsyncTaskLoader;)V

    aput-object v7, v6, v1

    aget-object v7, v6, v1

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    :try_start_0
    invoke-virtual {v5}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_2

    :cond_1
    return-void
.end method


# virtual methods
.method public destroyLoader(I)V
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    invoke-virtual {v0, p1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/io/FileDescriptor;
    .param p3    # Ljava/io/PrintWriter;
    .param p4    # [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/LoaderManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getLoader(I)Landroid/content/Loader;
    .locals 1
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    invoke-virtual {v0, p1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .locals 2
    .param p1    # I
    .param p2    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    new-instance v1, Lcom/android/contacts/interactions/TestLoaderManager$2;

    invoke-direct {v1, p0, p3, p1}, Lcom/android/contacts/interactions/TestLoaderManager$2;-><init>(Lcom/android/contacts/interactions/TestLoaderManager;Landroid/app/LoaderManager$LoaderCallbacks;I)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;
    .locals 1
    .param p1    # I
    .param p2    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<TD;>;)",
            "Landroid/content/Loader",
            "<TD;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method public setDelegate(Landroid/app/LoaderManager;)V
    .locals 2
    .param p1    # Landroid/app/LoaderManager;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    if-eq v0, p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TestLoaderManager cannot be shared"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    return-void
.end method

.method varargs declared-synchronized waitForLoaders([I)V
    .locals 8
    .param p1    # [I

    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, p1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget v4, v0, v1

    iget-object v6, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mFinishedLoaders:Ljava/util/HashSet;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/android/contacts/interactions/TestLoaderManager;->mDelegate:Landroid/app/LoaderManager;

    invoke-virtual {v6, v4}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v3

    check-cast v3, Landroid/content/AsyncTaskLoader;

    if-nez v3, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loader does not exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_2
    const/4 v6, 0x0

    :try_start_2
    new-array v6, v6, [Landroid/content/Loader;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/Loader;

    invoke-static {v6}, Lcom/android/contacts/interactions/TestLoaderManager;->waitForLoaders([Landroid/content/Loader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
