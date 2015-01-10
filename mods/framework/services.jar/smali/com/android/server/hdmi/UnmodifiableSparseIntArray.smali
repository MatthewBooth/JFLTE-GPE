.class final Lcom/android/server/hdmi/UnmodifiableSparseIntArray;
.super Ljava/lang/Object;
.source "UnmodifiableSparseIntArray.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImmutableSparseIntArray"


# instance fields
.field private final mArray:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/util/SparseIntArray;)V
    .locals 0
    .param p1    # Landroid/util/SparseIntArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public get(II)I
    .locals 1
    .param p1    # I
    .param p2    # I

    iget-object v0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public indexOfValue(I)I
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    return v0
.end method

.method public keyAt(I)I
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public valueAt(I)I
    .locals 1
    .param p1    # I

    iget-object v0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    return v0
.end method
