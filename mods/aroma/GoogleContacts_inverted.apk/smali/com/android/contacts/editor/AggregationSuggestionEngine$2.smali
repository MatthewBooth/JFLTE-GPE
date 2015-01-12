.class Lcom/android/contacts/editor/AggregationSuggestionEngine$2;
.super Landroid/os/Handler;
.source "AggregationSuggestionEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/AggregationSuggestionEngine;->getHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/AggregationSuggestionEngine;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;Landroid/os/Looper;)V
    .locals 0
    .param p2    # Landroid/os/Looper;

    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine$2;->this$0:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine$2;->this$0:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-virtual {v0, p1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
