.class Lcom/android/server/MountService$MountShutdownLatch;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MountShutdownLatch"
.end annotation


# instance fields
.field private mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mObserver:Landroid/os/storage/IMountShutdownObserver;


# direct methods
.method constructor <init>(Landroid/os/storage/IMountShutdownObserver;I)V
    .locals 1
    .param p1    # Landroid/os/storage/IMountShutdownObserver;
    .param p2    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/MountService$MountShutdownLatch;->mObserver:Landroid/os/storage/IMountShutdownObserver;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/MountService$MountShutdownLatch;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method countDown()V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/MountService$MountShutdownLatch;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/MountService$MountShutdownLatch;->mObserver:Landroid/os/storage/IMountShutdownObserver;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService$MountShutdownLatch;->mObserver:Landroid/os/storage/IMountShutdownObserver;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "MountService"

    const-string v3, "RemoteException when shutting down"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
