.class public Lcom/android/contacts/common/list/DirectoryListLoader;
.super Landroid/content/AsyncTaskLoader;
.source "DirectoryListLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/DirectoryListLoader$DirectoryQuery;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final RESULT_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mDefaultDirectoryList:Landroid/database/MatrixCursor;

.field private mDirectorySearchMode:I

.field private mLocalInvisibleDirectoryEnabled:Z

.field private final mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "directoryType"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "photoSupport"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/list/DirectoryListLoader;->RESULT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/contacts/common/list/DirectoryListLoader$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/common/list/DirectoryListLoader$1;-><init>(Lcom/android/contacts/common/list/DirectoryListLoader;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getDefaultDirectories()Landroid/database/Cursor;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    if-nez v0, :cond_0

    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/android/contacts/common/list/DirectoryListLoader;->RESULT_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    new-array v1, v7, [Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08008d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v8, v1, v6

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    new-array v1, v7, [Ljava/lang/Object;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f08008e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v8, v1, v6

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDefaultDirectoryList:Landroid/database/MatrixCursor;

    return-object v0
.end method


# virtual methods
.method public loadInBackground()Landroid/database/Cursor;
    .locals 20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDirectorySearchMode:I

    if-nez v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->getDefaultDirectories()Landroid/database/Cursor;

    move-result-object v18

    :cond_0
    :goto_0
    return-object v18

    :cond_1
    new-instance v18, Landroid/database/MatrixCursor;

    sget-object v2, Lcom/android/contacts/common/list/DirectoryListLoader;->RESULT_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDirectorySearchMode:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported directory search mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDirectorySearchMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/common/list/DirectoryListLoader;->mLocalInvisibleDirectoryEnabled:Z

    if-eqz v2, :cond_3

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/common/list/DirectoryListLoader$DirectoryQuery;->URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/contacts/common/list/DirectoryListLoader$DirectoryQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    :goto_2
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v12, 0x0

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    if-eqz v19, :cond_2

    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    :cond_2
    :goto_3
    const/4 v2, 0x3

    :try_start_2
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x4

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v12, v2, v3

    const/4 v3, 0x2

    aput-object v13, v2, v3

    const/4 v3, 0x3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_3
    const-string v5, "_id!=1"

    goto :goto_1

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shortcutSupport=2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/common/list/DirectoryListLoader;->mLocalInvisibleDirectoryEnabled:Z

    if-eqz v2, :cond_4

    const-string v2, ""

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_4
    const-string v2, " AND _id!=1"

    goto :goto_4

    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shortcutSupport IN (2, 1)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/contacts/common/list/DirectoryListLoader;->mLocalInvisibleDirectoryEnabled:Z

    if-eqz v2, :cond_5

    const-string v2, ""

    :goto_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_5
    const-string v2, " AND _id!=1"

    goto :goto_5

    :catch_0
    move-exception v14

    :try_start_3
    const-string v2, "ContactEntryListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot obtain directory type from package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_3

    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->stopLoading()V

    return-void
.end method

.method protected onStartLoading()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->forceLoad()V

    return-void
.end method

.method protected onStopLoading()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/DirectoryListLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .param p1    # I

    iput p1, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mDirectorySearchMode:I

    return-void
.end method

.method public setLocalInvisibleDirectoryEnabled(Z)V
    .locals 0
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/contacts/common/list/DirectoryListLoader;->mLocalInvisibleDirectoryEnabled:Z

    return-void
.end method
