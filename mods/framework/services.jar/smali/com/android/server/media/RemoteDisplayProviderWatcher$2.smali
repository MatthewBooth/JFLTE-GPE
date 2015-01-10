.class Lcom/android/server/media/RemoteDisplayProviderWatcher$2;
.super Ljava/lang/Object;
.source "RemoteDisplayProviderWatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher$2;->this$0:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher$2;->this$0:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    # invokes: Lcom/android/server/media/RemoteDisplayProviderWatcher;->scanPackages()V
    invoke-static {v0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->access$100(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V

    return-void
.end method
