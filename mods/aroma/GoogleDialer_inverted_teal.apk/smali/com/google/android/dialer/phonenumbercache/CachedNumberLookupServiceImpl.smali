.class public Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;
.super Ljava/lang/Object;
.source "CachedNumberLookupServiceImpl.java"

# interfaces
.implements Lcom/android/dialer/service/CachedNumberLookupService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedNumberQuery;,
        Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 8
    .param p1    # Landroid/database/Cursor;

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v6, 0x9

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x7

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0xa

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "directory"

    invoke-virtual {v5, v6, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3

    const/4 v6, 0x4

    if-ne v4, v6, :cond_0

    :cond_3
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    const-string v6, "encoded"

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "displayName"

    invoke-virtual {v0, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_4
    const-string v5, "directory"

    invoke-virtual {v0, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    goto :goto_0
.end method

.method private getPhotoUri(Landroid/database/Cursor;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .param p1    # Landroid/database/Cursor;
    .param p2    # Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheContract;->getPhotoLookupUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {p2}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheContract;->getThumbnailLookupUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static purgePeopleApiCacheEntries(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/dialer/GoogleDialerDatabaseHelper;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->purgeSource(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->purgeSource(I)V

    return-void
.end method


# virtual methods
.method public addContact(Landroid/content/Context;Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;)V
    .locals 8
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;

    instance-of v5, p2, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p2

    check-cast v0, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    sget-object v4, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheContract;->CONTACT_URI:Landroid/net/Uri;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->getContactInfo()Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v5, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-eq v2, v5, :cond_0

    iget-object v5, v2, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v3, v2, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "number"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "phone_type"

    iget v6, v2, Lcom/android/dialer/calllog/ContactInfo;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "phone_label"

    iget-object v6, v2, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "display_name"

    iget-object v6, v2, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "photo_uri"

    iget-object v5, v2, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "reported"

    iget-boolean v5, v2, Lcom/android/dialer/calllog/ContactInfo;->isBadData:Z

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "object_id"

    iget-object v6, v2, Lcom/android/dialer/calllog/ContactInfo;->objectId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "source_name"

    iget-object v6, v0, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->sourceName:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "source_type"

    iget v6, v0, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->sourceType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "source_id"

    iget-wide v6, v0, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->sourceId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "lookup_key"

    iget-object v6, v0, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->lookupKey:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    :cond_2
    iget-object v3, v2, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    goto :goto_3
.end method

.method public addPhoto(Landroid/content/Context;Ljava/lang/String;[B)Z
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # [B

    invoke-static {p2}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheContract;->getPhotoLookupUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/android/dialer/util/DialerUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v3, 0x1

    :goto_0
    return v3

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    invoke-static {v1}, Lcom/android/dialer/util/DialerUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/android/dialer/util/DialerUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method public bridge synthetic buildCachedContactInfo(Lcom/android/dialer/calllog/ContactInfo;)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
    .locals 1
    .param p1    # Lcom/android/dialer/calllog/ContactInfo;

    invoke-virtual {p0, p1}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;->buildCachedContactInfo(Lcom/android/dialer/calllog/ContactInfo;)Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public buildCachedContactInfo(Lcom/android/dialer/calllog/ContactInfo;)Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;
    .locals 1
    .param p1    # Lcom/android/dialer/calllog/ContactInfo;

    new-instance v0, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    invoke-direct {v0, p1}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;-><init>(Lcom/android/dialer/calllog/ContactInfo;)V

    return-object v0
.end method

.method public canReportAsInvalid(ILjava/lang/String;)Z
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->canReportAsInvalid(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearAllCacheEntries(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/google/android/dialer/GoogleDialerDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/dialer/GoogleDialerDatabaseHelper;->purgeAll()V

    return-void
.end method

.method public isBusiness(I)Z
    .locals 1
    .param p1    # I

    invoke-static {p1}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->isBusiness(I)Z

    move-result v0

    return v0
.end method

.method public isCacheUri(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;

    sget-object v0, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic lookupCachedContactFromNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
    .locals 1
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;->lookupCachedContactFromNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    move-result-object v0

    return-object v0
.end method

.method public lookupCachedContactFromNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;
    .locals 11
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/google/android/dialer/phonenumbercache/PhoneNumberCacheContract;->getContactLookupUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedNumberQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    :goto_0
    return-object v3

    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    invoke-virtual {p0, v0}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;->buildCachedContactInfo(Lcom/android/dialer/calllog/ContactInfo;)Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->isPeopleApiSource(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/google/android/dialer/reverselookup/ReverseLookupSettingUtil;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;->purgePeopleApiCacheEntries(Landroid/content/Context;)V

    sget-object v0, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    invoke-virtual {p0, v0}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;->buildCachedContactInfo(Lcom/android/dialer/calllog/ContactInfo;)Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    :try_start_2
    new-instance v8, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v8}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    invoke-direct {p0, v7}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/dialer/calllog/ContactInfo;->type:I

    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    iget v0, v8, Lcom/android/dialer/calllog/ContactInfo;->type:I

    if-nez v0, :cond_3

    iget-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/dialer/calllog/ContactInfo;->GEOCODE_AS_LABEL:Ljava/lang/String;

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    :cond_3
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    iput-object p2, v8, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, v8, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    invoke-direct {p0, v7, p2}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;->getPhotoUri(Landroid/database/Cursor;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    const/16 v0, 0xb

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v8, Lcom/android/dialer/calllog/ContactInfo;->isBadData:Z

    const/16 v0, 0xc

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->objectId:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;->buildCachedContactInfo(Lcom/android/dialer/calllog/ContactInfo;)Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    move-result-object v6

    const/4 v0, 0x7

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v6, v9, v0, v2, v3}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->setSource(ILjava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v3, v6

    goto/16 :goto_0

    :cond_4
    move v0, v10

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method
