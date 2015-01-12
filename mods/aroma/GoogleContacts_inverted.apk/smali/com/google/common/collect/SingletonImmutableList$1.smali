.class Lcom/google/common/collect/SingletonImmutableList$1;
.super Lcom/google/common/collect/UnmodifiableListIterator;
.source "SingletonImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/SingletonImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/UnmodifiableListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field hasNext:Z

.field final synthetic this$0:Lcom/google/common/collect/SingletonImmutableList;

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/SingletonImmutableList;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/common/collect/SingletonImmutableList$1;->this$0:Lcom/google/common/collect/SingletonImmutableList;

    iput p2, p0, Lcom/google/common/collect/SingletonImmutableList$1;->val$start:I

    invoke-direct {p0}, Lcom/google/common/collect/UnmodifiableListIterator;-><init>()V

    iget v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->val$start:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->hasNext:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->hasNext:Z

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->hasNext:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->hasNext:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->hasNext:Z

    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->this$0:Lcom/google/common/collect/SingletonImmutableList;

    iget-object v0, v0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->hasNext:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->hasNext:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->hasNext:Z

    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->this$0:Lcom/google/common/collect/SingletonImmutableList;

    iget-object v0, v0, Lcom/google/common/collect/SingletonImmutableList;->element:Ljava/lang/Object;

    return-object v0
.end method

.method public previousIndex()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/common/collect/SingletonImmutableList$1;->hasNext:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
