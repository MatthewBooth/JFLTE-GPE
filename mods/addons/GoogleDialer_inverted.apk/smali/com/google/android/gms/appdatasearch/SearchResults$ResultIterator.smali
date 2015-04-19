.class public Lcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appdatasearch/SearchResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/android/gms/appdatasearch/SearchResults$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic DC:Lcom/google/android/gms/appdatasearch/SearchResults;

.field private final DE:[Ljava/util/Map;

.field protected mCurIdx:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/appdatasearch/SearchResults;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;->DC:Lcom/google/android/gms/appdatasearch/SearchResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/appdatasearch/SearchResults;->hasError()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;->DE:[Ljava/util/Map;

    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/appdatasearch/SearchResults;->Du:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;->DC:Lcom/google/android/gms/appdatasearch/SearchResults;

    invoke-virtual {v0}, Lcom/google/android/gms/appdatasearch/SearchResults;->hasError()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;->mCurIdx:I

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;->DC:Lcom/google/android/gms/appdatasearch/SearchResults;

    invoke-virtual {v1}, Lcom/google/android/gms/appdatasearch/SearchResults;->getNumResults()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected moveToNext()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;->mCurIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;->mCurIdx:I

    return-void
.end method

.method public next()Lcom/google/android/gms/appdatasearch/SearchResults$Result;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No more results."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/appdatasearch/SearchResults$Result;

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;->DC:Lcom/google/android/gms/appdatasearch/SearchResults;

    iget v2, p0, Lcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;->mCurIdx:I

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/appdatasearch/SearchResults$Result;-><init>(Lcom/google/android/gms/appdatasearch/SearchResults;ILcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;)V

    invoke-virtual {p0}, Lcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;->moveToNext()V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;->next()Lcom/google/android/gms/appdatasearch/SearchResults$Result;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
