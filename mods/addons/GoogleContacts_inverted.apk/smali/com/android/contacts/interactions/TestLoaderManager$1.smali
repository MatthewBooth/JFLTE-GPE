.class final Lcom/android/contacts/interactions/TestLoaderManager$1;
.super Ljava/lang/Thread;
.source "TestLoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/TestLoaderManager;->waitForLoaders([Landroid/content/Loader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$loader:Landroid/content/AsyncTaskLoader;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/AsyncTaskLoader;)V
    .locals 0
    .param p1    # Ljava/lang/String;

    iput-object p2, p0, Lcom/android/contacts/interactions/TestLoaderManager$1;->val$loader:Landroid/content/AsyncTaskLoader;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/interactions/TestLoaderManager$1;->val$loader:Landroid/content/AsyncTaskLoader;

    invoke-virtual {v1}, Landroid/content/AsyncTaskLoader;->waitForLoader()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "TestLoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while waiting for loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/interactions/TestLoaderManager$1;->val$loader:Landroid/content/AsyncTaskLoader;

    invoke-virtual {v3}, Landroid/content/AsyncTaskLoader;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while waiting for loader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/interactions/TestLoaderManager$1;->val$loader:Landroid/content/AsyncTaskLoader;

    invoke-virtual {v2}, Landroid/content/AsyncTaskLoader;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    goto :goto_0
.end method
