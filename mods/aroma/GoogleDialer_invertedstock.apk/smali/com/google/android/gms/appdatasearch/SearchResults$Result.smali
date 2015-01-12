.class public Lcom/google/android/gms/appdatasearch/SearchResults$Result;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appdatasearch/SearchResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field private final DA:Lcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;

.field private final DB:I

.field final synthetic DC:Lcom/google/android/gms/appdatasearch/SearchResults;


# direct methods
.method constructor <init>(Lcom/google/android/gms/appdatasearch/SearchResults;ILcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;)V
    .locals 0
    .param p2    # I
    .param p3    # Lcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/SearchResults$Result;->DC:Lcom/google/android/gms/appdatasearch/SearchResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/appdatasearch/SearchResults$Result;->DA:Lcom/google/android/gms/appdatasearch/SearchResults$ResultIterator;

    iput p2, p0, Lcom/google/android/gms/appdatasearch/SearchResults$Result;->DB:I

    return-void
.end method
