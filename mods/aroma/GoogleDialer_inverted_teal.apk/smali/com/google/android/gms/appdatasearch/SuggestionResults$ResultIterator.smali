.class public final Lcom/google/android/gms/appdatasearch/SuggestionResults$ResultIterator;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appdatasearch/SuggestionResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ResultIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/google/android/gms/appdatasearch/SuggestionResults$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic DH:Lcom/google/android/gms/appdatasearch/SuggestionResults;

.field private mCurIdx:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/appdatasearch/SuggestionResults;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/SuggestionResults$ResultIterator;->DH:Lcom/google/android/gms/appdatasearch/SuggestionResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/appdatasearch/SuggestionResults$ResultIterator;->mCurIdx:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/appdatasearch/SuggestionResults$ResultIterator;->mCurIdx:I

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/SuggestionResults$ResultIterator;->DH:Lcom/google/android/gms/appdatasearch/SuggestionResults;

    iget-object v1, v1, Lcom/google/android/gms/appdatasearch/SuggestionResults;->DF:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Lcom/google/android/gms/appdatasearch/SuggestionResults$Result;
    .locals 4

    new-instance v0, Lcom/google/android/gms/appdatasearch/SuggestionResults$Result;

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/SuggestionResults$ResultIterator;->DH:Lcom/google/android/gms/appdatasearch/SuggestionResults;

    iget v2, p0, Lcom/google/android/gms/appdatasearch/SuggestionResults$ResultIterator;->mCurIdx:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/android/gms/appdatasearch/SuggestionResults$ResultIterator;->mCurIdx:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/appdatasearch/SuggestionResults$Result;-><init>(Lcom/google/android/gms/appdatasearch/SuggestionResults;I)V

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/appdatasearch/SuggestionResults$ResultIterator;->next()Lcom/google/android/gms/appdatasearch/SuggestionResults$Result;

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
