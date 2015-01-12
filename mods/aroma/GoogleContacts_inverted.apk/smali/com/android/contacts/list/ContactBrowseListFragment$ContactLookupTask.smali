.class final Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;
.super Landroid/os/AsyncTask;
.source "ContactBrowseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/ContactBrowseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactLookupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private mIsCancelled:Z

.field private final mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/contacts/list/ContactBrowseListFragment;


# direct methods
.method public constructor <init>(Lcom/android/contacts/list/ContactBrowseListFragment;Landroid/net/Uri;)V
    .locals 0
    .param p2    # Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;->this$0:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;->mUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;->mIsCancelled:Z

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/net/Uri;
    .locals 11
    .param p1    # [Ljava/lang/Void;

    const/4 v10, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;->this$0:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactBrowseListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;->mUri:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcom/android/contacts/common/util/ContactLoaderUtils;->ensureIsContactUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "lookup"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-eqz v2, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v6, v7, v9}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    :try_start_1
    const-string v2, "ContactList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: No contact ID or lookup key for contact "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v2, v10

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;->doInBackground([Ljava/lang/Void;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/net/Uri;)V
    .locals 1
    .param p1    # Landroid/net/Uri;

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;->mIsCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;->this$0:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactBrowseListFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;->this$0:Lcom/android/contacts/list/ContactBrowseListFragment;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment;->onContactUriQueryFinished(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactBrowseListFragment$ContactLookupTask;->onPostExecute(Landroid/net/Uri;)V

    return-void
.end method
