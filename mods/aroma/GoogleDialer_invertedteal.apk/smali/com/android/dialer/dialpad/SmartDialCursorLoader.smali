.class public Lcom/android/dialer/dialpad/SmartDialCursorLoader;
.super Landroid/content/AsyncTaskLoader;
.source "SmartDialCursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

.field private mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->DEBUG:Z

    iput-object p1, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mContext:Landroid/content/Context;

    return-void
.end method

.method private releaseResources(Landroid/database/Cursor;)V
    .locals 0
    .param p1    # Landroid/database/Cursor;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method


# virtual methods
.method public configureQuery(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;

    invoke-static {}, Lcom/android/dialer/dialpad/SmartDialPrefix;->getMap()Lcom/android/dialer/dialpad/SmartDialMap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->normalizeNumber(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mQuery:Ljava/lang/String;

    new-instance v0, Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    iget-object v1, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mQuery:Ljava/lang/String;

    invoke-static {}, Lcom/android/dialer/dialpad/SmartDialPrefix;->getMap()Lcom/android/dialer/dialpad/SmartDialMap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;-><init>(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialMap;)V

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    return-void
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2
    .param p1    # Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->isReset()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->releaseResources(Landroid/database/Cursor;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    iput-object p1, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->releaseResources(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 10

    iget-object v6, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/dialerbind/DatabaseHelperManager;->getDatabaseHelper(Landroid/content/Context;)Lcom/android/dialer/database/DialerDatabaseHelper;

    move-result-object v3

    iget-object v6, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mQuery:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mNameMatcher:Lcom/android/dialer/dialpad/SmartDialNameMatcher;

    invoke-virtual {v3, v6, v7}, Lcom/android/dialer/database/DialerDatabaseHelper;->getLooseMatches(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialNameMatcher;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    invoke-direct {v2, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget-object v6, Lcom/android/contacts/common/list/PhoneNumberListAdapter$PhoneQuery;->PROJECTION_PRIMARY:[Ljava/lang/String;

    array-length v6, v6

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;

    const/4 v6, 0x0

    iget-wide v8, v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->dataId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->phoneNumber:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-wide v8, v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-object v7, v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->lookupKey:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x6

    iget-wide v8, v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->photoId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    iget-object v7, v1, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;->displayName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 0
    .param p1    # Landroid/database/Cursor;

    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->releaseResources(Landroid/database/Cursor;)V

    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->onStopLoading()V

    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->releaseResources(Landroid/database/Cursor;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    :cond_0
    iget-object v0, p0, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->forceLoad()V

    :cond_1
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/dialer/dialpad/SmartDialCursorLoader;->cancelLoad()Z

    return-void
.end method
