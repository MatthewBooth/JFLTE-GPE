.class public Landroid/app/usage/TimeSparseArray;
.super Landroid/util/LongSparseArray;
.source "TimeSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/util/LongSparseArray",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/LongSparseArray;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1    # I

    invoke-direct {p0, p1}, Landroid/util/LongSparseArray;-><init>(I)V

    return-void
.end method


# virtual methods
.method public closestIndexOnOrAfter(J)I
    .locals 7
    .param p1    # J

    invoke-virtual {p0}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v5

    const/4 v1, 0x0

    add-int/lit8 v0, v5, -0x1

    const/4 v4, -0x1

    const-wide/16 v2, -0x1

    :goto_0
    if-gt v1, v0, :cond_3

    sub-int v6, v0, v1

    div-int/lit8 v6, v6, 0x2

    add-int v4, v1, v6

    invoke-virtual {p0, v4}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v2

    cmp-long v6, p1, v2

    if-lez v6, :cond_0

    add-int/lit8 v1, v4, 0x1

    goto :goto_0

    :cond_0
    cmp-long v6, p1, v2

    if-gez v6, :cond_1

    add-int/lit8 v0, v4, -0x1

    goto :goto_0

    :cond_1
    move v1, v4

    :cond_2
    :goto_1
    return v1

    :cond_3
    cmp-long v6, p1, v2

    if-gez v6, :cond_4

    move v1, v4

    goto :goto_1

    :cond_4
    cmp-long v6, p1, v2

    if-lez v6, :cond_5

    if-lt v1, v5, :cond_2

    :cond_5
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public closestIndexOnOrBefore(J)I
    .locals 5
    .param p1    # J

    invoke-virtual {p0, p1, p2}, Landroid/app/usage/TimeSparseArray;->closestIndexOnOrAfter(J)I

    move-result v0

    if-gez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, v0}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
