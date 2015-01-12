.class public Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;
.super Landroid/content/ContentProvider;
.source "PhoneNumberCacheProvider.java"


# static fields
.field private static final SUPPORTED_UPDATE_COLUMNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mArgs1:[Ljava/lang/String;

.field private mDbHelper:Lcom/google/android/dialer/GoogleDialerDatabaseHelper;

.field private mPhotoPath:Ljava/io/File;

.field private mThumbnailPath:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->sUriMatcher:Landroid/content/UriMatcher;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->SUPPORTED_UPDATE_COLUMNS:Ljava/util/Set;

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.dialer.cacheprovider"

    const-string v2, "contact"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.dialer.cacheprovider"

    const-string v2, "contact/*"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.dialer.cacheprovider"

    const-string v2, "photo/*"

    const/16 v3, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.google.android.dialer.cacheprovider"

    const-string v2, "thumbnail/*"

    const/16 v3, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->SUPPORTED_UPDATE_COLUMNS:Ljava/util/Set;

    const-string v1, "number"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->SUPPORTED_UPDATE_COLUMNS:Ljava/util/Set;

    const-string v1, "phone_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->SUPPORTED_UPDATE_COLUMNS:Ljava/util/Set;

    const-string v1, "phone_label"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->SUPPORTED_UPDATE_COLUMNS:Ljava/util/Set;

    const-string v1, "display_name"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->SUPPORTED_UPDATE_COLUMNS:Ljava/util/Set;

    const-string v1, "photo_uri"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->SUPPORTED_UPDATE_COLUMNS:Ljava/util/Set;

    const-string v1, "source_name"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->SUPPORTED_UPDATE_COLUMNS:Ljava/util/Set;

    const-string v1, "source_type"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->SUPPORTED_UPDATE_COLUMNS:Ljava/util/Set;

    const-string v1, "source_id"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->SUPPORTED_UPDATE_COLUMNS:Ljava/util/Set;

    const-string v1, "lookup_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->SUPPORTED_UPDATE_COLUMNS:Ljava/util/Set;

    const-string v1, "reported"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->SUPPORTED_UPDATE_COLUMNS:Ljava/util/Set;

    const-string v1, "object_id"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mArgs1:[Ljava/lang/String;

    return-void
.end method

.method private createDirectoryIfDoesNotExist(Ljava/io/File;)V
    .locals 3
    .param p1    # Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create photo storage directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private createPhotoDirectoriesIfDoNotExist()V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "photos/raw"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mPhotoPath:Ljava/io/File;

    iget-object v0, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mPhotoPath:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->createDirectoryIfDoesNotExist(Ljava/io/File;)V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "thumbnails/raw"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mThumbnailPath:Ljava/io/File;

    iget-object v0, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mThumbnailPath:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->createDirectoryIfDoesNotExist(Ljava/io/File;)V

    return-void
.end method

.method private deleteFile(Ljava/lang/String;Z)Z
    .locals 2
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->getPhotoForNumber(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->getThumbnailForNumber(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method private deleteFiles(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v3}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->deleteFile(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, p1, v2}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->deleteFile(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v2, v3

    :cond_1
    return v2
.end method

.method private getE164Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNumberFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid URI or phone number not provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->getE164Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getNumberFromValues(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/content/ContentValues;

    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Phone number not provided"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->getE164Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPhotoForNumber(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1    # Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mPhotoPath:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getThumbnailForNumber(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1    # Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mThumbnailPath:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isNumberInCache(Ljava/lang/String;)Z
    .locals 7
    .param p1    # Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mDbHelper:Lcom/google/android/dialer/GoogleDialerDatabaseHelper;

    invoke-virtual {v4}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mArgs1:[Ljava/lang/String;

    aput-object p1, v4, v3

    const-string v4, "cached_number_contacts"

    const-string v5, "normalized_number=?"

    iget-object v6, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mArgs1:[Ljava/lang/String;

    invoke-static {v2, v4, v5, v6}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private openFileForRead(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->getPhotoForNumber(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->getThumbnailForNumber(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->setHavePhoto(Ljava/lang/String;ZZ)V

    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No photo file found for number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private openFileForWrite(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1    # Ljava/lang/String;
    .param p2    # Z

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->getPhotoForNumber(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, v3}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->setHavePhoto(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    const/high16 v3, 0x30000000

    :try_start_1
    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->getThumbnailForNumber(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v3, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->TAG:Ljava/lang/String;

    const-string v4, "IOException when attempting to create new file for cached photo."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setHavePhoto(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1    # Ljava/lang/String;
    .param p2    # Z
    .param p3    # Z

    if-eqz p2, :cond_0

    const-string v1, "has_photo"

    :goto_0
    iget-object v2, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mDbHelper:Lcom/google/android/dialer/GoogleDialerDatabaseHelper;

    invoke-virtual {v2}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mArgs1:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE cached_number_contacts SET "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p3, :cond_1

    const-string v2, "1"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "normalized_number=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mArgs1:[Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "has_thumbnail"

    goto :goto_0

    :cond_1
    const-string v2, "0"

    goto :goto_1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;
    .param p3    # [Ljava/lang/String;

    sget-object v3, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mDbHelper:Lcom/google/android/dialer/GoogleDialerDatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->prune()V

    invoke-direct {p0, p1}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->getNumberFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mArgs1:[Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    iget-object v3, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mDbHelper:Lcom/google/android/dialer/GoogleDialerDatabaseHelper;

    invoke-virtual {v3}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->deleteFiles(Ljava/lang/String;)Z

    const-string v3, "cached_number_contacts"

    const-string v4, "normalized_number=?"

    iget-object v5, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mArgs1:[Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown URI or phone number not provided"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/net/Uri;

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .param p1    # Landroid/net/Uri;
    .param p2    # Landroid/content/ContentValues;

    const/4 v8, 0x0

    sget-object v9, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v9, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Unknown URI"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_0
    iget-object v9, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mDbHelper:Lcom/google/android/dialer/GoogleDialerDatabaseHelper;

    invoke-virtual {v9}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->prune()V

    const/16 v9, 0x3e8

    if-ne v7, v9, :cond_1

    invoke-direct {p0, p2}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->getNumberFromValues(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object p1, v8

    :cond_0
    :goto_1
    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->getNumberFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v9, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->SUPPORTED_UPDATE_COLUMNS:Ljava/util/Set;

    invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    sget-object v9, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Ignoring unsupported column for update: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string v9, "normalized_number"

    invoke-virtual {p2, v9, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "time_last_updated"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {p2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v9, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mDbHelper:Lcom/google/android/dialer/GoogleDialerDatabaseHelper;

    invoke-virtual {v9}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v9, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mArgs1:[Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v4, 0x0

    const-string v9, "source_type"

    invoke-virtual {p2, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->isPeopleApiSource(I)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v4, 0x1

    :cond_5
    :goto_3
    if-eqz v4, :cond_0

    const-string v9, "cached_number_contacts"

    const/4 v10, 0x5

    invoke-virtual {v0, v9, v8, p2, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_1

    :cond_6
    const/4 v5, -0x1

    :try_start_0
    const-string v9, "SELECT source_type FROM cached_number_contacts WHERE normalized_number=?"

    iget-object v10, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mArgs1:[Ljava/lang/String;

    invoke-static {v0, v9, v10}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    long-to-int v5, v10

    :goto_4
    invoke-static {v5}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->isPeopleApiSource(I)Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :catch_0
    move-exception v9

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/dialer/GoogleDialerDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mDbHelper:Lcom/google/android/dialer/GoogleDialerDatabaseHelper;

    invoke-direct {p0}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->createPhotoDirectoriesIfDoNotExist()V

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7
    .param p1    # Landroid/net/Uri;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/16 v6, 0x7d0

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "Unknown or unsupported URI"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->getNumberFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->isNumberInCache(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v3, Ljava/io/FileNotFoundException;

    const-string v4, "Phone number does not exist in cache"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const-string v5, "r"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v3

    :goto_0
    if-eqz v2, :cond_3

    if-ne v1, v6, :cond_2

    :goto_1
    invoke-direct {p0, v0, v3}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->openFileForWrite(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    :goto_2
    return-object v3

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    if-ne v1, v6, :cond_4

    :goto_3
    invoke-direct {p0, v0, v3}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->openFileForRead(Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0xbb8 -> :sswitch_0
    .end sparse-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1    # Landroid/net/Uri;
    .param p2    # [Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # [Ljava/lang/String;
    .param p5    # Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v1, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    const/16 v1, 0x3e9

    if-ne v9, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->getNumberFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    iget-object v1, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mDbHelper:Lcom/google/android/dialer/GoogleDialerDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->prune()V

    iget-object v1, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mArgs1:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    iget-object v1, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mDbHelper:Lcom/google/android/dialer/GoogleDialerDatabaseHelper;

    invoke-virtual {v1}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "cached_number_contacts"

    const-string v3, "normalized_number=?"

    iget-object v4, p0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheProvider;->mArgs1:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1    # Landroid/net/Uri;
    .param p2    # Landroid/content/ContentValues;
    .param p3    # Ljava/lang/String;
    .param p4    # [Ljava/lang/String;

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The cache does not support update operations. Use insert to replace an existing phone number, if needed."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
