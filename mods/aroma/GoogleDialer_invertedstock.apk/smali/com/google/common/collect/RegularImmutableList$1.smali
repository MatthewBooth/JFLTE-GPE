.class Lcom/google/common/collect/RegularImmutableList$1;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "RegularImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/RegularImmutableList;->listIterator(I)Lcom/google/common/collect/UnmodifiableListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/RegularImmutableList;


# direct methods
.method constructor <init>(Lcom/google/common/collect/RegularImmutableList;II)V
    .locals 0
    .param p2    # I
    .param p3    # I

    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableList$1;->this$0:Lcom/google/common/collect/RegularImmutableList;

    invoke-direct {p0, p2, p3}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .locals 2
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableList$1;->this$0:Lcom/google/common/collect/RegularImmutableList;

    # getter for: Lcom/google/common/collect/RegularImmutableList;->array:[Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/common/collect/RegularImmutableList;->access$000(Lcom/google/common/collect/RegularImmutableList;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableList$1;->this$0:Lcom/google/common/collect/RegularImmutableList;

    # getter for: Lcom/google/common/collect/RegularImmutableList;->offset:I
    invoke-static {v1}, Lcom/google/common/collect/RegularImmutableList;->access$100(Lcom/google/common/collect/RegularImmutableList;)I

    move-result v1

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
