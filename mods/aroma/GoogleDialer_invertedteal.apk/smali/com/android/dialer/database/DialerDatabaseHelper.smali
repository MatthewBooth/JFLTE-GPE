.class public Lcom/android/dialer/database/DialerDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DialerDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/database/DialerDatabaseHelper$1;,
        Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;,
        Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;,
        Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;,
        Lcom/android/dialer/database/DialerDatabaseHelper$DeleteContactQuery;,
        Lcom/android/dialer/database/DialerDatabaseHelper$PhoneQuery;
    }
.end annotation


# static fields
.field private static final mLock:Ljava/lang/Object;

.field private static final sInUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sSingleton:Lcom/android/dialer/database/DialerDatabaseHelper;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper;->sSingleton:Lcom/android/dialer/database/DialerDatabaseHelper;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/dialer/database/DialerDatabaseHelper;->sInUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dialer/database/DialerDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static getNewInstanceForTest(Landroid/content/Context;)Lcom/android/dialer/database/DialerDatabaseHelper;
    .locals 2
    .param p0    # Landroid/content/Context;

    new-instance v0, Lcom/android/dialer/database/DialerDatabaseHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/database/DialerDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private removeDeletedContacts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 9
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/database/DialerDatabaseHelper$DeleteContactQuery;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/dialer/database/DialerDatabaseHelper$DeleteContactQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "contact_deleted_timestamp > ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p2, v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v0, "smartdial_table"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "prefix_table"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0
.end method

.method private removePotentiallyCorruptedContacts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # Ljava/lang/String;

    const/4 v3, 0x0

    const-string v0, "prefix_table"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact_id IN (SELECT contact_id FROM smartdial_table WHERE last_smartdial_update_time > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "smartdial_table"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last_smartdial_update_time > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private removeUpdatedContacts(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 4
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # Landroid/database/Cursor;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :goto_0
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "smartdial_table"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v1, "prefix_table"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method private resetSmartDialLastUpdatedTime()V
    .locals 6

    iget-object v2, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v3, "com.android.dialer"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_updated_millis"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private setupTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p1}, Lcom/android/dialer/database/DialerDatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "CREATE TABLE smartdial_table (id INTEGER PRIMARY KEY AUTOINCREMENT,data_id INTEGER, phone_number TEXT,contact_id INTEGER,lookup_key TEXT,display_name TEXT, photo_id INTEGER, last_smartdial_update_time LONG, last_time_used LONG, times_used INTEGER, starred INTEGER, is_super_primary INTEGER, in_visible_group INTEGER, is_primary INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE prefix_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,prefix TEXT COLLATE NOCASE, contact_id INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE properties (property_key TEXT PRIMARY KEY, property_value TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "database_version"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/dialer/database/DialerDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/dialer/database/DialerDatabaseHelper;->resetSmartDialLastUpdatedTime()V

    return-void
.end method


# virtual methods
.method countPrefixTableRows(Landroid/database/sqlite/SQLiteDatabase;)I
    .locals 2
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "SELECT COUNT(1) FROM prefix_table"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "DROP TABLE IF EXISTS prefix_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS smartdial_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS properties"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public getLooseMatches(Ljava/lang/String;Lcom/android/dialer/dialpad/SmartDialNameMatcher;)Ljava/util/ArrayList;
    .locals 32
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/dialer/dialpad/SmartDialNameMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/dialer/dialpad/SmartDialNameMatcher;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;",
            ">;"
        }
    .end annotation

    sget-object v3, Lcom/android/dialer/database/DialerDatabaseHelper;->sInUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v24

    if-eqz v24, :cond_1

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v28

    :cond_0
    :goto_0
    return-object v28

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/dialer/database/DialerDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v30, "%"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v28

    const/16 v29, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "SELECT data_id, display_name, photo_id, phone_number, contact_id, lookup_key FROM smartdial_table WHERE contact_id IN  (SELECT contact_id FROM prefix_table WHERE prefix_table.prefix LIKE \'"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v30, "\')"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v30, " ORDER BY "

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v30, "smartdial_table.starred DESC, smartdial_table.is_super_primary DESC, (CASE WHEN ( ?1 - smartdial_table.last_time_used) < 259200000 THEN 0  WHEN ( ?1 - smartdial_table.last_time_used) < 2592000000 THEN 1  ELSE 2 END), smartdial_table.times_used DESC, smartdial_table.in_visible_group DESC, smartdial_table.display_name, smartdial_table.contact_id, smartdial_table.is_primary DESC"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v30, 0x1

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v20, v30, v31

    move-object/from16 v0, v22

    move-object/from16 v1, v30

    invoke-virtual {v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    if-eqz v21, :cond_0

    const/4 v2, 0x0

    const/4 v13, 0x1

    const/16 v17, 0x2

    const/16 v16, 0x3

    const/4 v14, 0x4

    const/4 v15, 0x5

    :try_start_0
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    const/16 v19, 0x0

    :cond_2
    :goto_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0x14

    move/from16 v0, v19

    if-ge v0, v3, :cond_5

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x3

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v3, 0x4

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v3, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v3, 0x5

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v18, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10, v4, v5}, Lcom/android/dialer/database/DialerDatabaseHelper$ContactMatch;-><init>(Lcom/android/dialer/database/DialerDatabaseHelper;Ljava/lang/String;J)V

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matches(Ljava/lang/String;)Z

    move-result v26

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v9, v1}, Lcom/android/dialer/dialpad/SmartDialNameMatcher;->matchesNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/dialpad/SmartDialMatchPosition;

    move-result-object v3

    if-eqz v3, :cond_4

    const/16 v27, 0x1

    :goto_2
    if-nez v26, :cond_3

    if-eqz v27, :cond_2

    :cond_3
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;

    invoke-direct/range {v3 .. v12}, Lcom/android/dialer/database/DialerDatabaseHelper$ContactNumber;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :cond_4
    const/16 v27, 0x0

    goto :goto_2

    :cond_5
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method public getProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    const/4 v10, 0x0

    :try_start_0
    const-string v1, "properties"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "property_value"

    aput-object v3, v2, v0

    const-string v3, "property_key=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    if-eqz v8, :cond_1

    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    :cond_0
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v10, :cond_2

    :goto_0
    return-object v10

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v9

    move-object v10, p3

    goto :goto_0

    :cond_2
    move-object v10, p3

    goto :goto_0
.end method

.method public getPropertyAsInt(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 3
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # Ljava/lang/String;
    .param p3    # I

    const-string v2, ""

    invoke-virtual {p0, p1, p2, v2}, Lcom/android/dialer/database/DialerDatabaseHelper;->getProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    :goto_0
    return p3

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method insertNamePrefixes(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    .locals 10
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # Landroid/database/Cursor;

    const-string v7, "display_name"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v7, "contact_id"

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v6, "INSERT INTO prefix_table (contact_id, prefix)  VALUES (?, ?)"

    const-string v7, "INSERT INTO prefix_table (contact_id, prefix)  VALUES (?, ?)"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    :cond_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/dialer/dialpad/SmartDialPrefix;->generateNamePrefixes(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v7, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v3, v7, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v7, 0x2

    invoke-virtual {v3, v7, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method protected insertUpdatedContactsAndNumberPrefix(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/lang/Long;)V
    .locals 16
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # Landroid/database/Cursor;
    .param p3    # Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v12, "INSERT INTO smartdial_table (data_id, phone_number, contact_id, lookup_key, display_name, photo_id, last_time_used, times_used, starred, is_super_primary, in_visible_group, is_primary, last_smartdial_update_time)  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    const-string v13, "INSERT INTO smartdial_table (data_id, phone_number, contact_id, lookup_key, display_name, photo_id, last_time_used, times_used, starred, is_super_primary, in_visible_group, is_primary, last_smartdial_update_time)  VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    const-string v11, "INSERT INTO prefix_table (contact_id, prefix)  VALUES (?, ?)"

    const-string v13, "INSERT INTO prefix_table (contact_id, prefix)  VALUES (?, ?)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    const/4 v13, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v13, 0x2

    invoke-virtual {v5, v13, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v13, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v13, 0x4

    invoke-virtual {v5, v13, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v13, 0x6

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v13, 0x5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/dialer/database/DialerDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f080096

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-virtual {v5, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v13, 0x3

    const/4 v14, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-virtual {v5, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v13, 0x6

    const/4 v14, 0x7

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-virtual {v5, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v13, 0x7

    const/16 v14, 0x8

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-virtual {v5, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v13, 0x8

    const/16 v14, 0x9

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v5, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v13, 0x9

    const/16 v14, 0xa

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v5, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v13, 0xa

    const/16 v14, 0xb

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v5, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v13, 0xb

    const/16 v14, 0xc

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v5, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v13, 0xc

    const/16 v14, 0xd

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v5, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/16 v13, 0xd

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v5, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    const/4 v13, 0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/dialer/dialpad/SmartDialPrefix;->parseToNumberTokens(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const/4 v13, 0x1

    const/4 v14, 0x4

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-virtual {v8, v13, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v13, 0x2

    invoke-virtual {v8, v13, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v13

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v13

    :cond_1
    const/4 v13, 0x5

    :try_start_1
    invoke-virtual {v5, v13, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, p1}, Lcom/android/dialer/database/DialerDatabaseHelper;->setupTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # I
    .param p3    # I

    const/4 v3, 0x4

    const-string v1, "database_version"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/dialer/database/DialerDatabaseHelper;->getPropertyAsInt(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "DialerDatabaseHelper"

    const-string v2, "Malformed database version..recreating database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ge v0, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/dialer/database/DialerDatabaseHelper;->setupTables(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void

    :cond_1
    if-eq v0, v3, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "error upgrading the database to version 4"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v1, "database_version"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/dialer/database/DialerDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method removeAllContacts(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    const-string v0, "smartdial_table"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "prefix_table"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "property_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "property_value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "properties"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public startSmartDialUpdateThread()V
    .locals 2

    new-instance v0, Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;-><init>(Lcom/android/dialer/database/DialerDatabaseHelper;Lcom/android/dialer/database/DialerDatabaseHelper$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/dialer/database/DialerDatabaseHelper$SmartDialUpdateAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public updateSmartDialDatabase()V
    .locals 15

    invoke-virtual {p0}, Lcom/android/dialer/database/DialerDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    sget-object v14, Lcom/android/dialer/database/DialerDatabaseHelper;->mLock:Ljava/lang/Object;

    monitor-enter v14

    const/4 v12, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v1, "com.android.dialer"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v0, "last_updated_millis"

    const-wide/16 v2, 0x0

    invoke-interface {v7, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/android/dialer/database/DialerDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/database/DialerDatabaseHelper$PhoneQuery;->URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/dialer/database/DialerDatabaseHelper$PhoneQuery;->PROJECTION:[Ljava/lang/String;

    const-string v3, "contact_last_updated_timestamp > ? AND length(lookup) < 1000"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-nez v13, :cond_0

    monitor-exit v14

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    :try_start_1
    sget-object v0, Lcom/android/dialer/database/DialerDatabaseHelper;->sInUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    invoke-direct {p0, v8, v10}, Lcom/android/dialer/database/DialerDatabaseHelper;->removeDeletedContacts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-direct {p0, v8, v10}, Lcom/android/dialer/database/DialerDatabaseHelper;->removePotentiallyCorruptedContacts(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "0"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v8, v13}, Lcom/android/dialer/database/DialerDatabaseHelper;->removeUpdatedContacts(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V

    :cond_1
    invoke-virtual {p0, v8, v13, v6}, Lcom/android/dialer/database/DialerDatabaseHelper;->insertUpdatedContactsAndNumberPrefix(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT DISTINCT display_name, contact_id FROM smartdial_table WHERE last_smartdial_update_time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    if-eqz v11, :cond_2

    :try_start_3
    invoke-virtual {p0, v8, v11}, Lcom/android/dialer/database/DialerDatabaseHelper;->insertNamePrefixes(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v0, "CREATE INDEX IF NOT EXISTS smartdial_contact_id_index ON smartdial_table (contact_id);"

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS smartdial_last_update_index ON smartdial_table (last_smartdial_update_time);"

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS smartdial_sort_index ON smartdial_table (starred, is_super_primary, last_time_used, times_used, in_visible_group, display_name, contact_id, is_primary);"

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS nameprefix_index ON prefix_table (prefix);"

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS nameprefix_contact_id_index ON prefix_table (contact_id);"

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ANALYZE smartdial_table"

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ANALYZE prefix_table"

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ANALYZE smartdial_contact_id_index"

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ANALYZE smartdial_last_update_index"

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ANALYZE nameprefix_index"

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ANALYZE nameprefix_contact_id_index"

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v0, Lcom/android/dialer/database/DialerDatabaseHelper;->sInUpdate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v0, "last_updated_millis"

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v9, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    monitor-exit v14

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v0

    :catchall_2
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
