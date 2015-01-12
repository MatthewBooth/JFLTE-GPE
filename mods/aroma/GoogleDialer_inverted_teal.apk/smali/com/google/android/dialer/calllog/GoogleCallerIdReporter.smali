.class public Lcom/google/android/dialer/calllog/GoogleCallerIdReporter;
.super Ljava/lang/Object;
.source "GoogleCallerIdReporter.java"


# static fields
.field private static VDBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/dialer/calllog/GoogleCallerIdReporter;->VDBG:Z

    return-void
.end method

.method private static invalidateToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/android/gms/auth/GoogleAuthUtil;->invalidateToken(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static report(Landroid/content/Context;Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;)Z
    .locals 13
    .param p0    # Landroid/content/Context;
    .param p1    # Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->getContactInfo()Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v8

    iput-boolean v7, v8, Lcom/android/dialer/calllog/ContactInfo;->isBadData:Z

    invoke-static {p0}, Lcom/google/android/dialer/util/GoogleAuthTokenFetcher;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v8, v0

    if-nez v8, :cond_0

    const-string v7, "GoogleCallerIdReporter"

    const-string v8, "No google account found. Skipping report."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v6

    :cond_0
    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_1
    array-length v8, v0

    if-ge v2, v8, :cond_1

    aget-object v8, v0, v2

    iget-object v8, v8, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v9, "oauth2:https://www.googleapis.com/auth/plus.peopleapi.readwrite"

    invoke-static {p0, v8, v9}, Lcom/google/android/dialer/util/GoogleAuthTokenFetcher;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    :cond_1
    if-nez v4, :cond_3

    const-string v7, "GoogleCallerIdReporter"

    const-string v8, "No token with the scope that we need...exiting"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :try_start_0
    const-string v8, "%s/%s/report?category=incorrect&field=phone&container=place&lookupKey=%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "https://www.googleapis.com/plus/v2whitelisted/people"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p1}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->getContactInfo()Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v11

    iget-object v11, v11, Lcom/android/dialer/calllog/ContactInfo;->objectId:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {p1}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl$CachedContactInfoImpl;->getContactInfo()Lcom/android/dialer/calllog/ContactInfo;

    move-result-object v11

    iget-object v11, v11, Lcom/android/dialer/calllog/ContactInfo;->normalizedNumber:Ljava/lang/String;

    const-string v12, "UTF-8"

    invoke-static {v11, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-boolean v8, Lcom/google/android/dialer/calllog/GoogleCallerIdReporter;->VDBG:Z

    if-eqz v8, :cond_4

    const-string v8, "GoogleCallerIdReporter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Here is the request: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string v8, "POST"

    invoke-static {v4}, Lcom/google/android/dialer/util/GoogleAuthTokenFetcher;->buildAuthHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-static {p0, v5, v8, v9}, Lcom/google/android/dialer/util/HttpFetcher;->getRequestAsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v8, Lcom/google/android/dialer/calllog/GoogleCallerIdReporter;->VDBG:Z

    if-eqz v8, :cond_5

    if-eqz v3, :cond_6

    const-string v8, "GoogleCallerIdReporter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Here is the response: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    move v6, v7

    goto/16 :goto_0

    :cond_6
    const-string v8, "GoogleCallerIdReporter"

    const-string v9, "The response is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/dialer/util/AuthException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v7, "GoogleCallerIdReporter"

    const-string v8, "Error encoding phone number."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string v7, "GoogleCallerIdReporter"

    const-string v8, "Error fetching oauth token."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_2
    move-exception v1

    const-string v7, "GoogleCallerIdReporter"

    const-string v8, "Authentication error."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0, v4}, Lcom/google/android/dialer/calllog/GoogleCallerIdReporter;->invalidateToken(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
