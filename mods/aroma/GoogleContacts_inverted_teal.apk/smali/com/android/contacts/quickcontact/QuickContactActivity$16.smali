.class Lcom/android/contacts/quickcontact/QuickContactActivity$16;
.super Landroid/os/AsyncTask;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;->bindRecentData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

.field final synthetic val$allInteractions:Ljava/util/List;

.field final synthetic val$interactionsWrapper:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->val$allInteractions:Ljava/util/List;

    iput-object p3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->val$interactionsWrapper:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1    # [Ljava/lang/Void;

    const-string v4, "sort recent loader results"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentLoaderResults:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2900(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->val$allInteractions:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->val$allInteractions:Ljava/util/List;

    new-instance v5, Lcom/android/contacts/quickcontact/QuickContactActivity$16$1;

    invoke-direct {v5, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$16$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity$16;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v4, "contactInteractionsToEntries"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->val$allInteractions:Ljava/util/List;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->contactInteractionsToEntries(Ljava/util/List;)Ljava/util/List;
    invoke-static {v4, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3200(Lcom/android/contacts/quickcontact/QuickContactActivity;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/ExpandingEntryCardView$Entry;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->val$interactionsWrapper:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v4, 0x0

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7
    .param p1    # Ljava/lang/Void;

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "initialize recents card"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->val$allInteractions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->val$interactionsWrapper:Ljava/util/List;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
    invoke-static {v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->isExpanded()Z

    move-result v3

    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    iget-object v5, v5, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExpandingEntryCardViewListener:Lcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;

    iget-object v6, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mScroller:Lcom/android/contacts/widget/MultiShrinkScroller;
    invoke-static {v6}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/widget/MultiShrinkScroller;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->initialize(Ljava/util/List;IZZLcom/android/contacts/quickcontact/ExpandingEntryCardView$ExpandingEntryCardViewListener;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setVisibility(I)V

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->shouldShow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentDataTask:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3502(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$16;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mAboutCard:Lcom/android/contacts/quickcontact/ExpandingEntryCardView;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3400(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/ExpandingEntryCardView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/ExpandingEntryCardView;->setVisibility(I)V

    goto :goto_0
.end method
