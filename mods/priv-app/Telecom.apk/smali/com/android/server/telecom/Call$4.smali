.class final Lcom/android/server/telecom/Call$4;
.super Ljava/lang/Object;
.source "Call.java"

# interfaces
.implements Landroid/telecom/Response;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/Call;->maybeLoadCannedSmsResponses()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/telecom/Response",
        "<",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/Call;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/Call$4;->this$0:Lcom/android/server/telecom/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onError(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/telecom/Call$4;->this$0:Lcom/android/server/telecom/Call;

    const-string v1, "Error obtaining canned SMS responses: %d %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final bridge synthetic onResult(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    check-cast p2, [Ljava/util/List;

    array-length v0, p2

    if-lez v0, :cond_0

    const-string v0, "maybeLoadCannedSmsResponses: got %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aget-object v2, p2, v3

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/Call$4;->this$0:Lcom/android/server/telecom/Call;

    aget-object v1, p2, v3

    # setter for: Lcom/android/server/telecom/Call;->mCannedSmsResponses:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/server/telecom/Call;->access$302(Lcom/android/server/telecom/Call;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/telecom/Call$4;->this$0:Lcom/android/server/telecom/Call;

    # getter for: Lcom/android/server/telecom/Call;->mListeners:Ljava/util/Set;
    invoke-static {v0}, Lcom/android/server/telecom/Call;->access$400(Lcom/android/server/telecom/Call;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call$Listener;

    iget-object v2, p0, Lcom/android/server/telecom/Call$4;->this$0:Lcom/android/server/telecom/Call;

    invoke-virtual {v0, v2}, Lcom/android/server/telecom/Call$Listener;->onCannedSmsResponsesLoaded(Lcom/android/server/telecom/Call;)V

    goto :goto_0

    :cond_0
    return-void
.end method
