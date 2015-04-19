.class public Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;
.super Ljava/lang/Object;
.source "PhoneNumberServiceImpl.java"

# interfaces
.implements Lcom/android/incallui/service/PhoneNumberService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;,
        Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$ImageLookupRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final mCachedNumberLookupService:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCountryIso:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mImageExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mLookupExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mPeopleClient:Lcom/google/android/dialer/reverselookup/PeopleApiClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;

    invoke-direct {v0}, Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;-><init>()V

    sput-object v0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mCachedNumberLookupService:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/dialer/reverselookup/PeopleApiClient;

    invoke-direct {v0}, Lcom/google/android/dialer/reverselookup/PeopleApiClient;-><init>()V

    iput-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mPeopleClient:Lcom/google/android/dialer/reverselookup/PeopleApiClient;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mLookupExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mImageExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$1;-><init>(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->getCountryCodeIso()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mCountryIso:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    iget-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Lcom/google/android/dialer/reverselookup/PeopleApiClient;
    .locals 1
    .param p0    # Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    iget-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mPeopleClient:Lcom/google/android/dialer/reverselookup/PeopleApiClient;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/Context;Landroid/net/Uri;)[B
    .locals 1
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->loadPhotoFromContentUri(Landroid/content/Context;Landroid/net/Uri;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;
    .locals 1

    sget-object v0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mCachedNumberLookupService:Lcom/google/android/dialer/phonenumbercache/CachedNumberLookupServiceImpl;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Landroid/os/Handler;
    .locals 1
    .param p0    # Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    iget-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    iget-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0    # Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;

    iget-object v0, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mImageExecutorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 1
    .param p0    # Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method private getCountryCodeIso()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getGoogleAccounts(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 2
    .param p1    # Landroid/content/Context;

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    return-object v1
.end method

.method static httpToHttps(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0    # Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_0

    const-string v0, "http:"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private static loadPhotoFromContentUri(Landroid/content/Context;Landroid/net/Uri;)[B
    .locals 8
    .param p0    # Landroid/content/Context;
    .param p1    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {v6, p1, v7}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    return-object v5

    :cond_0
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_0

    :cond_1
    const/16 v5, 0x4000

    new-array v1, v5, [B

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_1
    :try_start_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v5

    :cond_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public getPhoneNumberInfo(Ljava/lang/String;Lcom/android/incallui/service/PhoneNumberService$NumberLookupListener;Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;Z)V
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # Lcom/android/incallui/service/PhoneNumberService$NumberLookupListener;
    .param p3    # Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;
    .param p4    # Z

    :try_start_0
    new-instance v0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl$LookupRunnable;-><init>(Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;Ljava/lang/String;Lcom/android/incallui/service/PhoneNumberService$NumberLookupListener;Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;Z)V

    iget-object v1, p0, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->mLookupExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    sget-object v1, Lcom/google/android/dialer/reverselookup/PhoneNumberServiceImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error performing reverse lookup."

    invoke-static {v1, v2, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
