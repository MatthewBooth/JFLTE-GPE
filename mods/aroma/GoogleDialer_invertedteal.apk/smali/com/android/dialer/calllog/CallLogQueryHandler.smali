.class public Lcom/android/dialer/calllog/CallLogQueryHandler;
.super Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;
.source "CallLogQueryHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;,
        Lcom/android/dialer/calllog/CallLogQueryHandler$CatchingWorkerHandler;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# instance fields
.field private final mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/dialer/calllog/CallLogQueryHandler;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;)V
    .locals 1
    .param p1    # Landroid/content/ContentResolver;
    .param p2    # Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;I)V
    .locals 1
    .param p1    # Landroid/content/ContentResolver;
    .param p2    # Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;
    .param p3    # I

    invoke-direct {p0, p1}, Lcom/android/contacts/common/database/NoNullCursorAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    iput p3, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mLogLimit:I

    return-void
.end method

.method private cancelFetch()V
    .locals 1

    const/16 v0, 0x36

    invoke-virtual {p0, v0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->cancelOperation(I)V

    return-void
.end method

.method private fetchCalls(IIZJ)V
    .locals 12
    .param p1    # I
    .param p2    # I
    .param p3    # Z
    .param p4    # J

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz p3, :cond_0

    const-string v0, "new"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = 1"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v0, -0x1

    if-le p2, v0, :cond_2

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "(%s = ?)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "type"

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_4

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    const-string v0, " AND "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v0, "(%s > ?)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v4, "date"

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v0, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mLogLimit:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    const/16 v8, 0x3e8

    :goto_0
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x0

    sget-object v4, Lcom/android/dialer/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    sget-object v0, Lcom/android/dialer/calllog/CallLogQueryHandler;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    iget v8, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mLogLimit:I

    goto :goto_0

    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private updateAdapterData(Landroid/database/Cursor;)Z
    .locals 2
    .param p1    # Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;->onCallsFetched(Landroid/database/Cursor;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateVoicemailStatus(Landroid/database/Cursor;)V
    .locals 2
    .param p1    # Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/dialer/calllog/CallLogQueryHandler;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/dialer/calllog/CallLogQueryHandler$Listener;->onVoicemailStatusFetched(Landroid/database/Cursor;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .locals 1
    .param p1    # Landroid/os/Looper;

    new-instance v0, Lcom/android/dialer/calllog/CallLogQueryHandler$CatchingWorkerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/dialer/calllog/CallLogQueryHandler$CatchingWorkerHandler;-><init>(Lcom/android/dialer/calllog/CallLogQueryHandler;Landroid/os/Looper;)V

    return-object v0
.end method

.method public fetchCalls(IJ)V
    .locals 6
    .param p1    # I
    .param p2    # J

    invoke-direct {p0}, Lcom/android/dialer/calllog/CallLogQueryHandler;->cancelFetch()V

    const/16 v1, 0x36

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/dialer/calllog/CallLogQueryHandler;->fetchCalls(IIZJ)V

    return-void
.end method

.method public fetchVoicemailStatus()V
    .locals 8

    const/4 v2, 0x0

    const/16 v1, 0x3a

    sget-object v3, Landroid/provider/VoicemailContract$Status;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/dialer/voicemail/VoicemailStatusHelperImpl;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public markMissedCallsAsRead()V
    .locals 8

    const/4 v2, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "is_read"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "type"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "is_read"

    const-string v1, "1"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x39

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public markNewCallsAsOld()V
    .locals 8

    const/4 v2, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = 1"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "new"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x37

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public markNewVoicemailsAsOld()V
    .locals 9

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "new"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = 1 AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "type"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = ?"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v6}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "new"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x38

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_VOICEMAIL:Landroid/net/Uri;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/dialer/calllog/CallLogQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method protected declared-synchronized onNotNullableQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # Landroid/database/Cursor;

    monitor-enter p0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/16 v0, 0x36

    if-ne p1, v0, :cond_3

    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/dialer/calllog/CallLogQueryHandler;->updateAdapterData(Landroid/database/Cursor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-eqz v0, :cond_2

    const/4 p3, 0x0

    :cond_2
    :goto_1
    if-eqz p3, :cond_0

    :try_start_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    const/16 v0, 0x3a

    if-ne p1, v0, :cond_5

    :try_start_2
    invoke-direct {p0, p3}, Lcom/android/dialer/calllog/CallLogQueryHandler;->updateVoicemailStatus(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    if-eqz p3, :cond_4

    :try_start_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    :try_start_4
    const-string v0, "CallLogQueryHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown query completed: ignoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method
