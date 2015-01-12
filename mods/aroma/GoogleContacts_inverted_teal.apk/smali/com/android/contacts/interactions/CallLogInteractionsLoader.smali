.class public Lcom/android/contacts/interactions/CallLogInteractionsLoader;
.super Landroid/content/AsyncTaskLoader;
.source "CallLogInteractionsLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/contacts/interactions/ContactInteraction;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/ContactInteraction;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxToRetrieve:I

.field private final mPhoneNumbers:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # [Ljava/lang/String;
    .param p3    # I

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mPhoneNumbers:[Ljava/lang/String;

    iput p3, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mMaxToRetrieve:I

    return-void
.end method

.method private getCallLogInteractions(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/ContactInteraction;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date DESC LIMIT "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mMaxToRetrieve:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_3

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v6, v9}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    new-instance v0, Lcom/android/contacts/interactions/CallLogInteraction;

    invoke-direct {v0, v9}, Lcom/android/contacts/interactions/CallLogInteraction;-><init>(Landroid/content/ContentValues;)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method static pruneDuplicateCallLogInteractions(Ljava/util/List;I)Ljava/util/List;
    .locals 6
    .param p1    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/ContactInteraction;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/ContactInteraction;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/interactions/ContactInteraction;

    invoke-interface {v2}, Lcom/android/contacts/interactions/ContactInteraction;->getInteractionDate()J

    move-result-wide v4

    add-int/lit8 v2, v0, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/interactions/ContactInteraction;

    invoke-interface {v2}, Lcom/android/contacts/interactions/ContactInteraction;->getInteractionDate()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, p1, :cond_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->deliverResult(Ljava/util/List;)V

    return-void
.end method

.method public deliverResult(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/ContactInteraction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mData:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/interactions/ContactInteraction;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.telephony"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mPhoneNumbers:[Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mPhoneNumbers:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_0

    iget v5, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mMaxToRetrieve:I

    if-gtz v5, :cond_2

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mPhoneNumbers:[Ljava/lang/String;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    invoke-direct {p0, v4}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->getCallLogInteractions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/android/contacts/interactions/CallLogInteractionsLoader$1;

    invoke-direct {v5, p0}, Lcom/android/contacts/interactions/CallLogInteractionsLoader$1;-><init>(Lcom/android/contacts/interactions/CallLogInteractionsLoader;)V

    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v5, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mPhoneNumbers:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    iget v5, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mMaxToRetrieve:I

    invoke-static {v2, v5}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->pruneDuplicateCallLogInteractions(Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method protected onReset()V
    .locals 1

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->onStopLoading()V

    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onStartLoading()V

    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mData:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->deliverResult(Ljava/util/List;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->mData:Ljava/util/List;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->forceLoad()V

    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/contacts/interactions/CallLogInteractionsLoader;->cancelLoad()Z

    return-void
.end method
