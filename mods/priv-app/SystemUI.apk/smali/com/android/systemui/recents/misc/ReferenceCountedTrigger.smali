.class public Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
.super Ljava/lang/Object;
.source "ReferenceCountedTrigger.java"


# instance fields
.field mContext:Landroid/content/Context;

.field mCount:I

.field mDecrementRunnable:Ljava/lang/Runnable;

.field mErrorRunnable:Ljava/lang/Runnable;

.field mFirstIncRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mIncrementRunnable:Ljava/lang/Runnable;

.field mLastDecRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/Runnable;
    .param p3    # Ljava/lang/Runnable;
    .param p4    # Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$1;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mIncrementRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$2;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mDecrementRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object p4, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mErrorRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public addLastDecrementRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Ljava/lang/Runnable;

    iget v1, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public decrement()V
    .locals 4

    iget v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    iget v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mLastDecRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mErrorRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mErrorRunnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Invalid ref count"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mContext:Landroid/content/Context;

    const-string v3, "Invalid ref count"

    invoke-static {v2, v3}, Lcom/android/systemui/recents/misc/Console;->logError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public decrementAsRunnable()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mDecrementRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public decrementOnAnimationEnd()Landroid/animation/Animator$AnimatorListener;
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger$3;-><init>(Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)V

    return-object v0
.end method

.method public increment()V
    .locals 3

    iget v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mFirstIncRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->mCount:I

    return-void
.end method
