.class public abstract Lcom/android/server/notification/RankingReconsideration;
.super Ljava/lang/Object;
.source "RankingReconsideration.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final CANCELLED:I = 0x3

.field private static final DONE:I = 0x2

.field private static final IMMEDIATE:J = 0x0L

.field private static final RUNNING:I = 0x1

.field private static final START:I


# instance fields
.field private mDelay:J

.field protected mKey:Ljava/lang/String;

.field private mState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/notification/RankingReconsideration;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/server/notification/RankingReconsideration;->mDelay:J

    iput-object p1, p0, Lcom/android/server/notification/RankingReconsideration;->mKey:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    return-void
.end method


# virtual methods
.method public abstract applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
.end method

.method public cancel(Z)Z
    .locals 1
    .param p1    # Z

    iget v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1    # Ljava/util/concurrent/TimeUnit;

    iget-wide v0, p0, Lcom/android/server/notification/RankingReconsideration;->mDelay:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/RankingReconsideration;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 2

    iget v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDone()Z
    .locals 2

    iget v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    iget v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    invoke-virtual {p0}, Lcom/android/server/notification/RankingReconsideration;->work()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract work()V
.end method
