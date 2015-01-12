.class public Lcom/android/dialer/calllog/ContactInfoHelper;
.super Ljava/lang/Object;
.source "ContactInfoHelper.java"


# static fields
.field private static final mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentCountryIso:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/dialerbind/ObjectFactory;->newCachedNumberLookupService()Lcom/android/dialer/service/CachedNumberLookupService;

    move-result-object v0

    sput-object v0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCurrentCountryIso:Ljava/lang/String;

    return-void
.end method

.method private static createTemporaryContactUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .param p0    # Ljava/lang/String;

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "vnd.android.cursor.item/phone_v2"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "data1"

    invoke-virtual {v5, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "data2"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "display_name"

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "display_name_source"

    const/16 v5, 0x14

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "vnd.android.cursor.item/contact"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "encoded"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "directory"

    const-wide v6, 0x7fffffffffffffffL

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->encodedFragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, ""

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p3, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCurrentCountryIso:Ljava/lang/String;

    :cond_2
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static getLookupKeyFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p0    # Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/common/util/UriUtils;->isEncodedContactUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private lookupContactFromUri(Landroid/net/Uri;)Lcom/android/dialer/calllog/ContactInfo;
    .locals 11
    .param p1    # Landroid/net/Uri;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/dialer/calllog/PhoneQuery;->_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_1

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v8, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v8}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v0, 0x7

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/android/dialer/calllog/ContactInfo;->lookupKey:Ljava/lang/String;

    invoke-static {v6, v7, v9}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->name:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v8, Lcom/android/dialer/calllog/ContactInfo;->type:I

    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->label:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/dialer/calllog/ContactInfo;->photoId:J

    const/16 v0, 0x8

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/common/util/UriUtils;->parseUriOrNull(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->photoUri:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :goto_1
    return-object v8

    :cond_0
    :try_start_1
    sget-object v8, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;
    .locals 8
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v1, v3

    :cond_0
    sget-object v6, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/dialer/calllog/ContactInfoHelper;->lookupContactFromUri(Landroid/net/Uri;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v6, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-eq v2, v6, :cond_2

    invoke-direct {p0, p1, v5, p2}, Lcom/android/dialer/calllog/ContactInfoHelper;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    sget-object v6, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    iget-object v7, p0, Lcom/android/dialer/calllog/ContactInfoHelper;->mContext:Landroid/content/Context;

    invoke-interface {v6, v7, p1}, Lcom/android/dialer/service/CachedNumberLookupService;->lookupCachedContactFromNumber(Landroid/content/Context;Ljava/lang/String;)Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->getContactInfo()Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/dialer/calllog/ContactInfo;->isBadData:Z

    if-eqz v6, :cond_3

    move-object v2, v5

    :goto_1
    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;->getContactInfo()Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v2

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;
    .locals 3
    .param p1    # Ljava/lang/String;

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v1, "sip"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/dialer/calllog/ContactInfoHelper;->lookupContactFromUri(Landroid/net/Uri;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public canReportAsInvalid(ILjava/lang/String;)Z
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/String;

    sget-object v0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    invoke-interface {v0, p1, p2}, Lcom/android/dialer/service/CachedNumberLookupService;->canReportAsInvalid(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBusiness(I)Z
    .locals 1
    .param p1    # I

    sget-object v0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/dialer/calllog/ContactInfoHelper;->mCachedNumberLookupService:Lcom/android/dialer/service/CachedNumberLookupService;

    invoke-interface {v0, p1}, Lcom/android/dialer/service/CachedNumberLookupService;->isBusiness(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lookupNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;
    .locals 6
    .param p1    # Ljava/lang/String;
    .param p2    # Ljava/lang/String;

    invoke-static {p1}, Lcom/android/contacts/common/util/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/ContactInfoHelper;->queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v5, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-ne v2, v5, :cond_1

    :cond_0
    invoke-static {p1}, Lcom/android/contacts/common/util/PhoneNumberHelper;->getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v4, p2}, Lcom/android/dialer/calllog/ContactInfoHelper;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v2

    :cond_1
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_5

    const/4 v3, 0x0

    :goto_1
    return-object v3

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/dialer/calllog/ContactInfoHelper;->queryContactInfoForPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v5, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-ne v1, v5, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/dialer/calllog/ContactInfoHelper;->queryContactInfoForSipAddress(Ljava/lang/String;)Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v1

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    sget-object v5, Lcom/android/dialer/calllog/ContactInfo;->EMPTY:Lcom/android/dialer/calllog/ContactInfo;

    if-ne v0, v5, :cond_6

    new-instance v3, Lcom/android/dialer/calllog/ContactInfo;

    invoke-direct {v3}, Lcom/android/dialer/calllog/ContactInfo;-><init>()V

    iput-object p1, v3, Lcom/android/dialer/calllog/ContactInfo;->number:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {p0, p1, v5, p2}, Lcom/android/dialer/calllog/ContactInfoHelper;->formatPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    iget-object v5, v3, Lcom/android/dialer/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/dialer/calllog/ContactInfoHelper;->createTemporaryContactUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v3, Lcom/android/dialer/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    goto :goto_1

    :cond_6
    move-object v3, v0

    goto :goto_1
.end method
