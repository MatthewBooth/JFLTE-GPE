.class public Lcom/google/android/dialer/GoogleDialerDatabaseHelper;
.super Lcom/android/dialer/database/DialerDatabaseHelper;
.source "GoogleDialerDatabaseHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sSingleton:Lcom/google/android/dialer/GoogleDialerDatabaseHelper;


# instance fields
.field private final mArgs1:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->sSingleton:Lcom/google/android/dialer/GoogleDialerDatabaseHelper;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;

    const v0, 0x13884

    invoke-direct {p0, p1, p2, v0}, Lcom/android/dialer/database/DialerDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->mArgs1:[Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/google/android/dialer/GoogleDialerDatabaseHelper;
    .locals 4
    .param p0    # Landroid/content/Context;

    const-class v1, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->sSingleton:Lcom/google/android/dialer/GoogleDialerDatabaseHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "dialer.db"

    invoke-direct {v0, v2, v3}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->sSingleton:Lcom/google/android/dialer/GoogleDialerDatabaseHelper;

    :cond_0
    sget-object v0, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->sSingleton:Lcom/google/android/dialer/GoogleDialerDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getNewInstanceForTest(Landroid/content/Context;)Lcom/google/android/dialer/GoogleDialerDatabaseHelper;
    .locals 2
    .param p0    # Landroid/content/Context;

    new-instance v0, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method private setupTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    const-string v0, "DROP TABLE IF EXISTS cached_number_contacts"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE cached_number_contacts (normalized_number TEXT PRIMARY KEY NOT NULL, number TEXT NOT NULL, phone_type INTEGER DEFAULT 0, phone_label TEXT,display_name TEXT, has_photo INTEGER DEFAULT 0, has_thumbnail INTEGER DEFAULT 0, photo_uri TEXT, time_last_updated LONG NOT NULL, source_name TEXT, source_type INTEGER DEFAULT 0, source_id TEXT, lookup_key TEXT, reported INTEGER DEFAULT 0, object_id TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX cached_number_index ON cached_number_contacts (normalized_number);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "proprietary_database_version"

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    invoke-super {p0, p1}, Lcom/android/dialer/database/DialerDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->setupTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # I
    .param p3    # I

    const/16 v3, 0x8

    invoke-super {p0, p1, p2, p3}, Lcom/android/dialer/database/DialerDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    const-string v1, "proprietary_database_version"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->getPropertyAsInt(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->TAG:Ljava/lang/String;

    const-string v2, "Malformed database version..recreating database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->setupTables(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    const-string v1, "ALTER TABLE cached_number_contacts ADD reported INTEGER;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    if-ge v0, v3, :cond_3

    const-string v1, "ALTER TABLE cached_number_contacts ADD object_id TEXT;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    const-string v1, "proprietary_database_version"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public prune()V
    .locals 2

    const-wide v0, 0x9a7ec800L

    invoke-virtual {p0, v0, v1}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->prune(J)V

    return-void
.end method

.method public prune(J)V
    .locals 5
    .param p1    # J

    iget-object v0, p0, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->mArgs1:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DELETE FROM cached_number_contacts WHERE time_last_updated<?"

    iget-object v2, p0, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->mArgs1:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public purgeAll()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DELETE FROM cached_number_contacts"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public purgeSource(I)V
    .locals 3
    .param p1    # I

    iget-object v0, p0, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->mArgs1:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DELETE FROM cached_number_contacts WHERE source_type=?"

    iget-object v2, p0, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->mArgs1:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
