.class Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue$2;
.super Lcom/google/common/collect/AbstractLinkedIterator;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractLinkedIterator",
        "<",
        "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue;Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue$2;->this$0:Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue;

    invoke-direct {p0, p2}, Lcom/google/common/collect/AbstractLinkedIterator;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected computeNext(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;->getNextEvictable()Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue$2;->this$0:Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue;

    iget-object v1, v1, Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue;->head:Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic computeNext(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;

    check-cast p1, Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$EvictionQueue$2;->computeNext(Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/google/common/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    return-object v0
.end method
