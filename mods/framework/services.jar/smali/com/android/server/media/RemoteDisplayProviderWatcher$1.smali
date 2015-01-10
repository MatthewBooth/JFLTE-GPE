.class Lcom/android/server/media/RemoteDisplayProviderWatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "RemoteDisplayProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/RemoteDisplayProviderWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/RemoteDisplayProviderWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    # getter for: Lcom/android/server/media/RemoteDisplayProviderWatcher;->DEBUG:Z
    invoke-static {}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RemoteDisplayProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received package manager broadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    # invokes: Lcom/android/server/media/RemoteDisplayProviderWatcher;->scanPackages()V
    invoke-static {v0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->access$100(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V

    return-void
.end method
