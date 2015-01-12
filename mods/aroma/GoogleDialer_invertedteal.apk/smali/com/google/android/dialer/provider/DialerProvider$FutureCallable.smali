.class Lcom/google/android/dialer/provider/DialerProvider$FutureCallable;
.super Ljava/lang/Object;
.source "DialerProvider.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/dialer/provider/DialerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FutureCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<TT;>;"
        }
    .end annotation
.end field

.field private volatile mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/android/dialer/provider/DialerProvider;


# direct methods
.method public constructor <init>(Lcom/google/android/dialer/provider/DialerProvider;Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/dialer/provider/DialerProvider$FutureCallable;->this$0:Lcom/google/android/dialer/provider/DialerProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/dialer/provider/DialerProvider$FutureCallable;->mFuture:Ljava/util/concurrent/FutureTask;

    iput-object p2, p0, Lcom/google/android/dialer/provider/DialerProvider$FutureCallable;->mCallable:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v1, "DialerProvider"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "DialerProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Future called for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/google/android/dialer/provider/DialerProvider$FutureCallable;->mCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/dialer/provider/DialerProvider$FutureCallable;->mFuture:Ljava/util/concurrent/FutureTask;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/dialer/provider/DialerProvider$FutureCallable;->this$0:Lcom/google/android/dialer/provider/DialerProvider;

    # getter for: Lcom/google/android/dialer/provider/DialerProvider;->mActiveTasks:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/google/android/dialer/provider/DialerProvider;->access$100(Lcom/google/android/dialer/provider/DialerProvider;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/google/android/dialer/provider/DialerProvider$FutureCallable;->this$0:Lcom/google/android/dialer/provider/DialerProvider;

    # getter for: Lcom/google/android/dialer/provider/DialerProvider;->mActiveTasks:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/google/android/dialer/provider/DialerProvider;->access$100(Lcom/google/android/dialer/provider/DialerProvider;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/dialer/provider/DialerProvider$FutureCallable;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/dialer/provider/DialerProvider$FutureCallable;->mFuture:Ljava/util/concurrent/FutureTask;

    :cond_1
    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setFuture(Ljava/util/concurrent/FutureTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/FutureTask",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/dialer/provider/DialerProvider$FutureCallable;->mFuture:Ljava/util/concurrent/FutureTask;

    return-void
.end method
