.class final Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;
.super Landroid/database/ContentObserver;
.source "AggregationSuggestionEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/AggregationSuggestionEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SuggestionContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/AggregationSuggestionEngine;


# direct methods
.method private constructor <init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;->this$0:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;Landroid/os/Handler;Lcom/android/contacts/editor/AggregationSuggestionEngine$1;)V
    .locals 0
    .param p1    # Lcom/android/contacts/editor/AggregationSuggestionEngine;
    .param p2    # Landroid/os/Handler;
    .param p3    # Lcom/android/contacts/editor/AggregationSuggestionEngine$1;

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;-><init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;->this$0:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->scheduleSuggestionLookup()V

    return-void
.end method
