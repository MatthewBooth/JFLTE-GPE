.class interface abstract Lcom/google/android/gms/analytics/f;
.super Ljava/lang/Object;


# virtual methods
.method public abstract dispatch()V
.end method

.method public abstract getQueue()Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getThread()Ljava/lang/Thread;
.end method

.method public abstract sendHit(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setForceLocalDispatch()V
.end method
