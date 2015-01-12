.class Lcom/google/android/gms/analytics/z$a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private Bd:Z

.field private Be:J

.field final synthetic Bf:Lcom/google/android/gms/analytics/z;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/z;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/analytics/z$a;->Bf:Lcom/google/android/gms/analytics/z;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/z$a;->Be:J

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    const/4 v0, 0x0

    const-string v1, "SELECT * FROM hits2 WHERE 0"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    move v1, v0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    aget-object v5, v4, v1

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-string v1, "hit_id"

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "hit_url"

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "hit_string"

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "hit_time"

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database column missing"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    const-string v1, "hit_app_id"

    invoke-interface {v3, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database has extra columns"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-eqz v0, :cond_5

    const-string v0, "ALTER TABLE hits2 ADD COLUMN hit_app_id"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_0
    const-string v1, "SQLITE_MASTER"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "name"

    aput-object v3, v2, v0

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v0, v9

    :goto_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error querying for table "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/analytics/x;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :catchall_1
    move-exception v0

    move-object v9, v1

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/z$a;->Bd:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/analytics/z$a;->Be:J

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/analytics/z$a;->Bf:Lcom/google/android/gms/analytics/z;

    invoke-static {v2}, Lcom/google/android/gms/analytics/z;->a(Lcom/google/android/gms/analytics/z;)Lcom/google/android/gms/common/util/e;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database creation failed"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/z$a;->Bd:Z

    iget-object v1, p0, Lcom/google/android/gms/analytics/z$a;->Bf:Lcom/google/android/gms/analytics/z;

    invoke-static {v1}, Lcom/google/android/gms/analytics/z;->a(Lcom/google/android/gms/analytics/z;)Lcom/google/android/gms/common/util/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/e;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/analytics/z$a;->Be:J

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/analytics/z$a;->Bd:Z

    return-object v0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/google/android/gms/analytics/z$a;->Bf:Lcom/google/android/gms/analytics/z;

    invoke-static {v1}, Lcom/google/android/gms/analytics/z;->c(Lcom/google/android/gms/analytics/z;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/analytics/z$a;->Bf:Lcom/google/android/gms/analytics/z;

    invoke-static {v2}, Lcom/google/android/gms/analytics/z;->b(Lcom/google/android/gms/analytics/z;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/o;->af(Ljava/lang/String;)Z

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    const-string v0, "PRAGMA journal_mode=memory"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const-string v0, "hits2"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/analytics/z$a;->a(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/analytics/z;->eK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/z$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2    # I
    .param p3    # I

    return-void
.end method
