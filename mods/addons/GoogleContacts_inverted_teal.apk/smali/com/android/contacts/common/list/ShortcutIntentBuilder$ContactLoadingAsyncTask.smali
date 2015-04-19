.class final Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;
.super Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;
.source "ShortcutIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/ShortcutIntentBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactLoadingAsyncTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/ShortcutIntentBuilder;


# direct methods
.method public constructor <init>(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;)V
    .locals 0
    .param p2    # Landroid/net/Uri;

    iput-object p1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->this$0:Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$LoadingAsyncTask;-><init>(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method protected loadData()V
    .locals 7

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->this$0:Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    # getter for: Lcom/android/contacts/common/list/ShortcutIntentBuilder;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->access$000(Lcom/android/contacts/common/list/ShortcutIntentBuilder;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mUri:Landroid/net/Uri;

    # getter for: Lcom/android/contacts/common/list/ShortcutIntentBuilder;->CONTACT_COLUMNS:[Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->access$200()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mDisplayName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mPhotoId:J

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mLookupKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .param p1    # Ljava/lang/Void;

    iget-object v0, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->this$0:Lcom/android/contacts/common/list/ShortcutIntentBuilder;

    iget-object v1, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mContentType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mDisplayName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mLookupKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/contacts/common/list/ShortcutIntentBuilder$ContactLoadingAsyncTask;->mBitmapData:[B

    # invokes: Lcom/android/contacts/common/list/ShortcutIntentBuilder;->createContactShortcutIntent(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    invoke-static/range {v0 .. v5}, Lcom/android/contacts/common/list/ShortcutIntentBuilder;->access$300(Lcom/android/contacts/common/list/ShortcutIntentBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method
