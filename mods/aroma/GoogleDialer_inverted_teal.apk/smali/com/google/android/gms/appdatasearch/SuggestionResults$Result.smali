.class public Lcom/google/android/gms/appdatasearch/SuggestionResults$Result;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/appdatasearch/SuggestionResults;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Result"
.end annotation


# instance fields
.field private final DB:I

.field final synthetic DH:Lcom/google/android/gms/appdatasearch/SuggestionResults;


# direct methods
.method constructor <init>(Lcom/google/android/gms/appdatasearch/SuggestionResults;I)V
    .locals 0
    .param p2    # I

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/SuggestionResults$Result;->DH:Lcom/google/android/gms/appdatasearch/SuggestionResults;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/appdatasearch/SuggestionResults$Result;->DB:I

    return-void
.end method
