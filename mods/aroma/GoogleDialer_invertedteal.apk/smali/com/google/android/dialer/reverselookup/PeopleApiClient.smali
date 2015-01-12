.class public Lcom/google/android/dialer/reverselookup/PeopleApiClient;
.super Ljava/lang/Object;
.source "PeopleApiClient.java"


# static fields
.field private static final IMAGE_SCOPES:[Ljava/lang/String;

.field private static final IMAGE_SCOPE_STR:Ljava/lang/String;

.field private static final SCOPES:[Ljava/lang/String;

.field private static final SCOPE_STR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static mImageTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mTokens:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x20

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v0, Lcom/google/android/dialer/reverselookup/PeopleApiClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "https://www.googleapis.com/auth/plus.me"

    aput-object v1, v0, v3

    const-string v1, "https://www.googleapis.com/auth/plus.peopleapi.readwrite"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->SCOPES:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oauth2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v1

    sget-object v2, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->SCOPES:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->SCOPE_STR:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "https://www.googleapis.com/auth/plus.contactphotos"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->IMAGE_SCOPES:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oauth2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v5}, Lcom/google/common/base/Joiner;->on(C)Lcom/google/common/base/Joiner;

    move-result-object v1

    sget-object v2, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->IMAGE_SCOPES:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/common/base/Joiner;->join([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->IMAGE_SCOPE_STR:Ljava/lang/String;

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->mTokens:Ljava/util/HashMap;

    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->mImageTokens:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildLookupUrl(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # Z
    .param p4    # Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://www.googleapis.com/plus/v2whitelisted/people/lookup?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/dialer/reverselookup/ReverseLookupSettingUtil;->getAdditionalQueryParams(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&type=phone&fields="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "kind,items(id,metadata(objectType,plusPageType,attributions),names,phoneNumbers(value,type,formattedType,canonicalizedForm),addresses(value,type,formattedType),images(url,metadata(container)),urls(value))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    const-string v2, "&includePlaces=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "&callType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    const-string v2, "incoming"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    :try_start_0
    const-string v2, "&id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {p2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    const-string v2, "outgoing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->TAG:Ljava/lang/String;

    const-string v3, "Error encoding phone number.  UTF-8 is not supported?!"

    invoke-static {v2, v3, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    goto :goto_1
.end method

.method private doLookup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;
    .locals 6
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Z
    .param p6    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/dialer/util/AuthException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->SCOPE_STR:Ljava/lang/String;

    invoke-static {p1, p2, v1}, Lcom/google/android/dialer/util/GoogleAuthTokenFetcher;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1, p3, p5, p6}, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->buildLookupUrl(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->lookupPhoneNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;

    move-result-object v0

    goto :goto_0
.end method

.method private static declared-synchronized invalidateImageToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    const-class v1, Lcom/google/android/dialer/reverselookup/PeopleApiClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->mImageTokens:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gms/auth/GoogleAuthUtil;->invalidateToken(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->mImageTokens:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized invalidateToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/content/Context;
    .param p1    # Ljava/lang/String;

    const-class v1, Lcom/google/android/dialer/reverselookup/PeopleApiClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->mTokens:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/google/android/gms/auth/GoogleAuthUtil;->invalidateToken(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->mTokens:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private lookupPhoneNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/dialer/util/AuthException;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "GET"

    invoke-static {p5}, Lcom/google/android/dialer/util/GoogleAuthTokenFetcher;->buildAuthHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p1, p2, v2, v3}, Lcom/google/android/dialer/util/HttpFetcher;->getRequestAsString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->TAG:Ljava/lang/String;

    const-string v3, "Error looking up phone number."

    invoke-static {v2, v3, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/dialer/reverselookup/ReverseLookupSettingUtil;->getProtectedPhotoUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p3, p4, v2}, Lcom/google/android/dialer/reverselookup/PeopleJsonParser;->parsePeopleJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public getScreenWidth(Landroid/content/Context;)I
    .locals 3
    .param p1    # Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v2, v0, Landroid/graphics/Point;->x:I

    return v2
.end method

.method public imageLookup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/google/android/dialer/reverselookup/ReverseLookupSettingUtil;->getProtectedPhotoUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->IMAGE_SCOPE_STR:Ljava/lang/String;

    invoke-static {p1, p2, v5}, Lcom/google/android/dialer/util/GoogleAuthTokenFetcher;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-object v4

    :cond_0
    invoke-static {v3}, Lcom/google/android/dialer/util/GoogleAuthTokenFetcher;->buildAuthHeader(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?sz="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, p1}, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->getScreenWidth(Landroid/content/Context;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :try_start_0
    const-string v5, "GET"

    invoke-static {p1, p3, v5, v2}, Lcom/google/android/dialer/util/HttpFetcher;->getRequestAsByteArray(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)[B
    :try_end_0
    .catch Lcom/google/android/dialer/util/AuthException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->TAG:Ljava/lang/String;

    const-string v6, "Authentication error. Already invalidated auth token and retried. Aborting lookup."

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->invalidateImageToken(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_1
    const-string v5, "GET"

    invoke-static {p1, p3, v5, v2}, Lcom/google/android/dialer/util/HttpFetcher;->getRequestAsByteArray(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)[B
    :try_end_1
    .catch Lcom/google/android/dialer/util/AuthException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v5, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->TAG:Ljava/lang/String;

    const-string v6, "Tried again but still got auth error during image lookup."

    invoke-static {v5, v6, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public lookupByPhoneNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;
    .locals 4
    .param p1    # Landroid/content/Context;
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # Ljava/lang/String;
    .param p5    # Z
    .param p6    # Z

    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->doLookup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;
    :try_end_0
    .catch Lcom/google/android/dialer/util/AuthException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->TAG:Ljava/lang/String;

    const-string v3, "Authentication error. Already invalidated auth token and retried. Aborting lookup."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->invalidateToken(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_1
    invoke-direct/range {p0 .. p6}, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->doLookup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/google/android/dialer/reverselookup/PhoneNumberInfoImpl;
    :try_end_1
    .catch Lcom/google/android/dialer/util/AuthException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v2, Lcom/google/android/dialer/reverselookup/PeopleApiClient;->TAG:Ljava/lang/String;

    const-string v3, "Tried again but still got auth error during phone number lookup."

    invoke-static {v2, v3, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v2, 0x0

    goto :goto_0
.end method
