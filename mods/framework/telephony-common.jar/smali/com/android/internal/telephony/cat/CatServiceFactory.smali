.class public Lcom/android/internal/telephony/cat/CatServiceFactory;
.super Ljava/lang/Object;
.source "CatServiceFactory.java"


# static fields
.field private static sCatServices:[Lcom/android/internal/telephony/cat/CatService;

.field private static final sInstanceLock:Ljava/lang/Object;

.field private static final sSimCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/cat/CatServiceFactory;->sCatServices:[Lcom/android/internal/telephony/cat/CatService;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/cat/CatServiceFactory;->sSimCount:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatServiceFactory;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disposeCatService(I)V
    .locals 2
    .param p0    # I

    sget-object v0, Lcom/android/internal/telephony/cat/CatServiceFactory;->sCatServices:[Lcom/android/internal/telephony/cat/CatService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/cat/CatServiceFactory;->sCatServices:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatService;->dispose()V

    sget-object v0, Lcom/android/internal/telephony/cat/CatServiceFactory;->sCatServices:[Lcom/android/internal/telephony/cat/CatService;

    const/4 v1, 0x0

    aput-object v1, v0, p0

    :cond_0
    return-void
.end method

.method public static getCatService(I)Lcom/android/internal/telephony/cat/CatService;
    .locals 1
    .param p0    # I

    sget-object v0, Lcom/android/internal/telephony/cat/CatServiceFactory;->sCatServices:[Lcom/android/internal/telephony/cat/CatService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cat/CatServiceFactory;->sCatServices:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static makeCatService(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;I)Lcom/android/internal/telephony/cat/CatService;
    .locals 6
    .param p0    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1    # Landroid/content/Context;
    .param p2    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p3    # I

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-object v4, Lcom/android/internal/telephony/cat/CatServiceFactory;->sCatServices:[Lcom/android/internal/telephony/cat/CatService;

    if-nez v4, :cond_0

    sget v4, Lcom/android/internal/telephony/cat/CatServiceFactory;->sSimCount:I

    new-array v4, v4, [Lcom/android/internal/telephony/cat/CatService;

    sput-object v4, Lcom/android/internal/telephony/cat/CatServiceFactory;->sCatServices:[Lcom/android/internal/telephony/cat/CatService;

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v4, v5, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    :cond_3
    sget-object v4, Lcom/android/internal/telephony/cat/CatServiceFactory;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v4

    if-nez v1, :cond_5

    :try_start_0
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :try_start_1
    sget-object v3, Lcom/android/internal/telephony/cat/CatServiceFactory;->sCatServices:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v3, v3, p3

    if-nez v3, :cond_6

    sget-object v3, Lcom/android/internal/telephony/cat/CatServiceFactory;->sCatServices:[Lcom/android/internal/telephony/cat/CatService;

    new-instance v5, Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {v5, p0, p1, v1, p3}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;I)V

    aput-object v5, v3, p3

    :cond_6
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v3, Lcom/android/internal/telephony/cat/CatServiceFactory;->sCatServices:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v3, v3, p3

    goto :goto_0
.end method
