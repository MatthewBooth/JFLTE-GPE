.class Lcom/android/contacts/editor/AggregationSuggestionEngine$1;
.super Landroid/os/Handler;
.source "AggregationSuggestionEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/AggregationSuggestionEngine;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/AggregationSuggestionEngine;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine$1;->this$0:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;

    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine$1;->this$0:Lcom/android/contacts/editor/AggregationSuggestionEngine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    invoke-virtual {v1, v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->deliverNotification(Landroid/database/Cursor;)V

    return-void
.end method
