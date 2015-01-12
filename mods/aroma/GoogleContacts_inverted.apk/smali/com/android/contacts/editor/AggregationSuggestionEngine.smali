.class public Lcom/android/contacts/editor/AggregationSuggestionEngine;
.super Landroid/os/HandlerThread;
.source "AggregationSuggestionEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/AggregationSuggestionEngine$DataQuery;,
        Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;,
        Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;,
        Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;,
        Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;
    }
.end annotation


# instance fields
.field private mContactId:J

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mDataCursor:Landroid/database/Cursor;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;

.field private mMainHandler:Landroid/os/Handler;

.field private mSuggestedContactIds:[J

.field private mSuggestionsUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const-string v0, "AggregationSuggestions"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine$1;-><init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;)V

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/StringBuilder;
    .param p2    # Lcom/android/contacts/common/model/ValuesDelta;
    .param p3    # Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/android/contacts/common/model/ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method private buildAggregationSuggestionUri(Lcom/android/contacts/common/model/ValuesDelta;)Landroid/net/Uri;
    .locals 6
    .param p1    # Lcom/android/contacts/common/model/ValuesDelta;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data4"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    const-string v3, "data2"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    const-string v3, "data5"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    const-string v3, "data3"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    const-string v3, "data6"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "data1"

    invoke-direct {p0, v1, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data9"

    invoke-direct {p0, v2, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    const-string v3, "data8"

    invoke-direct {p0, v2, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    const-string v3, "data7"

    invoke-direct {p0, v2, p1, v3}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->appendValue(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/ValuesDelta;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    invoke-static {}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions;->builder()Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->setLimit(I)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContactId:J

    invoke-virtual {v3, v4, v5}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->setContactId(J)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "name"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "name"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->addParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    :cond_3
    invoke-virtual {v0}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0
.end method

.method private loadAggregationSuggestions(Landroid/net/Uri;)V
    .locals 12
    .param p1    # Landroid/net/Uri;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0, v8}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->updateSuggestedContactIds(Landroid/database/Cursor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v1, "mimetype IN (\'vnd.android.cursor.item/phone_v2\',\'vnd.android.cursor.item/email_v2\',\'vnd.android.cursor.item/name\',\'vnd.android.cursor.item/nickname\',\'vnd.android.cursor.item/photo\') AND contact_id IN ("

    invoke-direct {v11, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    array-length v7, v1

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v7, :cond_4

    if-lez v10, :cond_3

    const/16 v1, 0x2c

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    aget-wide v2, v1, v10

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_4
    const/16 v1, 0x29

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$DataQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "contact_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_5

    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private updateSuggestedContactIds(Landroid/database/Cursor;)Z
    .locals 12
    .param p1    # Landroid/database/Cursor;

    const/4 v9, 0x0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iget-object v10, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    array-length v10, v10

    if-eq v1, v10, :cond_1

    const/4 v0, 0x1

    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    if-nez v0, :cond_0

    iget-object v10, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    invoke-static {v10, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v10

    if-gez v10, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v0, v9

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [J

    iput-object v9, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    const/4 v4, 0x0

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    iget-object v9, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    aput-wide v10, v9, v4

    move v4, v5

    goto :goto_2

    :cond_3
    iget-object v9, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    invoke-static {v9}, Ljava/util/Arrays;->sort([J)V

    :cond_4
    return v0
.end method


# virtual methods
.method public containsRawContact(Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;J)Z
    .locals 4
    .param p1    # Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;
    .param p2    # J

    iget-object v2, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;

    iget-wide v2, v2, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->rawContactId:J

    cmp-long v2, v2, p2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected deliverNotification(Landroid/database/Cursor;)V
    .locals 1
    .param p1    # Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mListener:Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mListener:Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;

    invoke-interface {v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;->onAggregationSuggestionChange()V

    :cond_1
    return-void
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$2;

    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/editor/AggregationSuggestionEngine$2;-><init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSuggestedContactCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    const/16 v16, 0x0

    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v18, v2, v4

    if-eqz v18, :cond_1

    new-instance v16, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;

    invoke-direct/range {v16 .. v16}, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;-><init>()V

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->contactId:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x4

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->lookupKey:Ljava/lang/String;

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v4, v2

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x5

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->containsRawContact(Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;J)Z

    move-result v18

    if-nez v18, :cond_2

    new-instance v11, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;

    invoke-direct {v11}, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;-><init>()V

    iput-wide v14, v11, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->rawContactId:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->accountName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0xa

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->accountType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/contacts/editor/AggregationSuggestionEngine$RawContact;->dataSet:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->rawContacts:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x6

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v18, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x7

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    if-nez v17, :cond_3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->phoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    :cond_3
    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->phoneNumber:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const-string v18, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x7

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    if-nez v17, :cond_5

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->emailAddress:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    :cond_5
    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->emailAddress:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    const-string v18, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x7

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, v16

    iput-object v6, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->nickname:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    const-string v18, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x3

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    cmp-long v18, v8, v12

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x9

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->isNull(I)Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    const/16 v19, 0x9

    invoke-interface/range {v18 .. v19}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/contacts/editor/AggregationSuggestionEngine$Suggestion;->photo:[B

    goto/16 :goto_0

    :cond_8
    return-object v7
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1    # Landroid/os/Message;

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestedContactIds:[J

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->loadAggregationSuggestions(Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNameChange(Lcom/android/contacts/common/model/ValuesDelta;)V
    .locals 4
    .param p1    # Lcom/android/contacts/common/model/ValuesDelta;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->buildAggregationSuggestionUri(Lcom/android/contacts/common/model/ValuesDelta;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestionsUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestionsUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;

    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/editor/AggregationSuggestionEngine$SuggestionContentObserver;-><init>(Lcom/android/contacts/editor/AggregationSuggestionEngine;Landroid/os/Handler;Lcom/android/contacts/editor/AggregationSuggestionEngine$1;)V

    iput-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->scheduleSuggestionLookup()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    goto :goto_0
.end method

.method public quit()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iput-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mDataCursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContentObserver:Landroid/database/ContentObserver;

    :cond_1
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected scheduleSuggestionLookup()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestionsUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mSuggestionsUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public setContactId(J)V
    .locals 3
    .param p1    # J

    iget-wide v0, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContactId:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mContactId:J

    invoke-virtual {p0}, Lcom/android/contacts/editor/AggregationSuggestionEngine;->reset()V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;)V
    .locals 0
    .param p1    # Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;

    iput-object p1, p0, Lcom/android/contacts/editor/AggregationSuggestionEngine;->mListener:Lcom/android/contacts/editor/AggregationSuggestionEngine$Listener;

    return-void
.end method
