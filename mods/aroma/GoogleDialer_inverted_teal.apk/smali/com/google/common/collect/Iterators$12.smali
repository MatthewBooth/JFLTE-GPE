.class final Lcom/google/common/collect/Iterators$12;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators;->forArray([Ljava/lang/Object;II)Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$array:[Ljava/lang/Object;

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(I[Ljava/lang/Object;I)V
    .locals 0
    .param p1    # I

    iput-object p2, p0, Lcom/google/common/collect/Iterators$12;->val$array:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/common/collect/Iterators$12;->val$offset:I

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .locals 2
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Iterators$12;->val$array:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/Iterators$12;->val$offset:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method
