.class public Lcom/android/phone/SyncQueue;
.super Ljava/util/ArrayList;
.source "SyncQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SyncQueue$SyncRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/phone/SyncQueue$SyncRequest;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public add(ILcom/android/phone/SyncQueue$SyncRequest;)V
    .locals 2
    .param p1    # I
    .param p2    # Lcom/android/phone/SyncQueue$SyncRequest;

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/phone/SyncQueue;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/android/phone/SyncQueue$SyncRequest;->start()V

    :cond_0
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .param p1    # I
    .param p2    # Ljava/lang/Object;

    check-cast p2, Lcom/android/phone/SyncQueue$SyncRequest;

    invoke-virtual {p0, p1, p2}, Lcom/android/phone/SyncQueue;->add(ILcom/android/phone/SyncQueue$SyncRequest;)V

    return-void
.end method

.method public add(Lcom/android/phone/SyncQueue$SyncRequest;)Z
    .locals 3
    .param p1    # Lcom/android/phone/SyncQueue$SyncRequest;

    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/SyncQueue;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/phone/SyncQueue$SyncRequest;->start()V

    :cond_0
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/android/phone/SyncQueue$SyncRequest;

    invoke-virtual {p0, p1}, Lcom/android/phone/SyncQueue;->add(Lcom/android/phone/SyncQueue$SyncRequest;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/phone/SyncQueue$SyncRequest;",
            ">;)Z"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/SyncQueue;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/SyncQueue;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/SyncQueue;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/SyncQueue$SyncRequest;

    invoke-virtual {v1}, Lcom/android/phone/SyncQueue$SyncRequest;->start()V

    :cond_0
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/phone/SyncQueue$SyncRequest;",
            ">;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/phone/SyncQueue;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/SyncQueue;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/SyncQueue;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/SyncQueue$SyncRequest;

    invoke-virtual {v1}, Lcom/android/phone/SyncQueue$SyncRequest;->start()V

    :cond_0
    return v0
.end method
