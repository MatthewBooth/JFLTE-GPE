.class Lcom/android/contacts/quickcontact/QuickContactActivity$15;
.super Ljava/lang/Object;
.source "QuickContactActivity.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/quickcontact/QuickContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/contacts/interactions/ContactInteraction;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$15;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 10
    .param p1    # I
    .param p2    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/ContactInteraction;",
            ">;>;"
        }
    .end annotation

    const/4 v4, 0x3

    const-string v2, "QuickContact"

    const-string v5, "onCreateLoader"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v1

    :pswitch_0
    const-string v2, "QuickContact"

    const-string v5, "LOADER_SMS_ID"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/contacts/interactions/SmsInteractionsLoader;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$15;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->KEY_LOADER_EXTRA_PHONES:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2700()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5, v4}, Lcom/android/contacts/interactions/SmsInteractionsLoader;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    const-string v2, "QuickContact"

    const-string v5, "LOADER_CALENDAR_ID"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->KEY_LOADER_EXTRA_EMAILS:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2800()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->KEY_LOADER_EXTRA_EMAILS:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2800()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :cond_0
    new-instance v1, Lcom/android/contacts/interactions/CalendarInteractionsLoader;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$15;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    const-wide/32 v6, 0x240c8400

    const-wide/32 v8, 0x5265c00

    move v5, v4

    invoke-direct/range {v1 .. v9}, Lcom/android/contacts/interactions/CalendarInteractionsLoader;-><init>(Landroid/content/Context;Ljava/util/List;IIJJ)V

    goto :goto_0

    :pswitch_2
    const-string v2, "QuickContact"

    const-string v5, "LOADER_CALL_LOG_ID"

    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/contacts/interactions/CallLogInteractionsLoader;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$15;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->KEY_LOADER_EXTRA_PHONES:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2700()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5, v4}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroid/content/Loader;
    .param p2    # Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/quickcontact/QuickContactActivity$15;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/ContactInteraction;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/ContactInteraction;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$15;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentLoaderResults:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2900(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$15;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->isAllRecentDataLoaded()Z
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$15;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # invokes: Lcom/android/contacts/quickcontact/QuickContactActivity;->bindRecentData()V
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$3100(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    :cond_0
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/ContactInteraction;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity$15;->this$0:Lcom/android/contacts/quickcontact/QuickContactActivity;

    # getter for: Lcom/android/contacts/quickcontact/QuickContactActivity;->mRecentLoaderResults:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->access$2900(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
