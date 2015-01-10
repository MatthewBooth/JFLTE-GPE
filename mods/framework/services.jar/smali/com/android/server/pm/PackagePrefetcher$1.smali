.class Lcom/android/server/pm/PackagePrefetcher$1;
.super Ljava/lang/Object;
.source "PackagePrefetcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackagePrefetcher;->startPrefetch(Ljava/io/File;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackagePrefetcher;

.field final synthetic val$appDir:Ljava/io/File;

.field final synthetic val$end:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackagePrefetcher;Ljava/io/File;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PackagePrefetcher$1;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    iput-object p2, p0, Lcom/android/server/pm/PackagePrefetcher$1;->val$appDir:Ljava/io/File;

    iput p3, p0, Lcom/android/server/pm/PackagePrefetcher$1;->val$start:I

    iput p4, p0, Lcom/android/server/pm/PackagePrefetcher$1;->val$end:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    iget-object v9, p0, Lcom/android/server/pm/PackagePrefetcher$1;->val$appDir:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v9, p0, Lcom/android/server/pm/PackagePrefetcher$1;->val$appDir:Ljava/io/File;

    invoke-static {v9}, Lcom/android/server/pm/PackageManagerService;->isSystemDir(Ljava/io/File;)Z

    move-result v8

    :try_start_0
    iget v4, p0, Lcom/android/server/pm/PackagePrefetcher$1;->val$start:I

    :goto_0
    iget v9, p0, Lcom/android/server/pm/PackagePrefetcher$1;->val$end:I

    if-ge v4, v9, :cond_0

    iget-object v9, p0, Lcom/android/server/pm/PackagePrefetcher$1;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    # getter for: Lcom/android/server/pm/PackagePrefetcher;->mScanFinished:Z
    invoke-static {v9}, Lcom/android/server/pm/PackagePrefetcher;->access$000(Lcom/android/server/pm/PackagePrefetcher;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "PackagePrefetcher"

    const-string v10, "PREFETCH"

    const-string v11, "main thread finish scanning packages"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    const-string v9, "PackagePrefetcher"

    const-string v10, "PREFETCH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "finish prefetch from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/pm/PackagePrefetcher$1;->val$start:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/pm/PackagePrefetcher$1;->val$end:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_1
    aget-object v9, v0, v4

    invoke-static {v9}, Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v8, :cond_4

    aget-object v9, v0, v4

    invoke-static {v9}, Lcom/android/server/pm/PackageManagerService;->isSkippingApk(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_4
    new-instance v2, Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/pm/PackagePrefetcher$1;->val$appDir:Ljava/io/File;

    aget-object v10, v0, v4

    invoke-direct {v2, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Landroid/content/pm/PackageParser;

    invoke-direct {v7}, Landroid/content/pm/PackageParser;-><init>()V

    iget-object v9, p0, Lcom/android/server/pm/PackagePrefetcher$1;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    # getter for: Lcom/android/server/pm/PackagePrefetcher;->nSeparateProcessesInner:[Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/pm/PackagePrefetcher;->access$100(Lcom/android/server/pm/PackagePrefetcher;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/pm/PackagePrefetcher$1;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    # getter for: Lcom/android/server/pm/PackagePrefetcher;->mParseFlags:I
    invoke-static {v9}, Lcom/android/server/pm/PackagePrefetcher;->access$200(Lcom/android/server/pm/PackagePrefetcher;)I

    move-result v9

    invoke-virtual {v7, v2, v9}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/pm/PackagePrefetcher$1;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    # invokes: Lcom/android/server/pm/PackagePrefetcher;->preCollectCert(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;
    invoke-static {v9, v7, v6}, Lcom/android/server/pm/PackagePrefetcher;->access$300(Lcom/android/server/pm/PackagePrefetcher;Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/pm/PackagePrefetcher$PrefetchedPackage;

    move-result-object v5

    iget-object v9, p0, Lcom/android/server/pm/PackagePrefetcher$1;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    # getter for: Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/pm/PackagePrefetcher;->access$400(Lcom/android/server/pm/PackagePrefetcher;)Ljava/util/HashMap;

    move-result-object v10

    monitor-enter v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v9, p0, Lcom/android/server/pm/PackagePrefetcher$1;->this$0:Lcom/android/server/pm/PackagePrefetcher;

    # getter for: Lcom/android/server/pm/PackagePrefetcher;->mPrefetchedPackages:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/pm/PackagePrefetcher;->access$400(Lcom/android/server/pm/PackagePrefetcher;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v10

    goto :goto_2

    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v1

    const-string v9, "PackagePrefetcher"

    const-string v10, "PREFETCH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception while prefetch: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "PackagePrefetcher"

    const-string v10, "PREFETCH"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "give up prefetch : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
