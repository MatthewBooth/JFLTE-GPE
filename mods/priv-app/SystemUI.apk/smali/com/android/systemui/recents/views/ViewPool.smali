.class public Lcom/android/systemui/recents/views/ViewPool;
.super Ljava/lang/Object;
.source "ViewPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TV;>;"
        }
    .end annotation
.end field

.field mViewCreator:Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer",
            "<TV;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer",
            "<TV;TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/android/systemui/recents/views/ViewPool;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/recents/views/ViewPool;->mViewCreator:Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;

    return-void
.end method


# virtual methods
.method pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TV;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/systemui/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/views/ViewPool;->mViewCreator:Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;

    iget-object v5, p0, Lcom/android/systemui/recents/views/ViewPool;->mContext:Landroid/content/Context;

    invoke-interface {v4, v5}, Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;->createView(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/ViewPool;->mViewCreator:Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;

    invoke-interface {v4, v2, p2, v0}, Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;->prepareViewToLeavePool(Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-object v2

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/views/ViewPool;->mViewCreator:Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;

    invoke-interface {v4, v3, p1}, Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;->hasPreferredData(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v3

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_3
    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method returnViewToPool(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/views/ViewPool;->mViewCreator:Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;

    invoke-interface {v0, p1}, Lcom/android/systemui/recents/views/ViewPool$ViewPoolConsumer;->prepareViewToEnterPool(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/ViewPool;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    return-void
.end method
