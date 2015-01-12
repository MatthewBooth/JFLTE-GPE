.class public Lcom/google/android/gms/fitness/data/s;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/Object;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/util/List",
            "<TT;>;)I"
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
